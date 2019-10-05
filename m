Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6C5CCC5E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 20:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6lxbi+xfpPKAMHdasT23zHn7ixayy6AgVdDl4as0JQ=; b=CV83QH2YuwzcRL
	XNcAqQRKfjoElwQuVgFdWifHZlYlbnN3yVjQMQF4kE4tK2D9PEsgdQBksacCdrSjtOyq7aRWJQTec
	DtltpDin9f+sHT3Gln3t0gTnv3TAxw09RkVED+LyzePMde2JImAknGURqHBWCxIxfWfSY4MaMd4AR
	omtEpt1gOxgQ5pJ+wImE/ohlfuAiEreYlzwqttOAKzNn3vCVHOqJdFFLPLNtbzmAsUm/2P7PUJ5AR
	uNqUMwJQwHv0+FyfK4jG+dfIH9se0wsks6HQBGr/YONuklMZu6Jh6ApWDZzGq//9O7/t25asHfptP
	wK1FmGaCcG6VDeRl7fvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGozr-00076l-M3; Sat, 05 Oct 2019 18:41:39 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGow8-0002hQ-36
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 18:37:49 +0000
Received: by mail-yb1-xb41.google.com with SMTP id v37so3262974ybi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 11:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+D/uU8MO7mShW9teASkMb7bJZjWkGz/G9NDBF9ekIAA=;
 b=D8RCOMOBnWY/mlNW/C5axvbf/3ehCZdse+eDY0V4znJS+RHth2royzKu97Yd4K1sv1
 b1mhUjoT+0vEljiChKoyxhmHsmatvUUnODBCCvx8GCUOLjvds0ykf4H3amGh7SXTzg8u
 X9xZpEiB6TREQz5mXUXnm27ZYLz+tAobmmbuLN9U2qAbuor3S1gKNiFChJhCcNu0IHBy
 q51Es6YRrewrlCCeFJTqYPfj+LwS0nSSGrTie476IIbYeGV/2HZz12NUjWAAi9/ULvij
 rodfb2+Qox6fsfRmOUNwlYKDh1abLBjlX2OH7HmMQ7MvcNyaJYXSe/cxfPAr5H+Anxpa
 kgZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+D/uU8MO7mShW9teASkMb7bJZjWkGz/G9NDBF9ekIAA=;
 b=RIvxRebhQ7mH2yuKghi2mK5htYaD8tByQPXQ2jxUwht3a9Bt9I0G0KFTW/kvi44p6T
 z1OG4yC81xPmz6RorHriyuFTi1JyU36GxP5ZdMiHjlwAbZtvC3GNivLdP48svqfxdMWJ
 7csePyemM/Shf1C4+kiGHQLQa0lrLGXHMN3HhjiGK+uwo6OEn4PPqHBnKxL9K64b3GCr
 l/gtRqpOJVEODVCkemcUsbj3sIR3lzR5BBNNMi9Tqn7aeCFZWcOG3tdO8UZYkaOVT99H
 m2sbn6goi+qdIfEIonVgWh+Dy268i8EmoA/pFo0257Wj3kOB7sEt4X/HhSx6smzYVZGC
 KNAA==
X-Gm-Message-State: APjAAAWdMLDqYOOWt9O9I2hAAZ4+LU9qhSCmXGrYPduzfYR0j5rmrZDv
 nWRMtiCHULQ7ukjOZ+8Ymog=
X-Google-Smtp-Source: APXvYqzbKeCNVgMNJGmKhK9BQMUZhI8Qkf9l6oWvXfibu1acZELcxJQyvcIBhfRHFc7pi+gD3H2O0g==
X-Received: by 2002:a25:c145:: with SMTP id r66mr5940783ybf.423.1570300665985; 
 Sat, 05 Oct 2019 11:37:45 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id g128sm2376654ywb.13.2019.10.05.11.37.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 11:37:45 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v15 14/14] gpio: pca953x: Utilize the for_each_set_clump8 macro
Date: Sat,  5 Oct 2019 14:37:08 -0400
Message-Id: <0e06cc7486c1702c7a0d3d9f8a719379cf4993b3.1570299719.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570299719.git.vilhelm.gray@gmail.com>
References: <cover.1570299719.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_113748_164500_1C00A249 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
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
