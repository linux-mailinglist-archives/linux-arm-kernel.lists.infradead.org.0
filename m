Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 328701A4EAA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 09:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J7eprr9rgcuIZI+YisE6U/6kCV5htsLN2SIaj6zAzcc=; b=CpuaUKVTMbb9qj
	LoWOUkWdzvDj05MAZ3dlObhKl+FuijhlvEsk9KT69o91JFAoXSEkqp+/JEibK2wDDEFjEB1Bxhsed
	R7deTD3QbbTll9x2gsltEPKVZ199UvxC0ZVAFjufc4M/dWZa8XkEptAb/Bnq+OtpMI/XRSeUiNhtk
	64zJcUa77YywS2D3cTGdXgqam+13W32BwnvR1DUBKkAiyxbj+p3mQaq7Hnq+hj/e2gaBq3dSyQNoT
	3Z0zuMf7k+Ab+dSqUUY/FM5pqdk/P5z+Nr9/2Q9pcXuK//plPw8f849OqtBdUYjgKv33z9VxKrs5M
	PFGfyswNtNz/9D8Fn46w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNApj-0002r9-FP; Sat, 11 Apr 2020 07:45:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNAoi-00086o-6b; Sat, 11 Apr 2020 07:44:41 +0000
X-UUID: 6a765e40f207461b85d19bf70777564d-20200410
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=GY6kkVqQdoO6pb5HRhb6+TbQErdD2FZ5VWwTRBcTUlY=; 
 b=mL+jfjiho+ZbId8z+3DJ3Hy0SXHhfmso+RWzUGhHubKEFfdozV5tC7TTuE1TyStWiVKtynSjloaOKFdOLPB1BpYn9R8dYFqrgQqdVeH1R+U/buV/4Iye3HDfucW9+CCkSKXGFPXASsQ/RnTv8JKfz9X708EXkgbvBLOLES8PK84=;
X-UUID: 6a765e40f207461b85d19bf70777564d-20200410
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 933355641; Fri, 10 Apr 2020 23:44:33 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 11 Apr 2020 00:44:32 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Sat, 11 Apr 2020 15:44:29 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (10.16.6.18) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1497.2 via Frontend Transport; Sat, 11 Apr 2020 15:44:27 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v6 4/4] drm/mediatek: config mipitx impedance with calibration
 data
Date: Sat, 11 Apr 2020 15:44:08 +0800
Message-ID: <20200411074408.38090-5-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200411074408.38090-1-jitao.shi@mediatek.com>
References: <20200411074408.38090-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: AFB922CAAE16CBA39DB068B9B2C548EFCE1B0533F1A41542C3961D0FDA54E06B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_004440_259643_BEEFC13C 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 drivers/gpu/drm/mediatek/mtk_mipi_tx.c        | 40 +++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_mipi_tx.h        |  3 ++
 drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c | 21 ++++++++++
 3 files changed, 64 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_mipi_tx.c b/drivers/gpu/drm/mediatek/mtk_mipi_tx.c
index e301af64809e..8cee2591e728 100644
--- a/drivers/gpu/drm/mediatek/mtk_mipi_tx.c
+++ b/drivers/gpu/drm/mediatek/mtk_mipi_tx.c
@@ -88,6 +88,44 @@ static const struct phy_ops mtk_mipi_tx_ops = {
 	.owner = THIS_MODULE,
 };
 
