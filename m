Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF71857FC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 11:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yjD28Ex21cAXtQ2J6ko3N3+vma92swbW9ZX4uzIFRZw=; b=nJDiEsFA4ZYAbD
	d3oQHfzHohNbcCSiJ0D4XZ7J/SBFq/2pGIM0+E4y23Z9JGrPjKUxiRzbwXlS3cNTzbZOAzIgTQAyr
	+ePJclfXERjXKoq8iLzf6rYS0fRBSeeRgfWpheFecKhQk3xeHCZ9J2eSavV3xkJZ5cf5N/TSRaSk3
	un0ySdLDHfKbJ/lH7qERMjvI83nRfcc8hV1imNQp5uIMi2CgPE7Cch2vwgGMxRhJpCKb8N6DMGsfh
	X00UY6VzcEOqO0P0ozDV0g4KhRSDV+8g2DAQFfPZwyoLevv58QYzNLbbNF7xbJuCw9+Zou0MKE9/f
	TIyZIKOCTu6I0mKJ+6HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgR9N-0007mM-QQ; Thu, 27 Jun 2019 09:57:05 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgR6c-0004zz-L6
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 09:54:16 +0000
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id B3FDB20001B;
 Thu, 27 Jun 2019 09:53:58 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] phy: mvebu-a3700-comphy: Inform users if their firmware is
 too old
Date: Thu, 27 Jun 2019 11:53:57 +0200
Message-Id: <20190627095357.22935-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_025414_862636_B5C01856 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PHY configuration has been implemented in the firmware and accessed
through SMC calls. In the past, it worked magically if the bootloader
was correctly doing the initializations.

With up-to-date bindings, the kernel will need a recent firmware in
order to do the initializations himself (we assume people must update
their firmware along with their kernel).

People might not understand why IPs that were working correctly before
stopped to be probed suddendly. In this case, let's advise the users
to update their firmware with a visual warning.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/phy/marvell/phy-mvebu-a3700-comphy.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
index 8812a104c233..b09bf64d53b7 100644
--- a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
@@ -26,6 +26,7 @@
 #define COMPHY_SIP_POWER_ON			0x82000001
 #define COMPHY_SIP_POWER_OFF			0x82000002
 #define COMPHY_SIP_PLL_LOCK			0x82000003
+#define COMPHY_FW_NOT_SUPPORTED			(-1)
 
 #define COMPHY_FW_MODE_SATA			0x1
 #define COMPHY_FW_MODE_SGMII			0x2
@@ -169,6 +170,7 @@ static int mvebu_a3700_comphy_power_on(struct phy *phy)
 	struct mvebu_a3700_comphy_lane *lane = phy_get_drvdata(phy);
 	u32 fw_param;
 	int fw_mode;
+	int ret;
 
 	fw_mode = mvebu_a3700_comphy_get_fw_mode(lane->id, lane->port,
 						 lane->mode, lane->submode);
@@ -217,7 +219,12 @@ static int mvebu_a3700_comphy_power_on(struct phy *phy)
 		return -ENOTSUPP;
 	}
 
-	return mvebu_a3700_comphy_smc(COMPHY_SIP_POWER_ON, lane->id, fw_param);
+	ret = mvebu_a3700_comphy_smc(COMPHY_SIP_POWER_ON, lane->id, fw_param);
+	if (ret == COMPHY_FW_NOT_SUPPORTED)
+		dev_err(lane->dev,
+			"unsupported SMC call, try updating your firmware\n");
+
+	return ret;
 }
 
 static int mvebu_a3700_comphy_power_off(struct phy *phy)
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
