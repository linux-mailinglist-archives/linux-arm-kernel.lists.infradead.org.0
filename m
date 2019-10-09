Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D8FD12CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 17:31:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6lxbi+xfpPKAMHdasT23zHn7ixayy6AgVdDl4as0JQ=; b=M+H3YOGEl4H9SR
	PVn4U/9FUI5HsyzNjnGvbp+Zuh63lFpMNq2zo/lGByAsUg4B4JbiCAaLom2h/xan3TBMsFZtRWnvu
	CSoPPfIycLN2h780WqqZjDKuIFZsDtC0QQZUZT6EM8Wd6pdbIVCmOjE+vhDZ9y7imrr1VzM1kTVlw
	8RT7vEyNKG/6vprk/il0oATU7FNBEpKcdmHpuQsWkh6GBT02Wa00CBID01GaqkDsYzHFTLOWDNVja
	QwhRwKPyTUwu0fAZJecD7Lm9hx77uD7DmzSw4CwZ+2EY3GeiRPdZttqZci2NycpI7I5NcJaR9LEk8
	cUEb3W8Thd+dy7PK4wNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIDwB-0006ET-2Z; Wed, 09 Oct 2019 15:31:39 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIDsd-0001pY-6I
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 15:28:01 +0000
Received: by mail-yw1-xc41.google.com with SMTP id x65so944409ywf.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 08:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+D/uU8MO7mShW9teASkMb7bJZjWkGz/G9NDBF9ekIAA=;
 b=M6XRUjfZq39AjkcgPSUAdckM2+dSQa7UVUtap+gSKdeq297uOsrTQOStLUzvs00Qrb
 606E6Wl/7AIVW+481GiVFj9U70JbVhcT4rJQhU8u0cdjRd/ahDVXc08IZfHlfsRisU65
 HUf/gtgrZDf8ucFfmS7yer7Q2ZO4chbV49OgeG+21rgNRnhnrhWYgbBCAc/TInIbmwv/
 1kQeiD7tPqfWieHEf4TGMLOkmFlM8tdMHUxPbTMWXppeJrqD/PuAwT34w/ZYKtG9VlRn
 zeCV/UDX85wFycgwSfM7h2+qKSN4ukBHcA7y8FcnEjOH1cWoWnqsTz0WE5j6yXxO/LoN
 Tf5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+D/uU8MO7mShW9teASkMb7bJZjWkGz/G9NDBF9ekIAA=;
 b=lAoaOnDwBVpL53s45qE8OZ6WyMbYmZgoiwknuIfKUmcJOflTEeGGvrgJuivq/dKjoq
 pTlplLAvcVa/05J2vC6ZNOElygBXcsnFYwLDJH1+1/NmGut7GmJVGzDqLGw906hXHZhN
 TctO/MfTs3hIOwe3bUvidpVPHeEgbGp4hejrmMrEQRPP4L/KBWuPxGRbMAfJbSnnFH2T
 nN2E/CuhUDj7C60m/+kD4lYY1Kb/LPIYSbcIfG4FQbnrPx0bf9tbKqXCDdfknJ134C0e
 dsGJB+bAXLXGTW08gLaq5poEaXH2w6HY5ZC1LQORelQGeqsueEY99vEtQSPbW7PSx+3z
 ejLQ==
X-Gm-Message-State: APjAAAUtd+dGTQMayp3pe7EMF24QAOD3phsGvPsi1FfGMLMrs9suUGH+
 w5nqOQCCJbQZMDmsP95B3zc=
X-Google-Smtp-Source: APXvYqz0Hy2G/IPQYpNgQ2+jg5eXDNlvGay9DVAaikzPXiFu+PnfuZUhGx/byXO6uT9JyUj3SwB22A==
X-Received: by 2002:a81:1ec8:: with SMTP id e191mr2994034ywe.447.1570634877541; 
 Wed, 09 Oct 2019 08:27:57 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id g40sm611863ywk.14.2019.10.09.08.27.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 08:27:56 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 akpm@linux-foundation.org
Subject: [PATCH v17 14/14] gpio: pca953x: Utilize the for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 11:27:12 -0400
Message-Id: <ec3264f6b21c61d3a04e929cc0f84be485decdaa.1570633189.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570633189.git.vilhelm.gray@gmail.com>
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_082759_454521_94CA7715 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
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
 morten.tiljeset@prevas.dk, sean.nyekjaer@prevas.dk, linux-gpio@vger.kernel.org,
 lukas@wunner.de, geert@linux-m68k.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
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
