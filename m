Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55612116882
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 09:44:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4ErPkWdyybHl2SbSnqnGaIY4gArfEjQTvboIczALujM=; b=df5aOJwyJGb6uR
	sYIkY/6FiT6SWlFcl7o2W6r3xqG6C3h6HuMVwV8OgrDbINKGEpVsCv6Gmv3jjtiSdbbOE4FeSXvce
	eVDV8sGY+yb1pB3NwoUO05TD/35LgFiUaZsh2AeG9fuj9+a7B+5wEWDk68wb3eBrxix6Oy2mdat29
	H5iygzbtuVVJzaAh2KN61wZ95Iz4jqw6OL3N24caXEo/X2jfdIC1neKKfpYNwLh6KWAqIX4vXEK3J
	59hIokjkez73elUXmUwXmjvjImk/LKDJSse1DoQgjM9xEbCmUYDAsJMWBLE0CN6cVbQ6BxzxF8Qa7
	wpNeeJzuR+MMsG8Kb7Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieEeq-0002B7-1T; Mon, 09 Dec 2019 08:44:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEeh-00028c-Nz
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 08:44:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1ieEee-0007WR-G5; Mon, 09 Dec 2019 09:44:32 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1ieEed-0002y7-Ri; Mon, 09 Dec 2019 09:44:31 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v1] ARM i.MX6q: make sure PHY fixup for KSZ9031 is applied
 only on one board
Date: Mon,  9 Dec 2019 09:44:30 +0100
Message-Id: <20191209084430.11107-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_004435_777561_F23E03EB 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Oleksij Rempel <o.rempel@pengutronix.de>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently all board specific fixups defined in mach-imx*.c are not
working properly. They are applied on all boards with the same iMX SoC
variant and even if:
- PHY needs different settings because of different board design
- PHY needs different settings if it is not connected directly to the SoC.
  For example, the PHY is connected to a switch and the switch is connected
  to the SoC.

Since most PHY drivers don't know about changed default settings, these
settings will not be restored by the PHY driver after reset or
suspend/resume cycle.

This patch changes the MICREL KSZ9031 fixup, which was introduced for
the "Data Modul eDM-QMX6" board in following patch, to be only activated
for this specific board.

|commit dbf6719a4a080669acb5087893704586c791aa41
|Author: Sascha Hauer <s.hauer@pengutronix.de>
|Date:   Thu Jun 20 17:34:33 2013 +0200
|
| ARM: i.MX6: add ethernet phy fixup for KSZ9031
|
| The KSZ9031 is used on the i.MX6 based Data Modul eDM-QMX6
| board. It needs the same fixup to the rx/tx delays as other
| i.MX6 boards.

If some board was working by accident with this fixup, it will probably
break and should be fixed properly by setting related device tree
properties.

To fix this properly the "eDM-QMX6" devicetree:

    arch/arm/boot/dts/imx6q-dmo-edmqmx6.dts

should have board specific *-skew-ps properties. See:

    Documentation/devicetree/bindings/net/micrel-ksz90x1.txt

Cc: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/mach-imx/mach-imx6q.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/mach-imx6q.c b/arch/arm/mach-imx/mach-imx6q.c
index 6441281cf4f2..2370cb5d8501 100644
--- a/arch/arm/mach-imx/mach-imx6q.c
+++ b/arch/arm/mach-imx/mach-imx6q.c
@@ -162,11 +162,19 @@ static int ar8035_phy_fixup(struct phy_device *dev)
 
 static void __init imx6q_enet_phy_init(void)
 {
+	/* Warning: please do not extend this fixup list. This fixups are
+	 * applied even on boards where related PHY is not directly connected
+	 * to the ethernet controller. For example with switch in the middle.
+	 */
 	if (IS_BUILTIN(CONFIG_PHYLIB)) {
 		phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
 				ksz9021rn_phy_fixup);
-		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
-				ksz9031rn_phy_fixup);
+
+		if (of_machine_is_compatible("dmo,imx6q-edmqmx6"))
+			phy_register_fixup_for_uid(PHY_ID_KSZ9031,
+						   MICREL_PHY_ID_MASK,
+						   ksz9031rn_phy_fixup);
+
 		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffef,
 				ar8031_phy_fixup);
 		phy_register_fixup_for_uid(PHY_ID_AR8035, 0xffffffef,
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
