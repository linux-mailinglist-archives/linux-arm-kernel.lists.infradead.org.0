Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB1CA67FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 14:01:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=huTFIrIBUK5Bs+i0mLyOtHHOQvJfVx/9CEeyOe39CnE=; b=YCZ+iwNbDUYz6NhKVdhYTboJWT
	HgYu0GG6W+U2KZT+Br4G1pJ165BoVCNmiH40LuHh4Hs9cTIj1c7YyRl9BFRY84u9X9HZso2QTR0PZ
	xVXa7AIvJgHJlZpr6cD0GZ8xlQa0CmzETVSQXN6j3XIDOR/4YiG+JHVAsy/SJ5CneZkVL/ijQW2/f
	gQOWVZ6ldOWMRXBpPSaDbbRhxnur+I8E2yhGm/+rfvbSgMZL3YTpLVt5UG8oAP6cQsrL/XyvE37KH
	DVpsXM4NX28f7o/QgfPRi5WA9qmhPcCVb/TZWTZjXS54TjbUrYabQTz7yAllt/ULpBAUuvmChrVSp
	0S9CaXxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i57VD-000761-CE; Tue, 03 Sep 2019 12:01:40 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i57Uv-0006wB-Ee; Tue, 03 Sep 2019 12:01:23 +0000
Received: from finley.xiao?rock-chips.com (unknown [192.168.167.224])
 by regular1.263xmail.com (Postfix) with ESMTP id 19822212;
 Tue,  3 Sep 2019 20:01:14 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P13045T140284270724864S1567511992953411_; 
 Tue, 03 Sep 2019 20:01:13 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f27ec6a65c7bfe6a891a08443101fbbb>
X-RL-SENDER: finley.xiao@rock-chips.com
X-SENDER: xf@rock-chips.com
X-LOGIN-NAME: finley.xiao@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Finley Xiao <finley.xiao@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v1 2/3] clk: rockchip: Add dt-binding header for rk3308
Date: Tue,  3 Sep 2019 19:59:46 +0800
Message-Id: <20190903115947.26618-3-finley.xiao@rock-chips.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190903115947.26618-1-finley.xiao@rock-chips.com>
References: <20190903115947.26618-1-finley.xiao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_050121_870657_54E23C44 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.202 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: huangtao@rock-chips.com, sboyd@kernel.org, mturquette@baylibre.com,
 zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, tony.xie@rock-chips.com,
 Finley Xiao <finley.xiao@rock-chips.com>, andy.yan@rock-chips.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the dt-bindings header for the rk3308, that gets shared between
the clock controller and the clock references in the dts.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
---
 include/dt-bindings/clock/rk3308-cru.h | 387 +++++++++++++++++++++++++++++++++
 1 file changed, 387 insertions(+)
 create mode 100644 include/dt-bindings/clock/rk3308-cru.h

