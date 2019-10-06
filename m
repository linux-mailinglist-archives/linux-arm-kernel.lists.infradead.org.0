Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D6ECD2B6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6lxbi+xfpPKAMHdasT23zHn7ixayy6AgVdDl4as0JQ=; b=JArVy4bjvgTYgg
	n8dqGWcROncDfMTf+Wev4Y+XI2XKZ9wtSOVGk5sitjAoahfdyoAs4Bg7ciS8uqlwO0K7NicTbSrF2
	f0BiFppLefA6UrL5hC3kDjR/SiAwt3BNrsnen/s+KXQisMoQluxMPOb+srODieATi9V7QbG+uoxz6
	ODPOyQD/t4BoBkxE7x0gFlKUUNIa1f6TGt39YSpPXlYdoQbhKDZIxtXONgaFAmFjs8PTqZra0NJB/
	1C/VV299QMw/z6WrdECziN7qVkpxXPgGxI18NlA6uBcLRPdNj+KbDuceUJo5VB7ZW8HPVjQT5o2U/
	9021WVd8yD7pcqU6DAtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8GV-0004Ap-GE; Sun, 06 Oct 2019 15:16:07 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8CP-00081o-Bs
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:11:54 +0000
Received: by mail-yw1-xc42.google.com with SMTP id e205so4176351ywc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 08:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+D/uU8MO7mShW9teASkMb7bJZjWkGz/G9NDBF9ekIAA=;
 b=bSaBzvAm7KA+Z/RsiMdo7RdD6lPZanjxLUuwHA3WYW2PklPBygtPZwz4rImtHSmqZC
 /HnjmIQeRebqFtRiVoceY8ds406L6UZJ1DYUz6ZGQMD3INfafFKEi+0wwYVbdhwnGQ4a
 bvIxyiWv7HzbHyulJAhvUugTqHm1U7VG2ajipNGF3dnH3fIqjZ5QJTm2Oq5C2bvtG91u
 mTeUEGBRdsPJ8krYvExNEWIcqP12Wr6LNuPVnkE9XcriRZf18Ct/5hZyXXXWy9yQF+98
 l7ZGiLbhCnrhPU3yw8EGIF8ZkLWst53Ovm89jxBlqlzykMnTtxQIzw8KT+2DWIoapry4
 NUhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+D/uU8MO7mShW9teASkMb7bJZjWkGz/G9NDBF9ekIAA=;
 b=eT58VM87tPfbmLlyRRmCM9/9gx1GNh70FtS6cUGkXHJj2sVAoM22eN1j+f/Hfork9a
 sVZlHM+IB1fJa9acoAbApd1ZsoJ7H28CmINlKc1srdiNu4JOP1eBSyq+2SrjlYPtBz8j
 y3hI3aBBEgFpS4EX5UY9urVG2vRmyRs60FKtCTzLYUYJpizYTmYiW9p6MJQW3WRtb1We
 UOtPw9I2R7FvfBj/QjUsc/5l6tUzNThvhYow8fz4nNr2VYBRf71hnxXmNZUH482Hnt2R
 UheM/k8TDRaSkEzl5MMb6fZG/urqFz9RKopFpY4hEzczYfYzi2orbf9ZuNoob1N0bgOS
 gjdA==
X-Gm-Message-State: APjAAAUKzNWdT9UoJktod+KrP9A5ifv7IhVrc6yVFLcDrSJ2yOlVagE+
 1EUodGFwRjdrH2+rzUXkGjw=
X-Google-Smtp-Source: APXvYqwr2ooDXQQ6eqsusMVR7Kxn0E0w2B0g/QYDmlIZXMarPB9hGznNphE4oCV+6ROdcWSP24S/hQ==
X-Received: by 2002:a81:6bc2:: with SMTP id
 g185mr16996224ywc.316.1570374712617; 
 Sun, 06 Oct 2019 08:11:52 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id e82sm2662434ywc.43.2019.10.06.08.11.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 08:11:52 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v16 14/14] gpio: pca953x: Utilize the for_each_set_clump8 macro
Date: Sun,  6 Oct 2019 11:11:11 -0400
Message-Id: <e72393325e58778b7ba59c80c6b79c1f93b81d8d.1570374078.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570374078.git.vilhelm.gray@gmail.com>
References: <cover.1570374078.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_081153_446744_58A78DB1 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
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

Replace verbose implementation in set_multiple callback with
for_each_set_clump8 macro to simplify code and improve clarity.

Cc: Phil Reid <preid@electromag.com.au>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/gpio/gpio-pca953x.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
index de5d1383f28d..10b669b8f27d 100644
--- a/drivers/gpio/gpio-pca953x.c
+++ b/drivers/gpio/gpio-pca953x.c
@@ -10,6 +10,7 @@
 
 #include <linux/acpi.h>
 #include <linux/bits.h>
+#include <linux/bitops.h>
 #include <linux/gpio/driver.h>
 #include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
@@ -456,7 +457,8 @@ static void pca953x_gpio_set_multiple(struct gpio_chip *gc,
 				      unsigned long *mask, unsigned long *bits)
 {
 	struct pca953x_chip *chip = gpiochip_get_data(gc);
-	unsigned int bank_mask, bank_val;
+	unsigned long offset;
+	unsigned long bank_mask;
 	int bank;
 	u8 reg_val[MAX_BANK];
 	int ret;
@@ -466,15 +468,10 @@ static void pca953x_gpio_set_multiple(struct gpio_chip *gc,
 	if (ret)
 		goto exit;
 
-	for (bank = 0; bank < NBANK(chip); bank++) {
-		bank_mask = mask[bank / sizeof(*mask)] >>
-			   ((bank % sizeof(*mask)) * 8);
-		if (bank_mask) {
-			bank_val = bits[bank / sizeof(*bits)] >>
-				  ((bank % sizeof(*bits)) * 8);
-			bank_val &= bank_mask;
-			reg_val[bank] = (reg_val[bank] & ~bank_mask) | bank_val;
-		}
+	for_each_set_clump8(offset, bank_mask, mask, gc->ngpio) {
+		bank = offset / 8;
+		reg_val[bank] &= ~bank_mask;
+		reg_val[bank] |= bitmap_get_value8(bits, offset) & bank_mask;
 	}
 
 	pca953x_write_regs(chip, chip->regs->output, reg_val);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
