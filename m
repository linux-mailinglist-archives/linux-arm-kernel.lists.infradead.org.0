Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D22BC2EE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 10:32:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RyZZCQmXzB5Kzh97knbbzI6u2+a+0K+cGjtnk5aPsZs=; b=o1rxLMaAolDixN
	jLuMMuoo7Hk212Cp4h7Nf3cI3UJ9M7P6q17U6JqayJaaV2TAZ4gSZ4uOInWwzB7MqngR+vVTD9YuM
	cm0XYKyGFEyOs8ksBby37Asjx8Whj1OZZHMUI6jrfN1JT5Ee61rKou5ePgQviOjIi4Ti0MOxr+Bsz
	f801VQiYN1vP9XFITQJtuvduOHZEywmk/KBjIDuo7TH5lK6kzXwpnStl8fQ4lwkGGezmP1Aex+9rz
	UjHCPejy8WyFGLaSeL2R8aun4Es63ToUiBUD2DkOM65ajYX+VmA+g0TwGMBNjVldBJAFTXXp/Jxpt
	H81SnFR54/SFWLBYtSeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFDaB-0000ZG-VF; Tue, 01 Oct 2019 08:32:31 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDa4-0000Yt-7d
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 08:32:25 +0000
Received: from [199.195.250.187] (port=42641 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <icenowy@aosc.io>)
 id 1iFDZy-0001De-MX; Tue, 01 Oct 2019 09:32:19 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 5342182B0F;
 Tue,  1 Oct 2019 08:32:12 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: "David S . Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH 2/3] net: phy: realtek: add config hack for broken RTL8211E on
 Pine64+ boards
Date: Tue,  1 Oct 2019 16:29:11 +0800
Message-Id: <20191001082912.12905-3-icenowy@aosc.io>
In-Reply-To: <20191001082912.12905-1-icenowy@aosc.io>
References: <20191001082912.12905-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 65
X-Spam-Status: No, score=6.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_013224_273885_79326895 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:82:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some RTL8211E chips have broken GbE function, which needs a hack to
fix.

Currently only some Pine64+ boards are known to used this broken batch
of RTL8211E chips.

Enable this hack when a certain device tree property is set.

As this hack is not documented on the datasheet at all, it contains
magic numbers, and could not be revealed. These magic numbers are
received from Realtek via Pine64.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
 drivers/net/phy/realtek.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/net/phy/realtek.c b/drivers/net/phy/realtek.c
index 677c45985338..f696f2085368 100644
--- a/drivers/net/phy/realtek.c
+++ b/drivers/net/phy/realtek.c
@@ -9,6 +9,7 @@
  * Copyright (c) 2004 Freescale Semiconductor, Inc.
  */
 #include <linux/bitops.h>
+#include <linux/of.h>
 #include <linux/phy.h>
 #include <linux/module.h>
 
@@ -32,6 +33,12 @@
 #define RTL8211E_TX_DELAY			BIT(1)
 #define RTL8211E_RX_DELAY			BIT(2)
 #define RTL8211E_MODE_MII_GMII			BIT(3)
+/* The following number resides in the same register with
+ * the delay bits and mode bit above. However, no known
+ * document can explain this, and this value is directly
+ * received from Realtek via Pine64.
+ */
+#define RTL8211E_CONF_MAGIC_PINE64		0xb400
 
 #define RTL8201F_ISR				0x1e
 #define RTL8201F_IER				0x13
@@ -196,6 +203,7 @@ static int rtl8211e_config_init(struct phy_device *phydev)
 {
 	int ret = 0, oldpage;
 	u16 val;
+	struct device_node *of_node = phydev->mdio.dev.of_node;
 
 	/* enable TX/RX delay for rgmii-* modes, and disable them for rgmii. */
 	switch (phydev->interface) {
@@ -234,6 +242,12 @@ static int rtl8211e_config_init(struct phy_device *phydev)
 	ret = __phy_modify(phydev, 0x1c, RTL8211E_TX_DELAY | RTL8211E_RX_DELAY,
 			   val);
 
+	if (of_node &&
+	    of_property_read_bool(of_node, "realtek,config-magic-for-pine64")) {
+		ret = __phy_modify(phydev, 0x1c, GENMASK(15, 8),
+				   RTL8211E_CONF_MAGIC_PINE64);
+	}
+
 err_restore_page:
 	return phy_restore_page(phydev, oldpage, ret);
 }
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
