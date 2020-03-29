Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B208196CC8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 13:05:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H7YI44hiJEoB1nPnJWhSHKGjtgHF5ftZck579HRoJtw=; b=gW4uHIsgdsjLNS
	MgCCjatPZl2TI7RUCqSv0m3baMBn7ByOifUEKYeB1vau4bF8fkdcq2aP3HC2ik3nEA6W0ElJmTqLj
	D1mkJdFc6YdEfnIpqwgIBVPHDC66+gJTZPRjFRK5Q32CtKzkZ3RzPL4TvspI8MUTtFzc/RIa0v0Mk
	TNaCCoMy9GG/Oiebv76Jn9tfE9BVM1Wnk8db3+qlLsQCM4OoijpSA1cloVUwDS5xtDpnuMfHo0wQT
	a0ILtuEdrZ4bImzYsqH3EUO/mbZZw7V/Lb79pIcBhMrCwFwnLehKBcK+wnvg7oJHnn/TBRFsk0wbm
	oxGSWGBUiEeXf12IPL/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIVkl-0002D4-9O; Sun, 29 Mar 2020 11:05:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIVkX-00019o-K0
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 11:05:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jIVkS-0006s2-Qt; Sun, 29 Mar 2020 13:05:00 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jIVkQ-00015E-4v; Sun, 29 Mar 2020 13:04:58 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH v2] ARM: imx: allow to disable board specific PHY fixups
Date: Sun, 29 Mar 2020 13:04:57 +0200
Message-Id: <20200329110457.4113-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_040505_668451_6FCC0C25 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Oleksij Rempel <o.rempel@pengutronix.de>,
 linux-imx@nxp.com, kernel@pengutronix.de, David Jander <david@protonic.nl>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All PHY fixups located in imx and mxs machine code are PHY and/or board
specific. Never the less, they are applied to all boards independent on
how related PHY is actually connected. As result:
- we have boards with wrong PHY defaults which are not overwritten or
  not properly handled by PHY drivers.
- Some PHY driver changes was never tested and bugs was never detected
  due the fixups.
- Same PHY specific errata was fixed by SoC specific fixup, so the same
  issues should be investigated again after switching to different SoC
  on same board.

Since removing this fixups will brake may existing boards, we'll provide a
Kconfig option which can be used by kernel developers and system integrators.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/mach-imx/mach-imx6q.c  |  3 ++-
 arch/arm/mach-imx/mach-imx6sx.c |  3 ++-
 arch/arm/mach-imx/mach-imx7d.c  |  3 ++-
 arch/arm/mach-mxs/mach-mxs.c    |  3 ++-
 drivers/net/phy/Kconfig         | 16 ++++++++++++++++
 5 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/mach-imx6q.c b/arch/arm/mach-imx/mach-imx6q.c
index edd26e0ffeec..aabf0d8c23a9 100644
--- a/arch/arm/mach-imx/mach-imx6q.c
+++ b/arch/arm/mach-imx/mach-imx6q.c
@@ -162,7 +162,8 @@ static int ar8035_phy_fixup(struct phy_device *dev)
 
 static void __init imx6q_enet_phy_init(void)
 {
-	if (IS_BUILTIN(CONFIG_PHYLIB)) {
+	if (IS_BUILTIN(CONFIG_PHYLIB) &&
+	    IS_BUILTIN(CONFIG_DEPRECATED_PHY_FIXUPS)) {
 		phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
 				ksz9021rn_phy_fixup);
 		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
diff --git a/arch/arm/mach-imx/mach-imx6sx.c b/arch/arm/mach-imx/mach-imx6sx.c
index d5310bf307ff..fdd9bef27625 100644
--- a/arch/arm/mach-imx/mach-imx6sx.c
+++ b/arch/arm/mach-imx/mach-imx6sx.c
@@ -35,7 +35,8 @@ static int ar8031_phy_fixup(struct phy_device *dev)
 #define PHY_ID_AR8031   0x004dd074
 static void __init imx6sx_enet_phy_init(void)
 {
-	if (IS_BUILTIN(CONFIG_PHYLIB))
+	if (IS_BUILTIN(CONFIG_PHYLIB) &&
+	    IS_BUILTIN(CONFIG_DEPRECATED_PHY_FIXUPS))
 		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffff,
 					   ar8031_phy_fixup);
 }
diff --git a/arch/arm/mach-imx/mach-imx7d.c b/arch/arm/mach-imx/mach-imx7d.c
index ebb27592a9f7..1d3d67c247a3 100644
--- a/arch/arm/mach-imx/mach-imx7d.c
+++ b/arch/arm/mach-imx/mach-imx7d.c
@@ -49,7 +49,8 @@ static int bcm54220_phy_fixup(struct phy_device *dev)
 
 static void __init imx7d_enet_phy_init(void)
 {
-	if (IS_BUILTIN(CONFIG_PHYLIB)) {
+	if (IS_BUILTIN(CONFIG_PHYLIB) &&
+	    IS_BUILTIN(CONFIG_DEPRECATED_PHY_FIXUPS)) {
 		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffff,
 					   ar8031_phy_fixup);
 		phy_register_fixup_for_uid(PHY_ID_BCM54220, 0xffffffff,
diff --git a/arch/arm/mach-mxs/mach-mxs.c b/arch/arm/mach-mxs/mach-mxs.c
index c109f47e9cbc..b4b631242080 100644
--- a/arch/arm/mach-mxs/mach-mxs.c
+++ b/arch/arm/mach-mxs/mach-mxs.c
@@ -257,7 +257,8 @@ static void __init apx4devkit_init(void)
 {
 	enable_clk_enet_out();
 
-	if (IS_BUILTIN(CONFIG_PHYLIB))
+	if (IS_BUILTIN(CONFIG_PHYLIB) &&
+	    IS_BUILTIN(CONFIG_DEPRECATED_PHY_FIXUPS))
 		phy_register_fixup_for_uid(PHY_ID_KSZ8051, MICREL_PHY_ID_MASK,
 					   apx4devkit_phy_fixup);
 }
diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 9dabe03a668c..f54428ddf058 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -249,6 +249,22 @@ config LED_TRIGGER_PHY
 		<Speed in megabits>Mbps OR <Speed in gigabits>Gbps OR link
 		for any speed known to the PHY.
 
+config DEPRECATED_PHY_FIXUPS
+	bool "Enable deprecated PHY fixups"
+	default y
+	---help---
+	  In the early days it was common practice to configure PHYs by adding a
+	  phy_register_fixup*() in the machine code. This practice turned out to
+	  be potentially dangerous, because:
+	  - it affects all PHYs in the system
+	  - these register changes are usually not preserved during PHY reset
+	    or suspend/resume cycle.
+	  - it complicates debugging, since these configuration changes were not
+	    done by the actual PHY driver.
+	  This option allows to disable all fixups which are identified as
+	  potentially harmful and give the developers a chance to implement the
+	  proper configuration via the device tree (e.g.: phy-mode) and/or the
+	  related PHY drivers.
 
 comment "MII PHY device drivers"
 
-- 
2.26.0.rc2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
