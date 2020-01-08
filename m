Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B31E1338ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 03:02:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvNCdbNHaE1OxLc1J1Ta9CpqDFYbtJVFaIkcWS1x8hc=; b=VYueMNEA2HauYd
	+ppJ5sxBvW4OO6fH2zu3VHk+HVHlc7MJXqZ976O6u2mZi9vtWK/auV4UleaAPYK/5SZezbZ5Zwwz0
	c/SmnfcaxJ4EznisqboxjYptVTV8Tj4P3Evx4fUKEuaPPvAAkETDDG5A/3eb7QFNdk3EPeB3U3CQx
	xOm8hDSfSfrWMHT8jZX01I6Ner83coCZt+72A3SniL9a+qhgqHH9Yj3PpQbIw/u5CBMLxwbqUAfkb
	hnr2mmXmLW4M8tMZydDn3/HWzCu725SRJNbWCNSOwEWlp1+YhlbTk0o9oTvTGVfnTPZ0DSswD76Uh
	U79YAasLqDdAvRjbnmzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip0fd-00015I-EV; Wed, 08 Jan 2020 02:02:05 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip0ei-0000In-IC; Wed, 08 Jan 2020 02:01:10 +0000
X-UUID: 8c7417cbc45b4226a1799180723044b8-20200107
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=oZdq+ZB5lizA1Zsv3OtqtZc7ySPrJ90tee+pr+IgKBQ=; 
 b=AstZOzVdlKNQpGDw2kWutbSCtHKfXowENkD4LJkKW0wfe5lR4dqbKTFcYblOiYg19NnOXn5hLg6CiwcB71BPi2FlOVC3D1ZMD1id8+q+vlNtFuFbF5e9WhOl+LpkkRE/SLG3vl4wMH8nz7p4r+erhMp7Mz8vRPLdxuH22fMg6AU=;
X-UUID: 8c7417cbc45b4226a1799180723044b8-20200107
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 474636169; Tue, 07 Jan 2020 18:01:02 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 Jan 2020 17:53:07 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 Jan 2020 09:51:17 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 8 Jan 2020 09:53:02 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: [RESEND PATCH v5 06/11] phy: phy-mtk-tphy: add a property for
 disconnect threshold
Date: Wed, 8 Jan 2020 09:52:01 +0800
Message-ID: <1578448326-27455-6-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1578448326-27455-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1578448326-27455-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: BFA84CA48E7339B3DB0587B4124D89784EB6BDEA2575B14996EC5CD22A51D9592000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_180108_636377_652A2768 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
2.24.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
