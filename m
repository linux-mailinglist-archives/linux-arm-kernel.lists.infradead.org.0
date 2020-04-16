Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D251ACEE4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 19:46:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Jv7kGtkLN/DkCLUdPpbyvnKIGJRzRXonc4A4PKK1Zk=; b=PMkRpVuhCxopOT
	tf8fa/DiWSYnR6np2GI2NmLCDcWz0BEZAM/TQXq6YaB+poNPwMkIA33n/Hsv+XtYWz1h4kD73T4qg
	XxXrA6vjdqEcGlZgIrQ9M1z8hOs0+vEJYFCE7/kRw3boaoPC+AuQ5u1C+nRo0t+knaiYcezFqVU6I
	k0AJHfc47aC49+FEu51ykNz8vgbpcviJfn2ly3Pux8l0kAcuEfjOE9/+tVUKpi8KaM9K1AyE9+wsg
	ng+O5Ch1A1GHA3JjMIS2exLFgPxchLpahoaIPc0bgsx79szkIdA3w0d0weOujLAZib9IgcUJTw3HD
	hcCztDetk7LjtQCeAmAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP8aP-0007co-Ij; Thu, 16 Apr 2020 17:46:01 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP8Zm-0007Dc-JR
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 17:45:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587059122; x=1618595122;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gDJwJ/pAyKWbFBzwhp+PwsI+ak11+Glc+LQ9yysjG/o=;
 b=Ai2s+t0YZhdavTIphPs3ZLEW3HJspEvtiMN7NKx9gw8QVl9nSYHVcDmP
 chMx//pWGil5GeydDbWDCWhlLsOnzeEcjUV+12WyTROqFhCukuvQLK75D
 B6Q123khBnnmmfE5ujF2qhzgZds0rTxUl6qCl65GeS2/S+vUR8MWY+9IZ
 YyS6jUdCkyPKXTDcIpmqGi0UKUdr9xDqso1PMIutgAQg7+KzLpIW+z2UQ
 0gwT1FNK7WNsIau/7pnXmaJPbekSU2JSTAptUdeBqIMPPScyTUfOrwiaz
 DKTBuXRpKYv5UG/VlRIazmSk1CxjaBzf7t1uccYoeW2bkMwIJneXDLPVQ Q==;
IronPort-SDR: 4hX2fzr1StBDC67YN3mbu9kRGnPnxwBxC9JneBug//Sd25Vhw2JI1wQRMmKfGufiR9fFcLFeuW
 BweHL2mY9o+tTQUej4U5j9u15MuAEktlnXjPQAB9A1mLhirLXNoty1D4cyxi8AHQwyJOC0JWbL
 X7BQsZUiRDHqgNbfPzhG9yv4GlqDb2/UESrzX/eJEW9kTImW3NsVxg8DNPv8rnWOEy2taqtEQQ
 luYtKnUpRjYVk0/zZ84YGbZRHlzARrmmuwLkbphVeBP7nn/wRvlLNNORygZJ+ot0+4ZrgGZFb3
 3Zc=
X-IronPort-AV: E=Sophos;i="5.72,391,1580799600"; d="scan'208";a="72439798"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Apr 2020 10:45:21 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 16 Apr 2020 10:45:21 -0700
Received: from ness.corp.atmel.com (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 16 Apr 2020 10:45:15 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH 3/5] net: macb: fix macb_get/set_wol() when moving to phylink
Date: Thu, 16 Apr 2020 19:44:30 +0200
Message-ID: <897ab8f112d0b82f807e83c6f9e7425d1321fa09.1587058078.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1587058078.git.nicolas.ferre@microchip.com>
References: <cover.1587058078.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_104522_947213_CF2FC887 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: andrew@lunn.ch, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 f.fainelli@gmail.com, sergio.prado@e-labworks.com, pthombar@cadence.com,
 antoine.tenart@bootlin.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 Rafal Ozieblo <rafalo@cadence.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nicolas Ferre <nicolas.ferre@microchip.com>

Keep previous function goals and integrate phylink actions to them.

phylink_ethtool_get_wol() is not enough to figure out if Ethernet driver
supports Wake-on-Lan.
Initialization of "supported" and "wolopts" members is done in phylink
function, no need to keep them in calling function.

phylink_ethtool_set_wol() return value is not enough to determine
if WoL is enabled for the calling Ethernet driver. Call if first
but don't rely on its return value as most of simple PHY drivers
don't implement a set_wol() function.

Fixes: 7897b071ac3b ("net: macb: convert to phylink")
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
Cc: Harini Katakam <harini.katakam@xilinx.com>
Cc: Rafal Ozieblo <rafalo@cadence.com>
Cc: Antoine Tenart <antoine.tenart@bootlin.com>
Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
 drivers/net/ethernet/cadence/macb_main.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 629660d9f17e..b17a33c60cd4 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -2813,21 +2813,23 @@ static void macb_get_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
 {
 	struct macb *bp = netdev_priv(netdev);
 
-	wol->supported = 0;
-	wol->wolopts = 0;
-
-	if (bp->wol & MACB_WOL_HAS_MAGIC_PACKET)
+	if (bp->wol & MACB_WOL_HAS_MAGIC_PACKET) {
 		phylink_ethtool_get_wol(bp->phylink, wol);
+		wol->supported |= WAKE_MAGIC;
+
+		if (bp->wol & MACB_WOL_ENABLED)
+			wol->wolopts |= WAKE_MAGIC;
+	}
 }
 
 static int macb_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
 {
 	struct macb *bp = netdev_priv(netdev);
-	int ret;
 
-	ret = phylink_ethtool_set_wol(bp->phylink, wol);
-	if (!ret)
-		return 0;
+	/* Pass the order to phylink layer.
+	 * Don't test return value as set_wol() is often not supported.
+	 */
+	phylink_ethtool_set_wol(bp->phylink, wol);
 
 	if (!(bp->wol & MACB_WOL_HAS_MAGIC_PACKET) ||
 	    (wol->wolopts & ~WAKE_MAGIC))
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