+static void mtk_mipi_tx_get_calibration_datal(struct mtk_mipi_tx *mipi_tx)
+{
+	struct nvmem_cell *cell;
+	size_t len;
+	u32 *buf;
+
+	cell = nvmem_cell_get(mipi_tx->dev, "calibration-data");
+	if (IS_ERR(cell)) {
+		dev_info(mipi_tx->dev, "can't get nvmem_cell_get, ignore it\n");
+		return;
+	}
+	buf = (u32 *)nvmem_cell_read(cell, &len);
+	nvmem_cell_put(cell);
+
+	if (IS_ERR(buf)) {
+		dev_info(mipi_tx->dev, "can't get data, ignore it\n");
+		return;
+	}
+
+	if (len < 3 * sizeof(u32)) {
+		dev_info(mipi_tx->dev, "invalid calibration data\n");
+		kfree(buf);
+		return;
+	}
+
+	mipi_tx->rt_code[0] = ((buf[0] >> 6 & 0x1f) << 5) |
+			       (buf[0] >> 11 & 0x1f);
+	mipi_tx->rt_code[1] = ((buf[1] >> 27 & 0x1f) << 5) |
+			       (buf[0] >> 1 & 0x1f);
+	mipi_tx->rt_code[2] = ((buf[1] >> 17 & 0x1f) << 5) |
+			       (buf[1] >> 22 & 0x1f);
+	mipi_tx->rt_code[3] = ((buf[1] >> 7 & 0x1f) << 5) |
+			       (buf[1] >> 12 & 0x1f);
+	mipi_tx->rt_code[4] = ((buf[2] >> 27 & 0x1f) << 5) |
+			       (buf[1] >> 2 & 0x1f);
+	kfree(buf);
+}
+
 static int mtk_mipi_tx_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -174,6 +212,8 @@ static int mtk_mipi_tx_probe(struct platform_device *pdev)
 
 	mipi_tx->dev = dev;
 
+	mtk_mipi_tx_get_calibration_datal(mipi_tx);
+
 	return of_clk_add_provider(dev->of_node, of_clk_src_simple_get,
 				   mipi_tx->pll);
 }
diff --git a/drivers/gpu/drm/mediatek/mtk_mipi_tx.h b/drivers/gpu/drm/mediatek/mtk_mipi_tx.h
index eea44327fe9f..c76f07c3fdeb 100644
--- a/drivers/gpu/drm/mediatek/mtk_mipi_tx.h
+++ b/drivers/gpu/drm/mediatek/mtk_mipi_tx.h
@@ -12,9 +12,11 @@
 #include <linux/delay.h>
 #include <linux/io.h>
 #include <linux/module.h>
+#include <linux/nvmem-consumer.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/phy/phy.h>
+#include <linux/slab.h>
 
 struct mtk_mipitx_data {
 	const u32 mppll_preserve;
@@ -28,6 +30,7 @@ struct mtk_mipi_tx {
 	void __iomem *regs;
 	u32 data_rate;
 	u32 mipitx_drive;
+	u32 rt_code[5];
 	const struct mtk_mipitx_data *driver_data;
 	struct clk_hw pll_hw;
 	struct clk *pll;
diff --git a/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c b/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
index e4cc967750cb..9f3e55aeebb2 100644
--- a/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
+++ b/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
@@ -28,6 +28,7 @@
 #define MIPITX_PLL_CON4		0x003c
 #define RG_DSI_PLL_IBIAS		(3 << 10)
 
+#define MIPITX_D2P_RTCODE	0x0100
 #define MIPITX_D2_SW_CTL_EN	0x0144
 #define MIPITX_D0_SW_CTL_EN	0x0244
 #define MIPITX_CK_CKMODE_EN	0x0328
@@ -108,6 +109,24 @@ static const struct clk_ops mtk_mipi_tx_pll_ops = {
 	.recalc_rate = mtk_mipi_tx_pll_recalc_rate,
 };
 
+static void mtk_mipi_tx_config_calibration_data(struct mtk_mipi_tx *mipi_tx)
+{
+	int i, j;
+
+	for (i = 0; i < 5; i++) {
+		if ((mipi_tx->rt_code[i] & 0x1f) == 0)
+			mipi_tx->rt_code[i] |= 0x10;
+
+		if ((mipi_tx->rt_code[i] >> 5 & 0x1f) == 0)
+			mipi_tx->rt_code[i] |= 0x10 << 5;
+
+		for (j = 0; j < 10; j++)
+			mtk_mipi_tx_update_bits(mipi_tx,
+				MIPITX_D2P_RTCODE * (i + 1) + j * 4,
+				1, mipi_tx->rt_code[i] >> j & 1);
+	}
+}
+
 static void mtk_mipi_tx_power_on_signal(struct phy *phy)
 {
 	struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);
@@ -130,6 +149,8 @@ static void mtk_mipi_tx_power_on_signal(struct phy *phy)
 				RG_DSI_HSTX_LDO_REF_SEL,
 				(mipi_tx->mipitx_drive - 3000) / 200 << 6);
 
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
