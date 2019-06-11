Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D463C5B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2z4Q8fu6JCb6QlnoossOXGi0UGfKTdcze/45zjVoGs=; b=MOL8hyovgqoc0e
	LjF76xg2rQVoOYVAlZppdBXHpU6mMV7Z7YDfyOtonXUq4j2gu/kY8y3Qp3PtGONQl0iLzMnaMQZwD
	dZFvbuX1e151eTakY/EVEHycF8w7izGX5EFJnZ50GCa2K8DDpVr/YJR6A+hHxT2KE8iY/OlBZKpAs
	PsXiykBWpSxDan1mgP4IDjVqThrkb0wEM/FlGkijY9HmBf2AkaKiksysH/47vTTf8+1hTtqmCrwgn
	EUCLqNSUmjuVilYk8zK5wb2QlxQYaJhbdh/FR5lfGPJgaSy6j6opIZTg1thcaHSucmdU3vsvTB3Si
	gn61Z4KDxnfh0imwRuNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1habus-0003VQ-3O; Tue, 11 Jun 2019 08:14:02 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1habtq-0002tm-Ae; Tue, 11 Jun 2019 08:12:59 +0000
X-UUID: e5b0dfc89bf14ffb8c65d085d457e7c8-20190611
X-UUID: e5b0dfc89bf14ffb8c65d085d457e7c8-20190611
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1551084668; Tue, 11 Jun 2019 00:12:50 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 01:12:49 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 16:12:48 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Jun 2019 16:12:48 +0800
From: Qii Wang <qii.wang@mediatek.com>
To: <wsa@the-dreams.de>
Subject: [PATCH 2/2] i2c: mediatek: Add i2c AC timing adjust support
Date: Tue, 11 Jun 2019 16:11:55 +0800
Message-ID: <1560240715-22595-3-git-send-email-qii.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1560240715-22595-1-git-send-email-qii.wang@mediatek.com>
References: <1560240715-22595-1-git-send-email-qii.wang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_011258_378933_DB26607B 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, qii.wang@mediatek.com,
 srv_heupstream@mediatek.com, leilk.liu@mediatek.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds some I2C timing registers to meet I2C spec, it
configures these registers according to information passed via DT.

Signed-off-by: Qii Wang <qii.wang@mediatek.com>
---
 drivers/i2c/busses/i2c-mt65xx.c |   94 ++++++++++++++++++++++++++++++++++-----
 1 file changed, 82 insertions(+), 12 deletions(-)

diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
index 745b0d0..f4bf753 100644
--- a/drivers/i2c/busses/i2c-mt65xx.c
+++ b/drivers/i2c/busses/i2c-mt65xx.c
@@ -134,6 +134,12 @@ enum I2C_REGS_OFFSET {
 	OFFSET_TRANSFER_LEN_AUX,
 	OFFSET_CLOCK_DIV,
 	OFFSET_LTIMING,
+	OFFSET_SCL_HIGH_LOW_RATIO,
+	OFFSET_HS_SCL_HIGH_LOW_RATIO,
+	OFFSET_SCL_MIS_COMP_POINT,
+	OFFSET_STA_STO_AC_TIMING,
+	OFFSET_HS_STA_STO_AC_TIMING,
+	OFFSET_SDA_TIMING,
 };
 
 static const u16 mt_i2c_regs_v1[] = {
@@ -161,6 +167,12 @@ enum I2C_REGS_OFFSET {
 	[OFFSET_DEBUGCTRL] = 0x68,
 	[OFFSET_TRANSFER_LEN_AUX] = 0x6c,
 	[OFFSET_CLOCK_DIV] = 0x70,
+	[OFFSET_SCL_HIGH_LOW_RATIO] = 0x74,
+	[OFFSET_HS_SCL_HIGH_LOW_RATIO] = 0x78,
+	[OFFSET_SCL_MIS_COMP_POINT] = 0x7C,
+	[OFFSET_STA_STO_AC_TIMING] = 0x80,
+	[OFFSET_HS_STA_STO_AC_TIMING] = 0x84,
+	[OFFSET_SDA_TIMING] = 0x88,
 };
 
 static const u16 mt_i2c_regs_v2[] = {
@@ -179,9 +191,11 @@ enum I2C_REGS_OFFSET {
 	[OFFSET_HS] = 0x30,
 	[OFFSET_IO_CONFIG] = 0x34,
 	[OFFSET_FIFO_ADDR_CLR] = 0x38,
+	[OFFSET_SDA_TIMING] = 0x3c,
 	[OFFSET_TRANSFER_LEN_AUX] = 0x44,
 	[OFFSET_CLOCK_DIV] = 0x48,
 	[OFFSET_SOFTRESET] = 0x50,
+	[OFFSET_SCL_MIS_COMP_POINT] = 0x90,
 	[OFFSET_DEBUGSTAT] = 0xe0,
 	[OFFSET_DEBUGCTRL] = 0xe8,
 	[OFFSET_FIFO_STAT] = 0xf4,
@@ -202,6 +216,17 @@ struct mtk_i2c_compatible {
 	unsigned char ltiming_adjust: 1;
 };
 
+struct mtk_i2c_ac_timing {
+	u16 ext;
+	u16 inter_clk_div;
+	u16 scl_hl_ratio;
+	u16 hs_scl_hl_ratio;
+	u16 scl_mis_comp;
+	u16 sta_stop;
+	u16 hs_sta_stop;
+	u16 sda_timing;
+};
+
 struct mtk_i2c {
 	struct i2c_adapter adap;	/* i2c host adapter */
 	struct device *dev;
@@ -226,6 +251,7 @@ struct mtk_i2c {
 	u16 ltiming_reg;
 	unsigned char auto_restart;
 	bool ignore_restart_irq;
+	struct mtk_i2c_ac_timing ac_timing;
 	const struct mtk_i2c_compatible *dev_comp;
 };
 
@@ -403,13 +429,40 @@ static void mtk_i2c_init_hw(struct mtk_i2c *i2c)
 	if (i2c->dev_comp->dcm)
 		mtk_i2c_writew(i2c, I2C_DCM_DISABLE, OFFSET_DCM_EN);
 
-	if (i2c->dev_comp->timing_adjust)
-		mtk_i2c_writew(i2c, I2C_DEFAULT_CLK_DIV - 1, OFFSET_CLOCK_DIV);
-
 	mtk_i2c_writew(i2c, i2c->timing_reg, OFFSET_TIMING);
 	mtk_i2c_writew(i2c, i2c->high_speed_reg, OFFSET_HS);
-	if (i2c->dev_comp->ltiming_adjust)
-		mtk_i2c_writew(i2c, i2c->ltiming_reg, OFFSET_LTIMING);
+
+	if (i2c->dev_comp->timing_adjust) {
+		mtk_i2c_writew(i2c, i2c->ac_timing.ext, OFFSET_EXT_CONF);
+		mtk_i2c_writew(i2c, i2c->ac_timing.inter_clk_div - 1,
+			       OFFSET_CLOCK_DIV);
+		mtk_i2c_writew(i2c, i2c->ac_timing.scl_mis_comp,
+			       OFFSET_SCL_MIS_COMP_POINT);
+		mtk_i2c_writew(i2c, i2c->ac_timing.sda_timing,
+			       OFFSET_SDA_TIMING);
+
+		if (i2c->dev_comp->ltiming_adjust) {
+			mtk_i2c_writew(i2c, i2c->timing_reg -
+				       i2c->ac_timing.scl_hl_ratio,
+				       OFFSET_TIMING);
+			mtk_i2c_writew(i2c, i2c->high_speed_reg -
+				       ((i2c->ac_timing.hs_scl_hl_ratio) << 8),
+				       OFFSET_HS);
+			mtk_i2c_writew(i2c, i2c->ltiming_reg +
+				       ((i2c->ac_timing.hs_scl_hl_ratio) << 9) +
+				       i2c->ac_timing.scl_hl_ratio,
+				       OFFSET_LTIMING);
+		} else {
+			mtk_i2c_writew(i2c, i2c->ac_timing.scl_hl_ratio,
+				       OFFSET_SCL_HIGH_LOW_RATIO);
+			mtk_i2c_writew(i2c, i2c->ac_timing.hs_scl_hl_ratio,
+				       OFFSET_HS_SCL_HIGH_LOW_RATIO);
+			mtk_i2c_writew(i2c, i2c->ac_timing.sta_stop,
+				       OFFSET_STA_STO_AC_TIMING);
+			mtk_i2c_writew(i2c, i2c->ac_timing.hs_sta_stop,
+				       OFFSET_HS_STA_STO_AC_TIMING);
+		}
+	}
 
 	/* If use i2c pin from PMIC mt6397 side, need set PATH_DIR first */
 	if (i2c->have_pmic)
@@ -592,12 +645,6 @@ static int mtk_i2c_do_transfer(struct mtk_i2c *i2c, struct i2c_msg *msgs,
 
 	mtk_i2c_writew(i2c, control_reg, OFFSET_CONTROL);
 
-	/* set start condition */
-	if (i2c->speed_hz <= I2C_DEFAULT_SPEED)
-		mtk_i2c_writew(i2c, I2C_ST_START_CON, OFFSET_EXT_CONF);
-	else
-		mtk_i2c_writew(i2c, I2C_FS_START_CON, OFFSET_EXT_CONF);
-
 	addr_reg = i2c_8bit_addr_from_msg(msgs);
 	mtk_i2c_writew(i2c, addr_reg, OFFSET_SLAVE_ADDR);
 
@@ -889,6 +936,7 @@ static u32 mtk_i2c_functionality(struct i2c_adapter *adap)
 static int mtk_i2c_parse_dt(struct device_node *np, struct mtk_i2c *i2c)
 {
 	int ret;
+	u16 ac_timing[8] = {0};
 
 	ret = of_property_read_u32(np, "clock-frequency", &i2c->speed_hz);
 	if (ret < 0)
@@ -901,6 +949,28 @@ static int mtk_i2c_parse_dt(struct device_node *np, struct mtk_i2c *i2c)
 	if (i2c->clk_src_div == 0)
 		return -EINVAL;
 
+	if (i2c->dev_comp->timing_adjust) {
+		ret = of_property_read_u16_array(np, "ac-timing", ac_timing,
+						 ARRAY_SIZE(ac_timing));
+		if (ret < 0) {
+			if (i2c->speed_hz <= I2C_DEFAULT_SPEED)
+				i2c->ac_timing.ext = I2C_ST_START_CON;
+			else
+				i2c->ac_timing.ext = I2C_FS_START_CON;
+
+			i2c->ac_timing.inter_clk_div = I2C_DEFAULT_CLK_DIV;
+		} else {
+			i2c->ac_timing.ext = ac_timing[0];
+			i2c->ac_timing.inter_clk_div = ac_timing[1];
+			i2c->ac_timing.scl_hl_ratio = ac_timing[2];
+			i2c->ac_timing.hs_scl_hl_ratio = ac_timing[3];
+			i2c->ac_timing.scl_mis_comp = ac_timing[4];
+			i2c->ac_timing.sta_stop = ac_timing[5];
+			i2c->ac_timing.hs_sta_stop = ac_timing[6];
+			i2c->ac_timing.sda_timing = ac_timing[7];
+		}
+	}
+
 	i2c->have_pmic = of_property_read_bool(np, "mediatek,have-pmic");
 	i2c->use_push_pull =
 		of_property_read_bool(np, "mediatek,use-push-pull");
@@ -951,7 +1021,7 @@ static int mtk_i2c_probe(struct platform_device *pdev)
 		return -EINVAL;
 
 	if (i2c->dev_comp->timing_adjust)
-		i2c->clk_src_div *= I2C_DEFAULT_CLK_DIV;
+		i2c->clk_src_div *= i2c->ac_timing.inter_clk_div;
 
 	if (i2c->have_pmic && !i2c->dev_comp->pmic_i2c)
 		return -EINVAL;
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
