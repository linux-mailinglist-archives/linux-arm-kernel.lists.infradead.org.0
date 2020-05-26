Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421071DC9D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 11:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IAujZuLKF2c24Nw1MuR2xOxu6o42CY7k4NZ67y/Wi68=; b=kdtxOzKx102JSR
	NFoLyYRonJFOap/VJPyQ7nHSyPuhV4iiKoLW7qnMq9EpNG2QlBLVXaOZECqhA7miV/0PMZpko4aAz
	TsQ8oWjUvjLf9sBpv5YHGQnKqY459Krpf+Zw9zTpXgp3WXdqJ97twGXwZph20QXjtgoeAON1T0LPP
	FwJdnrff39DySzhOV2hE3ltTYmucvggGkw8VXfz/nCKAYbQqukZNeB+WqRKedoe4wwiVPlCSAGWTt
	cWuBNEzA9RtwrIrwFi2mUuRYsMAArbHLTRKKfNSb9AIjF9e7JAg79uXJ35JSUOhsYxoJQuSGDr/6N
	j6T13dcQPVN1Sjg3FqbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbhL2-000472-Nx; Thu, 21 May 2020 09:18:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbhJf-0003EJ-7g; Thu, 21 May 2020 09:16:41 +0000
X-UUID: 25cf7960a6e94a53bff1c04158fdb9cc-20200521
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=RgR3gT63cF10m7ug3D2sJe/0udV9Rbq/J6RBqS9HSlM=; 
 b=bAg+tr9cR8Jx8ZQcVoB5nHR80l1cYqNPBvjtVpUqYStnsYotG5YKhK3yAshd26hooaPSHIaiRNAXrjqGx9sxYxjJALG5EGxSIMqXGqqbX6wFJirHS5/e0rXwSvZRnSw/c/l1fyxA3EzVpIawkJIQDUahiieRdBtMq6ieA+sOEpQ=;
X-UUID: 25cf7960a6e94a53bff1c04158fdb9cc-20200521
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 356354876; Thu, 21 May 2020 01:16:33 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 21 May 2020 02:06:33 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 21 May 2020 17:06:29 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 21 May 2020 17:06:29 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Enric Balletbo Serra <eballetbo@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Nicolas Boichat <drinkcat@chromium.org>, "Rob
 Herring" <robh@kernel.org>, Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v15 08/11] soc: mediatek: Add MT8183 scpsys support
Date: Thu, 21 May 2020 17:06:21 +0800
Message-ID: <1590051985-29149-9-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1590051985-29149-1-git-send-email-weiyi.lu@mediatek.com>
References: <1590051985-29149-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_021639_284669_3DF378C1 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add scpsys driver for MT8183

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>
---
 drivers/soc/mediatek/mtk-scpsys.c | 249 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 249 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
index ef46e31..ae03127 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -19,6 +19,7 @@
 #include <dt-bindings/power/mt7622-power.h>
 #include <dt-bindings/power/mt7623a-power.h>
 #include <dt-bindings/power/mt8173-power.h>
+#include <dt-bindings/power/mt8183-power.h>
 
 #define MTK_POLL_DELAY_US   10
 #define MTK_POLL_TIMEOUT    USEC_PER_SEC
@@ -99,6 +100,34 @@
 #define MT8173_TOP_AXI_PROT_EN_MFG_M1		BIT(22)
 #define MT8173_TOP_AXI_PROT_EN_MFG_SNOOP_OUT	BIT(23)
 
