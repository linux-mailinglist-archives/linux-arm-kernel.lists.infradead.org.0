Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 417BA16BFEB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 12:49:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n9WLN2h5kIcM9wBPbuY2JX7rgTAf1WlN8Q3hjx2Dgtk=; b=HJgRaMFzs1A3xe
	T9agSpPHRZBivDESe/NV6wwtr3KcEg4aJkOwhy/x5Zc5jcO7UuW82Ge9c6rQyAe+hCfe8taiE+O+2
	yJmRtLN01gU500Pb5jEDkWRz1UGvgiQQGN1DZ7hr0W/8WK4f/nQzXflpwaYiF2wiA5xX+h2uZoZV7
	BNuZ2riKsZ27WvG8prNajCTQMrf05FHA+c6ClqwXG0GeB1Dt44AdW07KY6v35egQzGBmqLnPNYkRR
	uYhrDSWFg+ZtnIgNCO2M5YExUZcmPwJyysUq4pC7mf8jLnS+Rn1amURMdC7l/OiNtbbmUgjys26gJ
	5OW5KyCi5Sq+49KckNEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Yhp-0000Gy-Rb; Tue, 25 Feb 2020 11:48:53 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Ygo-0007q0-7D; Tue, 25 Feb 2020 11:47:54 +0000
X-UUID: abbb7dc0477347c0bab8224b79bad226-20200225
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=npWCMlNAf6vwIc/DWpZvRQRY1F0x8+HE51QC285Pl4k=; 
 b=sqtDg3L3d40I5ysaNjB/+IPIkuekGFW5XjScZ51fpjx34sqx67jL48MWXKvq2ftr1kzHIih4HiOkmdyAQ+AD+3tfEsnGnss+U0xwu2wNlfIQIdVSlLe/EOULTHRNtwojCXpjyntQj/Br22CGGMBt56sULrTRSvevaI2TNdh9e88=;
X-UUID: abbb7dc0477347c0bab8224b79bad226-20200225
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 16159423; Tue, 25 Feb 2020 03:47:44 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Feb 2020 03:47:43 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N1.mediatek.inc
 (172.27.4.75) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 25 Feb 2020 19:46:21 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (10.16.6.18) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Tue, 25 Feb 2020 19:46:21 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 4/4] drm/mediatek: config mipitx impedance with calibration
 data
Date: Tue, 25 Feb 2020 19:47:30 +0800
Message-ID: <20200225114730.124939-5-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200225114730.124939-1-jitao.shi@mediatek.com>
References: <20200225114730.124939-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6F969946ABC898804BBD49EE55557D86239B839BC7C2780C891C258D70C73D2C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_034750_381554_2C4FEE06 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Jitao Shi <jitao.shi@mediatek.com>,
 srv_heupstream@mediatek.com, huijuan.xie@mediatek.com, stonea168@163.com,
 cawa.cheng@mediatek.com, linux-mediatek@lists.infradead.org,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Read calibration data from nvmem, and config mipitx impedance with
calibration data to make sure their impedance are 100ohm.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c b/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
index 124fdf95f1e5..878feeb7ac6c 100644
--- a/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
+++ b/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
@@ -5,6 +5,8 @@
  */
 
 #include "mtk_mipi_tx.h"
+#include <linux/nvmem-consumer.h>
+#include <linux/slab.h>
 
 #define MIPITX_LANE_CON		0x000c
 #define RG_DSI_CPHY_T1DRV_EN		BIT(0)
@@ -28,6 +30,7 @@
 #define MIPITX_PLL_CON4		0x003c
 #define RG_DSI_PLL_IBIAS		(3 << 10)
 
+#define MIPITX_D2P_RTCODE	0x0100
 #define MIPITX_D2_SW_CTL_EN	0x0144
 #define MIPITX_D0_SW_CTL_EN	0x0244
 #define MIPITX_CK_CKMODE_EN	0x0328
@@ -108,6 +111,58 @@ static const struct clk_ops mtk_mipi_tx_pll_ops = {
 	.recalc_rate = mtk_mipi_tx_pll_recalc_rate,
 };
 
+static void mtk_mipi_tx_config_calibration_data(struct mtk_mipi_tx *mipi_tx)
+{
+	u32 *buf;
+	u32 rt_code[5];
+	int i, j;
+	struct nvmem_cell *cell;
+	struct device *dev = mipi_tx->dev;
+	size_t len;
+
+	cell = nvmem_cell_get(dev, "calibration-data");
+	if (IS_ERR(cell)) {
+		dev_info(dev, "nvmem_cell_get fail\n");
+		return;
+	}
+
+	buf = (u32 *)nvmem_cell_read(cell, &len);
+
+	nvmem_cell_put(cell);
+
+	if (IS_ERR(buf)) {
+		dev_info(dev, "can't get data\n");
+		return;
+	}
+
+	if (len < 3 * sizeof(u32)) {
+		dev_info(dev, "invalid calibration data\n");
+		kfree(buf);
+		return;
+	}
+
+	rt_code[0] = ((buf[0] >> 6 & 0x1f) << 5) | (buf[0] >> 11 & 0x1f);
+	rt_code[1] = ((buf[1] >> 27 & 0x1f) << 5) | (buf[0] >> 1 & 0x1f);
+	rt_code[2] = ((buf[1] >> 17 & 0x1f) << 5) | (buf[1] >> 22 & 0x1f);
+	rt_code[3] = ((buf[1] >> 7 & 0x1f) << 5) | (buf[1] >> 12 & 0x1f);
+	rt_code[4] = ((buf[2] >> 27 & 0x1f) << 5) | (buf[1] >> 2 & 0x1f);
+
+	for (i = 0; i < 5; i++) {
+		if ((rt_code[i] & 0x1f) == 0)
+			rt_code[i] |= 0x10;
+
+		if ((rt_code[i] >> 5 & 0x1f) == 0)
+			rt_code[i] |= 0x10 << 5;
+
+		for (j = 0; j < 10; j++)
+			mtk_mipi_tx_update_bits(mipi_tx,
+				MIPITX_D2P_RTCODE * (i + 1) + j * 4,
+				1, rt_code[i] >> j & 1);
+	}
+
+	kfree(buf);
+}
+
 static void mtk_mipi_tx_power_on_signal(struct phy *phy)
 {
 	struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);
@@ -130,6 +185,8 @@ static void mtk_mipi_tx_power_on_signal(struct phy *phy)
 				RG_DSI_HSTX_LDO_REF_SEL,
 				mipi_tx->mipitx_drive << 6);
 
+	mtk_mipi_tx_config_calibration_data(mipi_tx);
+
 	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_CK_CKMODE_EN, DSI_CK_CKMODE_EN);
 }
 
-- 
2.21.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
