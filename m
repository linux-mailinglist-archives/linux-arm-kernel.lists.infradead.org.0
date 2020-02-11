Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C451588C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 04:23:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sj/5FFcAHTwVyzO4GYT4Int67tFBurJ44WdOo7l5OZc=; b=SRHHdR1ms2Xyuy
	ic2ozHkSbz9tE1fNiA5xdkYve9rikMx+GXkD7GT+bFa0pteer34/9nQHGwQKUM+rE2eMhHqiqGqGu
	i6Ru7E4rOrQ3ujw1U6/qUFZKd4Qc3ExMmXXfZsfvZM0G9PcuRaILiRNOeAPb7a3usQKjPogAqdhVV
	YYqKB8Q3FqPQWMj+BWd6sWKvclRJeTiNJ2nTA8xPXKLa6UjhMdpAMAm2OMQ6fGXtFyjP/Jwf5WdEu
	O/mcnQ40zpQ7ySUMqw+CNERoOhpBwxrhD86oRmkU7MTi9h/Gv/W97Eyegv1bFAplR0jtpwGsxAGbo
	eJTOimlXCjBMuT5gN/ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1M8x-0002Gv-55; Tue, 11 Feb 2020 03:23:23 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1M7j-0001Am-6F; Tue, 11 Feb 2020 03:22:08 +0000
X-UUID: 82e481a391064c5abd63320717af7cdd-20200210
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=OZPXyaPUwF7OiceDOOHUCK3pwRAfAn9mY3k+hvqHy2U=; 
 b=loIBcNZYCNrs53ph1R7jqZ2qo12o1p3TgyYQBvbm2EvF2CyoVyQTF1EDc+TpfHFRhuF8toGW9jL21Wq61UVbx1Up093DzjUYZmSNZzrPrShcNMYFOtvTBt+2PSV1SJ7vCVz8QQwzxGCCJy6wc4mGWcCKIrJtnq2iKR/Xtuh8EqM=;
X-UUID: 82e481a391064c5abd63320717af7cdd-20200210
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1730295311; Mon, 10 Feb 2020 19:21:58 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Feb 2020 19:22:33 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Feb 2020 11:20:08 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Feb 2020 11:20:59 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: [RESEND PATCH v5 06/11] phy: phy-mtk-tphy: add a property for
 disconnect threshold
Date: Tue, 11 Feb 2020 11:21:11 +0800
Message-ID: <6de44061814ec3633933af2003878f6418148cfe.1581389234.git.chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <bfcf6a4dd6829dfa1bd0119b34043db7364dfd8e.1581389234.git.chunfeng.yun@mediatek.com>
References: <bfcf6a4dd6829dfa1bd0119b34043db7364dfd8e.1581389234.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: CB15E578AF22B411B60D4ECD7DEB9D1265F937E1BDAA991A742CEF019AE963902000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_192207_254180_B280F7DA 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is used to tune the threshold of disconnect, the index range
is [0, 15], the threshold voltage is about 400mV for 0, 700mV for
15, and the step is 20mV.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v5: no changes

v4: change commit log

v2~3: no changes
---
 drivers/phy/mediatek/phy-mtk-tphy.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
index cb2ed3b25068..5afe33621dbc 100644
--- a/drivers/phy/mediatek/phy-mtk-tphy.c
+++ b/drivers/phy/mediatek/phy-mtk-tphy.c
@@ -60,6 +60,8 @@
 #define U3P_USBPHYACR6		0x018
 #define PA6_RG_U2_BC11_SW_EN		BIT(23)
 #define PA6_RG_U2_OTG_VBUSCMP_EN	BIT(20)
+#define PA6_RG_U2_DISCTH		GENMASK(7, 4)
+#define PA6_RG_U2_DISCTH_VAL(x)	((0xf & (x)) << 4)
 #define PA6_RG_U2_SQTH		GENMASK(3, 0)
 #define PA6_RG_U2_SQTH_VAL(x)	(0xf & (x))
 
@@ -300,6 +302,7 @@ struct mtk_phy_instance {
 	int eye_src;
 	int eye_vrt;
 	int eye_term;
+	int discth;
 	bool bc12_en;
 };
 
@@ -850,9 +853,12 @@ static void phy_parse_property(struct mtk_tphy *tphy,
 				 &instance->eye_vrt);
 	device_property_read_u32(dev, "mediatek,eye-term",
 				 &instance->eye_term);
-	dev_dbg(dev, "bc12:%d, src:%d, vrt:%d, term:%d\n",
+	device_property_read_u32(dev, "mediatek,discth",
+				 &instance->discth);
+	dev_dbg(dev, "bc12:%d, src:%d, vrt:%d, term:%d, disc:%d\n",
 		instance->bc12_en, instance->eye_src,
-		instance->eye_vrt, instance->eye_term);
+		instance->eye_vrt, instance->eye_term,
+		instance->discth);
 }
 
 static void u2_phy_props_set(struct mtk_tphy *tphy,
@@ -888,6 +894,13 @@ static void u2_phy_props_set(struct mtk_tphy *tphy,
 		tmp |= PA1_RG_TERM_SEL_VAL(instance->eye_term);
 		writel(tmp, com + U3P_USBPHYACR1);
 	}
+
+	if (instance->discth) {
+		tmp = readl(com + U3P_USBPHYACR6);
+		tmp &= ~PA6_RG_U2_DISCTH;
+		tmp |= PA6_RG_U2_DISCTH_VAL(instance->discth);
+		writel(tmp, com + U3P_USBPHYACR6);
+	}
 }
 
 static int mtk_phy_init(struct phy *phy)
-- 
2.25.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
