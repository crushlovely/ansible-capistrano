#!/usr/bin/env bats

@test "Check that app dir was created" {
    ls -l /srv | awk '{print $9}'
}

@test "Check that tmp is owned by the right user" {
    ls -l /srv | grep tmp | awk '{print $3 $4}' | grep -q "$EXPECTED_TMP_OWNER$EXPECTED_TMP_OWNER"
}
