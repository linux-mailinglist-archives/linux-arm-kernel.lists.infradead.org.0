Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 416EE66A59
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 11:47:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bmeWjhWfxFq8uaqxRRtI0OCSqlLp8q7loz/OzPHWOrs=; b=r0hJMcnAzJsAMC
	7zBOTUhuk7/FhBRBEB5Iu+pltO7TzVdmtNDczLuSnd4thqdHlZPh2QIFKvo5DI6piUTNtJsH8Iy1V
	RyqnVvathCLqbAzwqShPmp648a4qzoGMFfdHTaoqJFMq0y/mQHBHQfqHFM1vfCpS3TE/eEodczZLt
	lgQzjxG1s5AIS3yiU/OGABVclV32VsrN3KZgk5fE9+1pNrx0yJUdRN2XP5Dp37a9wJcc5PU550U3A
	bsW+pi87aNkl0PX4ke9iLT8Qu/MzKNC40kQ96bYTyqGCanY2ZILxtIdMGdYqbDSafc3ZGS/DywM3K
	V61Kic/NzXPApLm2O/Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hls8j-0000YZ-A4; Fri, 12 Jul 2019 09:46:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hls8Q-0000Ve-3g; Fri, 12 Jul 2019 09:46:37 +0000
X-UUID: 8f3adf2022e643dbbeaa9a96b3584285-20190712
X-UUID: 8f3adf2022e643dbbeaa9a96b3584285-20190712
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 127397864; Fri, 12 Jul 2019 01:46:32 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 12 Jul 2019 02:46:31 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 12 Jul 2019 17:46:23 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 12 Jul 2019 17:46:23 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Stephen Boyd <sboyd@kernel.org>, "Sean
 Wang" <sean.wang@mediatek.com>, Mars Cheng <mars.cheng@mediatek.com>, "Owen
 Chen" <owen.chen@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v6 4/8] clk: mediatek: add mt6765 clock IDs
Date: Fri, 12 Jul 2019 17:43:40 +0800
Message-ID: <1562924653-10056-5-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1562924653-10056-1-git-send-email-macpaul.lin@mediatek.com>
References: <1562924653-10056-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 396CAF028FF27F9679580EF834FA33A87F92701AA8A636E1D7FD385424C1732F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_024634_192440_AD5BD227 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Loda Chou <loda.chou@mediatek.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>, linux-serial@vger.kernel.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mars Cheng <mars.cheng@mediatek.com>

Add MT6765 clock dt-bindings, include topckgen, apmixedsys,
infracfg, mcucfg and subsystem clocks.

Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
Signed-off-by: Owen Chen <owen.chen@mediatek.com>
Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
 include/dt-bindings/clock/mt6765-clk.h | 313 +++++++++++++++++++++++++
 1 file changed, 313 insertions(+)
 create mode 100644 include/dt-bindings/clock/mt6765-clk.h

