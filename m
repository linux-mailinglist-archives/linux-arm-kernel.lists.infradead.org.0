Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 487911B88B2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 21:00:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ISpzIEszlaHegxu0hyfQKNmVEc0NMf3KOYC0de2xloQ=; b=R463OokNNnlZ28
	pRgvdepeH/Ov8sp8SoFRfRwBL+rUQcRAwOzodYWxPRH9U5J3u+/CBJyM3yrrPoKMo5tjvACLu/xyw
	Dn9ZOhtxSIxY3+tMzI/zRjgeiPuSlHdR1hC6pWJSePKcDOi9hxid9YiNAM2FiOk4qOUQp/293RxRO
	JeBrPf4VM8Ac2Z9bzA1T9M846ufd0nsUFEq/8DxAbRfg6d5/XvNfg/eRjnsfCjXvwI3vCtHzmJAmP
	R+zNm3pLJRGrzZ1TEYpYv7AI2cRxmqOvZVaiDMgKkY0lKtX22xRA3yS7zoQ9Td+ViVd6lZBrUPRlm
	KEKBmOer+1oIgTjf8cWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSQ2k-0007VG-PS; Sat, 25 Apr 2020 19:00:50 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSQ28-00060t-4x
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 19:00:14 +0000
Received: by mail-pl1-x641.google.com with SMTP id h11so5075005plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 Apr 2020 12:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=mHbZ4xPUa2e8Z9ySz/Reqmt5mff2C3fDEKHsxtsl+2U=;
 b=lD9oBsew9gmagpFSaBbrod7+Dg6O9/fj1ury4cFPHeDkSTIIemQazMeG1h6gxz5EEr
 2y0ubQjNt36fCEMrU7x/WFUDCndf+PIC5Igp9MPgFWwzQ/zFsxawUkVO8ZnaS+Z9YaUD
 nPKf3pQp2ldfgUeqMXvaMyTHWs2iHo5ucqNdYU6MaSR+HcJq2/kDNyMKBu/e1Rb1Qsx7
 Se9DN2GxojvPH2uzP07yA+icrTDtCnWluCtXcZFIQgjB2TV9gA5wq3u6mVvl6xEtkiQ5
 jPSg9S0merRNcSahaBqYqGMz8tfQEJ0xghRzjzTMoSC/f7bWSAF6aWWUTRg2YFMpePvD
 I2IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=mHbZ4xPUa2e8Z9ySz/Reqmt5mff2C3fDEKHsxtsl+2U=;
 b=NjYP2Ir6qwf/E+Adceixq0xMCdcc2npwQSoQrd0iag2yL6e4ejAd5tJgxspCTZx+Qr
 mSCxiZY19UkoEMtIzUYiukOblIoP8GzGbf4EbsnG/aRrQEHc6Ijs1YtMchNle1TGi6JL
 daSdrocxSPwxgwdD/NLzsfT+2o7bxs9TQWN7wT5CBx1zCzyA/CbaXWQUo4s7swL5WXRM
 229oLovB0JeV97JMQ6pgKxEWvkLe5qFprGIb5PQhj+5Gd5lqeyDpWp9Jpf/XiiNXEZrK
 HwFCDmcmGgVwXNZIDAchXIeGdxFVrZbNVhh4/jCZY+8ujUQz/B9qLXcA1+o47K8EGgxe
 RWOA==
X-Gm-Message-State: AGi0PubCcWbeCjUfFE0Gr3XyDzSmUhgUJ8LLKrVCIYtnwJB4+a1wmXuT
 7zq+7KEsC4nsU4bVSVEP55w=
X-Google-Smtp-Source: APiQypLqZB8c/0OOLESufN7X24rZd9dVPY3QUBPGYqD1m6YtzXJwbEzRVL9gYijJiRQav0HHP9rS2g==
X-Received: by 2002:a17:90a:1ae9:: with SMTP id
 p96mr13624264pjp.75.1587841209653; 
 Sat, 25 Apr 2020 12:00:09 -0700 (PDT)
Received: from syed ([106.223.101.50])
 by smtp.gmail.com with ESMTPSA id ie17sm7574431pjb.19.2020.04.25.12.00.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 Apr 2020 12:00:09 -0700 (PDT)
Date: Sun, 26 Apr 2020 00:29:59 +0530
From: Syed Nayyar Waris <syednwaris@gmail.com>
To: akpm@linux-foundation.org
Subject: [PATCH v2 0/6] Introduce the for_each_set_clump macro
Message-ID: <cover.1587840667.git.syednwaris@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_120012_335476_AB443A61 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Syed Nayyar Waris (6):
  bitops: Introduce the the for_each_set_clump macro
  lib/test_bitmap.c: Add for_each_set_clump test cases
  gpio: thermal: Utilize for_each_set_clump macro
  bitops: Remove code related to for_each_set_clump8
  gpio: thunderx: Utilize for_each_set_clump macro
  gpio: xilinx: Utilize for_each_set_clump macro

 drivers/gpio/gpio-104-dio-48e.c            |   8 +--
 drivers/gpio/gpio-104-idi-48.c             |   4 +-
 drivers/gpio/gpio-74x164.c                 |   4 +-
 drivers/gpio/gpio-gpio-mm.c                |   8 +--
 drivers/gpio/gpio-max3191x.c               |   4 +-
 drivers/gpio/gpio-pca953x.c                |   4 +-
 drivers/gpio/gpio-pci-idio-16.c            |   8 +--
 drivers/gpio/gpio-pcie-idio-24.c           |   8 +--
 drivers/gpio/gpio-pisosr.c                 |   4 +-
 drivers/gpio/gpio-thunderx.c               |  12 ++--
 drivers/gpio/gpio-uniphier.c               |   4 +-
 drivers/gpio/gpio-ws16c48.c                |   8 +--
 drivers/gpio/gpio-xilinx.c                 |  64 +++++++++--------
 drivers/thermal/intel/intel_soc_dts_iosf.c |   6 +-
 include/asm-generic/bitops/find.h          |  12 ++--
 include/linux/bitmap.h                     |  60 +++++++++++-----
 include/linux/bitops.h                     |   9 +--
 lib/find_bit.c                             |  12 ++--
 lib/test_bitmap.c                          | 108 ++++++++++++++++++++++-------
 19 files changed, 220 insertions(+), 127 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
