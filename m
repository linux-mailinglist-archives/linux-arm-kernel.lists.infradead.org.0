Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 243C81DFD3F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 07:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L1dat/MILK/weAb02y394h9mq8M/seh9f1Vo9SQiRuY=; b=QuSgHxXjB4gyzE
	kXKyqDdoTiWumKs1pMdVne6J+YmRbC7NBw/U+GnVr/Z5AxNlXLkOIRwTKC98HzF8j4hn/j60N8oXI
	oMdVvN3YaNNE4CKpYBZH5WhDjiCcesUsEQJmkCyr3bHD3MvtbU/H1c2JRXp8ui54OW8P4ybPWNvLP
	/eGhwIuTAr4NvzkGFd4CcIBUcVCxVew+OXcwDRknDYUkR9YvjB+nA96m66CIReXoC32evKg2QMBKg
	th1Amxj37kE79yO8SyPuczEQQ3vWmSkPQF+Q6K2bTeeUfSGl1ywCCTNNqe7H7E8agQnZ7ixtZbpdS
	ATCDASNnwl7Q3W3Uvphw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jciks-0008Ji-Qb; Sun, 24 May 2020 05:00:58 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcikh-0008JJ-H4
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 05:00:49 +0000
Received: by mail-pf1-x441.google.com with SMTP id n15so7233525pfd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 22:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=krhEzLWzxEpnShGlmjhN0o67VmqokPQZNn+Tla1ZW8U=;
 b=hJ2opN80KCVUYIaWN3aTL8FGh7posS3Q3ixIPePsYObtlauNGZEyij+9xYg73Tpctx
 KU4cm0U4X7FzGxHY2MaYz0oGmKh8w3co+sy0EspH9f6sewqksyamluEkLWyvlZ9IFCio
 LcKJuC8DS5jWowGZlwrouqLeBFOiR1vVbZgievi7IryexwuwZPzBtWZ2I0sbEw6PmYEg
 1uIEH6q/vL9UVF3Q4LuIovZb0xGCBpI78+8K6dPDsemRrfafFc8t8DqmMiNx+t4g9jsi
 I6fPioCW2pLsjnaKqPJipysTZWYCvuc4QAIaEdLGYlvV//hebbERAFpMpcf8b02rMIL5
 JRIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=krhEzLWzxEpnShGlmjhN0o67VmqokPQZNn+Tla1ZW8U=;
 b=WkqK9k/n04b047NV2ZfhrxhDp5lKN7zUcz0Zeh9oZlgqlXPJRnUwsoW03vBVG4Ttcv
 XfR+I2zDOuaautgYPoAJ2qHzkeOqDT5jlvNJIORexTSW95DutP5RC2cHc6ZwRaZalRlB
 8F4lLXfTTNVkk/URLM2SG6hFF4CSQ2+U4NjnDX6/B/gRUR8wKEuovKm4yV/qiLMCYKk1
 cX7LqK1sT78BZVbjEENo7alDMfvxe/SvuzjKbUgdLH5Ibhc4kl75CNqHhqcu/mJNcj0e
 4PjR0sQ1oHfAXpQIg65nL2LG6eonJKIBfoN0RAxpvG7KGBPBSD7ux7dnwNnfB+Glqg9r
 ToeQ==
X-Gm-Message-State: AOAM531hpGQdxff2riKttUR40OaNYUxdrs3ANywQopdEMTpi7RgTXpkK
 6dqnMao3V76tVvzhUFeNHRw=
X-Google-Smtp-Source: ABdhPJxVCxuXdDwqi8KaMFlgylLB8kaz2JVsKVLdE35iVR0WuQ4XbqTOElwdNHusHNZMlES/Cvgviw==
X-Received: by 2002:a62:7b09:: with SMTP id w9mr11756543pfc.157.1590296446048; 
 Sat, 23 May 2020 22:00:46 -0700 (PDT)
Received: from syed ([106.223.122.111])
 by smtp.gmail.com with ESMTPSA id x14sm9785264pfi.60.2020.05.23.22.00.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 23 May 2020 22:00:45 -0700 (PDT)
Date: Sun, 24 May 2020 10:30:24 +0530
From: Syed Nayyar Waris <syednwaris@gmail.com>
To: linus.walleij@linaro.org, akpm@linux-foundation.org
Subject: [PATCH v7 0/4] Introduce the for_each_set_clump macro
Message-ID: <cover.1590017578.git.syednwaris@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_220047_618160_95139C48 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, amit.kucheria@verdurent.com, arnd@arndb.de,
 yamada.masahiro@socionext.com, linux-kernel@vger.kernel.org,
 linus.walleij@linaro.org, daniel.lezcano@linaro.org, vilhelm.gray@gmail.com,
 michal.simek@xilinx.com, bgolaszewski@baylibre.com, rrichter@marvell.com,
 linux-gpio@vger.kernel.org, linux-pm@vger.kernel.org, rui.zhang@intel.com,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Linus,

Since this patchset primarily affects GPIO drivers, would you like
to pick it up through your GPIO tree?

