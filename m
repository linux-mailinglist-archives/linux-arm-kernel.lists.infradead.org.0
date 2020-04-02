Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0BD19CBB7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 22:38:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WanbOLJxGEacWm5LRmTiM5le9BxRFJNk7daT3ZHUK0E=; b=JD39etBz+4i3JH
	bFrUTDpzKAXh6rKqs6rrqxmzv1FIqi2EhwjhRo4/b0Mhx0ibYms3y1ra/9rKMC0UACl4btwPFn3IC
	TJlncHeydqu6KbmWsscIeNT9YPGTy9+jZKFDRJYg9Wz/Pokf5/vRrRJWPjxsO1CBN2iGPw484WvdG
	7eiqjwKBXYFD0BFyXih5cd5QZ+V3qvxmeGSjTlEjhQ/xils+aM7xP5JR9PQaNK7/DAsUikSv6U2O7
	5udURdDvkwz7h+UD8LwHfs7bkd8R2WViHGvKl00YTLySAeE9R3TY5Yf2cmDuL+Bun6qtPAVyHH5wk
	EWHJbpzVbCI/xPbWna/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK6br-0002XK-Dx; Thu, 02 Apr 2020 20:38:43 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK6aR-0001Re-3l
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 20:37:19 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 342CC2327F;
 Thu,  2 Apr 2020 22:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1585859831;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=A4xIKefrMl1An1xXqkufnjbYFHb0nt7JLp19eTtgVZE=;
 b=ePtUa0XrNMVg9FL/1zsW2Ut0BpPG91fXQdm64hIltKMUY31s1VL4HlSRAv+LbhYGuxznz3
 DFQjJ+v/EwD7iKp0yxeC3QVK4bMpKTicXAZlFJ+cS0eJXjV6XRRG4lXFNDb1Dj9tRrcZmn
 SafrxST4Z/HTBr2nPSOTC9fygHKKcrQ=
From: Michael Walle <michael@walle.cc>
To: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 04/16] regmap-irq: make it possible to add irq_chip do a
 specific device node
Date: Thu,  2 Apr 2020 22:36:44 +0200
Message-Id: <20200402203656.27047-5-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200402203656.27047-1-michael@walle.cc>
References: <20200402203656.27047-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 342CC2327F
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[24]; MID_CONTAINS_FROM(1.00)[];
 NEURAL_HAM(-0.00)[-0.157]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c:8000::/33, country:DE];
 FREEMAIL_CC(0.00)[linaro.org,baylibre.com,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net,linuxfoundation.org,walle.cc];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_133715_447882_71267119 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marc Zyngier <maz@kernel.org>, Jean Delvare <jdelvare@suse.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Li Yang <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Mark Brown <broonie@kernel.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new function regmap_add_irq_chip_np() with its corresponding
devm_regmap_add_irq_chip_np() variant. Sometimes one want to register
the IRQ domain on a different device node that the one of the regmap
node. For example when using a MFD where there are different interrupt
controllers and particularly for the generic regmap gpio_chip/irq_chip
driver. In this case it is not desireable to have the IRQ domain on
the parent node.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/base/regmap/regmap-irq.c | 84 ++++++++++++++++++++++++++------
 include/linux/regmap.h           | 10 ++++
 2 files changed, 78 insertions(+), 16 deletions(-)

diff --git a/drivers/base/regmap/regmap-irq.c b/drivers/base/regmap/regmap-irq.c
index 3d64c9331a82..4340e1d268b6 100644
--- a/drivers/base/regmap/regmap-irq.c
+++ b/drivers/base/regmap/regmap-irq.c
@@ -541,8 +541,9 @@ static const struct irq_domain_ops regmap_domain_ops = {
 };
 
 /**
- * regmap_add_irq_chip() - Use standard regmap IRQ controller handling
+ * regmap_add_irq_chip_np() - Use standard regmap IRQ controller handling
  *
+ * @np: The device_node where the IRQ domain should be added to.
  * @map: The regmap for the device.
  * @irq: The IRQ the device uses to signal interrupts.
  * @irq_flags: The IRQF_ flags to use for the primary interrupt.
@@ -556,9 +557,10 @@ static const struct irq_domain_ops regmap_domain_ops = {
  * register cache.  The chip driver is responsible for restoring the
  * register values used by the IRQ controller over suspend and resume.
  */
