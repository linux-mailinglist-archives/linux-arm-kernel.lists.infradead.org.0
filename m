Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E630AD1523
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 19:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AyPZ2niiGm6koYRu+BUsDeoV9Mmxr8z/ohu5/pyTtjI=; b=L45roZhbH/HjDb
	1qepWO9dwdybVompKZZ+n+VxviSOkTnyka6AqmLMOKsC1WjJD5XYIRWVYFSn6N6Gpp7XCYCAewLfz
	UNgOzcD01Z/+VVNx8bZJrm6pculUfvpcv1Zl09YSfecDAUAPgLvLOUjkn/+c5WIwf59hvFlKUC2iP
	Z1RYl/HJkU3a/jbZTWiq6syf0qwvHMnuJ8qSs+wlmYldTwl+76yg27DjMudlsurqbtF9NClFvamkQ
	sz/FjbPcxG8wJoq2v9UQQc9tPrP3lyA3JfisnjQzgS6Xn0JYuAIBqSuQJITCKMOFWjNjf2dtCvTPJ
	Cyh9tfXOuQj/IVaTssmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIFYk-0006DI-PH; Wed, 09 Oct 2019 17:15:34 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIFYR-0006Bl-9w
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 17:15:16 +0000
Received: by mail-yw1-xc42.google.com with SMTP id i207so1079192ywc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 10:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dVcmQbIgO8Bg2squCswfoFzoHZk1ZImp7hwH+t3Cdzs=;
 b=BZT2HfrOpjnwnNeexB3vJTOZ3u75PJCvue+GCDNGylykHgeEeHKNIp5Wq94vpqrJnX
 fMQ5pldaRw1LzLzaEDc0DIDFT3B0KNFPcw4aG1Or3GhmzQ0xTLA/g8raRwjjkmX7BG7E
 xqiMLl+nspeSs38FPhPLtLo52STYCjtoS8x5KGwHLX/Y4vfNwgCOhnA48tmbMwhCcbzK
 LJvbOZcpMoXdTc0SbW98lg5uOdgUAWztFaYS/cTqoB4dLym5yYiyaQJRRIHTn91VjZg6
 5a8EgIEPE8gsBdjlaPrUYIkCu1+D37eo/Wne9iOhj/NtuLGUwPGwTUhNdVKenR8obiMr
 EOLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dVcmQbIgO8Bg2squCswfoFzoHZk1ZImp7hwH+t3Cdzs=;
 b=CclF+RLq0LBpdVSO+KQlXAyAWxeHqwFzIwP/MUxOrG0GKSba39NKPjT1vjGvWgapoY
 1wysWZtrBWjv1ckJn0XBywWXXvL/l8w67sZCLq28JFNZOW/nI9DN3SBs7XQiTn1SrJ59
 62xIEynYVJ+tULkeOw+4fswuwQaM13JudFLuay2AvSOoSyfD/9WuGrQ1WuVsy4DDVnWy
 safpJ2OYAUT5jPSx2Qk1LTl2i/S5Duo8EQN6mybXa6BAxQ37pEw0MwZsm0KFu0bX7E56
 fXoMM9wOxmXFGM5PKaVIW3ZrKSSIkxsvi4KgBLjtVoBvXXN9XXdV2OBTeSMx8+FZYHRg
 A1Gg==
X-Gm-Message-State: APjAAAU925Z45C2KoPfS1hBmKnQAkjcopNsLSC/k7bHzRz4huUq62ixq
 KLnUT9/b3UtC1m8uwrL0vYg=
X-Google-Smtp-Source: APXvYqz7VrUSju0wmZ6xxLXEKGzScsI+Sk8gHT+Ighn0lIDGhrprml4oetfj7n37v8J4f2H1yl7QtA==
X-Received: by 2002:a81:6dc8:: with SMTP id i191mr3556565ywc.16.1570641310674; 
 Wed, 09 Oct 2019 10:15:10 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id r63sm743292ywg.36.2019.10.09.10.15.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 10:15:09 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 akpm@linux-foundation.org
Subject: [PATCH v18 00/14] Introduce the for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 13:14:36 -0400
Message-Id: <cover.1570641097.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_101515_347417_A900893A 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, preid@electromag.com.au,
 yamada.masahiro@socionext.com, linux-pm@vger.kernel.org,
 linux@rasmusvillemoes.dk, linux-kernel@vger.kernel.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>, linux-gpio@vger.kernel.org,
 lukas@wunner.de, geert@linux-m68k.org, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes in v18:
  - Apply style change on gpio-uniphier as suggested by Masahiro Yamada

