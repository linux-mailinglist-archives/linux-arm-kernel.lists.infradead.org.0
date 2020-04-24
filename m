Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 030C51B7432
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 14:25:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TH/omAUikkJC439VEaqw/bruJMq2CpQlhBKFaBxEbGI=; b=Xdf0dxD/B0ccuV
	nAFRsfYDb8AvPjuB9vif4GJ4V5ECo9VfoRQdaPv6nI9p6R0X9IMrBYuGd/NePWrPvyn3R3hchT7Xg
	2F53Yr+7FxLVeSCnmnd3rYifhZuxXqABYUxynyv5myN6s0aXNimqnb1lMX8lqCZLBtZpsjO7IaCDN
	JeMqWtD8vpWuL9T70btB91nW+VvIp3V+RT8O41/LYySD2tYitkhiDLRTltHMdN80EKOTN3P58ZiNE
	L3TRI6EV5u2xZvWYiP7MbSlMYC9my67g1c50aaVWN40IeIAdiCg8CtP5toY6X9vXNOzuYdzybrpIa
	LnCzq6Mx1UNn/w/ijFMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRxOC-0006Jh-FO; Fri, 24 Apr 2020 12:25:04 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRxNU-0005zv-Tg
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 12:24:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id v63so4713686pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 05:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=EZWTGR2wDApXn1qZCOfO8QQ0qwLL2b6F+ahGlWVDubE=;
 b=MEAAr4dysjyXTujdAdFnc96D2y8DQPhLqk17tYm4NicOHg94yLN+enU9TZcefycxMF
 xfu00/TW/q9DwhPW9mM7rxfO+YnvVnoMQ7HeauwHNXNV/IkclWHKTOYTOPNP/tI/1X7U
 pse4CKlZA7Evyu/NdxJajLTMTcJd0PpCTx9TpqC15jGa0THgjX0TAuVCPB78Dc3e9zX1
 PVPTGAYshT5/u7XcppcHY397NnqPNtVGn0VKENS9ZDRZzdfG5VT5idkD7muoAaTEFp4G
 b2MarLjwHM6XT7ZWwOhVX8ekN6g6HfnmJKu61VgAeH2s+qVXTs23ZVQhKgWRWIeoIZ9V
 1TQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=EZWTGR2wDApXn1qZCOfO8QQ0qwLL2b6F+ahGlWVDubE=;
 b=qLnRxfDoL10rI93JpxOZyvxr+Sz7LtwJv/BXUHfIh2spE468eTOTW9V1MVnD9LqJxj
 QGnYRjPjY2eveBZQDrD6D1LJpzoS2NwUwAX2t8KGfWuxjCPESdsskZfQyplsRp1LVj4Z
 pGBykhbDbe2mIw1jSVrXE83RWK0u1zWPCRL24kJirl3IBbDxo84LURm0WzwCN/aH1Iuo
 X9D+bJmuYC0QWm255yhfAa7B3oj7hTHQDGtHIfgMQfwojj5nzCTIsmszOgPzF1Iu4DSb
 Z5hpz1Jeyr0Z0WJBZ4h7muHQVCH3yU1woESTdStQBHsEUmlZG7Nobkbul4vh6zCTD91C
 BckA==
X-Gm-Message-State: AGi0PuZ3f/mXIofxV0q0Ko3sWWQTYE3h+RLstRb6WZ07A9L0/ESrdAqd
 R43TYP3nkBwWIgua1PTrb4Q=
X-Google-Smtp-Source: APiQypJ/bDxFy3P4vG/L+xY5hQN6UgcBmpz0Oy4ArCtE5VFPb+XAJMmVLhzSVnO2QcZz5nZQ6W4blg==
X-Received: by 2002:a62:b611:: with SMTP id j17mr9266856pff.214.1587731058449; 
 Fri, 24 Apr 2020 05:24:18 -0700 (PDT)
Received: from syed ([106.223.101.26])
 by smtp.gmail.com with ESMTPSA id g9sm4845622pgj.89.2020.04.24.05.24.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 05:24:17 -0700 (PDT)
Date: Fri, 24 Apr 2020 17:54:07 +0530
From: Syed Nayyar Waris <syednwaris@gmail.com>
To: akpm@linux-foundation.org
Subject: [PATCH 0/6] Introduce the for_each_set_clump macro
Message-ID: <20200424122407.GA5523@syed>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_052421_102182_CE527AC6 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [106.223.101.26 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

 drivers/gpio/gpio-104-dio-48e.c            |   8 +-
 drivers/gpio/gpio-104-idi-48.c             |   4 +-
 drivers/gpio/gpio-74x164.c                 |   4 +-
 drivers/gpio/gpio-gpio-mm.c                |   8 +-
 drivers/gpio/gpio-max3191x.c               |   4 +-
 drivers/gpio/gpio-pca953x.c                |   4 +-
 drivers/gpio/gpio-pci-idio-16.c            |   8 +-
 drivers/gpio/gpio-pcie-idio-24.c           |   8 +-
 drivers/gpio/gpio-pisosr.c                 |   4 +-
 drivers/gpio/gpio-thunderx.c               |  12 ++-
 drivers/gpio/gpio-uniphier.c               |   4 +-
 drivers/gpio/gpio-ws16c48.c                |   8 +-
 drivers/gpio/gpio-xilinx.c                 |  64 +++++++-------
 drivers/thermal/intel/intel_soc_dts_iosf.c |   6 +-
 include/asm-generic/bitops/find.h          |  12 +--
 include/linux/bitmap.h                     |  60 +++++++++----
 include/linux/bitops.h                     |   9 +-
 lib/find_bit.c                             |  12 +--
 lib/test_bitmap.c                          | 136 ++++++++++++++++++++++++-----
 19 files changed, 253 insertions(+), 122 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
