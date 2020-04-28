Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 581F71BD054
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 01:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I2KWY7eVqIZVhnc2qSN2uLdQt+Vx0YhFbR9m81VorX4=; b=Rb52hfe2u5wDC5
	H0LY1xMCu0lsqa/9OmtdflGGGOAmQkBvqSoHzAQ1ZmEIlEprxqfFEbY3H278SHWkBumdLAW/7nAIg
	gWoORDh2G9i24nTl0HuOoT3pWmn4Pc+Hk7KuoHs2MB8zP1+CWMqGM4mEnNF898077ZojY5bWcZP6z
	ucfRSOhfBpX3WE+KyGBlbLuAua0RD8qq8kofuISk53v9+bv7gd/qxIKtg3X5N6eF4+SgHNyc3eV00
	3sS9WwGkzUEGBo5XQIEKqDvkxobG9VON8PWxrNgv+OvXrEdZOn2Bdlnm8i5NjwGz8kKCalvxUxM1N
	+9KQXKeueJ7ZMHTCKlOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTZGR-0006rh-IQ; Tue, 28 Apr 2020 23:03:43 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTZGG-0006qU-GF
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 23:03:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id n11so56218pgl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 16:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=+eb5YBzAF98WZOyXU0W5JrcpxvfZ8QdL+rCMUNBogBs=;
 b=O/0NG8PwX3dqCAE7rfx8O3nSMOjMBNp9iVLdYyb89n+JKhHj4S3b6rT1SFs6VUg8TO
 4SCiIYfSZ1XxRzLFCdve1O7apjpLhRFTzRGSoQiEyox4wQ2taYf6FgD5ZP9Aulmwmpw8
 H3LCU/JfOKq5DOLTVpAGUwJFhmhCY+7433CAtbSBOgwP19+kmfD1LAfaID8A0zQQzVXL
 u9jslrVS/aDUNtDHHS8GyoP5fsrgudZdaV/qh91IB5uJDTiLfeWg4z4VM0hB+HUFAPbK
 F5xLvRL/ratvulf6NIij4g1JX4B3DykyWtItpjgce/1QmNaSXEfGSG1SjKPAUruI0inN
 9BiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=+eb5YBzAF98WZOyXU0W5JrcpxvfZ8QdL+rCMUNBogBs=;
 b=YeFFepuySkdGhQ8hFbw+lDgUuD5q3nkZQ/gTTY/pwFq5+gR87YDR87dAG1Aa6jEJus
 sEzJtfdLkBhZY88XWqWpyBcERFkUb6IqVF6r7UEpSUT2mH+1NaxVoXtO/RvYWH1J9etg
 e2utviSXdpcpogCJmqKTIXA+ZihYSw1ZsdooRDzMJsr2Pk6grRVUvBEnAHSEB2sg+hSd
 cggfI87nHxfypuW6jZvLUSqG6iU+uqTRDf6a2g9lpGCLpbkxkjuykbAF3n/FBlg9GFmL
 4IYEYJPk+un08GdMZX3Dzx2AAsDiKqTWvVpWeRoKSTvURQ7e7AmxWeOyG61l4m0oniUP
 3Ygw==
X-Gm-Message-State: AGi0PuZxQAgForCVDYluI/kkhLLgTIzvdl6rp/gORvC7sYp+gZ9QR7eF
 wOP8l40lrFyAD4XALhMxgH0=
X-Google-Smtp-Source: APiQypJPE+cc4RU52SwdvwJv6fLg/VZd1xU0gwwQyijEzCMwU4XUhna9Mxms6HnaLfQFvRuDeLePLQ==
X-Received: by 2002:a63:f30a:: with SMTP id l10mr30917710pgh.372.1588115010795; 
 Tue, 28 Apr 2020 16:03:30 -0700 (PDT)
Received: from syed ([106.202.21.137])
 by smtp.gmail.com with ESMTPSA id kb10sm3100232pjb.6.2020.04.28.16.03.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Apr 2020 16:03:30 -0700 (PDT)
Date: Wed, 29 Apr 2020 04:33:11 +0530
From: Syed Nayyar Waris <syednwaris@gmail.com>
To: akpm@linux-foundation.org
Subject: [PATCH v3 0/4] Introduce the for_each_set_clump macro
Message-ID: <cover.1588112714.git.syednwaris@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_160332_567288_AFC60111 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Changes in v3:
 - Patch 3: Change datatype of some variables from u64 to unsigned long
   in function thunderx_gpio_set_multiple.

CHanges in v2:
 - Patch 2: Unify different tests for 'for_each_set_clump'. Pass test data as
   function parameters.
 - Patch 2: Remove unnecessary bitmap_zero calls.

Syed Nayyar Waris (4):
  bitops: Introduce the the for_each_set_clump macro
  lib/test_bitmap.c: Add for_each_set_clump test cases
  gpio: thunderx: Utilize for_each_set_clump macro
  gpio: xilinx: Utilize for_each_set_clump macro

 drivers/gpio/gpio-thunderx.c      |  12 ++-
 drivers/gpio/gpio-xilinx.c        |  64 ++++++++--------
 include/asm-generic/bitops/find.h |  19 +++++
 include/linux/bitmap.h            |  61 +++++++++++++++
 include/linux/bitops.h            |  13 ++++
 lib/find_bit.c                    |  14 ++++
 lib/test_bitmap.c                 | 121 ++++++++++++++++++++++++++++++
 7 files changed, 270 insertions(+), 34 deletions(-)


base-commit: a9509b8ee069a06cd14334edca904bd0607622ca
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