While adding GPIO get_multiple/set_multiple callback support for various
drivers, I noticed a pattern of looping manifesting that would be useful
standardized as a macro.

This patchset introduces the for_each_set_clump8 macro and utilizes it
in several GPIO drivers. The for_each_set_clump macro8 facilitates a
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

The for_each_set_clump8 macro has four parameters:

    * start: set to the bit offset of the current clump
    * clump: set to the current clump value
    * bits: bitmap to search within
    * size: bitmap size in number of bits

In this version of the patchset, the for_each_set_clump macro has been
reimplemented and simplified based on the suggestions provided by Rasmus
Villemoes and Andy Shevchenko in the version 4 submission.

In particular, the function of the for_each_set_clump macro has been
restricted to handle only 8-bit clumps; the drivers that use the
for_each_set_clump macro only handle 8-bit ports so a generic
for_each_set_clump implementation is not necessary. Thus, a solution for
large clumps (i.e. those larger than the width of a bitmap word) can be
postponed until a driver appears that actually requires such a generic
for_each_set_clump implementation.

For what it's worth, a semi-generic for_each_set_clump (i.e. for clumps
smaller than the width of a bitmap word) can be implemented by simply
replacing the hardcoded '8' and '0xFF' instances with respective
variables. I have not yet had a need for such an implementation, and
since it falls short of a true generic for_each_set_clump function, I
have decided to forgo such an implementation for now.

In addition, the bitmap_get_value8 and bitmap_set_value8 functions are
introduced to get and set 8-bit values respectively. Their use is based
on the behavior suggested in the patchset version 4 review.

William Breathitt Gray (14):
  bitops: Introduce the for_each_set_clump8 macro
  lib/test_bitmap.c: Add for_each_set_clump8 test cases
  gpio: 104-dio-48e: Utilize for_each_set_clump8 macro
  gpio: 104-idi-48: Utilize for_each_set_clump8 macro
  gpio: gpio-mm: Utilize for_each_set_clump8 macro
  gpio: ws16c48: Utilize for_each_set_clump8 macro
  gpio: pci-idio-16: Utilize for_each_set_clump8 macro
  gpio: pcie-idio-24: Utilize for_each_set_clump8 macro
  gpio: uniphier: Utilize for_each_set_clump8 macro
  gpio: 74x164: Utilize the for_each_set_clump8 macro
  thermal: intel: intel_soc_dts_iosf: Utilize for_each_set_clump8 macro
  gpio: pisosr: Utilize the for_each_set_clump8 macro
  gpio: max3191x: Utilize the for_each_set_clump8 macro
  gpio: pca953x: Utilize the for_each_set_clump8 macro

 drivers/gpio/gpio-104-dio-48e.c            |  73 ++++----------
 drivers/gpio/gpio-104-idi-48.c             |  36 ++-----
 drivers/gpio/gpio-74x164.c                 |  19 ++--
 drivers/gpio/gpio-gpio-mm.c                |  73 ++++----------
 drivers/gpio/gpio-max3191x.c               |  19 ++--
 drivers/gpio/gpio-pca953x.c                |  17 ++--
 drivers/gpio/gpio-pci-idio-16.c            |  75 +++++---------
 drivers/gpio/gpio-pcie-idio-24.c           | 109 ++++++++-------------
 drivers/gpio/gpio-pisosr.c                 |  12 +--
 drivers/gpio/gpio-uniphier.c               |  13 +--
 drivers/gpio/gpio-ws16c48.c                |  73 ++++----------
 drivers/thermal/intel/intel_soc_dts_iosf.c |  31 +++---
 drivers/thermal/intel/intel_soc_dts_iosf.h |   2 -
 include/asm-generic/bitops/find.h          |  17 ++++
 include/linux/bitmap.h                     |  35 +++++++
 include/linux/bitops.h                     |   5 +
 lib/find_bit.c                             |  14 +++
 lib/test_bitmap.c                          |  65 ++++++++++++
 18 files changed, 325 insertions(+), 363 deletions(-)


base-commit: 8c550e94b8835170593169a45b5ba30d3fc72a70
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
