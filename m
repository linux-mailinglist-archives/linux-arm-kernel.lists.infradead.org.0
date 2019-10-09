Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8837CD155C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 19:18:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DElWf7UNAKSMA/HL0uOcJqIXD5+rxrllhgch2PKAZg0=; b=nP2zBKNWXXMM36
	kg/IFlhbAeo7dHbS83pgoAKlWf5/LaNRzpPVA1IXPihBsjlFFrc6zrY/EyhEWRRWBSF33PyI5GVgC
	ZDqyr7bz10DwIT6SZ8PiI3vu3i9OzmfgBcAa36gCkPfhSoIckR+Bze9UNifi2efKLV0dV3b9tKStn
	IqyjHKee4mnXLny9av5clJ2KHL8mwg5uHTZrOzdvB5WLgvlXXE7Lts+5YGF2+c6bAYJj5ALIX3EL3
	NIoCdlCCr4la5V1Z9awOLqO+Xt4D+OQUIFckRyTTuWjX0Icg/BmEN20QSbW3P5Q/Ab6O4dusKudqD
	CYE5pHVxRTi9Hg48hSqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIFbQ-0000V6-Qt; Wed, 09 Oct 2019 17:18:20 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIFYf-0006UU-0z
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 17:15:30 +0000
Received: by mail-yw1-xc43.google.com with SMTP id m13so1075993ywa.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 10:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mBleGApOd9DY5AB30uyK9JEv+41JBB1+F0GtLYOX3MQ=;
 b=hwDrV73b1Avzv1ol5VQppYlIxu1TTuEK+isNnmnLVblA+yhsovmwg7qYnyTKByvRgk
 bxQBvPvUqDA+O/nOpVN0alP2eBcA13VvqM9ZPTXHsrZ6LQX+HRL8Xn+aFGWapS8oNDA/
 4ZtueKBJmaHTQytL3ObzqT8QkEiiQEP92dIzfq5QpY8QxhNJlRwgXJJYdzeenEOJWI0D
 fAT1lp4Pb2d4MiBr/7vlbyopDjeQ2cq/qndfd0MvciDrk9Q/oavaITOhrxTaZuCxiNy7
 LBTTeeJ8ubleTuZedOBOSJVn8h82ersc3dnGBCHLTpKiGR6RRPXyk3lXflTLge2UUwod
 nX3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mBleGApOd9DY5AB30uyK9JEv+41JBB1+F0GtLYOX3MQ=;
 b=dhD73TCvS0UEJXW+f9AmV7M177HMJ48FU4K+U4IDIdsIA83hEtdcPGLV00PbW/niQv
 lmAFTYa0BoiywVNFMHA9nG/Xcf6g5TSmxLoOpxAB9fCxgI46tMvBZ5oNEdNoHi6uzGqL
 ruQpu5c8cxf4ata7s8J1XnuB90ihi+WkicGkE9rFD7t6WynRAgeghaAnzBHLtzrtAO8c
 wByufzljQ9ECFC5prSVW5hrh6wsQULZFUFNLB68Q/gRP5KM6q0wJfNr/vFNAu1Yc66Jg
 Onvb4VeFvKRPdhGIKvVmKABROrxLBfQziP1O3KbvKZ9K5bz0yAoV1uaNwLrMuzoEiTAl
 48vg==
X-Gm-Message-State: APjAAAUwAJHBJ7bB+lzw+5ghifSYwcZ+RSH2W+pg0Ovc2Top2yrQ/Tj+
 mZq7QvGX0w7UKzIJAOx0v6E=
X-Google-Smtp-Source: APXvYqw3uf467joL0uaxSBgA0rGZBGHi1rB15yRlN0gP0y58m3r2lite14ooWoULV1XQ2AZLPocVCw==
X-Received: by 2002:a81:2d41:: with SMTP id t62mr3704519ywt.368.1570641327784; 
 Wed, 09 Oct 2019 10:15:27 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id r63sm743292ywg.36.2019.10.09.10.15.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 10:15:27 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 akpm@linux-foundation.org
Subject: [PATCH v18 10/14] gpio: 74x164: Utilize the for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 13:14:46 -0400
Message-Id: <7ea2df7182a50a1136ca36edc46dffcb2446fd27.1570641097.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570641097.git.vilhelm.gray@gmail.com>
References: <cover.1570641097.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_101529_090988_D3B9F31F 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
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
 Geert Uytterhoeven <geert+renesas@glider.be>, yamada.masahiro@socionext.com,
 linux-pm@vger.kernel.org, linux@rasmusvillemoes.dk,
 linux-kernel@vger.kernel.org, William Breathitt Gray <vilhelm.gray@gmail.com>,
 linux-gpio@vger.kernel.org, lukas@wunner.de, geert@linux-m68k.org,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace verbose implementation in set_multiple callback with
for_each_set_clump8 macro to simplify code and improve clarity.

Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Phil Reid <preid@electromag.com.au>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/gpio/gpio-74x164.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpio/gpio-74x164.c b/drivers/gpio/gpio-74x164.c
index e81307f9754e..05637d585152 100644
--- a/drivers/gpio/gpio-74x164.c
+++ b/drivers/gpio/gpio-74x164.c
@@ -6,6 +6,7 @@
  *  Copyright (C) 2010 Miguel Gaio <miguel.gaio@efixo.com>
  */
 
+#include <linux/bitops.h>
 #include <linux/gpio/consumer.h>
 #include <linux/gpio/driver.h>
 #include <linux/module.h>
@@ -72,20 +73,18 @@ static void gen_74x164_set_multiple(struct gpio_chip *gc, unsigned long *mask,
 				    unsigned long *bits)
 {
 	struct gen_74x164_chip *chip = gpiochip_get_data(gc);
-	unsigned int i, idx, shift;
-	u8 bank, bankmask;
+	unsigned long offset;
+	unsigned long bankmask;
+	size_t bank;
+	unsigned long bitmask;
 
 	mutex_lock(&chip->lock);
-	for (i = 0, bank = chip->registers - 1; i < chip->registers;
-	     i++, bank--) {
-		idx = i / sizeof(*mask);
-		shift = i % sizeof(*mask) * BITS_PER_BYTE;
-		bankmask = mask[idx] >> shift;
-		if (!bankmask)
-			continue;
+	for_each_set_clump8(offset, bankmask, mask, chip->registers * 8) {
+		bank = chip->registers - 1 - offset / 8;
+		bitmask = bitmap_get_value8(bits, offset) & bankmask;
 
 		chip->buffer[bank] &= ~bankmask;
-		chip->buffer[bank] |= bankmask & (bits[idx] >> shift);
+		chip->buffer[bank] |= bitmask;
 	}
 	__gen_74x164_write_config(chip);
 	mutex_unlock(&chip->lock);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
