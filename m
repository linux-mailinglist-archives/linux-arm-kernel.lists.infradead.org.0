Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BC01F0314
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 00:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3M65fNt1PqQuLPHtDJpAicY1z2PH8hQ/XSvGMvPq0VM=; b=NPTEd4F16JCwOL
	axBq8oMjCI3N98ZqVxUzc2kO82ralmNQKbFj/P9fn1rXP00bP0YL3QXXE08OLMXas38pQr7+DKc4n
	97GoNQJlg+85rq/LJMGLlz/9he57IOd7qeBmhiIVUV0Vg8eXDx+Vr/AiK0OeTS4EGDlE7rwIEFhX8
	OZyz1m/oc67BYmdwQxdVoc3P0mCiHC76DNa6r5VEjc9LrcxxmWXr4XSJo9f6cGDXU9KiZQ8WwttoL
	JMxXjERloYAOhvjtWpoBS/r0fhPd3SGbveqBfReiEOTQgSF8SE0DSwFi3fLx6G/Fo6qjvV7t2fMLT
	Zq7BnglN+icL4bAbUQOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhL5j-0001XI-75; Fri, 05 Jun 2020 22:45:35 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhL4N-0006VV-5F
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 22:44:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 4D68A2A51AD
Received: by jupiter.universe (Postfix, from userid 1000)
 id 2D9BA480103; Sat,  6 Jun 2020 00:44:04 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Emil Velikov <emil.velikov@collabora.com>
Subject: [PATCHv2 3/6] power: supply: gpio-charger: add charge-current-limit
 feature
Date: Sat,  6 Jun 2020 00:44:00 +0200
Message-Id: <20200605224403.181015-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200605224403.181015-1-sebastian.reichel@collabora.com>
References: <20200605224403.181015-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_154411_460849_A6BFB6CC 
X-CRM114-Status: GOOD (  17.84  )
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

Add new charge-current-limit feature to gpio-charger.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/power/supply/gpio-charger.yaml   |  31 ++++
 drivers/power/supply/gpio-charger.c           | 140 ++++++++++++++++++
 2 files changed, 171 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml b/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
index 30eabbb14ef3..e11cfdc68a51 100644
--- a/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
+++ b/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
@@ -39,6 +39,25 @@ properties:
     maxItems: 1
     description: GPIO indicating the charging status
 
+  charge-current-limit-gpios:
+    minItems: 1
+    maxItems: 32
+    description: GPIOs used for current limiting
+
+  charge-current-limit-mapping:
+    description: List of touples with current in uA and a GPIO bitmap (in
+      this order). The touples must be provided in descending order of the
+      current limit.
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    items:
+      items:
+        - description:
+            Current limit in uA
+        - description:
+            Encoded GPIO setting. Bit 0 represents last GPIO from the
+            charge-current-limit-gpios property. Bit 1 second to last
+            GPIO and so on.
+
 required:
   - compatible
 
@@ -47,6 +66,12 @@ anyOf:
     - gpios
   - required:
     - charge-status-gpios
+  - required:
+    - charge-current-limit-gpios
+
+dependencies:
+  charge-current-limit-gpios: [ charge-current-limit-mapping ]
+  charge-current-limit-mapping: [ charge-current-limit-gpios ]
 
 additionalProperties: false
 
@@ -60,4 +85,10 @@ examples:
 
       gpios = <&gpd 28 GPIO_ACTIVE_LOW>;
       charge-status-gpios = <&gpc 27 GPIO_ACTIVE_LOW>;
+
+      charge-current-limit-gpios = <&gpioA 11 GPIO_ACTIVE_HIGH>,
+                                   <&gpioA 12 GPIO_ACTIVE_HIGH>;
+      charge-current-limit-mapping = <2500000 0x00>, // 2.5 A => both GPIOs low
+                                     <700000 0x01>, // 700 mA => GPIO A.12 high
+                                     <0 0x02>; // 0 mA => GPIO A.11 high
     };
