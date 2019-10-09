Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7ACD1563
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 19:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6lxbi+xfpPKAMHdasT23zHn7ixayy6AgVdDl4as0JQ=; b=YSoDvMUbykFReY
	Lwo8jP4WsiaHUobjY65ATnJUPHud6HN3tXGb+gVQO3Mu265YGZayh2GT879qwfHAkqoD/GFFkGwOd
	COa66ELCMpLL3w2KnFSkkUWE1MqGpNEbfnquMjHHFL4DIQ6EaRfSpJpylWStwkVHW/t4XcvDhqAC4
	UTa4FJCAP0lGCaJS+ExJbqZ5Nodj2Z3/Ap8OhF5GxmtihCDoITqEDn0nPvAAMgJ/27+drU1M3Gva4
	R3y7CNDYLe16k146yRrb3hQWrQeYixGWfYdtsEQEsY4aBPRfakQQhCJ/Uu+/bfpLA7b66TsZO/YXn
	tJV7zeetstx8exJHpQhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIFcE-0001RX-R4; Wed, 09 Oct 2019 17:19:10 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIFYl-0006fJ-3s
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 17:15:37 +0000
Received: by mail-yw1-xc44.google.com with SMTP id d192so1100368ywa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 10:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+D/uU8MO7mShW9teASkMb7bJZjWkGz/G9NDBF9ekIAA=;
 b=kdbV1nKBX7QFRZZuqVlE1hddyif21obkYZGvk5fHtWvd6zoj6Pz93eZ+xnzRnwZjgS
 Nqvjk26iFkR4G8mVxThcXfh8q57/Pmn8tIVhB6h9M3pjsIcqrA2wZ8sJlc1753CAsMLP
 +JFodP7LOpcyFh9w4MnAX6uCZn7hhYk6rChrZ3eep/OSGHy+P8wGrf+g7RKM8wI9hk0c
 5Ko7/NuVNnd8hm/WAN/JQlZamaAA/MKjpFNpkKDDQZyqFRxyXKoXbiXsnuQdMs8VaUbK
 H91vFRRQYM9IUkULnr7kOYNzEbwx+cC1IQX8UKP+c1wn/Tsjq/ey0WU6Fjvf+w/mhnFs
 i53w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+D/uU8MO7mShW9teASkMb7bJZjWkGz/G9NDBF9ekIAA=;
 b=dUMZqEvpTg0HZFQhF6tIGWCZD0EkoT6GsDDXdPNemqSeByyEMps9FlH7MSiYfdslas
 AqxTKtl8/Kc0pRfpbsU8XQn6wigmyFLeTmNfsQUPQVC89mDkoxFlyntpHL/mhcjrX8Iy
 t/da6E8398J6I4pKHkOdRpQp0ji5/1fATocI4oKArnweXQNjvceo0Qs7UT8BXJlgCvla
 mMrw/YrskLgdliJU64DMatIK7yBYPTdVsdX/DAFg44B5gPzNSzzvpmHsAusAMP9irzz8
 bEZahQkEVt0+vEc5RHgkTlFQfH1mQXqlL9hHQ8jUMqUcGUjNzuiU9QapsnT8QkP10hnd
 wOMw==
X-Gm-Message-State: APjAAAVVEOhwnw4dL50BHLZXbEBd/JeAJk1CftwHatDAmxd2Y3xi3Uv8
 gOvYnjRlmwc4OUqiN2qACdk8PKcE
X-Google-Smtp-Source: APXvYqx1ba26jfo53B5QvO53JIDI7zE0Ohda+kXHonbaNxBT3JWZ4rL68W3mYphHCXVQACx63/JBAw==
X-Received: by 2002:a0d:d490:: with SMTP id w138mr3761909ywd.139.1570641334354; 
 Wed, 09 Oct 2019 10:15:34 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id r63sm743292ywg.36.2019.10.09.10.15.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 10:15:33 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 akpm@linux-foundation.org
Subject: [PATCH v18 14/14] gpio: pca953x: Utilize the for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 13:14:50 -0400
Message-Id: <3543ffc3668ad4ed4c00e8ebaf14a5559fd6ddf2.1570641097.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570641097.git.vilhelm.gray@gmail.com>
References: <cover.1570641097.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_101535_173910_BE10BD78 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
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
