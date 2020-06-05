Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 606D41F0316
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 00:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ivC4r4LBpuZSGeLweoUW+GTRf4jvsb/zw1yYfkZw0ww=; b=UYWKlIYe8QnJqu
	9S8mTaG6/n7uB1amZwuAhyyj0JEGhjJs7hv7ThquPsBMiW9F4O/GdTm/Dxy1Af2scFypCKW4zYkMp
	AiLGAYaYUbXiIAPyQoHYfXbP5Spa2Ap8S0hEJHe/DP1Z3XT28qaaeX7OFJr94WeEzHWJYMQdEsRJD
	lS3KyEIWSVTM/hCD2E6eisXdSVAwtiAJ0iwh+UKMmqZhwrOhkhRrdTIpLFrMVL6RFTm/jtJ4n87Ku
	U4MkOX3DVwaAWaGON+U8LV7mpWsDh1rrD6EPcgZCAbD0D1a7xNYyb0u9vIKbRbIoxxcZbfI/ph8tO
	CdZiu4P6X3PhhTxZw1fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhL6B-00021Y-Bm; Fri, 05 Jun 2020 22:46:03 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhL4P-0006Wy-Ld
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 22:44:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 85C2F2A51C5
Received: by jupiter.universe (Postfix, from userid 1000)
 id 36CC2480106; Sat,  6 Jun 2020 00:44:04 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Emil Velikov <emil.velikov@collabora.com>
Subject: [PATCHv2 6/6] power: supply: gpio-charger: drop legacy GPIO support
Date: Sat,  6 Jun 2020 00:44:03 +0200
Message-Id: <20200605224403.181015-7-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200605224403.181015-1-sebastian.reichel@collabora.com>
References: <20200605224403.181015-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_154413_887811_5B201BAD 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

All board files have been converted to use boardfile GPIO
descriptor tables, so GPIO support can be removed from
platform data.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/power/supply/gpio-charger.c | 30 +----------------------------
 include/linux/power/gpio-charger.h  |  5 -----
 2 files changed, 1 insertion(+), 34 deletions(-)

diff --git a/drivers/power/supply/gpio-charger.c b/drivers/power/supply/gpio-charger.c
index 74fc664c01e3..8c9f69f3d13e 100644
--- a/drivers/power/supply/gpio-charger.c
+++ b/drivers/power/supply/gpio-charger.c
@@ -258,7 +258,6 @@ static int gpio_charger_probe(struct platform_device *pdev)
 	struct power_supply_desc *charger_desc;
 	struct gpio_desc *charge_status;
 	int charge_status_irq;
-	unsigned long flags;
 	int ret;
 	int num_props = 0;
 
@@ -272,41 +271,14 @@ static int gpio_charger_probe(struct platform_device *pdev)
 		return -ENOMEM;
 	gpio_charger->dev = dev;
 
-	/*
-	 * This will fetch a GPIO descriptor from device tree, ACPI or
-	 * boardfile descriptor tables. It's good to try this first.
-	 */
 	gpio_charger->gpiod = devm_gpiod_get_optional(dev, NULL, GPIOD_IN);
-
-	/*
-	 * Fallback to legacy platform data method, if no GPIO is specified
-	 * using boardfile descriptor tables.
-	 */
-	if (!gpio_charger->gpiod && pdata) {
-		/* Non-DT: use legacy GPIO numbers */
-		if (!gpio_is_valid(pdata->gpio)) {
-			dev_err(dev, "Invalid gpio pin in pdata\n");
-			return -EINVAL;
-		}
-		flags = GPIOF_IN;
-		if (pdata->gpio_active_low)
-			flags |= GPIOF_ACTIVE_LOW;
-		ret = devm_gpio_request_one(dev, pdata->gpio, flags,
-					    dev_name(dev));
-		if (ret) {
-			dev_err(dev, "Failed to request gpio pin: %d\n", ret);
-			return ret;
-		}
-		/* Then convert this to gpiod for now */
-		gpio_charger->gpiod = gpio_to_desc(pdata->gpio);
-	} else if (IS_ERR(gpio_charger->gpiod)) {
+	if (IS_ERR(gpio_charger->gpiod)) {
 		/* Just try again if this happens */
 		if (PTR_ERR(gpio_charger->gpiod) == -EPROBE_DEFER)
 			return -EPROBE_DEFER;
 		dev_err(dev, "error getting GPIO descriptor\n");
 		return PTR_ERR(gpio_charger->gpiod);
 	}
-
 	if (gpio_charger->gpiod) {
 		gpio_charger_properties[num_props] = POWER_SUPPLY_PROP_ONLINE;
 		num_props++;
diff --git a/include/linux/power/gpio-charger.h b/include/linux/power/gpio-charger.h
index 5a5a8de98181..3081391e93c9 100644
--- a/include/linux/power/gpio-charger.h
+++ b/include/linux/power/gpio-charger.h
@@ -13,8 +13,6 @@
  * struct gpio_charger_platform_data - platform_data for gpio_charger devices
  * @name:		Name for the chargers power_supply device
  * @type:		Type of the charger
- * @gpio:		GPIO which is used to indicate the chargers status
- * @gpio_active_low:	Should be set to 1 if the GPIO is active low otherwise 0
  * @supplied_to:	Array of battery names to which this chargers supplies power
  * @num_supplicants:	Number of entries in the supplied_to array
  */
@@ -22,9 +20,6 @@ struct gpio_charger_platform_data {
 	const char *name;
 	enum power_supply_type type;
 
-	int gpio;
-	int gpio_active_low;
-
 	char **supplied_to;
 	size_t num_supplicants;
 };
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
