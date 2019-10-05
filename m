Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF25CCC16
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 20:37:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AkkqafoQfn9c4TcTfo4GGWOjvKOoLXfyxcWq79X8L38=; b=FDygTg6duM8KWK
	nvr4Rt814AWDpHSK47Gv7+HictLEWPLJmSC7sPoOULE3UinWa3isA9fFdC7JaQ2pxgJb4n5qzs1Fw
	Qj9cEoJlaPYxwTqTpONewwiZbrPRU/DX/L7yBIwX2EQDwB4v3VapU0+D8kwg4omnHrzu3hurbuVZ1
	IZTquh2Ei7U6pcTyi0BQjIIUegmJUWg3lQzvd4+WEZCOIu96ZIFST2JvnxW4IAqPb6k8iKRP+tLiD
	Dk+yvfYW+orMqFU2/xTDe1H+DV9S+1kgqe/9Y6Icll8UwWaxeKxQAHv3o4vqSjmgNWI4DfHyV4hpJ
	gqyE/I75xW7idOlB2PXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGovw-0002Qa-AM; Sat, 05 Oct 2019 18:37:36 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGovp-0002PC-6d
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 18:37:30 +0000
Received: by mail-yb1-xb29.google.com with SMTP id r2so3273287ybg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 11:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2AJoVgoOlJtCM32LZiMknyZBvbEzY9NtgFLlTHYweRU=;
 b=PPLqQZGh3VQez+XWSDmGc6lG8dqyfSbgXIRoEBr2NGjzMqAne7AmQ88vPf5DLHjpKJ
 E/sUeKEJcKebNY7IinPGij6k3zD7bn9OvWM18EE3LS9VLHlmdwBdyuSqe9VqX22+9BU3
 SdBnpkiV2s9ycDBlTtmHSDRZjh5jlUnbUHhI1Dj4pIw4yhMArxSdZVcnWv2dwngmURXt
 VPjrwwJQq+Z6cEXTz8YNOOwPlGjwB7onMuVa3afaTr1xsXshL6ELUIS9DbnQY35w/iFV
 XT02R3W7H2GtkMMrIrxswWk+3R6fIu3Blo0P1++CqXe5uSgOpvjiXInKo3f4jy6aZH8g
 q6Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2AJoVgoOlJtCM32LZiMknyZBvbEzY9NtgFLlTHYweRU=;
 b=XeFTAxltB/PFeqlTSdAYu/BgIMc86UF8EEGnk3oi2Gjxlvjg5lS4iMdTtuwjMSCBGn
 4LTEMb+t2eF0dQv+SYVl6pSHp8fqkr4qeQzUBO2szD1ALjEyTNHeWqzg//8V924Bqo7y
 bhM4Z86d1gq4DtgZzd0N+0Wb+PuUJJgn9Vu9XdG+WMSkXuSR2cqNpMY/93QVLv45ki4Z
 3u4hoD15gr5uoGEi33XH8rS8k9QuQQaLhvDmehbLNzYeNbQydSbVHm8wZXvsFbTMlnGf
 wg/YKa5ywG52jSy3DbYq4Rw4CSSYm5B0qXuLdow0DreRaqGcBI56Kxo9YH0OACsYiPO1
 D2Hg==
X-Gm-Message-State: APjAAAUHP3SKK9Pz219MF1ocpWcRGYNO2TCGP3GNaWs5ZCuIbnA8eWBx
 OWh1nVBM8uzlEOuRU2Kr2H08aqD0
X-Google-Smtp-Source: APXvYqxh+/cWSsKTt6blKzy8HJ0ri4mJ030rKx7xhz++ocPtaTAWBxxq8fumwGmBPXZb0sGsej3elA==
X-Received: by 2002:a25:2548:: with SMTP id l69mr5910083ybl.159.1570300646571; 
 Sat, 05 Oct 2019 11:37:26 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id g128sm2376654ywb.13.2019.10.05.11.37.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 11:37:25 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v15 00/14] Introduce the for_each_set_clump8 macro
Date: Sat,  5 Oct 2019 14:36:54 -0400
Message-Id: <cover.1570299719.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_113729_247399_AFDE9E8E 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b29 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, preid@electromag.com.au,
 William Breathitt Gray <vilhelm.gray@gmail.com>, yamada.masahiro@socionext.com,
 linux-pm@vger.kernel.org, linux@rasmusvillemoes.dk,
 linux-kernel@vger.kernel.org, morten.tiljeset@prevas.dk,
 sean.nyekjaer@prevas.dk, linux-gpio@vger.kernel.org, lukas@wunner.de,
 geert@linux-m68k.org, akpm@linux-foundation.org,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes in v15:
  - Move find_next_clump8 to lib/find_bit.c since it requires round_down
    (I want this to be static inline like the others, but I need help)
  - Utilize for_each_set_clump8 in pisosr, max3191x, and pca953x

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
 drivers/gpio/gpio-uniphier.c               |  16 ++-
 drivers/gpio/gpio-ws16c48.c                |  73 ++++----------
 drivers/thermal/intel/intel_soc_dts_iosf.c |  29 +++---
 drivers/thermal/intel/intel_soc_dts_iosf.h |   2 -
 include/asm-generic/bitops/find.h          |  50 ++++++++++
 include/linux/bitops.h                     |   5 +
 lib/find_bit.c                             |  14 +++
 lib/test_bitmap.c                          |  65 ++++++++++++
 17 files changed, 325 insertions(+), 362 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
