Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5547C14A2AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 12:11:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fwswJOq8rl/1YX/RQwflyZwmJxQZkV5gox9l1kE78GA=; b=CX77CUm0XjDP6N+CWKGuvQJUuk
	dP0brSOyiM0RCg9ro2cdJMDx7m2HZ2w3BG+lEnalL11kefqoHx8zXXkj8stPvFUtLjnFayG3sN/mG
	hOEJqYfzAzHL2/Qn2Kn477enLdeWLRhYKEHaYm+600oWOMz3A9dSpXM3Imk7caDbYfZ7uawjoMhnd
	B23OpzleHT583bh8sKxp3lb9oFAxvKhMzsXaNk27U2jDcnonkuY8DJduhAdzxUux6mUnVgYbvimlT
	J7Rxs5kQc0+lWEVdNqr+j6eYYMc7aqYos5LhEx2fwEkWnsbBbHA3D16no7xx5flRejXuPEu4upMmK
	ltmI930Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw2Ih-00088A-Tc; Mon, 27 Jan 2020 11:11:27 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw2Gt-0005QM-Cp
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 11:09:39 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 2050440680;
 Mon, 27 Jan 2020 11:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1580123372; bh=VsDOASeA0YCKzcJ5vcN6l0i7JCjaa8c/HylILLfeT1c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=IbyvIH8SfpY2VL++f7wtCrh2hTZEtsSQxFdAozrqz/6mULODGpqNwH6SmAIF0m+RC
 5xQR+8r4xHpLuLbY0K5hkP6o4fZHor4+en9fIMwgMhKco1tQweVEAcGZOvk1sB0ilP
 JNTiw8NRcdMGspbdHmDQwezO83KctnHry//y1KRchCI+7HhaPzS0pG7LeH+mdWkhDK
 UfrGtTNw3x4dktAdUHVoMmgEFgYxxcvDsuBs6GpkeHNC5s/oep2oyzcejpM/HaYGtM
 F6xh2KxV2AFQ2ObXvl12aG4fx2YmHv8JcROU6f5R65HypSxa6qHH2No/tSAwiXH37o
 vTuBhGNsoatJw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id C553AA009E;
 Mon, 27 Jan 2020 11:09:28 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [RFC net-next 7/8] net: phy: Add Synopsys DesignWare XPCS MDIO module
