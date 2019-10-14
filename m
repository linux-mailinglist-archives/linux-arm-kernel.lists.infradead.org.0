Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF43D5C0A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 09:16:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mAULscCWAvhuAVAqBw57TE+BJ1fMGonnJjZ7kjB3bq4=; b=lfBrucrV90BeQo
	KBntvaNhhXfHKY0k3u1+pBEb3A3exZ353OR8ifx1BcMUJgBAVntXSmdLsyVr4JRlr/Tnn5mDRqZcg
	d+cqMAQPoSRaExRHc8fB38JDBuw+SQje+YLdJAj4qY0KMqmF3H+qL4XSaHzOXP6+GRKHDNTl1siVj
	dWvmnf5UBKszdf6yu90SrrxFwNlk+7OeJ1R1z6LzezQaC1PjR2t5xGKo9ywAoxDik4PgbcK+Jk6pt
	GK8hkbTko0VYZKca4d5zXK1UEZmgf8UEG4sbD5+8o5Uvu1sLcQKcNP15z5NNH1eKP4JnTxAGLIVX9
	HPJ32lxGs077rmpZeMGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJuaM-0000iM-7l; Mon, 14 Oct 2019 07:16:06 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJuZj-0000Cv-Ub; Mon, 14 Oct 2019 07:15:29 +0000
X-UUID: 66b1658bac144e448b84fbc00cc58949-20191013
X-UUID: 66b1658bac144e448b84fbc00cc58949-20191013
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <mark-mc.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1418176563; Sun, 13 Oct 2019 23:14:49 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 14 Oct 2019 00:15:19 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 14 Oct 2019 15:15:17 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 14 Oct 2019 15:15:18 +0800
From: MarkLee <Mark-MC.Lee@mediatek.com>
To: "David S. Miller" <davem@davemloft.net>, Sean Wang
 <sean.wang@mediatek.com>, John Crispin <john@phrozen.org>, Nelson Chang
 <nelson.chang@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH net,
 v3 1/2] net: ethernet: mediatek: Fix MT7629 missing GMII mode support
Date: Mon, 14 Oct 2019 15:15:17 +0800
Message-ID: <20191014071518.11923-2-Mark-MC.Lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191014071518.11923-1-Mark-MC.Lee@mediatek.com>
References: <20191014071518.11923-1-Mark-MC.Lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_001528_006672_C5F7D70F 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Jakub
 Kicinski <jakub.kicinski@netronome.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rene van Dorst <opensource@vdorst.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 MarkLee <Mark-MC.Lee@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the original design, mtk_phy_connect function will set ge_mode=1
if phy-mode is GMII(PHY_INTERFACE_MODE_GMII) and then set the correct
ge_mode to ETHSYS_SYSCFG0 register. This logic was broken after apply  
mediatek PHYLINK patch(Fixes tag), the new mtk_mac_config function will
not set ge_mode=1 for GMII mode hence the final ETHSYS_SYSCFG0 setting 
will be incorrect for mt7629 GMII mode. This patch add the missing logic
back to fix it.
			 
Fixes: b8fc9f30821e ("net: ethernet: mediatek: Add basic PHYLINK support")
Signed-off-by: MarkLee <Mark-MC.Lee@mediatek.com>
--
v2->v3:
* no change
v1->v2:
* no change
---
 drivers/net/ethernet/mediatek/mtk_eth_soc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.c b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
index c61069340f4f..703adb96429e 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_soc.c
+++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
@@ -261,6 +261,7 @@ static void mtk_mac_config(struct phylink_config *config, unsigned int mode,
 		ge_mode = 0;
 		switch (state->interface) {
 		case PHY_INTERFACE_MODE_MII:
+		case PHY_INTERFACE_MODE_GMII:
 			ge_mode = 1;
 			break;
 		case PHY_INTERFACE_MODE_REVMII:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
