Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 568451C3B9F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gRBW95457bDBAeyRjsPH+aeQtKKcdBPf+3bysAsMP1k=; b=trSqhVe9ktzjDX
	lFCkS411dmuNvKu+qLlq+9oeD4CEt67hgloh169y5CPZmpldOAJCvTp2FB/dn9n+yVcHkLke/ockW
	vA4U9smg7QSvpH1tj2QDan5n89zH2H8R52G3d1PfGa8omylkHRyWZ1cZ/ye3cCrTng9Ldx7Kb1cvb
	lrdVP6VFAPOSz9SJlH3wsAJOTEXfI1/MtvhJSKN+vUP1vUKSU1qXKZ0jGTkbs9PbNqmHjcR0rZtYI
	NIM9V75xQMTsvKUmdOVaBHD6Iu/X7K6X0F/voe5EwO8yXNzxy/4uNkEg+IDZ/233QnVCT2y5OdJll
	9pXnI0hvZaZJlZqbqw2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVbR5-00074q-UY; Mon, 04 May 2020 13:47:07 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVbQj-0006uu-1Y
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 13:46:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588600005; x=1620136005;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=whBsw4kM37oC48LZNraq7LicT0Inj42IPZNti4XR4P4=;
 b=GUKtUz59hmGd0WekkHJ6cez/24A1BCBadyupP17MYiJeSJ1ThlpFWc63
 3h2FtEbqA34drcnpWj/npdzQVTO6zZqoEN+YeHkrxqxW0C3c7Glb+CRQz
 vhjrgL5U3FRaJKy7Zfa0+eDZzFFD2s6FEl52/qtF2QoJnOqJSmdf2XQcy
 tD234EP+C4Mi19mApS/D1b4igzWdSjiawmD29dlZ0fJPi+2M4+Ct/e4Ns
 j9EVsoeIAtIKzU9sGSm64Rrkxb1XNk7NegcSl6FP7LCM2uqLXGrShdMAt
 at4V3Ickl7itUFDdFO0BLRVOoIdSxxF1dzo9zJRePj8rJH2JlH9RMKus8 g==;
IronPort-SDR: LumqkHTJSRFkcdQcszXWJ/1BI2OAqeYYMllFqaJw6msYulxLZmBwaO4kiyQxsaD1AF15W6l/0f
 hykMO6hI9hD1zb67vv4LAntP1+9lDW3TiJbqzYYWJgg2bTz6ac1pHOH4lHYG0JzSsAFtnY9/5o
 8VMwEeF9UemY0FK9TBt57+XeWiiTjihQpkLlQmJ7o4NkxyoL3CVtzlLkHspxu4KfubjtTbDooI
 QlRxY0EhCcewXHbC2bncWYsHMR+ve5X43cl69c/T1UaAYxlz/AwQNApx32iLjyKD3eFA1k3E75
 lu4=
X-IronPort-AV: E=Sophos;i="5.73,352,1583218800"; d="scan'208";a="72332636"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 May 2020 06:46:39 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 May 2020 06:46:40 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 4 May 2020 06:46:36 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH v3 3/7] net: macb: fix macb_get/set_wol() when moving to
 phylink
Date: Mon, 4 May 2020 15:44:18 +0200
Message-ID: <77a2227ac02b432f42ed454e1ad94e15863ae2ff.1588597759.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1588597759.git.nicolas.ferre@microchip.com>
References: <cover.1588597759.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_064645_132921_0750213F 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 f.fainelli@gmail.com, michal.simek@xilinx.com, antoine.tenart@bootlin.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
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
if WoL is enabled for the calling Ethernet driver. Call it first
but don't rely on its return value as most of simple PHY drivers
don't implement a set_wol() function.

Fixes: 7897b071ac3b ("net: macb: convert to phylink")
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
Cc: Harini Katakam <harini.katakam@xilinx.com>
Cc: Antoine Tenart <antoine.tenart@bootlin.com>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
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
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
