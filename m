Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9E0CD2B2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:14:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DElWf7UNAKSMA/HL0uOcJqIXD5+rxrllhgch2PKAZg0=; b=kikajEEnQL0LIu
	inaAjjO1bAInl0MVfSDEV83szZct3y9CpeWSKhH9MNJ1DmyFxs5RMBCBx8CS/FGrDlZwKbvVfb9YU
	rBVpomy5PICNOBXrFBIF5tuD8hwZc1CWesanGs5ubksh2DnATtqrX1K7Y7W4IQgq3yiQjexx48jNH
	z5OvN9dcTiet+kOeHyUPngtEZg4PMaZzRxVDW+k/aB8VVnn6SRuhfhsjnM+SuyUzfjYQcZz/k+luV
	rvqdxIU9a8IK1GtwPMVTvPuAGlNOauSwM072hB9hMZfXHXMSJxI1sBxAAVnkCDz/pEOfC3OEeSVYt
	4NJbwu/m/lBTv58tW3DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8FG-0001rg-Kf; Sun, 06 Oct 2019 15:14:50 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8CL-0007x9-1u
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:11:50 +0000
Received: by mail-yb1-xb41.google.com with SMTP id r2so3818150ybg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 08:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mBleGApOd9DY5AB30uyK9JEv+41JBB1+F0GtLYOX3MQ=;
 b=gt+dpgEzdCZwKJd9QMa5Z8eOLC2T8qGgqQPEDXeJ5+hjFfNU9Bzo1oyXr5FLQacxsB
 anjs36Ex2uAl8Bvf1X9a5T2FRSJ1WsapBZeDxNxG5mNpyGFAqyQCd/SOQjspGsbjgLtq
 XyyEruQfjzgKhA9Z0+mjV4dhyRBF36HBeV442cmxACfjrVlakS6t3E3nFncy8FCToC2I
 O2bKb70qAlk//4C2wpJBPSCG/V+4vxW3eDrSYwDJOPrRFMyMhp6nYl9Q80wzA28pn8Ox
 1+xg35Su/lH4vHvw1AmMOQXkGQxaTKDv9SSwWmgSifRSUnwVGO5GOdiyHuhZZEoCUHTJ
 a+0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mBleGApOd9DY5AB30uyK9JEv+41JBB1+F0GtLYOX3MQ=;
 b=BdLamtVsoxJCVmNICi6x7jqZ9MENmPApW3XZ2XER+M8oNywZz5zD08ieU8+DInftbg
 0cgge4HjUgrNGNw8z5M/LR6ZP5tc3VZsDZPboKbIr1pQb4c26Y0atLw6Mg4OFhUHtp63
 /UIADfK/OqghyoFL8jtVNwK9U4cE4AIMwt8j54/mZRGJp3/8M/gBavY/GTQcVLN2OrrR
 y2oE9N7QWJYhkc4z6rmNgj0iB8fa/6kbjIvB4UMklWPFVdfY79Yh8QWMufILLduI++n0
 tTq4fwmAyezdy4KzzKs39BCsuaUU6LaCWpOluQ0PaGHUXfK5BJ5mPoucYKUTbBbkzlWy
 gu6A==
X-Gm-Message-State: APjAAAUarGX1ig/EYK+Y7xw1lhdmyTgPagzxrw0TRRvh9ibzlm/21ZDk
 BdB3na0vOlnb2mbf7smq4aw=
X-Google-Smtp-Source: APXvYqyAU7nShqOfV0xQ4W/Fnp2TBk8JHLI/ydnQomXT/geTbWMbW8LY9nK13dAunNP5MmXPcWYT+Q==
X-Received: by 2002:a25:c1c7:: with SMTP id r190mr1135831ybf.64.1570374707347; 
 Sun, 06 Oct 2019 08:11:47 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id e82sm2662434ywc.43.2019.10.06.08.11.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 08:11:46 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v16 10/14] gpio: 74x164: Utilize the for_each_set_clump8 macro
Date: Sun,  6 Oct 2019 11:11:07 -0400
Message-Id: <13f5d24820e5e3a17a64d025f09efc37eda77739.1570374078.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570374078.git.vilhelm.gray@gmail.com>
References: <cover.1570374078.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_081149_267650_A69A3EFA 
X-CRM114-Status: GOOD (  11.79  )
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
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
