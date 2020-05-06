Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C35511C6F87
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 13:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTbucak7wWrQrmXPyGcqoK1D/4xYNI+FgKYB6L44k2k=; b=ZkqxkyadN4TQU+
	Q0+Nra8bnTlmutoR2rQudoSH1225MQbFOplzsb81snCQk3diorjGRwVC6zRfqZPndx2/gZn9UQnUb
	cZFqY3PTx9b/r/oIluIGaSTzjOdGl4I9a6l26M8gGnbAX6od6EylT0j4bPAU75jP1kQg5nQf7YQmX
	7KXkUnMbvLU5ewEqpzlWu6U61P8thsm/sGYlwysAyJL29TGTmU5Het0sl62AXfgdEUuBWVrsMsSJt
	6U4oEJcsajdUipxkN8AYgIwqhyzS/LxpUw07P+Hacf16RF9AD/N3qPasG7jgV0XuUhC/BxNtrSbae
	BqahWTpoVlnk7SdmU7Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWIRs-00059k-Af; Wed, 06 May 2020 11:42:48 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWIRB-0004fN-5d
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 11:42:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588765326; x=1620301326;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CnDfNyn7awnGdDhHf08Ujco+xu5QtOjUT5JuHd7ht7E=;
 b=H85E8fhr6qFYPFLWdimlhdyBejLY1OOKHJcUu+wWIrMzFvsyn7ipUtit
 o+3yaVAFqyKnDH7uokOVM+2v+S8aA87bIPScjqiA1O1kSOCieyUTI+q+x
 uA7iMiV5LY8Moy+OWgBJkxeyrXcRCpJ3mCNw0MFWWIAZ7s0d+kIzkLbe8
 utK0qzvVYTR1tO4Qdv4Pt7U4m4gTXB1KWeTODiZjfTeCHNXbZv50fRUKD
 K/W5uOg4jWypIxnIEe77QFRKe950qRdft8ZhkF4ImPRM697mbjQjD8wxu
 vT6DgC78kUu09ovo56ZYBNj6Df5a4XHJUST6ZyXI9JVK82jKceoalBi/o A==;
IronPort-SDR: cJYnnUxg+4j0D7pSV03wjwCRrbdanfXhtfur+zVNRJw5J1IzyXxNIeUaoAYmW0E5aSe2BLPdKv
 FkV9+rvKgCzOwUsntDv+cdVxnyYbYMHFDKu8Qy1o9nhr0SODtlPq5nqP6dtm0FS4r4eR8Kry0t
 bwPw5UnXX0+wHTD+3E/jZg4fRvgax+JsqU3j7IffzKUEnztQ6QQtJXIjwEBjfApjmltD5szECM
 2x/QVfCkrNzBp60esJyK6GCHl3aWW20H8ZntLRlqmwwwg+5mNFpFYpUfxV3zwTrt3FzQwnmQ5j
 hp8=
X-IronPort-AV: E=Sophos;i="5.73,358,1583218800"; d="scan'208";a="74979879"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 May 2020 04:42:05 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 6 May 2020 04:42:03 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 6 May 2020 04:42:00 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH v4 3/5] net: macb: fix macb_get/set_wol() when moving to
 phylink
Date: Wed, 6 May 2020 13:37:39 +0200
Message-ID: <4aeebe901fde6db70a5ca12b10e793dd2ee6ce60.1588763703.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1588763703.git.nicolas.ferre@microchip.com>
References: <cover.1588763703.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_044205_282113_D22976F7 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, f.fainelli@gmail.com,
 antoine.tenart@bootlin.com, linux-kernel@vger.kernel.org,
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
Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
Cc: Harini Katakam <harini.katakam@xilinx.com>
Cc: Antoine Tenart <antoine.tenart@bootlin.com>
---
 drivers/net/ethernet/cadence/macb_main.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 53e81ab048ae..24c044dc7fa0 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -2817,21 +2817,23 @@ static void macb_get_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
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
