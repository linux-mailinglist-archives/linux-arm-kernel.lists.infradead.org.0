Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC76AB44C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 10:46:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gyjkjWbrUVxKZE9PEzFxOpVGVmVxpkvC0REYWiHwXUs=; b=LR9vQNe/PQyTadjl5j5wRIjvm0
	HvcNbncmbqqLpIE+6mG9LJAEjZfwc8ptKfOkJxWPsO05FvKV3D8Rf/HN4pwMTQ1GO/BdsfXvfofIx
	amdxaPeKNDtwMsOxlQ+ZX/uNGxUw8/AGkto425Wthn3G0sgmKVlY39lUWVBJWyHQC1LNx9N4Lt0jz
	+JwK3OUTJBIKQ6AgwPp/PDWZF+hX4cDOxl2svrhhunHfPb9uvYY1mEW4WKNXGYR9MSHqa7134pmmg
	zazCo0uT/bPuTUqOsKonGeQftdYmBekrzU/Rx7HLbhR6VwHs/ildDG44PSnlX68YlN7K4vcWCYX5c
	gUqgpB8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i69su-0005yT-DJ; Fri, 06 Sep 2019 08:46:24 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i69sO-0005kl-2N
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 08:45:55 +0000
Received: from ramsan ([84.194.98.4]) by michel.telenet-ops.be with bizsmtp
 id y8lg2001605gfCL068lhD2; Fri, 06 Sep 2019 10:45:43 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i69sC-0003N0-Te; Fri, 06 Sep 2019 10:45:40 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i69sC-0005h3-SO; Fri, 06 Sep 2019 10:45:40 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH 1/4] gpio: of: Make of_get_named_gpiod_flags() private
Date: Fri,  6 Sep 2019 10:45:36 +0200
Message-Id: <20190906084539.21838-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190906084539.21838-1-geert+renesas@glider.be>
References: <20190906084539.21838-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_014552_271021_67A79338 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
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

Since commit f626d6dfb7098525 ("gpio: of: Break out OF-only code"),
there are no more users of of_get_named_gpiod_flags() outside
gpiolib-of.c.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/gpio/gpiolib-of.c | 2 +-
 drivers/gpio/gpiolib-of.h | 7 -------
 2 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/gpio/gpiolib-of.c b/drivers/gpio/gpiolib-of.c
index b034abe59f287bff..4c6b366cb7bd5cd0 100644
--- a/drivers/gpio/gpiolib-of.c
+++ b/drivers/gpio/gpiolib-of.c
@@ -223,7 +223,7 @@ static void of_gpio_flags_quirks(struct device_node *np,
  * value on the error condition. If @flags is not NULL the function also fills
  * in flags for the GPIO.
  */
-struct gpio_desc *of_get_named_gpiod_flags(struct device_node *np,
+static struct gpio_desc *of_get_named_gpiod_flags(struct device_node *np,
 		     const char *propname, int index, enum of_gpio_flags *flags)
 {
 	struct of_phandle_args gpiospec;
diff --git a/drivers/gpio/gpiolib-of.h b/drivers/gpio/gpiolib-of.h
index 454d1658ee2d45fb..9768831b1fe2f25b 100644
--- a/drivers/gpio/gpiolib-of.h
+++ b/drivers/gpio/gpiolib-of.h
@@ -11,8 +11,6 @@ struct gpio_desc *of_find_gpio(struct device *dev,
 			       const char *con_id,
 			       unsigned int idx,
 			       unsigned long *lookupflags);
-struct gpio_desc *of_get_named_gpiod_flags(struct device_node *np,
-		   const char *list_name, int index, enum of_gpio_flags *flags);
 int of_gpiochip_add(struct gpio_chip *gc);
 void of_gpiochip_remove(struct gpio_chip *gc);
 int of_gpio_get_count(struct device *dev, const char *con_id);
@@ -25,11 +23,6 @@ static inline struct gpio_desc *of_find_gpio(struct device *dev,
 {
 	return ERR_PTR(-ENOENT);
 }
-static inline struct gpio_desc *of_get_named_gpiod_flags(struct device_node *np,
-		   const char *list_name, int index, enum of_gpio_flags *flags)
-{
-	return ERR_PTR(-ENOENT);
-}
 static inline int of_gpiochip_add(struct gpio_chip *gc) { return 0; }
 static inline void of_gpiochip_remove(struct gpio_chip *gc) { }
 static inline int of_gpio_get_count(struct device *dev, const char *con_id)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
