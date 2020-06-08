Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E521F13D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 09:47:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h3hBOmsXuLE7ecDptZjxh6BB8m/Q8LEQYKm9XjJYpPg=; b=uW4LpK2pEJM2Qd
	8ZjKVUpt8LMhId2Irp7W4y28uaoGTAVOngiJSnuV+4WWJ2EradBVK9J3VkOhlnNUPCJ6pRMjs7+Lc
	NF4hSPltc0NFfz3vSV1G2jjjAgUSuulnZnGSnAU4mNE9fHMqdAQ6lpNhehk6ZjoTGtuX4518Bw2uM
	Q/OOVYMRUzpvu3tlyuU7CopBjRRIGCI4/SvsFUMVumU1UyplOphvL1xckoQhcEGiDDYO78J4bwVF5
	BCmwscGzv509VEdITfzUtnnTt9Y7wy/evAyIFmDUK7Ez5D50wlSo7mmV5m5QWrBSQceOshc8bR5Lp
	wQY+1/Z0e+1QJW6y5b5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiCVK-0000Uu-BG; Mon, 08 Jun 2020 07:47:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiCV6-0000Tu-F0
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 07:47:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jiCV4-0006sX-7w; Mon, 08 Jun 2020 09:47:18 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jiCV3-0002be-PR; Mon, 08 Jun 2020 09:47:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: netdev@vger.kernel.org
Subject: [PATCH] net: ethernet: mvneta: add support for 2.5G DRSGMII mode
Date: Mon,  8 Jun 2020 09:47:16 +0200
Message-Id: <20200608074716.9975-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_004722_391305_0C76B755 
X-CRM114-Status: GOOD (  15.23  )
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
Cc: devicetree@vger.kernel.org, kernel@pengutronix.de,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Marvell MVNETA Ethernet controller supports a 2.5 Gbps SGMII mode
called DRSGMII.

This patch adds a corresponding phy-mode string 'drsgmii' and parses it
from DT. The MVNETA then configures the SERDES protocol value
accordingly.

It was successfully tested on a MV78460 connected to a FPGA.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../devicetree/bindings/net/ethernet-controller.yaml       | 1 +
 drivers/net/ethernet/marvell/mvneta.c                      | 7 ++++++-
 include/linux/phy.h                                        | 3 +++
 3 files changed, 10 insertions(+), 1 deletion(-)

This patch has already been sent 3 years ago here:
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20170123142206.5390-1-jlu@pengutronix.de/
Since then the driver has evolved a lot. 2.5Gbps is properly configured in the
MAC now.

diff --git a/Documentation/devicetree/bindings/net/ethernet-controller.yaml b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
index ac471b60ed6ae..4eead3c89bd3e 100644
--- a/Documentation/devicetree/bindings/net/ethernet-controller.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
@@ -66,6 +66,7 @@ properties:
       - gmii
       - sgmii
       - qsgmii
+      - drsgmii
       - tbi
       - rev-mii
       - rmii
diff --git a/drivers/net/ethernet/marvell/mvneta.c b/drivers/net/ethernet/marvell/mvneta.c
index 51889770958d8..807c698576c74 100644
--- a/drivers/net/ethernet/marvell/mvneta.c
+++ b/drivers/net/ethernet/marvell/mvneta.c
@@ -109,6 +109,7 @@
 #define MVNETA_SERDES_CFG			 0x24A0
 #define      MVNETA_SGMII_SERDES_PROTO		 0x0cc7
 #define      MVNETA_QSGMII_SERDES_PROTO		 0x0667
+#define      MVNETA_DRSGMII_SERDES_PROTO	 0x1107
 #define MVNETA_TYPE_PRIO                         0x24bc
 #define      MVNETA_FORCE_UNI                    BIT(21)
 #define MVNETA_TXQ_CMD_1                         0x24e4
@@ -3734,10 +3735,11 @@ static void mvneta_validate(struct phylink_config *config,
 	struct mvneta_port *pp = netdev_priv(ndev);
 	__ETHTOOL_DECLARE_LINK_MODE_MASK(mask) = { 0, };
 
-	/* We only support QSGMII, SGMII, 802.3z and RGMII modes */
+	/* We only support QSGMII, SGMII, DRSGMII, 802.3z and RGMII modes */
 	if (state->interface != PHY_INTERFACE_MODE_NA &&
 	    state->interface != PHY_INTERFACE_MODE_QSGMII &&
 	    state->interface != PHY_INTERFACE_MODE_SGMII &&
+	    state->interface != PHY_INTERFACE_MODE_DRSGMII &&
 	    !phy_interface_mode_is_8023z(state->interface) &&
 	    !phy_interface_mode_is_rgmii(state->interface)) {
 		bitmap_zero(supported, __ETHTOOL_LINK_MODE_MASK_NBITS);
@@ -3851,6 +3853,7 @@ static void mvneta_mac_config(struct phylink_config *config, unsigned int mode,
 
 	if (state->interface == PHY_INTERFACE_MODE_QSGMII ||
 	    state->interface == PHY_INTERFACE_MODE_SGMII ||
+	    state->interface == PHY_INTERFACE_MODE_DRSGMII ||
 	    phy_interface_mode_is_8023z(state->interface))
 		new_ctrl2 |= MVNETA_GMAC2_PCS_ENABLE;
 
@@ -4968,6 +4971,8 @@ static int mvneta_port_power_up(struct mvneta_port *pp, int phy_mode)
 	else if (phy_mode == PHY_INTERFACE_MODE_SGMII ||
 		 phy_interface_mode_is_8023z(phy_mode))
 		mvreg_write(pp, MVNETA_SERDES_CFG, MVNETA_SGMII_SERDES_PROTO);
+	else if (phy_mode == PHY_INTERFACE_MODE_DRSGMII)
+		mvreg_write(pp, MVNETA_SERDES_CFG, MVNETA_DRSGMII_SERDES_PROTO);
 	else if (!phy_interface_mode_is_rgmii(phy_mode))
 		return -EINVAL;
 
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 2432ca463ddc0..bf3276b330f9e 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -109,6 +109,7 @@ typedef enum {
 	PHY_INTERFACE_MODE_USXGMII,
 	/* 10GBASE-KR - with Clause 73 AN */
 	PHY_INTERFACE_MODE_10GKR,
+	PHY_INTERFACE_MODE_DRSGMII,
 	PHY_INTERFACE_MODE_MAX,
 } phy_interface_t;
 
@@ -190,6 +191,8 @@ static inline const char *phy_modes(phy_interface_t interface)
 		return "usxgmii";
 	case PHY_INTERFACE_MODE_10GKR:
 		return "10gbase-kr";
+	case PHY_INTERFACE_MODE_DRSGMII:
+		return "drsgmii";
 	default:
 		return "unknown";
 	}
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