+#define MT8183_TOP_AXI_PROT_EN_DISP			(BIT(10) | BIT(11))
+#define MT8183_TOP_AXI_PROT_EN_CONN			(BIT(13) | BIT(14))
+#define MT8183_TOP_AXI_PROT_EN_MFG			(BIT(21) | BIT(22))
+#define MT8183_TOP_AXI_PROT_EN_CAM			BIT(28)
+#define MT8183_TOP_AXI_PROT_EN_VPU_TOP			BIT(27)
+#define MT8183_TOP_AXI_PROT_EN_1_DISP			(BIT(16) | BIT(17))
+#define MT8183_TOP_AXI_PROT_EN_1_MFG			GENMASK(21, 19)
+#define MT8183_TOP_AXI_PROT_EN_MM_ISP			(BIT(3) | BIT(8))
+#define MT8183_TOP_AXI_PROT_EN_MM_ISP_2ND		BIT(10)
+#define MT8183_TOP_AXI_PROT_EN_MM_CAM			(BIT(4) | BIT(5) | \
+							 BIT(9) | BIT(13))
+#define MT8183_TOP_AXI_PROT_EN_MM_VPU_TOP		(GENMASK(9, 6) | \
+							 BIT(12))
+#define MT8183_TOP_AXI_PROT_EN_MM_VPU_TOP_2ND		(BIT(10) | BIT(11))
+#define MT8183_TOP_AXI_PROT_EN_MM_CAM_2ND		BIT(11)
+#define MT8183_TOP_AXI_PROT_EN_MCU_VPU_CORE0_2ND	(BIT(0) | BIT(2) | \
+							 BIT(4))
+#define MT8183_TOP_AXI_PROT_EN_MCU_VPU_CORE1_2ND	(BIT(1) | BIT(3) | \
+							 BIT(5))
+#define MT8183_TOP_AXI_PROT_EN_MCU_VPU_CORE0		BIT(6)
+#define MT8183_TOP_AXI_PROT_EN_MCU_VPU_CORE1		BIT(7)
+#define MT8183_SMI_COMMON_SMI_CLAMP_DISP		GENMASK(7, 0)
+#define MT8183_SMI_COMMON_SMI_CLAMP_VENC		BIT(1)
+#define MT8183_SMI_COMMON_SMI_CLAMP_ISP			BIT(2)
+#define MT8183_SMI_COMMON_SMI_CLAMP_CAM			(BIT(3) | BIT(4))
+#define MT8183_SMI_COMMON_SMI_CLAMP_VPU_TOP		(BIT(5) | BIT(6))
+#define MT8183_SMI_COMMON_SMI_CLAMP_VDEC		BIT(7)
+
 #define MAX_CLKS	3
 #define MAX_SUBSYS_CLKS 10
 
@@ -1190,6 +1219,212 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 	{MT8173_POWER_DOMAIN_MFG_2D, MT8173_POWER_DOMAIN_MFG},
 };
 