diff --git a/drivers/power/supply/gpio-charger.c b/drivers/power/supply/gpio-charger.c
index 875735d50716..74fc664c01e3 100644
--- a/drivers/power/supply/gpio-charger.c
+++ b/drivers/power/supply/gpio-charger.c
@@ -18,7 +18,13 @@
 
 #include <linux/power/gpio-charger.h>
 
+struct gpio_mapping {
+	u32 limit_ua;
+	u32 gpiodata;
+} __packed;
+
 struct gpio_charger {
+	struct device *dev;
 	unsigned int irq;
 	unsigned int charge_status_irq;
 	bool wakeup_enabled;
@@ -27,6 +33,11 @@ struct gpio_charger {
 	struct power_supply_desc charger_desc;
 	struct gpio_desc *gpiod;
 	struct gpio_desc *charge_status;
+
+	struct gpio_descs *current_limit_gpios;
+	struct gpio_mapping *current_limit_map;
+	u32 current_limit_map_size;
+	u32 charge_current_limit;
 };
 
 static irqreturn_t gpio_charger_irq(int irq, void *devid)
@@ -43,6 +54,35 @@ static inline struct gpio_charger *psy_to_gpio_charger(struct power_supply *psy)
 	return power_supply_get_drvdata(psy);
 }
 
