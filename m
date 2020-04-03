Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA6A19D767
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 15:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Jv7kGtkLN/DkCLUdPpbyvnKIGJRzRXonc4A4PKK1Zk=; b=Lcj16PaVUkCUvJ
	gdwkZJpUGnQKLVcmRT6nMm1VVBjEM2qD3E4jT/xb+yrVn/QbhZL7fPxQjtgG+ES5ytZd9g6c92hJt
	QllveOqkG0vXlJRS07DSa7sc5omxqSDxs37MKagKA9UCnTNWGU8EB3sFKCD0GMZGv3Hu5rv48dkCB
	AcNNll4/eMvx8fCEXH3wv1TyLbvEBu4u94vCemCJVigyGU4O7P8j3DXfSPc1yjBwscPRCILm4KjG0
	/mTgOvhSUyF5Tv/5cboIoxEJxEovik4GsdFTci8pWuiaQsOoOQAq6lQ81tBjMFCxOroVcQhgNnyUs
	8bRuDoveH9yJen+1HoQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKMAx-0000As-Cj; Fri, 03 Apr 2020 13:15:59 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKMAI-0007sU-SJ
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 13:15:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585919718; x=1617455718;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gDJwJ/pAyKWbFBzwhp+PwsI+ak11+Glc+LQ9yysjG/o=;
 b=ERMNJnpvhE+xISumhe5mLPelPEJkDky6jF6QJzr2aL6HkI3itMioaYLZ
 VBH8H/VfnW5GlwtJNHJLB21nZpqAzDsK4MNrzPQHMy0JhUElfJBAfM8ma
 hh8BL7p3asSiUyZ5clRghDHoG59wcwSyLCp+J1yNt15BMtevMF60pxmF/
 0QaOGBDx1XlG+yG/z98+Uf35LMjZ3aEOn+G0OgioYo7nViAA26oD65v+z
 3GnqnZF8U/OIVD6/dkijveM1sjM684cx1JY4VcbIiy6b4Xmb4mx9M2Bps
 Yfq/4dn2fdAtZ0KQsc7lImYf1kFd3UB2pWgYTDXbiAOBG8jwVVxNIzUxx A==;
IronPort-SDR: pkzv01yzeqe8ltAiMeUN3m41QY91mMyZH8Jv10+lXOiRtGw4koDjz/OByou2Zv0F9CteN865UI
 RUn6zSRzBdGI9MbwoJs3jZQcEkBDcVXHZ+w2FaMGIZrm4LYMoWG116AezeYictEreOoCMLVmuJ
 nkoItGQ/aar+zCQP+65psIytdU9ycqukwoVx116GPAMkuePpH8qTPfqmBczZcbR8DdRXOD3X+I
 T27+to4UnV8TUxnxV1/9958QBwa9YGShiG9zekPEERs2qpqo/dfcsfvNK7LCixtk2tB5EO0oyJ
 QpQ=
X-IronPort-AV: E=Sophos;i="5.72,339,1580799600"; d="scan'208";a="69328167"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Apr 2020 06:15:16 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 3 Apr 2020 06:15:16 -0700
Received: from mchp-main.com (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 3 Apr 2020 06:15:12 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [RFC PATCH 3/3] net: macb: fix macb_get/set_wol() when moving to
 phylink
Date: Fri, 3 Apr 2020 15:14:44 +0200
Message-ID: <68493c192a2164fedaf1164841432b35d17ef972.1585917191.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585917191.git.nicolas.ferre@microchip.com>
References: <cover.1585917191.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_061519_009286_7E109E5B 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: rafalo@cadence.com, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 f.fainelli@gmail.com, sergio.prado@e-labworks.com, andrew@lunn.ch,
 antoine.tenart@bootlin.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 "David S. Miller" <davem@davemloft.net>
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
