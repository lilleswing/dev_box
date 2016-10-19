#!/usr/bin/env bash
mongo taskd --eval "db.user.insert({username: 'seurat', is_active: true, api_key: '8858489b80fdfc5f7bb3b176bad5ace560c5aecb',_id: '5249b79e88296406d14acdb0', is_staff: false})"