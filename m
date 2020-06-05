Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A7E1F0312
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 00:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2W2UQ5+auUJlllZUtdEz+PO6eXr3jM9goAsk7UJDPyg=; b=R/a+giKoMsZDvp
	bBO5rfhgChLODdW4g5Bxij6mOxp19WLiwqyJ1OHLHaFwk4lHcdIrklpJ0cYBiJU0b91/Qh09Pii3G
	5m8eNYT65S4jcEehVh3VMiIj3tJTsUKKCcm+BtNbKtPW3r2KAvgviZ0BfvsyDblS568A9h92St6OL
	rSvpuSBIOTD5Xq/6ZkWrGmyTaLZ0vxKqZWr6OKRUsxul+m23Y9BdWKHwSFn1RXnQ2Pd6pLV4MKVz9
	kXEz+iGSd6rs6awtocYo7NeXAtL0MWkOacp2PzbRUgZTNe9u94twe5DE6g1W0Kv0ysN8+6uzADoB0
	g+//446IJMaHstUsmIaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhL5Q-0007F5-A4; Fri, 05 Jun 2020 22:45:16 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhL4N-0006VW-Cu
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 22:44:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 3AC372A0C32
Received: by jupiter.universe (Postfix, from userid 1000)
 id 2A144480102; Sat,  6 Jun 2020 00:44:04 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Emil Velikov <emil.velikov@collabora.com>
Subject: [PATCHv2 2/6] power: supply: gpio-charger: Make gpios optional
Date: Sat,  6 Jun 2020 00:43:59 +0200
Message-Id: <20200605224403.181015-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200605224403.181015-1-sebastian.reichel@collabora.com>
References: <20200605224403.181015-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_154411_695635_D4031EB9 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While strongly recommended, not all devices have a gpio to
detect if the charger is connected. This moves the 'gpios'
from required to optional section.

This also modifies error handling for the GPIO a bit: We
no longer fallback to pdata, if a GPIO is specified using
GPIO descriptor tables. This is a bit cleaner and does
not have any real impact: There are only two mainline pdata
users (arm/mach-sa1100/collie.c, arm/mach-pxa/tosa.c) and
none of them specify the GPIO via gpiod descriptor tables.
Once both have been converted the driver's support for
specifying GPIOs numbers in pdata will be dropped.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/power/supply/gpio-charger.yaml   |  7 +++-
 drivers/power/supply/gpio-charger.c           | 38 ++++++++++++-------
 2 files changed, 31 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml b/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
index 78b167c62ab1..30eabbb14ef3 100644
--- a/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
+++ b/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
@@ -41,7 +41,12 @@ properties:
 
 required:
   - compatible
-  - gpios
+
+anyOf:
+  - required:
+    - gpios
+  - required:
+    - charge-status-gpios
 
 additionalProperties: false
 
diff --git a/drivers/power/supply/gpio-charger.c b/drivers/power/supply/gpio-charger.c
index 1b959c7f8b0e..875735d50716 100644
--- a/drivers/power/supply/gpio-charger.c
+++ b/drivers/power/supply/gpio-charger.c
@@ -112,9 +112,14 @@ static int gpio_charger_get_irq(struct device *dev, void *dev_id,
 	return irq;
 }
 
+/*
+ * The entries will be overwritten by driver's probe routine depending
+ * on the available features. This list ensures, that the array is big
+ * enough for all optional features.
+ */
 static enum power_supply_property gpio_charger_properties[] = {
 	POWER_SUPPLY_PROP_ONLINE,
-	POWER_SUPPLY_PROP_STATUS /* Must always be last in the array. */
+	POWER_SUPPLY_PROP_STATUS,
 };
 
 static int gpio_charger_probe(struct platform_device *pdev)
@@ -128,6 +133,7 @@ static int gpio_charger_probe(struct platform_device *pdev)
 	int charge_status_irq;
 	unsigned long flags;
 	int ret;
+	int num_props = 0;
 
 	if (!pdata && !dev->of_node) {
 		dev_err(dev, "No platform data\n");
@@ -142,13 +148,13 @@ static int gpio_charger_probe(struct platform_device *pdev)
 	 * This will fetch a GPIO descriptor from device tree, ACPI or
 	 * boardfile descriptor tables. It's good to try this first.
 	 */
-	gpio_charger->gpiod = devm_gpiod_get(dev, NULL, GPIOD_IN);
+	gpio_charger->gpiod = devm_gpiod_get_optional(dev, NULL, GPIOD_IN);
 
 	/*
-	 * If this fails and we're not using device tree, try the
-	 * legacy platform data method.
+	 * Fallback to legacy platform data method, if no GPIO is specified
+	 * using boardfile descriptor tables.
 	 */
-	if (IS_ERR(gpio_charger->gpiod) && !dev->of_node) {
+	if (!gpio_charger->gpiod && pdata) {
 		/* Non-DT: use legacy GPIO numbers */
 		if (!gpio_is_valid(pdata->gpio)) {
 			dev_err(dev, "Invalid gpio pin in pdata\n");
@@ -173,17 +179,23 @@ static int gpio_charger_probe(struct platform_device *pdev)
 		return PTR_ERR(gpio_charger->gpiod);
 	}
 
+	if (gpio_charger->gpiod) {
+		gpio_charger_properties[num_props] = POWER_SUPPLY_PROP_ONLINE;
+		num_props++;
+	}
+
 	charge_status = devm_gpiod_get_optional(dev, "charge-status", GPIOD_IN);
-	gpio_charger->charge_status = charge_status;
-	if (IS_ERR(gpio_charger->charge_status))
-		return PTR_ERR(gpio_charger->charge_status);
+	if (IS_ERR(charge_status))
+		return PTR_ERR(charge_status);
+	if (charge_status) {
+		gpio_charger->charge_status = charge_status;
+		gpio_charger_properties[num_props] = POWER_SUPPLY_PROP_STATUS;
+		num_props++;
+	}
 
 	charger_desc = &gpio_charger->charger_desc;
 	charger_desc->properties = gpio_charger_properties;
-	charger_desc->num_properties = ARRAY_SIZE(gpio_charger_properties);
-	/* Remove POWER_SUPPLY_PROP_STATUS from the supported properties. */
-	if (!gpio_charger->charge_status)
-		charger_desc->num_properties -= 1;
+	charger_desc->num_properties = num_props;
 	charger_desc->get_property = gpio_charger_get_property;
 
 	psy_cfg.of_node = dev->of_node;
@@ -269,6 +281,6 @@ static struct platform_driver gpio_charger_driver = {
 module_platform_driver(gpio_charger_driver);
 
 MODULE_AUTHOR("Lars-Peter Clausen <lars@metafoo.de>");
-MODULE_DESCRIPTION("Driver for chargers which report their online status through a GPIO");
+MODULE_DESCRIPTION("Driver for chargers only communicating via GPIO(s)");
 MODULE_LICENSE("GPL");
 MODULE_ALIAS("platform:gpio-charger");
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