-int regmap_add_irq_chip(struct regmap *map, int irq, int irq_flags,
-			int irq_base, const struct regmap_irq_chip *chip,
-			struct regmap_irq_chip_data **data)
+int regmap_add_irq_chip_np(struct device_node *np, struct regmap *map, int irq,
+			   int irq_flags, int irq_base,
+			   const struct regmap_irq_chip *chip,
+			   struct regmap_irq_chip_data **data)
 {
 	struct regmap_irq_chip_data *d;
 	int i;
@@ -769,12 +771,10 @@ int regmap_add_irq_chip(struct regmap *map, int irq, int irq_flags,
 	}
 
 	if (irq_base)
-		d->domain = irq_domain_add_legacy(map->dev->of_node,
-						  chip->num_irqs, irq_base, 0,
-						  &regmap_domain_ops, d);
+		d->domain = irq_domain_add_legacy(np, chip->num_irqs, irq_base,
+						  0, &regmap_domain_ops, d);
 	else
-		d->domain = irq_domain_add_linear(map->dev->of_node,
-						  chip->num_irqs,
+		d->domain = irq_domain_add_linear(np, chip->num_irqs,
 						  &regmap_domain_ops, d);
 	if (!d->domain) {
 		dev_err(map->dev, "Failed to create IRQ domain\n");
@@ -808,6 +808,30 @@ int regmap_add_irq_chip(struct regmap *map, int irq, int irq_flags,
 	kfree(d);
 	return ret;
 }
+EXPORT_SYMBOL_GPL(regmap_add_irq_chip_np);
+
+/**
+ * regmap_add_irq_chip() - Use standard regmap IRQ controller handling
+ *
+ * @map: The regmap for the device.
+ * @irq: The IRQ the device uses to signal interrupts.
+ * @irq_flags: The IRQF_ flags to use for the primary interrupt.
+ * @irq_base: Allocate at specific IRQ number if irq_base > 0.
+ * @chip: Configuration for the interrupt controller.
+ * @data: Runtime data structure for the controller, allocated on success.
+ *
+ * Returns 0 on success or an errno on failure.
+ *
+ * This is the same as regmap_add_irq_chip_np, except that the device
+ * node of the regmap is used.
+ */
+int regmap_add_irq_chip(struct regmap *map, int irq, int irq_flags,
+			int irq_base, const struct regmap_irq_chip *chip,
+			struct regmap_irq_chip_data **data)
+{
+	return regmap_add_irq_chip_np(map->dev->of_node, map, irq, irq_flags,
+				      irq_base, chip, data);
+}
 EXPORT_SYMBOL_GPL(regmap_add_irq_chip);
 
 /**
@@ -875,9 +899,10 @@ static int devm_regmap_irq_chip_match(struct device *dev, void *res, void *data)
 }
 
 /**
- * devm_regmap_add_irq_chip() - Resource manager regmap_add_irq_chip()
+ * devm_regmap_add_irq_chip_np() - Resource manager regmap_add_irq_chip_np()
  *
  * @dev: The device pointer on which irq_chip belongs to.
+ * @np: The device_node where the IRQ domain should be added to.
  * @map: The regmap for the device.
  * @irq: The IRQ the device uses to signal interrupts
  * @irq_flags: The IRQF_ flags to use for the primary interrupt.
@@ -890,10 +915,11 @@ static int devm_regmap_irq_chip_match(struct device *dev, void *res, void *data)
  * The &regmap_irq_chip_data will be automatically released when the device is
  * unbound.
  */
-int devm_regmap_add_irq_chip(struct device *dev, struct regmap *map, int irq,
-			     int irq_flags, int irq_base,
-			     const struct regmap_irq_chip *chip,
-			     struct regmap_irq_chip_data **data)
+int devm_regmap_add_irq_chip_np(struct device *dev, struct device_node *np,
+				struct regmap *map, int irq, int irq_flags,
+				int irq_base,
+				const struct regmap_irq_chip *chip,
+				struct regmap_irq_chip_data **data)
 {
 	struct regmap_irq_chip_data **ptr, *d;
 	int ret;
@@ -903,8 +929,8 @@ int devm_regmap_add_irq_chip(struct device *dev, struct regmap *map, int irq,
 	if (!ptr)
 		return -ENOMEM;
 
-	ret = regmap_add_irq_chip(map, irq, irq_flags, irq_base,
-				  chip, &d);
+	ret = regmap_add_irq_chip_np(np, map, irq, irq_flags, irq_base,
+				     chip, &d);
 	if (ret < 0) {
 		devres_free(ptr);
 		return ret;
@@ -915,6 +941,32 @@ int devm_regmap_add_irq_chip(struct device *dev, struct regmap *map, int irq,
 	*data = d;
 	return 0;
 }
+EXPORT_SYMBOL_GPL(devm_regmap_add_irq_chip_np);
+
+/**
+ * devm_regmap_add_irq_chip() - Resource manager regmap_add_irq_chip()
+ *
+ * @dev: The device pointer on which irq_chip belongs to.
+ * @map: The regmap for the device.
+ * @irq: The IRQ the device uses to signal interrupts
+ * @irq_flags: The IRQF_ flags to use for the primary interrupt.
+ * @irq_base: Allocate at specific IRQ number if irq_base > 0.
+ * @chip: Configuration for the interrupt controller.
+ * @data: Runtime data structure for the controller, allocated on success
+ *
+ * Returns 0 on success or an errno on failure.
+ *
+ * The &regmap_irq_chip_data will be automatically released when the device is
+ * unbound.
+ */
+int devm_regmap_add_irq_chip(struct device *dev, struct regmap *map, int irq,
+			     int irq_flags, int irq_base,
+			     const struct regmap_irq_chip *chip,
+			     struct regmap_irq_chip_data **data)
+{
+	return devm_regmap_add_irq_chip_np(dev, map->dev->of_node, map, irq,
+					   irq_flags, irq_base, chip, data);
+}
 EXPORT_SYMBOL_GPL(devm_regmap_add_irq_chip);
 
 /**
diff --git a/include/linux/regmap.h b/include/linux/regmap.h
index 40b07168fd8e..ae5034b2d7c3 100644
--- a/include/linux/regmap.h
+++ b/include/linux/regmap.h
@@ -21,6 +21,7 @@
 struct module;
 struct clk;
 struct device;
+struct device_node;
 struct i2c_client;
 struct i3c_device;
 struct irq_domain;
@@ -1310,12 +1311,21 @@ struct regmap_irq_chip_data;
 int regmap_add_irq_chip(struct regmap *map, int irq, int irq_flags,
 			int irq_base, const struct regmap_irq_chip *chip,
 			struct regmap_irq_chip_data **data);
+int regmap_add_irq_chip_np(struct device_node *np, struct regmap *map, int irq,
+			   int irq_flags, int irq_base,
+			   const struct regmap_irq_chip *chip,
+			   struct regmap_irq_chip_data **data);
 void regmap_del_irq_chip(int irq, struct regmap_irq_chip_data *data);
 
 int devm_regmap_add_irq_chip(struct device *dev, struct regmap *map, int irq,
 			     int irq_flags, int irq_base,
 			     const struct regmap_irq_chip *chip,
 			     struct regmap_irq_chip_data **data);
+int devm_regmap_add_irq_chip_np(struct device *dev, struct device_node *np,
+				struct regmap *map, int irq, int irq_flags,
+				int irq_base,
+				const struct regmap_irq_chip *chip,
+				struct regmap_irq_chip_data **data);
 void devm_regmap_del_irq_chip(struct device *dev, int irq,
 			      struct regmap_irq_chip_data *data);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