+static int set_charge_current_limit(struct gpio_charger *gpio_charger, int val)
+{
+	struct gpio_mapping mapping;
+	int ndescs = gpio_charger->current_limit_gpios->ndescs;
+	struct gpio_desc **gpios = gpio_charger->current_limit_gpios->desc;
+	int i;
+
+	if (!gpio_charger->current_limit_map_size)
+		return -EINVAL;
+
+	for (i = 0; i < gpio_charger->current_limit_map_size; i++) {
+		if (gpio_charger->current_limit_map[i].limit_ua <= val)
+			break;
+	}
+	mapping = gpio_charger->current_limit_map[i];
+
+	for (i = 0; i < ndescs; i++) {
+		bool val = (mapping.gpiodata >> i) & 1;
+		gpiod_set_value_cansleep(gpios[ndescs-i-1], val);
+	}
+
+	gpio_charger->charge_current_limit = mapping.limit_ua;
+
+	dev_dbg(gpio_charger->dev, "set charge current limit to %d (requested: %d)\n",
+		gpio_charger->charge_current_limit, val);
+
+	return 0;
+}
+
 static int gpio_charger_get_property(struct power_supply *psy,
 		enum power_supply_property psp, union power_supply_propval *val)
 {
@@ -58,6 +98,9 @@ static int gpio_charger_get_property(struct power_supply *psy,
 		else
 			val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
 		break;
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX:
+		val->intval = gpio_charger->charge_current_limit;
+		break;
 	default:
 		return -EINVAL;
 	}
@@ -65,6 +108,34 @@ static int gpio_charger_get_property(struct power_supply *psy,
 	return 0;
 }
 
+static int gpio_charger_set_property(struct power_supply *psy,
+	enum power_supply_property psp, const union power_supply_propval *val)
+{
+	struct gpio_charger *gpio_charger = psy_to_gpio_charger(psy);
+
+	switch (psp) {
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX:
+		return set_charge_current_limit(gpio_charger, val->intval);
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int gpio_charger_property_is_writeable(struct power_supply *psy,
+					      enum power_supply_property psp)
+{
+	switch (psp) {
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX:
+		return 1;
+	default:
+		break;
+	}
+
+	return 0;
+}
+
 static enum power_supply_type gpio_charger_get_type(struct device *dev)
 {
 	const char *chargetype;
@@ -112,6 +183,61 @@ static int gpio_charger_get_irq(struct device *dev, void *dev_id,
 	return irq;
 }
 
+static int init_charge_current_limit(struct device *dev,
+				    struct gpio_charger *gpio_charger)
+{
+	int i, len;
+	u32 cur_limit = U32_MAX;
+
+	gpio_charger->current_limit_gpios = devm_gpiod_get_array_optional(dev,
+		"charge-current-limit", GPIOD_OUT_LOW);
+	if (IS_ERR(gpio_charger->current_limit_gpios)) {
+		dev_err(dev, "error getting current-limit GPIOs\n");
+		return PTR_ERR(gpio_charger->current_limit_gpios);
+	}
+
+	if (!gpio_charger->current_limit_gpios)
+		return 0;
+
+	len = device_property_read_u32_array(dev, "charge-current-limit-mapping",
+		NULL, 0);
+	if (len < 0)
+		return len;
+
+	if (len == 0 || len % 2) {
+		dev_err(dev, "invalid charge-current-limit-mapping length\n");
+		return -EINVAL;
+	}
+
+	gpio_charger->current_limit_map = devm_kmalloc_array(dev,
+		len / 2, sizeof(*gpio_charger->current_limit_map), GFP_KERNEL);
+	if (!gpio_charger->current_limit_map)
+		return -ENOMEM;
+
+	gpio_charger->current_limit_map_size = len / 2;
+
+	len = device_property_read_u32_array(dev, "charge-current-limit-mapping",
+		(u32*) gpio_charger->current_limit_map, len);
+	if (len < 0)
+		return len;
+
+	for (i=0; i < gpio_charger->current_limit_map_size; i++) {
+		if (gpio_charger->current_limit_map[i].limit_ua > cur_limit) {
+			dev_err(dev, "charge-current-limit-mapping not sorted by current in descending order\n");
+			return -EINVAL;
+		}
+
+		cur_limit = gpio_charger->current_limit_map[i].limit_ua;
+	}
+
+	/* default to smallest current limitation for safety reasons */
+	len = gpio_charger->current_limit_map_size - 1;
+	set_charge_current_limit(gpio_charger,
+		gpio_charger->current_limit_map[len].limit_ua);
+
+	return 0;
+}
+
 /*
  * The entries will be overwritten by driver's probe routine depending
  * on the available features. This list ensures, that the array is big
@@ -120,6 +246,7 @@ static int gpio_charger_get_irq(struct device *dev, void *dev_id,
 static enum power_supply_property gpio_charger_properties[] = {
 	POWER_SUPPLY_PROP_ONLINE,
 	POWER_SUPPLY_PROP_STATUS,
+	POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX,
 };
 
 static int gpio_charger_probe(struct platform_device *pdev)
@@ -143,6 +270,7 @@ static int gpio_charger_probe(struct platform_device *pdev)
 	gpio_charger = devm_kzalloc(dev, sizeof(*gpio_charger), GFP_KERNEL);
 	if (!gpio_charger)
 		return -ENOMEM;
+	gpio_charger->dev = dev;
 
 	/*
 	 * This will fetch a GPIO descriptor from device tree, ACPI or
@@ -193,10 +321,22 @@ static int gpio_charger_probe(struct platform_device *pdev)
 		num_props++;
 	}
 
+	ret = init_charge_current_limit(dev, gpio_charger);
+	if (ret < 0)
+		return ret;
+	if (gpio_charger->current_limit_map) {
+		gpio_charger_properties[num_props] =
+			POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX;
+		num_props++;
+	}
+
 	charger_desc = &gpio_charger->charger_desc;
 	charger_desc->properties = gpio_charger_properties;
 	charger_desc->num_properties = num_props;
 	charger_desc->get_property = gpio_charger_get_property;
+	charger_desc->set_property = gpio_charger_set_property;
+	charger_desc->property_is_writeable =
+					gpio_charger_property_is_writeable;
 
 	psy_cfg.of_node = dev->of_node;
 	psy_cfg.drv_data = gpio_charger;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