Date: Mon, 27 Jan 2020 12:09:12 +0100
Message-Id: <7034341f67542fc72d04c57bef14182bf90a22dd.1580122909.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1580122909.git.Jose.Abreu@synopsys.com>
References: <cover.1580122909.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1580122909.git.Jose.Abreu@synopsys.com>
References: <cover.1580122909.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_030935_467129_39E63D65 
X-CRM114-Status: GOOD (  22.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Andrew Lunn <andrew@lunn.ch>,
 Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Synopsys DesignWare XPCS is an MMD that can manage link status,
auto-negotiation, link training, ...

In this commit we add basic support for XPCS using USXGMII interface and
Clause 73 Auto-negotiation.

This is highly tied with PHYLINK and can't be used without it. A given
ethernet driver can use the provided callbacks to add the support for
XPCS.

Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 MAINTAINERS                 |   7 +
 drivers/net/phy/Kconfig     |   6 +
 drivers/net/phy/Makefile    |   1 +
 drivers/net/phy/mdio-xpcs.c | 567 ++++++++++++++++++++++++++++++++++++++++++++
 include/linux/mdio-xpcs.h   |  41 ++++
 5 files changed, 622 insertions(+)
 create mode 100644 drivers/net/phy/mdio-xpcs.c
 create mode 100644 include/linux/mdio-xpcs.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 31084bdb1639..84fda5d3e164 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15959,6 +15959,13 @@ L:	netdev@vger.kernel.org
 S:	Supported
 F:	drivers/net/ethernet/synopsys/
 
+SYNOPSYS DESIGNWARE ETHERNET XPCS DRIVER
+M:	Jose Abreu <Jose.Abreu@synopsys.com>
+L:	netdev@vger.kernel.org
+S:	Supported
+F:	drivers/net/phy/mdio-xpcs.c
+F:	include/linux/mdio-xpcs.h
+
 SYNOPSYS DESIGNWARE I2C DRIVER
 M:	Jarkko Nikula <jarkko.nikula@linux.intel.com>
 R:	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 71fc778ce398..30153d44136a 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -205,6 +205,12 @@ config MDIO_XGENE
 	  This module provides a driver for the MDIO busses found in the
 	  APM X-Gene SoC's.
 
+config MDIO_XPCS
+	tristate "Synopsys DesignWare XPCS controller"
+	help
+	  This module provides helper functions for Synopsys DesignWare XPCS
+	  controllers.
+
 endif
 endif
 
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index fe5badf13b65..7e41c54ef96f 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -42,6 +42,7 @@ obj-$(CONFIG_MDIO_OCTEON)	+= mdio-octeon.o
 obj-$(CONFIG_MDIO_SUN4I)	+= mdio-sun4i.o
 obj-$(CONFIG_MDIO_THUNDER)	+= mdio-thunder.o
 obj-$(CONFIG_MDIO_XGENE)	+= mdio-xgene.o
+obj-$(CONFIG_MDIO_XPCS)		+= mdio-xpcs.o
 
 obj-$(CONFIG_NETWORK_PHY_TIMESTAMPING) += mii_timestamper.o
 
diff --git a/drivers/net/phy/mdio-xpcs.c b/drivers/net/phy/mdio-xpcs.c
new file mode 100644
index 000000000000..0a6d10e08831
--- /dev/null
+++ b/drivers/net/phy/mdio-xpcs.c
@@ -0,0 +1,567 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2020 Synopsys, Inc. and/or its affiliates.
+ * Synopsys DesignWare XPCS helpers
+ *
+ * Author: Jose Abreu <Jose.Abreu@synopsys.com>
+ */
+
+#include <linux/delay.h>
+#include <linux/mdio.h>
+#include <linux/mdio-xpcs.h>
+#include <linux/phylink.h>
+#include <linux/workqueue.h>
+
+#define SYNOPSYS_XPCS_USXGMII_ID	0x7996ced0
+#define SYNOPSYS_XPCS_USXGMII_MASK	0xffffffff
+
+/* Vendor regs access */
+#define DW_VENDOR			BIT(15)
+
+/* VR_XS_PCS */
+#define DW_USXGMII_RST			BIT(10)
+#define DW_USXGMII_EN			BIT(9)
+#define DW_VR_XS_PCS_DIG_STS		0x0010
+#define DW_RXFIFO_ERR			GENMASK(6, 5)
+
+/* SR_MII */
+#define DW_USXGMII_FULL			BIT(8)
+#define DW_USXGMII_SS_MASK		(BIT(13) | BIT(6) | BIT(5))
+#define DW_USXGMII_10000		(BIT(13) | BIT(6))
+#define DW_USXGMII_5000			(BIT(13) | BIT(5))
+#define DW_USXGMII_2500			(BIT(5))
+#define DW_USXGMII_1000			(BIT(6))
+#define DW_USXGMII_100			(BIT(13))
+#define DW_USXGMII_10			(0)
+
+/* SR_AN */
+#define DW_SR_AN_ADV1			0x10
+#define DW_SR_AN_ADV2			0x11
+#define DW_SR_AN_ADV3			0x12
+#define DW_SR_AN_LP_ABL1		0x13
+#define DW_SR_AN_LP_ABL2		0x14
+#define DW_SR_AN_LP_ABL3		0x15
+
+/* Clause 73 Defines */
+/* AN_LP_ABL1 */
+#define DW_C73_PAUSE			BIT(10)
+#define DW_C73_ASYM_PAUSE		BIT(11)
+#define DW_C73_AN_ADV_SF		0x1
+/* AN_LP_ABL2 */
+#define DW_C73_1000KX			BIT(5)
+#define DW_C73_10000KX4			BIT(6)
+#define DW_C73_10000KR			BIT(7)
+/* AN_LP_ABL3 */
+#define DW_C73_2500KX			BIT(0)
+#define DW_C73_5000KR			BIT(1)
+
+static const int xpcs_usxgmii_features[] = {
+	ETHTOOL_LINK_MODE_Pause_BIT,
+	ETHTOOL_LINK_MODE_Asym_Pause_BIT,
+	ETHTOOL_LINK_MODE_Autoneg_BIT,
+	ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
+	ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT,
+	ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
+	ETHTOOL_LINK_MODE_2500baseX_Full_BIT,
+	__ETHTOOL_LINK_MODE_MASK_NBITS,
+};
+
+static const phy_interface_t xpcs_usxgmii_interfaces[] = {
+	PHY_INTERFACE_MODE_USXGMII,
+	PHY_INTERFACE_MODE_MAX,
+};
+
+static struct xpcs_id {
+	u32 id;
+	u32 mask;
+	const int *supported;
+	const phy_interface_t *interface;
+} xpcs_id_list[] = {
+	{
+		.id = SYNOPSYS_XPCS_USXGMII_ID,
+		.mask = SYNOPSYS_XPCS_USXGMII_MASK,
+		.supported = xpcs_usxgmii_features,
+		.interface = xpcs_usxgmii_interfaces,
+	},
+};
+
+static int xpcs_read(struct mdio_xpcs_args *xpcs, int dev, u32 reg)
+{
+	u32 reg_addr = MII_ADDR_C45 | dev << 16 | reg;
+
+	return mdiobus_read(xpcs->bus, xpcs->addr, reg_addr);
+}
+
+static int xpcs_write(struct mdio_xpcs_args *xpcs, int dev, u32 reg, u16 val)
+{
+	u32 reg_addr = MII_ADDR_C45 | dev << 16 | reg;
+
+	return mdiobus_write(xpcs->bus, xpcs->addr, reg_addr, val);
+}
+
+static int xpcs_read_vendor(struct mdio_xpcs_args *xpcs, int dev, u32 reg)
+{
+	return xpcs_read(xpcs, dev, DW_VENDOR | reg);
+}
+
+static int xpcs_write_vendor(struct mdio_xpcs_args *xpcs, int dev, int reg,
+			     u16 val)
+{
+	return xpcs_write(xpcs, dev, DW_VENDOR | reg, val);
+}
+
+static int xpcs_read_vpcs(struct mdio_xpcs_args *xpcs, int reg)
+{
+	return xpcs_read_vendor(xpcs, MDIO_MMD_PCS, reg);
+}
+
+static int xpcs_write_vpcs(struct mdio_xpcs_args *xpcs, int reg, u16 val)
+{
+	return xpcs_write_vendor(xpcs, MDIO_MMD_PCS, reg, val);
+}
+
+static int xpcs_poll_reset(struct mdio_xpcs_args *xpcs, int dev)
+{
+	/* Poll until the reset bit clears (50ms per retry == 0.6 sec) */
+	unsigned int retries = 12;
+	int ret;
+
+	do {
+		msleep(50);
+		ret = xpcs_read(xpcs, dev, MDIO_CTRL1);
+		if (ret < 0)
+			return ret;
+	} while (ret & MDIO_CTRL1_RESET && --retries);
+
+	return (ret & MDIO_CTRL1_RESET) ? -ETIMEDOUT : 0;
+}
+
+static int xpcs_soft_reset(struct mdio_xpcs_args *xpcs, int dev)
+{
+	int ret;
+
+	ret = xpcs_write(xpcs, dev, MDIO_CTRL1, MDIO_CTRL1_RESET);
+	if (ret < 0)
+		return ret;
+
+	return xpcs_poll_reset(xpcs, dev);
+}
+
+#define xpcs_warn(__xpcs, __state, __args...) \
+({ \
+	if ((__state)->link) \
+		dev_warn(&(__xpcs)->bus->dev, ##__args); \
+})
+
+static int xpcs_read_fault(struct mdio_xpcs_args *xpcs,
+			   struct phylink_link_state *state)
+{
+	int ret;
+
+	ret = xpcs_read(xpcs, MDIO_MMD_PCS, MDIO_STAT1);
+	if (ret < 0)
+		return ret;
+
+	if (ret & MDIO_STAT1_FAULT) {
+		xpcs_warn(xpcs, state, "Link fault condition detected!\n");
+		return -EFAULT;
+	}
+
+	ret = xpcs_read(xpcs, MDIO_MMD_PCS, MDIO_STAT2);
+	if (ret < 0)
+		return ret;
+
+	if (ret & MDIO_STAT2_RXFAULT) {
+		xpcs_warn(xpcs, state, "Receiver fault detected!\n");
+		return -EFAULT;
+	}
+	if (ret & MDIO_STAT2_TXFAULT) {
+		xpcs_warn(xpcs, state, "Transmitter fault detected!\n");
+		return -EFAULT;
+	}
+
+	ret = xpcs_read_vendor(xpcs, MDIO_MMD_PCS, DW_VR_XS_PCS_DIG_STS);
+	if (ret < 0)
+		return ret;
+
+	if (ret & DW_RXFIFO_ERR) {
+		xpcs_warn(xpcs, state, "FIFO fault condition detected!\n");
+		return -EFAULT;
+	}
+
+	ret = xpcs_read(xpcs, MDIO_MMD_PCS, MDIO_PCS_10GBRT_STAT1);
+	if (ret < 0)
+		return ret;
+
+	if (!(ret & MDIO_PCS_10GBRT_STAT1_BLKLK))
+		xpcs_warn(xpcs, state, "Link is not locked!\n");
+
+	ret = xpcs_read(xpcs, MDIO_MMD_PCS, MDIO_PCS_10GBRT_STAT2);
+	if (ret < 0)
+		return ret;
+
+	if (ret & MDIO_PCS_10GBRT_STAT2_ERR)
+		xpcs_warn(xpcs, state, "Link has errors!\n");
+
+	return 0;
+}
+
+static int xpcs_read_link(struct mdio_xpcs_args *xpcs)
+{
+	bool link = true;
+	int ret;
+
+	ret = xpcs_read(xpcs, MDIO_MMD_PCS, MDIO_STAT1);
+	if (ret < 0)
+		return ret;
+
+	if (!(ret & MDIO_STAT1_LSTATUS))
+		link = false;
+
+	ret = xpcs_read(xpcs, MDIO_MMD_AN, MDIO_STAT1);
+	if (ret < 0)
+		return ret;
+
+	if (!(ret & MDIO_STAT1_LSTATUS))
+		link = false;
+
+	return link;
+}
+
+static int xpcs_get_max_usxgmii_speed(const unsigned long *supported)
+{
+	int max = SPEED_UNKNOWN;
+
+	if (phylink_test(supported, 1000baseKX_Full))
+		max = SPEED_1000;
+	if (phylink_test(supported, 2500baseX_Full))
+		max = SPEED_2500;
+	if (phylink_test(supported, 10000baseKX4_Full))
+		max = SPEED_10000;
+	if (phylink_test(supported, 10000baseKR_Full))
+		max = SPEED_10000;
+
+	return max;
+}
+
+static int xpcs_config_usxgmii(struct mdio_xpcs_args *xpcs, int speed)
+{
+	int ret, speed_sel;
+
+	switch (speed) {
+	case SPEED_10:
+		speed_sel = DW_USXGMII_10;
+		break;
+	case SPEED_100:
+		speed_sel = DW_USXGMII_100;
+		break;
+	case SPEED_1000:
+		speed_sel = DW_USXGMII_1000;
+		break;
+	case SPEED_2500:
+		speed_sel = DW_USXGMII_2500;
+		break;
+	case SPEED_5000:
+		speed_sel = DW_USXGMII_5000;
+		break;
+	case SPEED_10000:
+		speed_sel = DW_USXGMII_10000;
+		break;
+	default:
+		/* Nothing to do here */
+		return -EINVAL;
+	}
+
+	ret = xpcs_read_vpcs(xpcs, MDIO_CTRL1);
+	if (ret < 0)
+		return ret;
+
+	ret = xpcs_write_vpcs(xpcs, MDIO_CTRL1, ret | DW_USXGMII_EN);
+	if (ret < 0)
+		return ret;
+
+	ret = xpcs_read(xpcs, MDIO_MMD_VEND2, MDIO_CTRL1);
+	if (ret < 0)
+		return ret;
+
+	ret &= ~DW_USXGMII_SS_MASK;
+	ret |= speed_sel | DW_USXGMII_FULL;
+
+	ret = xpcs_write(xpcs, MDIO_MMD_VEND2, MDIO_CTRL1, ret);
+	if (ret < 0)
+		return ret;
+
+	ret = xpcs_read_vpcs(xpcs, MDIO_CTRL1);
+	if (ret < 0)
+		return ret;
+
+	return xpcs_write_vpcs(xpcs, MDIO_CTRL1, ret | DW_USXGMII_RST);
+}
+
+static int xpcs_config_aneg_c73(struct mdio_xpcs_args *xpcs)
+{
+	int ret, adv;
+
+	/* By default, in USXGMII mode XPCS operates at 10G baud and
+	 * replicates data to achieve lower speeds. Hereby, in this
+	 * default configuration we need to advertise all supported
+	 * modes and not only the ones we want to use.
+	 */
+
+	/* SR_AN_ADV3 */
+	adv = 0;
+	if (phylink_test(xpcs->supported, 2500baseX_Full))
+		adv |= DW_C73_2500KX;
+
+	/* TODO: 5000baseKR */
+
+	ret = xpcs_write(xpcs, MDIO_MMD_AN, DW_SR_AN_ADV3, adv);
+	if (ret < 0)
+		return ret;
+
+	/* SR_AN_ADV2 */
+	adv = 0;
+	if (phylink_test(xpcs->supported, 1000baseKX_Full))
+		adv |= DW_C73_1000KX;
+	if (phylink_test(xpcs->supported, 10000baseKX4_Full))
+		adv |= DW_C73_10000KX4;
+	if (phylink_test(xpcs->supported, 10000baseKR_Full))
+		adv |= DW_C73_10000KR;
+
+	ret = xpcs_write(xpcs, MDIO_MMD_AN, DW_SR_AN_ADV2, adv);
+	if (ret < 0)
+		return ret;
+
+	/* SR_AN_ADV1 */
+	adv = DW_C73_AN_ADV_SF;
+	if (phylink_test(xpcs->supported, Pause))
+		adv |= DW_C73_PAUSE;
+	if (phylink_test(xpcs->supported, Asym_Pause))
+		adv |= DW_C73_ASYM_PAUSE;
+
+	return xpcs_write(xpcs, MDIO_MMD_AN, DW_SR_AN_ADV1, adv);
+}
+
+static int xpcs_config_aneg(struct mdio_xpcs_args *xpcs)
+{
+	int ret;
+
+	ret = xpcs_config_aneg_c73(xpcs);
+	if (ret < 0)
+		return ret;
+
+	ret = xpcs_read(xpcs, MDIO_MMD_AN, MDIO_CTRL1);
+	if (ret < 0)
+		return ret;
+
+	ret |= MDIO_AN_CTRL1_ENABLE | MDIO_AN_CTRL1_RESTART;
+
+	return xpcs_write(xpcs, MDIO_MMD_AN, MDIO_CTRL1, ret);
+}
+
+static int xpcs_aneg_done(struct mdio_xpcs_args *xpcs,
+			  struct phylink_link_state *state)
+{
+	int ret;
+
+	ret = xpcs_read(xpcs, MDIO_MMD_AN, MDIO_STAT1);
+	if (ret < 0)
+		return ret;
+
+	if (ret & MDIO_AN_STAT1_COMPLETE) {
+		ret = xpcs_read(xpcs, MDIO_MMD_AN, DW_SR_AN_LP_ABL1);
+		if (ret < 0)
+			return ret;
+
+		/* Check if Aneg outcome is valid */
+		if (!(ret & DW_C73_AN_ADV_SF))
+			return 0;
+
+		return 1;
+	}
+
+	return 0;
+}
+
+static int xpcs_read_lpa(struct mdio_xpcs_args *xpcs,
+			 struct phylink_link_state *state)
+{
+	int ret;
+
+	ret = xpcs_read(xpcs, MDIO_MMD_AN, MDIO_STAT1);
+	if (ret < 0)
+		return ret;
+
+	if (!(ret & MDIO_AN_STAT1_LPABLE)) {
+		phylink_clear(state->lp_advertising, Autoneg);
+		return 0;
+	}
+
+	phylink_set(state->lp_advertising, Autoneg);
+
+	/* Clause 73 outcome */
+	ret = xpcs_read(xpcs, MDIO_MMD_AN, DW_SR_AN_LP_ABL3);
+	if (ret < 0)
+		return ret;
+
+	if (ret & DW_C73_2500KX)
+		phylink_set(state->lp_advertising, 2500baseX_Full);
+
+	ret = xpcs_read(xpcs, MDIO_MMD_AN, DW_SR_AN_LP_ABL2);
+	if (ret < 0)
+		return ret;
+
+	if (ret & DW_C73_1000KX)
+		phylink_set(state->lp_advertising, 1000baseKX_Full);
+	if (ret & DW_C73_10000KX4)
+		phylink_set(state->lp_advertising, 10000baseKX4_Full);
+	if (ret & DW_C73_10000KR)
+		phylink_set(state->lp_advertising, 10000baseKR_Full);
+
+	ret = xpcs_read(xpcs, MDIO_MMD_AN, DW_SR_AN_LP_ABL1);
+	if (ret < 0)
+		return ret;
+
+	if (ret & DW_C73_PAUSE)
+		phylink_set(state->lp_advertising, Pause);
+	if (ret & DW_C73_ASYM_PAUSE)
+		phylink_set(state->lp_advertising, Asym_Pause);
+
+	linkmode_and(state->lp_advertising, state->lp_advertising,
+		     state->advertising);
+	return 0;
+}
+
+static void xpcs_resolve_lpa(struct mdio_xpcs_args *xpcs,
+			     struct phylink_link_state *state)
+{
+	int max_speed = xpcs_get_max_usxgmii_speed(state->lp_advertising);
+
+	state->pause = MLO_PAUSE_SYM | MLO_PAUSE_ASYM;
+	state->speed = max_speed;
+	state->duplex = DUPLEX_FULL;
+}
+
+static int xpcs_validate(struct mdio_xpcs_args *xpcs,
+			 unsigned long *supported,
+			 struct phylink_link_state *state)
+{
+	phylink_and(supported, xpcs->supported);
+	phylink_and(state->advertising, xpcs->supported);
+	return 0;
+}
+
+static int xpcs_config(struct mdio_xpcs_args *xpcs,
+		       const struct phylink_link_state *state)
+{
+	int ret;
+
+	if (state->an_enabled) {
+		ret = xpcs_config_aneg(xpcs);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int xpcs_get_state(struct mdio_xpcs_args *xpcs,
+			  struct phylink_link_state *state)
+{
+	int ret;
+
+	/* Link needs to be read first ... */
+	state->link = xpcs_read_link(xpcs) > 0 ? 1 : 0;
+
+	/* ... and then we check the faults. */
+	ret = xpcs_read_fault(xpcs, state);
+	if (ret) {
+		ret = xpcs_soft_reset(xpcs, MDIO_MMD_PCS);
+		if (ret)
+			return ret;
+
+		state->link = 0;
+
+		return xpcs_config_aneg(xpcs);
+	}
+
+	if (state->link && xpcs_aneg_done(xpcs, state)) {
+		state->an_complete = true;
+		xpcs_read_lpa(xpcs, state);
+		xpcs_resolve_lpa(xpcs, state);
+	}
+
+	return 0;
+}
+
+static int xpcs_link_up(struct mdio_xpcs_args *xpcs, int speed,
+			phy_interface_t interface)
+{
+	return xpcs_config_usxgmii(xpcs, speed);
+}
+
+static u32 xpcs_get_id(struct mdio_xpcs_args *xpcs)
+{
+	int ret;
+	u32 id;
+
+	ret = xpcs_read(xpcs, MDIO_MMD_PCS, MII_PHYSID1);
+	if (ret < 0)
+		return 0xffffffff;
+
+	id = ret << 16;
+
+	ret = xpcs_read(xpcs, MDIO_MMD_PCS, MII_PHYSID2);
+	if (ret < 0)
+		return 0xffffffff;
+
+	return id | ret;
+}
+
+static int xpcs_probe(struct mdio_xpcs_args *xpcs, phy_interface_t interface)
+{
+	u32 xpcs_id = xpcs_get_id(xpcs);
+	struct xpcs_id *match = NULL;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(xpcs_id_list); i++) {
+		struct xpcs_id *entry = &xpcs_id_list[i];
+
+		if ((xpcs_id & entry->mask) == entry->id) {
+			match = entry;
+			break;
+		}
+	}
+
+	if (!match)
+		return -ENODEV;
+
+	for (i = 0; match->interface[i] != PHY_INTERFACE_MODE_MAX; i++) {
+		if (match->interface[i] == interface)
+			break;
+	}
+
+	if (match->interface[i] == PHY_INTERFACE_MODE_MAX)
+		return -EINVAL;
+
+	for (i = 0; match->supported[i] != __ETHTOOL_LINK_MODE_MASK_NBITS; i++)
+		set_bit(match->supported[i], xpcs->supported);
+
+	return 0;
+}
+
+static struct mdio_xpcs_ops xpcs_ops = {
+	.validate = xpcs_validate,
+	.config = xpcs_config,
+	.get_state = xpcs_get_state,
+	.link_up = xpcs_link_up,
+	.probe = xpcs_probe,
+};
+
+struct mdio_xpcs_ops *mdio_xpcs_get_ops(void)
+{
+	return &xpcs_ops;
+}
+EXPORT_SYMBOL_GPL(mdio_xpcs_get_ops);
+
+MODULE_LICENSE("GPL v2");
diff --git a/include/linux/mdio-xpcs.h b/include/linux/mdio-xpcs.h
new file mode 100644
index 000000000000..9a841aa5982d
--- /dev/null
+++ b/include/linux/mdio-xpcs.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2020 Synopsys, Inc. and/or its affiliates.
+ * Synopsys DesignWare XPCS helpers
+ */
+
+#ifndef __LINUX_MDIO_XPCS_H
+#define __LINUX_MDIO_XPCS_H
+
+#include <linux/phy.h>
+#include <linux/phylink.h>
+
+struct mdio_xpcs_args {
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(supported);
+	struct mii_bus *bus;
+	int addr;
+};
+
+struct mdio_xpcs_ops {
+	int (*validate)(struct mdio_xpcs_args *xpcs,
+			unsigned long *supported,
+			struct phylink_link_state *state);
+	int (*config)(struct mdio_xpcs_args *xpcs,
+		      const struct phylink_link_state *state);
+	int (*get_state)(struct mdio_xpcs_args *xpcs,
+			 struct phylink_link_state *state);
+	int (*link_up)(struct mdio_xpcs_args *xpcs, int speed,
+		       phy_interface_t interface);
+	int (*probe)(struct mdio_xpcs_args *xpcs, phy_interface_t interface);
+};
+
+#if IS_ENABLED(CONFIG_MDIO_XPCS)
+struct mdio_xpcs_ops *mdio_xpcs_get_ops(void);
+#else
+static inline struct mdio_xpcs_ops *mdio_xpcs_get_ops(void)
+{
+	return NULL;
+}
+#endif
+
+#endif /* __LINUX_MDIO_XPCS_H */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
