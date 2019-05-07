Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE4E163D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 14:37:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M+8jLW9HgIscd9CHg2dB4/yunJ0/BnLcl210KTQ1K40=; b=Pk9mFjGxFu3OT0
	WsaOv8xOrb0zWk6lFKk7Us6rU53BnVqGSzlsm1oPAITngD+9c2NpKK0t1Sj+eVfSEr5gWvZyzIMCM
	ihgrrJGlq4vfU6yjrRSf9bYqf0LjTaXBddWcICArz4HfvQtUXnK2Ujy28MGtEEo2rFZPSi44dm4bW
	ybMKgcIzg0bXiCxeffwK+zAgtWzEQEiE6O5Cui9Gb3yot9lV6y32qz6Sk/3Wleg3fAcd7KqtamBZt
	OEpaLGTv6Fl6XxuWR4a/nsJTEd2eLfFtsBQWBWDsn+7sr1zMCaLvXpkWys2D5vd17ZC1yvTyu9OjM
	w3neuW2CSFIBMYvln4zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNzLC-0006PH-6G; Tue, 07 May 2019 12:37:02 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNzL4-0006Kn-75
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 12:36:56 +0000
X-Originating-IP: 90.88.149.145
Received: from mc-bl-xps13.lan
 (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr [90.88.149.145])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 1287A1BF218;
 Tue,  7 May 2019 12:36:41 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Subject: [PATCH net] net: mvpp2: cls: Add missing NETIF_F_NTUPLE flag
Date: Tue,  7 May 2019 14:36:35 +0200
Message-Id: <20190507123635.17782-1-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_053654_434208_2E87ABD7 
X-CRM114-Status: GOOD (  10.27  )
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

Fixes: 90b509b39ac9 ("net: mvpp2: cls: Add Classification offload support")
Reported-by: Jakub Kicinski <jakub.kicinski@netronome.com>
Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
Hello David,

This patch applies on top of a commit 90b509b39ac9, which is in net-next
but hasn't made it to -net yet.

Thanks,

Maxime

 drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
index 25fbed2b8d94..1f164c893936 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
@@ -5040,8 +5040,10 @@ static int mvpp2_port_probe(struct platform_device *pdev,
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
