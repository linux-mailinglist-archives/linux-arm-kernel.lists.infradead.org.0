Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28887E46D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 11:14:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qf/6Zsl0z9kgHTFF08wzP9AG9ms2vHlEjQ8KBGwCkgA=; b=q5m7eOAHn0+zCo
	q3ivGPZ0XGT9PBGPV6LVd+2EBgm7mzFcUvqU7Vf7gOQJCZshquBCP3IpftySPQdGDEKtBbyjx55QJ
	0yeaTcvOUfpZWfoQyg25TDk9kQxoh5vAHm/LJGuYResLdRAgYv+rdYpize2eLrS8kEz/01y2HiiOS
	dkKw51O1jEaPwHHIpbMckmgLFVTi6dKpTzTqh5vvATtmFvJ7rPKS4eI+tc1jNCJbXlTyFQohOzVeP
	ddh4QSk1+mYdrJYaQacVB6c+TeeAyKHkccX3xc1Oqp5vQQ1J5vrXGRcvwpTsMJbnNAp6mA9IZ+b7a
	0MkLYZ15O1V3ISDIpu0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvg0-0002r5-5g; Fri, 25 Oct 2019 09:14:32 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvfn-0002pb-Vq; Fri, 25 Oct 2019 09:14:21 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 06230931C2549D4EF496;
 Fri, 25 Oct 2019 17:14:15 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Fri, 25 Oct 2019
 17:14:06 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <nbd@openwrt.org>, <john@phrozen.org>, <sean.wang@mediatek.com>,
 <Mark-MC.Lee@mediatek.com>, <davem@davemloft.net>, <matthias.bgg@gmail.com>
Subject: [PATCH net-next] net: mediatek: remove unneeded semicolon
Date: Fri, 25 Oct 2019 17:13:08 +0800
Message-ID: <20191025091308.20128-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_021420_205160_ACA5953F 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: netdev@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

remove unneeded semicolon.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/mediatek/mtk_eth_path.c | 6 +++---
 drivers/net/ethernet/mediatek/mtk_sgmii.c    | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_eth_path.c b/drivers/net/ethernet/mediatek/mtk_eth_path.c
index ef11cf3..0fe9715 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_path.c
+++ b/drivers/net/ethernet/mediatek/mtk_eth_path.c
@@ -57,7 +57,7 @@ static int set_mux_gdm1_to_gmac1_esw(struct mtk_eth *eth, int path)
 	default:
 		updated = false;
 		break;
-	};
+	}
 
 	if (updated) {
 		val = mtk_r32(eth, MTK_MAC_MISC);
@@ -143,7 +143,7 @@ static int set_mux_gmac1_gmac2_to_sgmii_rgmii(struct mtk_eth *eth, int path)
 	default:
 		updated = false;
 		break;
-	};
+	}
 
 	if (updated)
 		regmap_update_bits(eth->ethsys, ETHSYS_SYSCFG0,
@@ -174,7 +174,7 @@ static int set_mux_gmac12_to_gephy_sgmii(struct mtk_eth *eth, int path)
 		break;
 	default:
 		updated = false;
-	};
+	}
 
 	if (updated)
 		regmap_update_bits(eth->ethsys, ETHSYS_SYSCFG0,
diff --git a/drivers/net/ethernet/mediatek/mtk_sgmii.c b/drivers/net/ethernet/mediatek/mtk_sgmii.c
index 4db27df..32d8342 100644
--- a/drivers/net/ethernet/mediatek/mtk_sgmii.c
+++ b/drivers/net/ethernet/mediatek/mtk_sgmii.c
@@ -93,7 +93,7 @@ int mtk_sgmii_setup_mode_force(struct mtk_sgmii *ss, int id,
 	case SPEED_1000:
 		val |= SGMII_SPEED_1000;
 		break;
-	};
+	}
 
 	if (state->duplex == DUPLEX_FULL)
 		val |= SGMII_DUPLEX_FULL;
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