+/*
+ * MT8183 power domain support
+ */
+
+static const struct scp_domain_data scp_domain_data_mt8183[] = {
+	[MT8183_POWER_DOMAIN_AUDIO] = {
+		.name = "audio",
+		.sta_mask = PWR_STATUS_AUDIO,
+		.ctl_offs = 0x0314,
+		.sram_pdn_bits = GENMASK(11, 8),
+		.sram_pdn_ack_bits = GENMASK(15, 12),
+		.basic_clk_name = {"audio", "audio1", "audio2"},
+	},
+	[MT8183_POWER_DOMAIN_CONN] = {
+		.name = "conn",
+		.sta_mask = PWR_STATUS_CONN,
+		.ctl_offs = 0x032c,
+		.sram_pdn_bits = 0,
+		.sram_pdn_ack_bits = 0,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0x2a0, 0x2a4, 0, 0x228,
+				MT8183_TOP_AXI_PROT_EN_CONN),
+		},
+	},
+	[MT8183_POWER_DOMAIN_MFG_ASYNC] = {
+		.name = "mfg_async",
+		.sta_mask = PWR_STATUS_MFG_ASYNC,
+		.ctl_offs = 0x0334,
+		.sram_pdn_bits = 0,
+		.sram_pdn_ack_bits = 0,
+		.basic_clk_name = {"mfg"},
+	},
+	[MT8183_POWER_DOMAIN_MFG] = {
+		.name = "mfg",
+		.sta_mask = PWR_STATUS_MFG,
+		.ctl_offs = 0x0338,
+		.sram_pdn_bits = GENMASK(8, 8),
+		.sram_pdn_ack_bits = GENMASK(12, 12),
+	},
+	[MT8183_POWER_DOMAIN_MFG_CORE0] = {
+		.name = "mfg_core0",
+		.sta_mask = BIT(7),
+		.ctl_offs = 0x034c,
+		.sram_pdn_bits = GENMASK(8, 8),
+		.sram_pdn_ack_bits = GENMASK(12, 12),
+	},
+	[MT8183_POWER_DOMAIN_MFG_CORE1] = {
+		.name = "mfg_core1",
+		.sta_mask = BIT(20),
+		.ctl_offs = 0x0310,
+		.sram_pdn_bits = GENMASK(8, 8),
+		.sram_pdn_ack_bits = GENMASK(12, 12),
+	},
+	[MT8183_POWER_DOMAIN_MFG_2D] = {
+		.name = "mfg_2d",
+		.sta_mask = PWR_STATUS_MFG_2D,
+		.ctl_offs = 0x0348,
+		.sram_pdn_bits = GENMASK(8, 8),
+		.sram_pdn_ack_bits = GENMASK(12, 12),
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0x2a8, 0x2ac, 0, 0x258,
+				MT8183_TOP_AXI_PROT_EN_1_MFG),
+			BUS_PROT(IFR_TYPE, 0x2a0, 0x2a4, 0, 0x228,
+				MT8183_TOP_AXI_PROT_EN_MFG),
+		},
+	},
+	[MT8183_POWER_DOMAIN_DISP] = {
+		.name = "disp",
+		.sta_mask = PWR_STATUS_DISP,
+		.ctl_offs = 0x030c,
+		.sram_pdn_bits = GENMASK(8, 8),
+		.sram_pdn_ack_bits = GENMASK(12, 12),
+		.basic_clk_name = {"mm"},
+		.subsys_clk_prefix = "mm",
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0x2a8, 0x2ac, 0, 0x258,
+				MT8183_TOP_AXI_PROT_EN_1_DISP),
+			BUS_PROT(IFR_TYPE, 0x2a0, 0x2a4, 0, 0x228,
+				MT8183_TOP_AXI_PROT_EN_DISP),
+			BUS_PROT(SMI_TYPE, 0x3c4, 0x3c8, 0, 0x3c0,
+				MT8183_SMI_COMMON_SMI_CLAMP_DISP),
+		},
+	},
+	[MT8183_POWER_DOMAIN_CAM] = {
+		.name = "cam",
+		.sta_mask = BIT(25),
+		.ctl_offs = 0x0344,
+		.sram_pdn_bits = GENMASK(9, 8),
+		.sram_pdn_ack_bits = GENMASK(13, 12),
+		.basic_clk_name = {"cam"},
+		.subsys_clk_prefix = "cam",
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0x2d4, 0x2d8, 0, 0x2ec,
+				MT8183_TOP_AXI_PROT_EN_MM_CAM),
+			BUS_PROT(IFR_TYPE, 0x2a0, 0x2a4, 0, 0x228,
+				MT8183_TOP_AXI_PROT_EN_CAM),
+			BUS_PROT_IGN(IFR_TYPE, 0x2d4, 0x2d8, 0, 0x2ec,
+				MT8183_TOP_AXI_PROT_EN_MM_CAM_2ND),
+			BUS_PROT(SMI_TYPE, 0x3c4, 0x3c8, 0, 0x3c0,
+				MT8183_SMI_COMMON_SMI_CLAMP_CAM),
+		},
+	},
+	[MT8183_POWER_DOMAIN_ISP] = {
+		.name = "isp",
+		.sta_mask = PWR_STATUS_ISP,
+		.ctl_offs = 0x0308,
+		.sram_pdn_bits = GENMASK(9, 8),
+		.sram_pdn_ack_bits = GENMASK(13, 12),
+		.basic_clk_name = {"isp"},
+		.subsys_clk_prefix = "isp",
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0x2d4, 0x2d8, 0, 0x2ec,
+				MT8183_TOP_AXI_PROT_EN_MM_ISP),
+			BUS_PROT_IGN(IFR_TYPE, 0x2d4, 0x2d8, 0, 0x2ec,
+				MT8183_TOP_AXI_PROT_EN_MM_ISP_2ND),
+			BUS_PROT(SMI_TYPE, 0x3c4, 0x3c8, 0, 0x3c0,
+				MT8183_SMI_COMMON_SMI_CLAMP_ISP),
+		},
+	},
+	[MT8183_POWER_DOMAIN_VDEC] = {
+		.name = "vdec",
+		.sta_mask = BIT(31),
+		.ctl_offs = 0x0300,
+		.sram_pdn_bits = GENMASK(8, 8),
+		.sram_pdn_ack_bits = GENMASK(12, 12),
+		.bp_table = {
+			BUS_PROT(SMI_TYPE, 0x3c4, 0x3c8, 0, 0x3c0,
+				MT8183_SMI_COMMON_SMI_CLAMP_VDEC),
+		},
+	},
+	[MT8183_POWER_DOMAIN_VENC] = {
+		.name = "venc",
+		.sta_mask = PWR_STATUS_VENC,
+		.ctl_offs = 0x0304,
+		.sram_pdn_bits = GENMASK(11, 8),
+		.sram_pdn_ack_bits = GENMASK(15, 12),
+		.bp_table = {
+			BUS_PROT(SMI_TYPE, 0x3c4, 0x3c8, 0, 0x3c0,
+				MT8183_SMI_COMMON_SMI_CLAMP_VENC),
+		},
+	},
+	[MT8183_POWER_DOMAIN_VPU_TOP] = {
+		.name = "vpu_top",
+		.sta_mask = BIT(26),
+		.ctl_offs = 0x0324,
+		.sram_pdn_bits = GENMASK(8, 8),
+		.sram_pdn_ack_bits = GENMASK(12, 12),
+		.basic_clk_name = {"vpu", "vpu1"},
+		.subsys_clk_prefix = "vpu",
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0x2d4, 0x2d8, 0, 0x2ec,
+				MT8183_TOP_AXI_PROT_EN_MM_VPU_TOP),
+			BUS_PROT(IFR_TYPE, 0x2a0, 0x2a4, 0, 0x228,
+				MT8183_TOP_AXI_PROT_EN_VPU_TOP),
+			BUS_PROT(IFR_TYPE, 0x2d4, 0x2d8, 0, 0x2ec,
+				MT8183_TOP_AXI_PROT_EN_MM_VPU_TOP_2ND),
+			BUS_PROT(SMI_TYPE, 0x3c4, 0x3c8, 0, 0x3c0,
+				MT8183_SMI_COMMON_SMI_CLAMP_VPU_TOP),
+		},
+	},
+	[MT8183_POWER_DOMAIN_VPU_CORE0] = {
+		.name = "vpu_core0",
+		.sta_mask = BIT(27),
+		.ctl_offs = 0x33c,
+		.sram_pdn_bits = GENMASK(11, 8),
+		.sram_pdn_ack_bits = GENMASK(13, 12),
+		.basic_clk_name = {"vpu2"},
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0x2c4, 0x2c8, 0, 0x2e4,
+				MT8183_TOP_AXI_PROT_EN_MCU_VPU_CORE0),
+			BUS_PROT(IFR_TYPE, 0x2c4, 0x2c8, 0, 0x2e4,
+				MT8183_TOP_AXI_PROT_EN_MCU_VPU_CORE0_2ND),
+		},
+		.caps = MTK_SCPD_SRAM_ISO,
+	},
+	[MT8183_POWER_DOMAIN_VPU_CORE1] = {
+		.name = "vpu_core1",
+		.sta_mask = BIT(28),
+		.ctl_offs = 0x0340,
+		.sram_pdn_bits = GENMASK(11, 8),
+		.sram_pdn_ack_bits = GENMASK(13, 12),
+		.basic_clk_name = {"vpu3"},
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0x2c4, 0x2c8, 0, 0x2e4,
+				MT8183_TOP_AXI_PROT_EN_MCU_VPU_CORE1),
+			BUS_PROT(IFR_TYPE, 0x2c4, 0x2c8, 0, 0x2e4,
+				MT8183_TOP_AXI_PROT_EN_MCU_VPU_CORE1_2ND),
+		},
+		.caps = MTK_SCPD_SRAM_ISO,
+	},
+};
+
+static const struct scp_subdomain scp_subdomain_mt8183[] = {
+	{MT8183_POWER_DOMAIN_MFG_ASYNC, MT8183_POWER_DOMAIN_MFG},
+	{MT8183_POWER_DOMAIN_MFG, MT8183_POWER_DOMAIN_MFG_2D},
+	{MT8183_POWER_DOMAIN_MFG, MT8183_POWER_DOMAIN_MFG_CORE0},
+	{MT8183_POWER_DOMAIN_MFG, MT8183_POWER_DOMAIN_MFG_CORE1},
+	{MT8183_POWER_DOMAIN_DISP, MT8183_POWER_DOMAIN_CAM},
+	{MT8183_POWER_DOMAIN_DISP, MT8183_POWER_DOMAIN_ISP},
+	{MT8183_POWER_DOMAIN_DISP, MT8183_POWER_DOMAIN_VDEC},
+	{MT8183_POWER_DOMAIN_DISP, MT8183_POWER_DOMAIN_VENC},
+	{MT8183_POWER_DOMAIN_DISP, MT8183_POWER_DOMAIN_VPU_TOP},
+	{MT8183_POWER_DOMAIN_VPU_TOP, MT8183_POWER_DOMAIN_VPU_CORE0},
+	{MT8183_POWER_DOMAIN_VPU_TOP, MT8183_POWER_DOMAIN_VPU_CORE1},
+};
+
 static const struct scp_soc_data mt2701_data = {
 	.domains = scp_domain_data_mt2701,
 	.num_domains = ARRAY_SIZE(scp_domain_data_mt2701),
@@ -1250,6 +1485,17 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 	},
 };
 
+static const struct scp_soc_data mt8183_data = {
+	.domains = scp_domain_data_mt8183,
+	.num_domains = ARRAY_SIZE(scp_domain_data_mt8183),
+	.subdomains = scp_subdomain_mt8183,
+	.num_subdomains = ARRAY_SIZE(scp_subdomain_mt8183),
+	.regs = {
+		.pwr_sta_offs = 0x0180,
+		.pwr_sta2nd_offs = 0x0184
+	}
+};
+
 /*
  * scpsys driver init
  */
@@ -1274,6 +1520,9 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.compatible = "mediatek,mt8173-scpsys",
 		.data = &mt8173_data,
 	}, {
+		.compatible = "mediatek,mt8183-scpsys",
+		.data = &mt8183_data,
+	}, {
 		/* sentinel */
 	}
 };
-- 
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