diff --git a/include/dt-bindings/clock/rk3308-cru.h b/include/dt-bindings/clock/rk3308-cru.h
new file mode 100644
index 000000000000..d97840f9ee2e
--- /dev/null
+++ b/include/dt-bindings/clock/rk3308-cru.h
@@ -0,0 +1,387 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 Rockchip Electronics Co. Ltd.
+ * Author: Finley Xiao <finley.xiao@rock-chips.com>
+ */
+
+#ifndef _DT_BINDINGS_CLK_ROCKCHIP_RK3308_H
+#define _DT_BINDINGS_CLK_ROCKCHIP_RK3308_H
+
+/* core clocks */
+#define PLL_APLL		1
+#define PLL_DPLL		2
+#define PLL_VPLL0		3
+#define PLL_VPLL1		4
+#define ARMCLK			5
+
+/* sclk (special clocks) */
+#define USB480M			14
+#define SCLK_RTC32K		15
+#define SCLK_PVTM_CORE		16
+#define SCLK_UART0		17
+#define SCLK_UART1		18
+#define SCLK_UART2		19
+#define SCLK_UART3		20
+#define SCLK_UART4		21
+#define SCLK_I2C0		22
+#define SCLK_I2C1		23
+#define SCLK_I2C2		24
+#define SCLK_I2C3		25
+#define SCLK_PWM0		26
+#define SCLK_SPI0		27
+#define SCLK_SPI1		28
+#define SCLK_SPI2		29
+#define SCLK_TIMER0		30
+#define SCLK_TIMER1		31
+#define SCLK_TIMER2		32
+#define SCLK_TIMER3		33
+#define SCLK_TIMER4		34
+#define SCLK_TIMER5		35
+#define SCLK_TSADC		36
+#define SCLK_SARADC		37
+#define SCLK_OTP		38
+#define SCLK_OTP_USR		39
+#define SCLK_CPU_BOOST		40
+#define SCLK_CRYPTO		41
+#define SCLK_CRYPTO_APK		42
+#define SCLK_NANDC_DIV		43
+#define SCLK_NANDC_DIV50	44
+#define SCLK_NANDC		45
+#define SCLK_SDMMC_DIV		46
+#define SCLK_SDMMC_DIV50	47
+#define SCLK_SDMMC		48
+#define SCLK_SDMMC_DRV		49
+#define SCLK_SDMMC_SAMPLE	50
+#define SCLK_SDIO_DIV		51
+#define SCLK_SDIO_DIV50		52
+#define SCLK_SDIO		53
+#define SCLK_SDIO_DRV		54
+#define SCLK_SDIO_SAMPLE	55
+#define SCLK_EMMC_DIV		56
+#define SCLK_EMMC_DIV50		57
+#define SCLK_EMMC		58
+#define SCLK_EMMC_DRV		59
+#define SCLK_EMMC_SAMPLE	60
+#define SCLK_SFC		61
+#define SCLK_OTG_ADP		62
+#define SCLK_MAC_SRC		63
+#define SCLK_MAC		64
+#define SCLK_MAC_REF		65
+#define SCLK_MAC_RX_TX		66
+#define SCLK_MAC_RMII		67
+#define SCLK_DDR_MON_TIMER	68
+#define SCLK_DDR_MON		69
+#define SCLK_DDRCLK		70
+#define SCLK_PMU		71
+#define SCLK_USBPHY_REF		72
+#define SCLK_WIFI		73
+#define SCLK_PVTM_PMU		74
+#define SCLK_PDM		75
+#define SCLK_I2S0_8CH_TX	76
+#define SCLK_I2S0_8CH_TX_OUT	77
+#define SCLK_I2S0_8CH_RX	78
+#define SCLK_I2S0_8CH_RX_OUT	79
+#define SCLK_I2S1_8CH_TX	80
+#define SCLK_I2S1_8CH_TX_OUT	81
+#define SCLK_I2S1_8CH_RX	82
+#define SCLK_I2S1_8CH_RX_OUT	83
+#define SCLK_I2S2_8CH_TX	84
+#define SCLK_I2S2_8CH_TX_OUT	85
+#define SCLK_I2S2_8CH_RX	86
+#define SCLK_I2S2_8CH_RX_OUT	87
+#define SCLK_I2S3_8CH_TX	88
+#define SCLK_I2S3_8CH_TX_OUT	89
+#define SCLK_I2S3_8CH_RX	90
+#define SCLK_I2S3_8CH_RX_OUT	91
+#define SCLK_I2S0_2CH		92
+#define SCLK_I2S0_2CH_OUT	93
+#define SCLK_I2S1_2CH		94
+#define SCLK_I2S1_2CH_OUT	95
+#define SCLK_SPDIF_TX_DIV	96
+#define SCLK_SPDIF_TX_DIV50	97
+#define SCLK_SPDIF_TX		98
+#define SCLK_SPDIF_RX_DIV	99
+#define SCLK_SPDIF_RX_DIV50	100
+#define SCLK_SPDIF_RX		101
+#define SCLK_I2S0_8CH_TX_MUX	102
+#define SCLK_I2S0_8CH_RX_MUX	103
+#define SCLK_I2S1_8CH_TX_MUX	104
+#define SCLK_I2S1_8CH_RX_MUX	105
+#define SCLK_I2S2_8CH_TX_MUX	106
+#define SCLK_I2S2_8CH_RX_MUX	107
+#define SCLK_I2S3_8CH_TX_MUX	108
+#define SCLK_I2S3_8CH_RX_MUX	109
+#define SCLK_I2S0_8CH_TX_SRC	110
+#define SCLK_I2S0_8CH_RX_SRC	111
+#define SCLK_I2S1_8CH_TX_SRC	112
+#define SCLK_I2S1_8CH_RX_SRC	113
+#define SCLK_I2S2_8CH_TX_SRC	114
+#define SCLK_I2S2_8CH_RX_SRC	115
+#define SCLK_I2S3_8CH_TX_SRC	116
+#define SCLK_I2S3_8CH_RX_SRC	117
+#define SCLK_I2S0_2CH_SRC	118
+#define SCLK_I2S1_2CH_SRC	119
+#define SCLK_PWM1		120
+#define SCLK_PWM2		121
+#define SCLK_OWIRE		122
+
+/* dclk */
+#define DCLK_VOP		125
+
+/* aclk */
+#define ACLK_BUS_SRC		130
+#define ACLK_BUS		131
+#define ACLK_PERI_SRC		132
+#define ACLK_PERI		133
+#define ACLK_MAC		134
+#define ACLK_CRYPTO		135
+#define ACLK_VOP		136
+#define ACLK_GIC		137
+#define ACLK_DMAC0		138
+#define ACLK_DMAC1		139
+
+/* hclk */
+#define HCLK_BUS		150
+#define HCLK_PERI		151
+#define HCLK_AUDIO		152
+#define HCLK_NANDC		153
+#define HCLK_SDMMC		154
+#define HCLK_SDIO		155
+#define HCLK_EMMC		156
+#define HCLK_SFC		157
+#define HCLK_OTG		158
+#define HCLK_HOST		159
+#define HCLK_HOST_ARB		160
+#define HCLK_PDM		161
+#define HCLK_SPDIFTX		162
+#define HCLK_SPDIFRX		163
+#define HCLK_I2S0_8CH		164
+#define HCLK_I2S1_8CH		165
+#define HCLK_I2S2_8CH		166
+#define HCLK_I2S3_8CH		167
+#define HCLK_I2S0_2CH		168
+#define HCLK_I2S1_2CH		169
+#define HCLK_VAD		170
+#define HCLK_CRYPTO		171
+#define HCLK_VOP		172
+
+/* pclk */
+#define PCLK_BUS		190
+#define PCLK_DDR		191
+#define PCLK_PERI		192
+#define PCLK_PMU		193
+#define PCLK_AUDIO		194
+#define PCLK_MAC		195
+#define PCLK_ACODEC		196
+#define PCLK_UART0		197
+#define PCLK_UART1		198
+#define PCLK_UART2		199
+#define PCLK_UART3		200
+#define PCLK_UART4		201
+#define PCLK_I2C0		202
+#define PCLK_I2C1		203
+#define PCLK_I2C2		204
+#define PCLK_I2C3		205
+#define PCLK_PWM0		206
+#define PCLK_SPI0		207
+#define PCLK_SPI1		208
+#define PCLK_SPI2		209
+#define PCLK_SARADC		210
+#define PCLK_TSADC		211
+#define PCLK_TIMER		212
+#define PCLK_OTP_NS		213
+#define PCLK_WDT		214
+#define PCLK_GPIO0		215
+#define PCLK_GPIO1		216
+#define PCLK_GPIO2		217
+#define PCLK_GPIO3		218
+#define PCLK_GPIO4		219
+#define PCLK_SGRF		220
+#define PCLK_GRF		221
+#define PCLK_USBSD_DET		222
+#define PCLK_DDR_UPCTL		223
+#define PCLK_DDR_MON		224
+#define PCLK_DDRPHY		225
+#define PCLK_DDR_STDBY		226
+#define PCLK_USB_GRF		227
+#define PCLK_CRU		228
+#define PCLK_OTP_PHY		229
+#define PCLK_CPU_BOOST		230
+#define PCLK_PWM1		231
+#define PCLK_PWM2		232
+#define PCLK_CAN		233
+#define PCLK_OWIRE		234
+
+#define CLK_NR_CLKS		(PCLK_OWIRE + 1)
+
+/* soft-reset indices */
+
+/* cru_softrst_con0 */
+#define SRST_CORE0_PO		0
+#define SRST_CORE1_PO		1
+#define SRST_CORE2_PO		2
+#define SRST_CORE3_PO		3
+#define SRST_CORE0		4
+#define SRST_CORE1		5
+#define SRST_CORE2		6
+#define SRST_CORE3		7
+#define SRST_CORE0_DBG		8
+#define SRST_CORE1_DBG		9
+#define SRST_CORE2_DBG		10
+#define SRST_CORE3_DBG		11
+#define SRST_TOPDBG		12
+#define SRST_CORE_NOC		13
+#define SRST_STRC_A		14
+#define SRST_L2C		15
+
+/* cru_softrst_con1 */
+#define SRST_DAP		16
+#define SRST_CORE_PVTM		17
+#define SRST_CORE_PRF		18
+#define SRST_CORE_GRF		19
+#define SRST_DDRUPCTL		20
+#define SRST_DDRUPCTL_P		22
+#define SRST_MSCH		23
+#define SRST_DDRMON_P		25
+#define SRST_DDRSTDBY_P		26
+#define SRST_DDRSTDBY		27
+#define SRST_DDRPHY		28
+#define SRST_DDRPHY_DIV		29
+#define SRST_DDRPHY_P		30
+
+/* cru_softrst_con2 */
+#define SRST_BUS_NIU_H		32
+#define SRST_USB_NIU_P		33
+#define SRST_CRYPTO_A		34
+#define SRST_CRYPTO_H		35
+#define SRST_CRYPTO		36
+#define SRST_CRYPTO_APK		37
+#define SRST_VOP_A		38
+#define SRST_VOP_H		39
+#define SRST_VOP_D		40
+#define SRST_INTMEM_A		41
+#define SRST_ROM_H		42
+#define SRST_GIC_A		43
+#define SRST_UART0_P		44
+#define SRST_UART0		45
+#define SRST_UART1_P		46
+#define SRST_UART1		47
+
+/* cru_softrst_con3 */
+#define SRST_UART2_P		48
+#define SRST_UART2		49
+#define SRST_UART3_P		50
+#define SRST_UART3		51
+#define SRST_UART4_P		52
+#define SRST_UART4		53
+#define SRST_I2C0_P		54
+#define SRST_I2C0		55
+#define SRST_I2C1_P		56
+#define SRST_I2C1		57
+#define SRST_I2C2_P		58
+#define SRST_I2C2		59
+#define SRST_I2C3_P		60
+#define SRST_I2C3		61
+#define SRST_PWM0_P		62
+#define SRST_PWM0		63
+
+/* cru_softrst_con4 */
+#define SRST_SPI0_P		64
+#define SRST_SPI0		65
+#define SRST_SPI1_P		66
+#define SRST_SPI1		67
+#define SRST_SPI2_P		68
+#define SRST_SPI2		69
+#define SRST_SARADC_P		70
+#define SRST_TSADC_P		71
+#define SRST_TSADC		72
+#define SRST_TIMER0_P		73
+#define SRST_TIMER0		74
+#define SRST_TIMER1		75
+#define SRST_TIMER2		76
+#define SRST_TIMER3		77
+#define SRST_TIMER4		78
+#define SRST_TIMER5		79
+
+/* cru_softrst_con5 */
+#define SRST_OTP_NS_P		80
+#define SRST_OTP_NS_SBPI	81
+#define SRST_OTP_NS_USR		82
+#define SRST_OTP_PHY_P		83
+#define SRST_OTP_PHY		84
+#define SRST_GPIO0_P		86
+#define SRST_GPIO1_P		87
+#define SRST_GPIO2_P		88
+#define SRST_GPIO3_P		89
+#define SRST_GPIO4_P		90
+#define SRST_GRF_P		91
+#define SRST_USBSD_DET_P	92
+#define SRST_PMU		93
+#define SRST_PMU_PVTM		94
+#define SRST_USB_GRF_P		95
+
+/* cru_softrst_con6 */
+#define SRST_CPU_BOOST		96
+#define SRST_CPU_BOOST_P	97
+#define SRST_PWM1_P		98
+#define SRST_PWM1		99
+#define SRST_PWM2_P		100
+#define SRST_PWM2		101
+#define SRST_PERI_NIU_A		104
+#define SRST_PERI_NIU_H		105
+#define SRST_PERI_NIU_p		106
+#define SRST_USB2OTG_H		107
+#define SRST_USB2OTG		108
+#define SRST_USB2OTG_ADP	109
+#define SRST_USB2HOST_H		110
+#define SRST_USB2HOST_ARB_H	111
+
+/* cru_softrst_con7 */
+#define SRST_USB2HOST_AUX_H	112
+#define SRST_USB2HOST_EHCI	113
+#define SRST_USB2HOST		114
+#define SRST_USBPHYPOR		115
+#define SRST_UTMI0		116
+#define SRST_UTMI1		117
+#define SRST_SDIO_H		118
+#define SRST_EMMC_H		119
+#define SRST_SFC_H		120
+#define SRST_SFC		121
+#define SRST_SD_H		122
+#define SRST_NANDC_H		123
+#define SRST_NANDC_N		124
+#define SRST_MAC_A		125
+#define SRST_CAN_P		126
+#define SRST_OWIRE_P		127
+
+/* cru_softrst_con8 */
+#define SRST_AUDIO_NIU_H	128
+#define SRST_AUDIO_NIU_P	129
+#define SRST_PDM_H		130
+#define SRST_PDM_M		131
+#define SRST_SPDIFTX_H		132
+#define SRST_SPDIFTX_M		133
+#define SRST_SPDIFRX_H		134
+#define SRST_SPDIFRX_M		135
+#define SRST_I2S0_8CH_H		136
+#define SRST_I2S0_8CH_TX_M	137
+#define SRST_I2S0_8CH_RX_M	138
+#define SRST_I2S1_8CH_H		139
+#define SRST_I2S1_8CH_TX_M	140
+#define SRST_I2S1_8CH_RX_M	141
+#define SRST_I2S2_8CH_H		142
+#define SRST_I2S2_8CH_TX_M	143
+
+/* cru_softrst_con9 */
+#define SRST_I2S2_8CH_RX_M	144
+#define SRST_I2S3_8CH_H		145
+#define SRST_I2S3_8CH_TX_M	146
+#define SRST_I2S3_8CH_RX_M	147
+#define SRST_I2S0_2CH_H		148
+#define SRST_I2S0_2CH_M		149
+#define SRST_I2S1_2CH_H		150
+#define SRST_I2S1_2CH_M		151
+#define SRST_VAD_H		152
+#define SRST_ACODEC_P		153
+
+#endif
-- 
2.11.0




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
