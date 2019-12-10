Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CBB118A92
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:15:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1FFPnq1X0/A8V58fqtFkkUvL8BOMj13UpBW1s2i4rkQ=; b=ZuQRZPwsNmWv6r
	Bm4+Um3YoYv/LNd4xe1YmuuOzeXe6soBXFmX8kUAR3M6SFjJydV9B1Dj9MpP+3AwWkecRD7I3FnaF
	5HPtSlHHY/XS0y6j3eXFHk4zPUpRsQFXytjfdxHu7BdzXoXwzjGBw08VBPfUvf8l0zWlJNC0d9kMc
	OxES0I4T8bEdvHL36yOuY7UiYjnVFjDZYHegHO5Rrcqks313vT7MBVMV5Z/lslXHIJrzye31jEZfZ
	NZsZ0inOM/OElTTubMPb/zy2mbHgVH6BHqUiPxH8v442b8wb1m6FlFnpWIgr1qEZE4DKDBwUSipkk
	79Y5nhyBPsGTVQ4QCGJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegIW-0002mg-W0; Tue, 10 Dec 2019 14:15:33 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegIP-0002lW-G2
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:15:27 +0000
Received: from sntmail14r.snt-is.com (unknown [10.203.32.184])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id 2C77867A918;
 Tue, 10 Dec 2019 15:15:18 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail14r.snt-is.com
 (10.203.32.184) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 10 Dec
 2019 15:15:17 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Tue, 10 Dec 2019 15:15:17 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] arm64: dts: imx8mm: Add missing mux options for UART1 and
 UART2 signals
Thread-Topic: [PATCH] arm64: dts: imx8mm: Add missing mux options for UART1
 and UART2 signals
Thread-Index: AQHVr2Q/ATuBSnMk+E+vlzmoNWKRXQ==
Date: Tue, 10 Dec 2019 14:15:17 +0000
Message-ID: <20191210141516.6983-1-frieder.schrempf@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 2C77867A918.A01D5
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: devicetree@vger.kernel.org, festevam@gmail.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-imx@nxp.com, linux-kernel@vger.kernel.org,
 s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_061525_866895_6FC77190 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Frieder Schrempf <frieder.schrempf@kontron.de>

According to the reference manual and the "Pins Tool" from NXP, the
signals for UART1 and UART2 can be muxed to the SAI2 and SAI3 pads
respectively. Let's add the missing options.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h b/arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h
index cffa8991880d..5ccc4cc91959 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h
+++ b/arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h
@@ -430,18 +430,26 @@
 #define MX8MM_IOMUXC_SAI1_MCLK_SIM_M_HRESP                                  0x1AC 0x414 0x000 0x7 0x0
 #define MX8MM_IOMUXC_SAI2_RXFS_SAI2_RX_SYNC                                 0x1B0 0x418 0x000 0x0 0x0
 #define MX8MM_IOMUXC_SAI2_RXFS_SAI5_TX_SYNC                                 0x1B0 0x418 0x4EC 0x1 0x2
+#define MX8MM_IOMUXC_SAI2_RXFS_UART1_DCE_TX                                 0x1B0 0x418 0x000 0x4 0x0
+#define MX8MM_IOMUXC_SAI2_RXFS_UART1_DTE_RX                                 0x1B0 0x418 0x4F4 0x4 0x2
 #define MX8MM_IOMUXC_SAI2_RXFS_GPIO4_IO21                                   0x1B0 0x418 0x000 0x5 0x0
 #define MX8MM_IOMUXC_SAI2_RXFS_SIM_M_HSIZE0                                 0x1B0 0x418 0x000 0x7 0x0
 #define MX8MM_IOMUXC_SAI2_RXC_SAI2_RX_BCLK                                  0x1B4 0x41C 0x000 0x0 0x0
 #define MX8MM_IOMUXC_SAI2_RXC_SAI5_TX_BCLK                                  0x1B4 0x41C 0x4E8 0x1 0x2
+#define MX8MM_IOMUXC_SAI2_RXC_UART1_DCE_RX                                  0x1B4 0x41C 0x4F4 0x4 0x3
+#define MX8MM_IOMUXC_SAI2_RXC_UART1_DTE_TX                                  0x1B4 0x41C 0x000 0x4 0x0
 #define MX8MM_IOMUXC_SAI2_RXC_GPIO4_IO22                                    0x1B4 0x41C 0x000 0x5 0x0
 #define MX8MM_IOMUXC_SAI2_RXC_SIM_M_HSIZE1                                  0x1B4 0x41C 0x000 0x7 0x0
 #define MX8MM_IOMUXC_SAI2_RXD0_SAI2_RX_DATA0                                0x1B8 0x420 0x000 0x0 0x0
 #define MX8MM_IOMUXC_SAI2_RXD0_SAI5_TX_DATA0                                0x1B8 0x420 0x000 0x1 0x0
+#define MX8MM_IOMUXC_SAI2_RXD0_UART1_DCE_RTS_B                              0x1B8 0x420 0x4F0 0x4 0x2
+#define MX8MM_IOMUXC_SAI2_RXD0_UART1_DTE_CTS_B                              0x1B8 0x420 0x000 0x4 0x0
 #define MX8MM_IOMUXC_SAI2_RXD0_GPIO4_IO23                                   0x1B8 0x420 0x000 0x5 0x0
 #define MX8MM_IOMUXC_SAI2_RXD0_SIM_M_HSIZE2                                 0x1B8 0x420 0x000 0x7 0x0
 #define MX8MM_IOMUXC_SAI2_TXFS_SAI2_TX_SYNC                                 0x1BC 0x424 0x000 0x0 0x0
 #define MX8MM_IOMUXC_SAI2_TXFS_SAI5_TX_DATA1                                0x1BC 0x424 0x000 0x1 0x0