This patchset introduces a new generic version of for_each_set_clump. 
The previous version of for_each_set_clump8 used a fixed size 8-bit
clump, but the new generic version can work with clump of any size but
less than or equal to BITS_PER_LONG. The patchset utilizes the new macro 
in several GPIO drivers.

The earlier 8-bit for_each_set_clump8 facilitated a
for-loop syntax that iterates over a memory region entire groups of set
bits at a time.

For example, suppose you would like to iterate over a 32-bit integer 8
bits at a time, skipping over 8-bit groups with no set bit, where
XXXXXXXX represents the current 8-bit group:

    Example:        10111110 00000000 11111111 00110011
    First loop:     10111110 00000000 11111111 XXXXXXXX
    Second loop:    10111110 00000000 XXXXXXXX 00110011
    Third loop:     XXXXXXXX 00000000 11111111 00110011

Each iteration of the loop returns the next 8-bit group that has at
least one set bit.

But with the new for_each_set_clump the clump size can be different from 8 bits.
Moreover, the clump can be split at word boundary in situations where word 
size is not multiple of clump size. Following are examples showing the working 
of new macro for clump sizes of 24 bits and 6 bits.

Example 1:
clump size: 24 bits, Number of clumps (or ports): 10
bitmap stores the bit information from where successive clumps are retrieved.

     /* bitmap memory region */
        0x00aa0000ff000000;  /* Most significant bits */
        0xaaaaaa0000ff0000;
        0x000000aa000000aa;
        0xbbbbabcdeffedcba;  /* Least significant bits */

Different iterations of for_each_set_clump:-
'offset' is the bit position and 'clump' is the 24 bit clump from the
above bitmap.
Iteration first:        offset: 0 clump: 0xfedcba
Iteration second:       offset: 24 clump: 0xabcdef
Iteration third:        offset: 48 clump: 0xaabbbb
Iteration fourth:       offset: 96 clump: 0xaa
Iteration fifth:        offset: 144 clump: 0xff
Iteration sixth:        offset: 168 clump: 0xaaaaaa
Iteration seventh:      offset: 216 clump: 0xff
Loop breaks because in the end the remaining bits (0x00aa) size was less
than clump size of 24 bits.

In above example it can be seen that in iteration third, the 24 bit clump
that was retrieved was split between bitmap[0] and bitmap[1]. This example 
also shows that 24 bit zeroes if present in between, were skipped (preserving
the previous for_each_set_macro8 behaviour). 

Example 2:
clump size = 6 bits, Number of clumps (or ports) = 3.

     /* bitmap memory region */
        0x00aa0000ff000000;  /* Most significant bits */
        0xaaaaaa0000ff0000;
        0x0f00000000000000;
        0x0000000000000ac0;  /* Least significant bits */

Different iterations of for_each_set_clump:
'offset' is the bit position and 'clump' is the 6 bit clump from the
above bitmap.
Iteration first:        offset: 6 clump: 0x2b
Loop breaks because 6 * 3 = 18 bits traversed in bitmap.
Here 6 * 3 is clump size * no. of clumps.

Changes in v7:
 - [Patch 2/4]: Minor changes: Use macro 'DECLARE_BITMAP()' and split 'struct'
   definition and test data.

Changes in v6:
 - [Patch 2/4]: Make 'for loop' inside test_for_each_set_clump more
   succinct.

Changes in v5:
 - [Patch 4/4]: Minor change: Hardcode value for better code readability.

Changes in v4:
 - [Patch 2/4]: Use 'for' loop in test function of for_each_set_clump.
 - [Patch 3/4]: Minor change: Inline value for better code readability.
 - [Patch 4/4]: Minor change: Inline value for better code readability.

Changes in v3:
 - [Patch 3/4]: Change datatype of some variables from u64 to unsigned long
   in function thunderx_gpio_set_multiple.

CHanges in v2:
 - [Patch 2/4]: Unify different tests for 'for_each_set_clump'. Pass test data as
   function parameters.
 - [Patch 2/4]: Remove unnecessary bitmap_zero calls.

Syed Nayyar Waris (4):
  bitops: Introduce the the for_each_set_clump macro
  lib/test_bitmap.c: Add for_each_set_clump test cases
  gpio: thunderx: Utilize for_each_set_clump macro
  gpio: xilinx: Utilize for_each_set_clump macro

 drivers/gpio/gpio-thunderx.c      |  11 ++-
 drivers/gpio/gpio-xilinx.c        |  62 ++++++-------
 include/asm-generic/bitops/find.h |  19 ++++
 include/linux/bitmap.h            |  61 +++++++++++++
 include/linux/bitops.h            |  13 +++
 lib/find_bit.c                    |  14 +++
 lib/test_bitmap.c                 | 144 ++++++++++++++++++++++++++++++
 7 files changed, 290 insertions(+), 34 deletions(-)


base-commit: b9bbe6ed63b2b9f2c9ee5cbd0f2c946a2723f4ce
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
