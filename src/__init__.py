#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import time
import torch

if __name__ == "__main__":
    print(time.time())
    print(torch.cuda.is_available())
    print(time.time())
    print(time.time())
