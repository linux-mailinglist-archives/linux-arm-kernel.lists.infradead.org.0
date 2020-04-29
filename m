Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CFF1BE97B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:03:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFKQwuZtUW/jiMaV6ggfM1bIloFZA49K0qLdgAz8+5o=; b=VxcVML+Vg5JCne
	yO3KzliNamEDfqh9OLx8SMIfkOXo6M8C3BFkfmA740lSRhsd3aF/HLMfnqbJyMj54TycJVxrTtGa3
	co43bPbdFkwkbxrPWWgdphoKwuibDtloangthml8DJWaUneJMdgFfK8uAQPjCxDHrKwCTOCwh6FNu
	9fVNfmjwZR0nPv2Qo3Zh2OHyDUX2KR+VLkaoO2ifTHSLvvcvudVF9UdX4IGLjDGa21lAVRj4IOwnf
	vXF64FzNXwMg+9jAL7D+2lg4UGKySwZ32yM9jx4aj6UfKWH9ungLDAgNP3PmZ43J7LsD264PXN59y
	VkKFZOVZhPWjllejvM6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtrN-0002SX-20; Wed, 29 Apr 2020 21:03:13 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtn6-0005Jb-2A
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:58:50 +0000
Received: by mail-oi1-f196.google.com with SMTP id q204so3107612oia.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 13:58:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=myrenzSPyW59XpfF+gIY1TxdoxeVOHKfaEK33JnlZTA=;
 b=DA9EVAmmZX438i6na9ZpnaBYvDbb7YSmR0lhIWiha/bXAqQV22m8X7BicrVCXMcnKC
 OOgpJxNr5eE0cIweiE653KiKzLeRMGLTROtSzYGXslUP0tH3wrz92swb3SKwgHWzPBky
 BRhPFijjRbUrYGTD2dNVhiLSys/rkXIkpKx+SEhgsrtYMJTQk7YiwRZO+mMQYvi8NUFK
 UUra+SlKR7qjwpElsJ/V4Y1frzsOkfo5pBCLXlRCiu4qJ7Vv1N+zMIN8HxVWKkiQ/dcd
 P7QFe9WZcNMutaiTT3Z+KABi5QWh17GP/gtjUs5stZB2ZrkA9XJIFvsblobYH7msISDn
 v+HA==
X-Gm-Message-State: AGi0Pua3JHmxcytPCykkxjn15VgsJKbtWn6/3z/f5zEzlGd9HiOe7jql
 1SCZQAdAUpUZMhw7D34zPg==
X-Google-Smtp-Source: APiQypId0MDw7AeVQVQkoHCYMF2A7Fv08/wl1ScqTYpGJciki03GgiqVioMmxhSmH8L/Spi9eOa0sg==
X-Received: by 2002:a54:4e86:: with SMTP id c6mr127195oiy.178.1588193926891;
 Wed, 29 Apr 2020 13:58:46 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id z13sm653162oth.10.2020.04.29.13.58.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:58:46 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v2 13/16] bus: vexpress-config: simplify config bus probing
Date: Wed, 29 Apr 2020 15:58:22 -0500
Message-Id: <20200429205825.10604-14-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429205825.10604-1-robh@kernel.org>
References: <20200429205825.10604-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_135848_140295_2F3331EE 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The vexpress-config initialization is dependent on the vexpress-syscfg
driver probing. As vexpress-config was not a driver, deferred probe
could not be used and instead initcall ordering was relied upon. This is
fragile and doesn't work for modules.

Let's move the config bus init into the vexpress-syscfg probe. This
eliminates the initcall ordering requirement and the need to create a
struct device and the "vexpress-config" class.

Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Acked-by: Liviu Dudau <liviu.dudau@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/bus/vexpress-config.c | 118 ++++++----------------------------
 1 file changed, 21 insertions(+), 97 deletions(-)

