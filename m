Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 785AA1B12E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 09:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c3nkEI+Z8gbWqFnb3pGbuuTkO1Cme9JBvFQfJnfRyG8=; b=L5IYEYby/S8uUl
	pmm2nCmij/8PdMLnz6YhWjBy6Hs4BWJhrGFT/Z9NHzkhF/gTeK9QqP52REQukZWGeMR5uAcutvKUi
	PF3ofuGbhYhtHCErPx9y4bnkDdxMLtjI6Ci4PxsnUFA0i++43feFcmhgZEwxtKfHaMiKAXMFTHZCP
	86KC1h72aKiSKvo0fNR5M4lgWpDn6nGpbPmChuIyVR0WP8iTIFIiR0rgLgTn0/SzXkTU9dfprnavJ
	QC9RRwjH6W0yZvCer62rCxiI3DQGM6eP1gGNbD0As8JSxyQM78vashe6COo23LiwJHcXmVMcp75Ci
	ZJknlY74tVnvI8NzlCvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5QI-0002s5-04; Mon, 13 May 2019 07:30:58 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5QA-0002qz-8e
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 07:30:51 +0000
X-Originating-IP: 90.88.28.253
Received: from mc-bl-xps13.lan
 (aaubervilliers-681-1-86-253.w90-88.abo.wanadoo.fr [90.88.28.253])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 94B8F1BF208;
 Mon, 13 May 2019 07:30:33 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Subject: [PATCH net v2] net: mvpp2: cls: Add missing NETIF_F_NTUPLE flag
Date: Mon, 13 May 2019 09:30:33 +0200
Message-Id: <20190513073033.15015-1-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_003050_453041_FCB2D495 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, nadavh@marvell.com,
 linux-arm-kernel@lists.infradead.org, thomas.petazzoni@bootlin.com,
 miquel.raynal@bootlin.com, stefanc@marvell.com, mw@semihalf.com,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the mvpp2 driver supports classification offloading, we must
add the NETIF_F_NTUPLE to the features list.

Since the current code doesn't allow disabling the feature, we don't set
the flag in dev->hw_features.

Fixes: 90b509b39ac9 ("net: mvpp2: cls: Add Classification offload support")
Reported-by: Jakub Kicinski <jakub.kicinski@netronome.com>
Acked-by: Jakub Kicinski <jakub.kicinski@netronome.com>
Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
V2: Rebased on latest -net, added Jakub's Ack, gave more details in the
    commit log about not adding the flag in hw_features.

 drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
index 56d43d9b43ef..d38952eb7aa9 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
@@ -5058,8 +5058,10 @@ static int mvpp2_port_probe(struct platform_device *pdev,
 	dev->hw_features |= features | NETIF_F_RXCSUM | NETIF_F_GRO |
 			    NETIF_F_HW_VLAN_CTAG_FILTER;
 
-	if (mvpp22_rss_is_supported())
+	if (mvpp22_rss_is_supported()) {
 		dev->hw_features |= NETIF_F_RXHASH;
+		dev->features |= NETIF_F_NTUPLE;
+	}
 
 	if (port->pool_long->id == MVPP2_BM_JUMBO && port->id != 0) {
 		dev->features &= ~(NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