+#define MX8MM_IOMUXC_SAI2_TXFS_UART1_DCE_CTS_B                              0x1BC 0x424 0x000 0x4 0x0
+#define MX8MM_IOMUXC_SAI2_TXFS_UART1_DTE_RTS_B                              0x1BC 0x424 0x4F0 0x4 0x3
 #define MX8MM_IOMUXC_SAI2_TXFS_GPIO4_IO24                                   0x1BC 0x424 0x000 0x5 0x0
 #define MX8MM_IOMUXC_SAI2_TXFS_SIM_M_HWRITE                                 0x1BC 0x424 0x000 0x7 0x0
 #define MX8MM_IOMUXC_SAI2_TXC_SAI2_TX_BCLK                                  0x1C0 0x428 0x000 0x0 0x0
@@ -464,21 +472,29 @@
 #define MX8MM_IOMUXC_SAI3_RXC_SAI3_RX_BCLK                                  0x1D0 0x438 0x000 0x0 0x0
 #define MX8MM_IOMUXC_SAI3_RXC_GPT1_CLK                                      0x1D0 0x438 0x000 0x1 0x0
 #define MX8MM_IOMUXC_SAI3_RXC_SAI5_RX_BCLK                                  0x1D0 0x438 0x4D0 0x2 0x2
+#define MX8MM_IOMUXC_SAI3_RXC_UART2_DCE_CTS_B                               0x1D0 0x438 0x000 0x4 0x0
+#define MX8MM_IOMUXC_SAI3_RXC_UART2_DTE_RTS_B                               0x1D0 0x438 0x4F8 0x4 0x2
 #define MX8MM_IOMUXC_SAI3_RXC_GPIO4_IO29                                    0x1D0 0x438 0x000 0x5 0x0
 #define MX8MM_IOMUXC_SAI3_RXC_TPSMP_HTRANS1                                 0x1D0 0x438 0x000 0x7 0x0
 #define MX8MM_IOMUXC_SAI3_RXD_SAI3_RX_DATA0                                 0x1D4 0x43C 0x000 0x0 0x0
 #define MX8MM_IOMUXC_SAI3_RXD_GPT1_COMPARE1                                 0x1D4 0x43C 0x000 0x1 0x0
 #define MX8MM_IOMUXC_SAI3_RXD_SAI5_RX_DATA0                                 0x1D4 0x43C 0x4D4 0x2 0x2
+#define MX8MM_IOMUXC_SAI3_RXD_UART2_DCE_RTS_B                               0x1D4 0x43C 0x4F8 0x4 0x3
+#define MX8MM_IOMUXC_SAI3_RXD_UART2_DTE_CTS_B                               0x1D4 0x43C 0x000 0x4 0x0
 #define MX8MM_IOMUXC_SAI3_RXD_GPIO4_IO30                                    0x1D4 0x43C 0x000 0x5 0x0
 #define MX8MM_IOMUXC_SAI3_RXD_TPSMP_HDATA0                                  0x1D4 0x43C 0x000 0x7 0x0
 #define MX8MM_IOMUXC_SAI3_TXFS_SAI3_TX_SYNC                                 0x1D8 0x440 0x000 0x0 0x0
 #define MX8MM_IOMUXC_SAI3_TXFS_GPT1_CAPTURE2                                0x1D8 0x440 0x000 0x1 0x0
 #define MX8MM_IOMUXC_SAI3_TXFS_SAI5_RX_DATA1                                0x1D8 0x440 0x4D8 0x2 0x2
+#define MX8MM_IOMUXC_SAI3_TXFS_UART2_DCE_RX                                 0x1D8 0x440 0x4Fc 0x4 0x2
+#define MX8MM_IOMUXC_SAI3_TXFS_UART2_DTE_TX                                 0x1D8 0x440 0x000 0x4 0x0
 #define MX8MM_IOMUXC_SAI3_TXFS_GPIO4_IO31                                   0x1D8 0x440 0x000 0x5 0x0
 #define MX8MM_IOMUXC_SAI3_TXFS_TPSMP_HDATA1                                 0x1D8 0x440 0x000 0x7 0x0
 #define MX8MM_IOMUXC_SAI3_TXC_SAI3_TX_BCLK                                  0x1DC 0x444 0x000 0x0 0x0
 #define MX8MM_IOMUXC_SAI3_TXC_GPT1_COMPARE2                                 0x1DC 0x444 0x000 0x1 0x0
 #define MX8MM_IOMUXC_SAI3_TXC_SAI5_RX_DATA2                                 0x1DC 0x444 0x4DC 0x2 0x2
+#define MX8MM_IOMUXC_SAI3_TXC_UART2_DCE_TX                                  0x1DC 0x444 0x000 0x4 0x0
+#define MX8MM_IOMUXC_SAI3_TXC_UART2_DTE_RX                                  0x1DC 0x444 0x4Fc 0x4 0x3
 #define MX8MM_IOMUXC_SAI3_TXC_GPIO5_IO0                                     0x1DC 0x444 0x000 0x5 0x0
 #define MX8MM_IOMUXC_SAI3_TXC_TPSMP_HDATA2                                  0x1DC 0x444 0x000 0x7 0x0
 #define MX8MM_IOMUXC_SAI3_TXD_SAI3_TX_DATA0                                 0x1E0 0x448 0x000 0x0 0x0
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
