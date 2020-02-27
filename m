Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7967F17146B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 10:53:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=csUWJ1GmBzd1zpLRGEDWIBiipPI1TCnShUd7Dp6hkng=; b=hpuraohCvkp4AR
	3T5i+0Aj44dO0U4SylGQYBV8twG9QWDJejKQ1RiNrsfSlkwoG8A2CB349evaB9CDJGbTNYXimaNn6
	MpivLNpF4Yas0Z2tPzWoi9ZBnQkuHlUyzSjp/f1pt34jdglq3R4stzh1U07iOhDXXCdJCwPZsZPHH
	DHIpa6amFqAL8ApKD2qEPes7BiHFTJRqbUi7K1yWGnSnOZjRjl/ATJBLe06FRdApexE7JhWOQjt7Q
	vB5FX8/Pc7y7OW/nznHO6Q9wiKBV/8ehgSK9sInb+E75w9Hy2s1dOjs/OvU8x4O7Ljns1WBNSdf/p
	TF/Q0MQdg6Lsvfny42Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Fr7-0006qB-Je; Thu, 27 Feb 2020 09:53:21 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Fqt-0006hi-6Z
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 09:53:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c7/YootJkafpK8gj8XB3R29Oz7Kaf6TxN5V8yqT7mho=; b=M4JgCS48WH45kWodr3ogBDWrWa
 7EsAP6f7G6jgy/673js71ymSSwt8/9uIvMag/TDxNYGWg0tPqKntYGDxY3xeh3xiXFSHp09mwqkxp
 Fx+GoeHEIucGl9h6ghJ5jaqDW9OGNYUK96ydliSZxn7SViaGtH+PNEtYN99o8NHAfyO4dh/+MSr0w
 ddWYbtpmekUCDhRjhKguHS96ud//Vc5vJt4u3d+mgbHZUu0hxFcZeXa5xYsXUrDe+LjIb6+Isvhlp
 lqnZOHc6/JnQzothduNRihoG6zxDmoLyYXBcsS50wA7IkMt/OLukZy/4XCK69IX+ROq64ARlUlwfD
 W26j0YTg==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:37240 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j7FqV-0004kB-Uz; Thu, 27 Feb 2020 09:52:44 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j7FqT-0003t2-Tl; Thu, 27 Feb 2020 09:52:41 +0000
In-Reply-To: <20200227095159.GJ25745@shell.armlinux.org.uk>
References: <20200227095159.GJ25745@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH net-next 2/3] net: phy: marvell10g: add support for
 configuring LEDs
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1j7FqT-0003t2-Tl@rmk-PC.armlinux.org.uk>
Date: Thu, 27 Feb 2020 09:52:41 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_015307_238865_E333B2D6 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, netdev@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for configuring the LEDs. Macchiatobin has an oddity in
that the left LED goes out when the cable is connected, and flashes
when there's link activity. This is because the reset default for
the LED outputs assume that the LED is connected to supply, not to
ground. Add support for configuring the LED modes and polarities.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/net/phy/marvell10g.c | 62 ++++++++++++++++++++++++++++++++----
 1 file changed, 55 insertions(+), 7 deletions(-)

diff --git a/drivers/net/phy/marvell10g.c b/drivers/net/phy/marvell10g.c
index 9a4e12a2af07..88720fa5c611 100644
--- a/drivers/net/phy/marvell10g.c
+++ b/drivers/net/phy/marvell10g.c
@@ -25,6 +25,7 @@
 #include <linux/ctype.h>
 #include <linux/hwmon.h>
 #include <linux/marvell_phy.h>
+#include <linux/of.h>
 #include <linux/phy.h>
 #include <linux/sfp.h>
 
@@ -74,6 +75,8 @@ enum {
 struct mv3310_priv {
 	struct device *hwmon_dev;
 	char *hwmon_name;
+	u8 num_leds;
+	u16 led_mode[4];
 };
 
 #ifdef CONFIG_HWMON
@@ -238,6 +241,43 @@ static const struct sfp_upstream_ops mv3310_sfp_ops = {
 	.module_insert = mv3310_sfp_insert,
 };
 
+static int mv3310_leds_write(struct phy_device *phydev)
+{
+	struct mv3310_priv *priv = dev_get_drvdata(&phydev->mdio.dev);
+	int i, ret;
+
+	for (i = 0; i < priv->num_leds; i++) {
+		ret = phy_write_mmd(phydev, MDIO_MMD_VEND2, 0xf020 + i,
+				    priv->led_mode[i]);
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int mv3310_fw_config(struct phy_device *phydev)
+{
+	struct mv3310_priv *priv = dev_get_drvdata(&phydev->mdio.dev);
+	struct device_node *node;
+	int ret;
+
+	node = phydev->mdio.dev.of_node;
+	if (!node)
+		return 0;
+
+	ret = of_property_read_variable_u16_array(node, "marvell,led-mode",
+				priv->led_mode, 1, ARRAY_SIZE(priv->led_mode));
+	if (ret == -EINVAL)
+		ret = 0;
+	if (ret < 0)
+		return ret;
+
+	priv->num_leds = ret;
+
+	return 0;
+}
+
 static int mv3310_probe(struct phy_device *phydev)
 {
 	struct mv3310_priv *priv;
@@ -248,6 +288,20 @@ static int mv3310_probe(struct phy_device *phydev)
 	    (phydev->c45_ids.devices_in_package & mmd_mask) != mmd_mask)
 		return -ENODEV;
 
+	priv = devm_kzalloc(&phydev->mdio.dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	dev_set_drvdata(&phydev->mdio.dev, priv);
+
+	ret = mv3310_fw_config(phydev);
+	if (ret < 0)
+		return ret;
+
+	ret = mv3310_leds_write(phydev);
+	if (ret < 0)
+		return ret;
+
 	ret = phy_read_mmd(phydev, MDIO_MMD_PMAPMD, MV_PMA_BOOT);
 	if (ret < 0)
 		return ret;
@@ -258,12 +312,6 @@ static int mv3310_probe(struct phy_device *phydev)
 		return -ENODEV;
 	}
 
-	priv = devm_kzalloc(&phydev->mdio.dev, sizeof(*priv), GFP_KERNEL);
-	if (!priv)
-		return -ENOMEM;
-
-	dev_set_drvdata(&phydev->mdio.dev, priv);
-
 	ret = mv3310_hwmon_probe(phydev);
 	if (ret)
 		return ret;
@@ -316,7 +364,7 @@ static int mv3310_config_init(struct phy_device *phydev)
 	    phydev->interface != PHY_INTERFACE_MODE_10GBASER)
 		return -ENODEV;
 
-	return 0;
+	return mv3310_leds_write(phydev);
 }
 
 static int mv3310_get_features(struct phy_device *phydev)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