diff --git a/drivers/bus/vexpress-config.c b/drivers/bus/vexpress-config.c
index 43f5beac9811..43deb4df140b 100644
--- a/drivers/bus/vexpress-config.c
+++ b/drivers/bus/vexpress-config.c
@@ -56,7 +56,6 @@ struct vexpress_config_bridge {
 
 
 static DEFINE_MUTEX(vexpress_config_mutex);
-static struct class *vexpress_config_class;
 static u32 vexpress_config_site_master = VEXPRESS_SITE_MASTER;
 
 
@@ -121,9 +120,6 @@ struct regmap *devm_regmap_init_vexpress_config(struct device *dev)
 	struct regmap *regmap;
 	struct regmap **res;
 
-	if (WARN_ON(dev->parent->class != vexpress_config_class))
-		return ERR_PTR(-ENODEV);
-
 	bridge = dev_get_drvdata(dev->parent);
 	if (WARN_ON(!bridge))
 		return ERR_PTR(-EINVAL);
@@ -146,94 +142,6 @@ struct regmap *devm_regmap_init_vexpress_config(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(devm_regmap_init_vexpress_config);
 
-static struct device *vexpress_config_bridge_register(struct device *parent,
-		struct vexpress_config_bridge_ops *ops, void *context)
-{
-	struct device *dev;
-	struct vexpress_config_bridge *bridge;
-
-	if (!vexpress_config_class) {
-		vexpress_config_class = class_create(THIS_MODULE,
-				"vexpress-config");
-		if (IS_ERR(vexpress_config_class))
-			return (void *)vexpress_config_class;
-	}
-
-	dev = device_create(vexpress_config_class, parent, 0,
-			NULL, "%s.bridge", dev_name(parent));
-
-	if (IS_ERR(dev))
-		return dev;
-
-	bridge = devm_kmalloc(dev, sizeof(*bridge), GFP_KERNEL);
-	if (!bridge) {
-		put_device(dev);
-		device_unregister(dev);
-		return ERR_PTR(-ENOMEM);
-	}
-	bridge->ops = ops;
-	bridge->context = context;
-
-	dev_set_drvdata(dev, bridge);
-
-	dev_dbg(parent, "Registered bridge '%s', parent node %p\n",
-			dev_name(dev), parent->of_node);
-
-	return dev;
-}
-
-
-static int vexpress_config_node_match(struct device *dev, const void *data)
-{
-	const struct device_node *node = data;
-
-	dev_dbg(dev, "Parent node %p, looking for %p\n",
-			dev->parent->of_node, node);
-
-	return dev->parent->of_node == node;
-}
-
-static int vexpress_config_populate(struct device_node *node)
-{
-	struct device_node *bridge;
-	struct device *parent;
-	int ret;
-
-	bridge = of_parse_phandle(node, "arm,vexpress,config-bridge", 0);
-	if (!bridge)
-		return -EINVAL;
-
-	parent = class_find_device(vexpress_config_class, NULL, bridge,
-			vexpress_config_node_match);
-	of_node_put(bridge);
-	if (WARN_ON(!parent))
-		return -ENODEV;
-
-	ret = of_platform_populate(node, NULL, NULL, parent);
-
-	put_device(parent);
-
-	return ret;
-}
-
-static int __init vexpress_config_init(void)
-{
-	int err = 0;
-	struct device_node *node;
-
-	/* Need the config devices early, before the "normal" devices... */
-	for_each_compatible_node(node, NULL, "arm,vexpress,config-bus") {
-		err = vexpress_config_populate(node);
-		if (err) {
-			of_node_put(node);
-			break;
-		}
-	}
-
-	return err;
-}
-postcore_initcall(vexpress_config_init);
-
 static int vexpress_syscfg_exec(struct vexpress_syscfg_func *func,
 		int index, bool write, u32 *data)
 {
@@ -430,7 +338,8 @@ static int vexpress_syscfg_probe(struct platform_device *pdev)
 {
 	struct vexpress_syscfg *syscfg;
 	struct resource *res;
-	struct device *bridge;
+	struct vexpress_config_bridge *bridge;
+	struct device_node *node;
 
 	syscfg = devm_kzalloc(&pdev->dev, sizeof(*syscfg), GFP_KERNEL);
 	if (!syscfg)
@@ -443,11 +352,26 @@ static int vexpress_syscfg_probe(struct platform_device *pdev)
 	if (IS_ERR(syscfg->base))
 		return PTR_ERR(syscfg->base);
 
-	/* Must use dev.parent (MFD), as that's where DT phandle points at... */
-	bridge = vexpress_config_bridge_register(pdev->dev.parent,
-			&vexpress_syscfg_bridge_ops, syscfg);
+	bridge = devm_kmalloc(&pdev->dev, sizeof(*bridge), GFP_KERNEL);
+	if (!bridge)
+		return -ENOMEM;
+
+	bridge->ops = &vexpress_syscfg_bridge_ops;
+	bridge->context = syscfg;
+
+	dev_set_drvdata(&pdev->dev, bridge);
 
-	return PTR_ERR_OR_ZERO(bridge);
+	for_each_compatible_node(node, NULL, "arm,vexpress,config-bus") {
+		struct device_node *bridge_np;
+
+		bridge_np = of_parse_phandle(node, "arm,vexpress,config-bridge", 0);
+		if (bridge_np != pdev->dev.parent->of_node)
+			continue;
+
+		of_platform_populate(node, NULL, NULL, &pdev->dev);
+	}
+
+	return 0;
 }
 
 static const struct platform_device_id vexpress_syscfg_id_table[] = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
