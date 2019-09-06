Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D3EAB451
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 10:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m2cN5vS2KDj5iuebRXdyUnQ6d7Q8Gu2HZaBO/uANAro=; b=YrjpDwGXmQCiQ+W8b5QmtIoALB
	DqAncmEM6TAfFvSNPBENSgzSn95dYOkfw9DHsSvFn4dwdWfhGvb1voaBuQzN3oWUqmx+I4XOTW5EQ
	p9Qo1WmC7Up6rH4k2aKtEvgLQP69MLHyTp9jDhZfxJWK+r769mfc2KlOVQZcN/cYbNUy7jQ9+PAzh
	h9vbQRGH8bnhRkzYQg85aDTII7tVx5/ODXdZ+mWyfNAoM/7F3TFsqc/iX08f5lz3CJxGlPrHABK/U
	tH24fXjQdo64eCwFYgjGP/Hkn+U/WdJVuSHdShe5DF5LEAqO5kgRqca/7ZzrFvJEfpqVbhfTPI0HI
	49WZsS1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i69uL-0006hL-7Q; Fri, 06 Sep 2019 08:47:54 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i69sO-0005ke-5p
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 08:45:56 +0000
Received: from ramsan ([84.194.98.4]) by xavier.telenet-ops.be with bizsmtp
 id y8lh2000105gfCL018lhBh; Fri, 06 Sep 2019 10:45:41 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i69sC-0003N3-UY; Fri, 06 Sep 2019 10:45:40 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i69sC-0005h6-TH; Fri, 06 Sep 2019 10:45:40 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH 2/4] gpio: of: Make of_gpio_simple_xlate() private
Date: Fri,  6 Sep 2019 10:45:37 +0200
Message-Id: <20190906084539.21838-3-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190906084539.21838-1-geert+renesas@glider.be>
References: <20190906084539.21838-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_014552_386402_2E172496 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit 9a95e8d25a140ba9 ("gpio: remove etraxfs driver"), there are
no more users of of_gpio_simple_xlate() outside gpiolib-of.c.
All GPIO drivers that need it now rely on of_gpiochip_add() setting it
up as the default translate function.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/gpio/gpiolib-of.c |  6 +++---
 include/linux/of_gpio.h   | 11 -----------
 2 files changed, 3 insertions(+), 14 deletions(-)

diff --git a/drivers/gpio/gpiolib-of.c b/drivers/gpio/gpiolib-of.c
index 4c6b366cb7bd5cd0..fad3aad667558325 100644
--- a/drivers/gpio/gpiolib-of.c
+++ b/drivers/gpio/gpiolib-of.c
@@ -637,8 +637,9 @@ static int of_gpiochip_scan_gpios(struct gpio_chip *chip)
  * GPIO chips. This function performs only one sanity check: whether GPIO
  * is less than ngpios (that is specified in the gpio_chip).
  */
-int of_gpio_simple_xlate(struct gpio_chip *gc,
-			 const struct of_phandle_args *gpiospec, u32 *flags)
+static int of_gpio_simple_xlate(struct gpio_chip *gc,
+				const struct of_phandle_args *gpiospec,
+				u32 *flags)
 {
 	/*
 	 * We're discouraging gpio_cells < 2, since that way you'll have to
@@ -662,7 +663,6 @@ int of_gpio_simple_xlate(struct gpio_chip *gc,
 
 	return gpiospec->args[0];
 }
-EXPORT_SYMBOL(of_gpio_simple_xlate);
 
 /**
  * of_mm_gpiochip_add_data - Add memory mapped GPIO chip (bank)
diff --git a/include/linux/of_gpio.h b/include/linux/of_gpio.h
index f9737dea9d1f945a..16967390a3fe3b12 100644
--- a/include/linux/of_gpio.h
+++ b/include/linux/of_gpio.h
@@ -61,10 +61,6 @@ static inline int of_mm_gpiochip_add(struct device_node *np,
 }
 extern void of_mm_gpiochip_remove(struct of_mm_gpio_chip *mm_gc);
 
-extern int of_gpio_simple_xlate(struct gpio_chip *gc,
-				const struct of_phandle_args *gpiospec,
-				u32 *flags);
-
 #else /* CONFIG_OF_GPIO */
 
 /* Drivers may not strictly depend on the GPIO support, so let them link. */
@@ -77,13 +73,6 @@ static inline int of_get_named_gpio_flags(struct device_node *np,
 	return -ENOSYS;
 }
 
-static inline int of_gpio_simple_xlate(struct gpio_chip *gc,
-				       const struct of_phandle_args *gpiospec,
-				       u32 *flags)
-{
-	return -ENOSYS;
-}
-
 #endif /* CONFIG_OF_GPIO */
 
 /**
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