diff --git a/include/dt-bindings/clock/mt6765-clk.h b/include/dt-bindings/clock/mt6765-clk.h
new file mode 100644
index 000000000000..eb97e568518e
--- /dev/null
+++ b/include/dt-bindings/clock/mt6765-clk.h
@@ -0,0 +1,313 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _DT_BINDINGS_CLK_MT6765_H
+#define _DT_BINDINGS_CLK_MT6765_H
+
+/* FIX Clks */
+#define CLK_TOP_CLK26M			0
+
+/* APMIXEDSYS */
+#define CLK_APMIXED_ARMPLL_L		0
+#define CLK_APMIXED_ARMPLL		1
+#define CLK_APMIXED_CCIPLL		2
+#define CLK_APMIXED_MAINPLL		3
+#define CLK_APMIXED_MFGPLL		4
+#define CLK_APMIXED_MMPLL		5
+#define CLK_APMIXED_UNIV2PLL		6
+#define CLK_APMIXED_MSDCPLL		7
+#define CLK_APMIXED_APLL1		8
+#define CLK_APMIXED_MPLL		9
+#define CLK_APMIXED_ULPOSC1		10
+#define CLK_APMIXED_ULPOSC2		11
+#define CLK_APMIXED_SSUSB26M		12
+#define CLK_APMIXED_APPLL26M		13
+#define CLK_APMIXED_MIPIC0_26M		14
+#define CLK_APMIXED_MDPLLGP26M		15
+#define CLK_APMIXED_MMSYS_F26M		16
+#define CLK_APMIXED_UFS26M		17
+#define CLK_APMIXED_MIPIC1_26M		18
+#define CLK_APMIXED_MEMPLL26M		19
+#define CLK_APMIXED_CLKSQ_LVPLL_26M	20
+#define CLK_APMIXED_MIPID0_26M		21
+#define CLK_APMIXED_NR_CLK		22
+
+/* TOPCKGEN */
+#define CLK_TOP_SYSPLL			0
+#define CLK_TOP_SYSPLL_D2		1
+#define CLK_TOP_SYSPLL1_D2		2
+#define CLK_TOP_SYSPLL1_D4		3
+#define CLK_TOP_SYSPLL1_D8		4
+#define CLK_TOP_SYSPLL1_D16		5
+#define CLK_TOP_SYSPLL_D3		6
+#define CLK_TOP_SYSPLL2_D2		7
+#define CLK_TOP_SYSPLL2_D4		8
+#define CLK_TOP_SYSPLL2_D8		9
+#define CLK_TOP_SYSPLL_D5		10
+#define CLK_TOP_SYSPLL3_D2		11
+#define CLK_TOP_SYSPLL3_D4		12
+#define CLK_TOP_SYSPLL_D7		13
+#define CLK_TOP_SYSPLL4_D2		14
+#define CLK_TOP_SYSPLL4_D4		15
+#define CLK_TOP_USB20_192M		16
+#define CLK_TOP_USB20_192M_D4		17
+#define CLK_TOP_USB20_192M_D8		18
+#define CLK_TOP_USB20_192M_D16		19
+#define CLK_TOP_USB20_192M_D32		20
+#define CLK_TOP_UNIVPLL			21
+#define CLK_TOP_UNIVPLL_D2		22
+#define CLK_TOP_UNIVPLL1_D2		23
+#define CLK_TOP_UNIVPLL1_D4		24
+#define CLK_TOP_UNIVPLL_D3		25
+#define CLK_TOP_UNIVPLL2_D2		26
+#define CLK_TOP_UNIVPLL2_D4		27
+#define CLK_TOP_UNIVPLL2_D8		28
+#define CLK_TOP_UNIVPLL2_D32		29
+#define CLK_TOP_UNIVPLL_D5		30
+#define CLK_TOP_UNIVPLL3_D2		31
+#define CLK_TOP_UNIVPLL3_D4		32
+#define CLK_TOP_MMPLL			33
+#define CLK_TOP_MMPLL_D2		34
+#define CLK_TOP_MPLL			35
+#define CLK_TOP_DA_MPLL_104M_DIV	36
+#define CLK_TOP_DA_MPLL_52M_DIV		37
+#define CLK_TOP_MFGPLL			38
+#define CLK_TOP_MSDCPLL			39
+#define CLK_TOP_MSDCPLL_D2		40
+#define CLK_TOP_APLL1			41
+#define CLK_TOP_APLL1_D2		42
+#define CLK_TOP_APLL1_D4		43
+#define CLK_TOP_APLL1_D8		44
+#define CLK_TOP_ULPOSC1			45
+#define CLK_TOP_ULPOSC1_D2		46
+#define CLK_TOP_ULPOSC1_D4		47
+#define CLK_TOP_ULPOSC1_D8		48
+#define CLK_TOP_ULPOSC1_D16		49
+#define CLK_TOP_ULPOSC1_D32		50
+#define CLK_TOP_DMPLL			51
+#define CLK_TOP_F_FRTC			52
+#define CLK_TOP_F_F26M			53
+#define CLK_TOP_AXI			54
+#define CLK_TOP_MM			55
+#define CLK_TOP_SCP			56
+#define CLK_TOP_MFG			57
+#define CLK_TOP_F_FUART			58
+#define CLK_TOP_SPI			59
+#define CLK_TOP_MSDC50_0		60
+#define CLK_TOP_MSDC30_1		61
+#define CLK_TOP_AUDIO			62
+#define CLK_TOP_AUD_1			63
+#define CLK_TOP_AUD_ENGEN1		64
+#define CLK_TOP_F_FDISP_PWM		65
+#define CLK_TOP_SSPM			66
+#define CLK_TOP_DXCC			67
+#define CLK_TOP_I2C			68
+#define CLK_TOP_F_FPWM			69
+#define CLK_TOP_F_FSENINF		70
+#define CLK_TOP_AES_FDE			71
+#define CLK_TOP_F_BIST2FPC		72
+#define CLK_TOP_ARMPLL_DIVIDER_PLL0	73
+#define CLK_TOP_ARMPLL_DIVIDER_PLL1	74
+#define CLK_TOP_ARMPLL_DIVIDER_PLL2	75
+#define CLK_TOP_DA_USB20_48M_DIV	76
+#define CLK_TOP_DA_UNIV_48M_DIV		77
+#define CLK_TOP_APLL12_DIV0		78
+#define CLK_TOP_APLL12_DIV1		79
+#define CLK_TOP_APLL12_DIV2		80
+#define CLK_TOP_APLL12_DIV3		81
+#define CLK_TOP_ARMPLL_DIVIDER_PLL0_EN	82
+#define CLK_TOP_ARMPLL_DIVIDER_PLL1_EN	83
+#define CLK_TOP_ARMPLL_DIVIDER_PLL2_EN	84
+#define CLK_TOP_FMEM_OCC_DRC_EN		85
+#define CLK_TOP_USB20_48M_EN		86
+#define CLK_TOP_UNIVPLL_48M_EN		87
+#define CLK_TOP_MPLL_104M_EN		88
+#define CLK_TOP_MPLL_52M_EN		89
+#define CLK_TOP_F_UFS_MP_SAP_CFG_EN	90
+#define CLK_TOP_F_BIST2FPC_EN		91
+#define CLK_TOP_MD_32K			92
+#define CLK_TOP_MD_26M			93
+#define CLK_TOP_MD2_32K			94
+#define CLK_TOP_MD2_26M			95
+#define CLK_TOP_AXI_SEL			96
+#define CLK_TOP_MEM_SEL			97
+#define CLK_TOP_MM_SEL			98
+#define CLK_TOP_SCP_SEL			99
+#define CLK_TOP_MFG_SEL			100
+#define CLK_TOP_ATB_SEL			101
+#define CLK_TOP_CAMTG_SEL		102
+#define CLK_TOP_CAMTG1_SEL		103
+#define CLK_TOP_CAMTG2_SEL		104
+#define CLK_TOP_CAMTG3_SEL		105
+#define CLK_TOP_UART_SEL		106
+#define CLK_TOP_SPI_SEL			107
+#define CLK_TOP_MSDC50_0_HCLK_SEL	108
+#define CLK_TOP_MSDC50_0_SEL		109
+#define CLK_TOP_MSDC30_1_SEL		110
+#define CLK_TOP_AUDIO_SEL		111
+#define CLK_TOP_AUD_INTBUS_SEL		112
+#define CLK_TOP_AUD_1_SEL		113
+#define CLK_TOP_AUD_ENGEN1_SEL		114
+#define CLK_TOP_DISP_PWM_SEL		115
+#define CLK_TOP_SSPM_SEL		116
+#define CLK_TOP_DXCC_SEL		117
+#define CLK_TOP_USB_TOP_SEL		118
+#define CLK_TOP_SPM_SEL			119
+#define CLK_TOP_I2C_SEL			120
+#define CLK_TOP_PWM_SEL			121
+#define CLK_TOP_SENINF_SEL		122
+#define CLK_TOP_AES_FDE_SEL		123
+#define CLK_TOP_PWRAP_ULPOSC_SEL	124
+#define CLK_TOP_CAMTM_SEL		125
+#define CLK_TOP_NR_CLK			126
+
+/* INFRACFG */
+#define CLK_IFR_ICUSB			0
+#define CLK_IFR_GCE			1
+#define CLK_IFR_THERM			2
+#define CLK_IFR_I2C_AP			3
+#define CLK_IFR_I2C_CCU			4
+#define CLK_IFR_I2C_SSPM		5
+#define CLK_IFR_I2C_RSV			6
+#define CLK_IFR_PWM_HCLK		7
+#define CLK_IFR_PWM1			8
+#define CLK_IFR_PWM2			9
+#define CLK_IFR_PWM3			10
+#define CLK_IFR_PWM4			11
+#define CLK_IFR_PWM5			12
+#define CLK_IFR_PWM			13
+#define CLK_IFR_UART0			14
+#define CLK_IFR_UART1			15
+#define CLK_IFR_GCE_26M			16
+#define CLK_IFR_CQ_DMA_FPC		17
+#define CLK_IFR_BTIF			18
+#define CLK_IFR_SPI0			19
+#define CLK_IFR_MSDC0			20
+#define CLK_IFR_MSDC1			21
+#define CLK_IFR_TRNG			22
+#define CLK_IFR_AUXADC			23
+#define CLK_IFR_CCIF1_AP		24
+#define CLK_IFR_CCIF1_MD		25
+#define CLK_IFR_AUXADC_MD		26
+#define CLK_IFR_AP_DMA			27
+#define CLK_IFR_DEVICE_APC		28
+#define CLK_IFR_CCIF_AP			29
+#define CLK_IFR_AUDIO			30
+#define CLK_IFR_CCIF_MD			31
+#define CLK_IFR_RG_PWM_FBCLK6		32
+#define CLK_IFR_DISP_PWM		33
+#define CLK_IFR_CLDMA_BCLK		34
+#define CLK_IFR_AUDIO_26M_BCLK		35
+#define CLK_IFR_SPI1			36
+#define CLK_IFR_I2C4			37
+#define CLK_IFR_SPI2			38
+#define CLK_IFR_SPI3			39
+#define CLK_IFR_I2C5			40
+#define CLK_IFR_I2C5_ARBITER		41
+#define CLK_IFR_I2C5_IMM		42
+#define CLK_IFR_I2C1_ARBITER		43
+#define CLK_IFR_I2C1_IMM		44
+#define CLK_IFR_I2C2_ARBITER		45
+#define CLK_IFR_I2C2_IMM		46
+#define CLK_IFR_SPI4			47
+#define CLK_IFR_SPI5			48
+#define CLK_IFR_CQ_DMA			49
+#define CLK_IFR_FAES_FDE		50
+#define CLK_IFR_MSDC0_SELF		51
+#define CLK_IFR_MSDC1_SELF		52
+#define CLK_IFR_I2C6			53
+#define CLK_IFR_AP_MSDC0		54
+#define CLK_IFR_MD_MSDC0		55
+#define CLK_IFR_MSDC0_SRC		56
+#define CLK_IFR_MSDC1_SRC		57
+#define CLK_IFR_AES_TOP0_BCLK		58
+#define CLK_IFR_MCU_PM_BCLK		59
+#define CLK_IFR_CCIF2_AP		60
+#define CLK_IFR_CCIF2_MD		61
+#define CLK_IFR_CCIF3_AP		62
+#define CLK_IFR_CCIF3_MD		63
+#define CLK_IFR_NR_CLK			64
+
+/* AUDIO */
+#define CLK_AUDIO_AFE			0
+#define CLK_AUDIO_22M			1
+#define CLK_AUDIO_APLL_TUNER		2
+#define CLK_AUDIO_ADC			3
+#define CLK_AUDIO_DAC			4
+#define CLK_AUDIO_DAC_PREDIS		5
+#define CLK_AUDIO_TML			6
+#define CLK_AUDIO_I2S1_BCLK		7
+#define CLK_AUDIO_I2S2_BCLK		8
+#define CLK_AUDIO_I2S3_BCLK		9
+#define CLK_AUDIO_I2S4_BCLK		10
+#define CLK_AUDIO_NR_CLK		11
+
+/* MIPI_RX_ANA_CSI0A */
+
+#define CLK_MIPI0A_CSR_CSI_EN_0A	0
+#define CLK_MIPI0A_NR_CLK		1
+
+/* MMSYS_CONFIG */
+
+#define CLK_MM_MDP_RDMA0		0
+#define CLK_MM_MDP_CCORR0		1
+#define CLK_MM_MDP_RSZ0			2
+#define CLK_MM_MDP_RSZ1			3
+#define CLK_MM_MDP_TDSHP0		4
+#define CLK_MM_MDP_WROT0		5
+#define CLK_MM_MDP_WDMA0		6
+#define CLK_MM_DISP_OVL0		7
+#define CLK_MM_DISP_OVL0_2L		8
+#define CLK_MM_DISP_RSZ0		9
+#define CLK_MM_DISP_RDMA0		10
+#define CLK_MM_DISP_WDMA0		11
+#define CLK_MM_DISP_COLOR0		12
+#define CLK_MM_DISP_CCORR0		13
+#define CLK_MM_DISP_AAL0		14
+#define CLK_MM_DISP_GAMMA0		15
+#define CLK_MM_DISP_DITHER0		16
+#define CLK_MM_DSI0			17
+#define CLK_MM_FAKE_ENG			18
+#define CLK_MM_SMI_COMMON		19
+#define CLK_MM_SMI_LARB0		20
+#define CLK_MM_SMI_COMM0		21
+#define CLK_MM_SMI_COMM1		22
+#define CLK_MM_CAM_MDP			23
+#define CLK_MM_SMI_IMG			24
+#define CLK_MM_SMI_CAM			25
+#define CLK_MM_IMG_DL_RELAY		26
+#define CLK_MM_IMG_DL_ASYNC_TOP		27
+#define CLK_MM_DIG_DSI			28
+#define CLK_MM_F26M_HRTWT		29
+#define CLK_MM_NR_CLK			30
+
+/* IMGSYS */
+
+#define CLK_IMG_LARB2			0
+#define CLK_IMG_DIP			1
+#define CLK_IMG_FDVT			2
+#define CLK_IMG_DPE			3
+#define CLK_IMG_RSC			4
+#define CLK_IMG_NR_CLK			5
+
+/* VENCSYS */
+
+#define CLK_VENC_SET0_LARB		0
+#define CLK_VENC_SET1_VENC		1
+#define CLK_VENC_SET2_JPGENC		2
+#define CLK_VENC_SET3_VDEC		3
+#define CLK_VENC_NR_CLK			4
+
+/* CAMSYS */
+
+#define CLK_CAM_LARB3			0
+#define CLK_CAM_DFP_VAD			1
+#define CLK_CAM				2
+#define CLK_CAMTG			3
+#define CLK_CAM_SENINF			4
+#define CLK_CAMSV0			5
+#define CLK_CAMSV1			6
+#define CLK_CAMSV2			7
+#define CLK_CAM_CCU			8
+#define CLK_CAM_NR_CLK			9
+
+#endif /* _DT_BINDINGS_CLK_MT6765_H */
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
