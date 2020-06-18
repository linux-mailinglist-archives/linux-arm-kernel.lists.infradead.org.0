Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5381FEB5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 08:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=El9fIsiykFvNai3SuMhVL0yQL6xo0VqEkeJqb+kLVKw=; b=dO2WLYZgJzgzU6
	i17ZbEkLOlKMQfdVtbxQW52PNvGmwUqBg5MisrG5pIQaXPdSNHRtE7AydrbPwqncWJGn8ETo9eXDt
	ypbXjMQK64mpfDxmyvRuYuG9BRu72fpsQnw8KPuwJAswbhSMcAxVXTZcXZRIyZ/AQTSaKRBVmCkxI
	iiDFCWjI1oZdVKCJfe3XPq6VcOM83oJSr3tt5arNJYm60snv5Fvd7bmMBNmScbeFpKvfllBKQW+vf
	jQCYkAE/s/0demLyu7PmGpHbtFuieaagGYCenvoLMlOlTPSykRVFTIC+smaVoMsBnoRH5oBY4MZIE
	nFaLusZOBcJxRGmYL9oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlnq8-00007j-B9; Thu, 18 Jun 2020 06:15:56 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlnpI-0005eR-Vp
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 06:15:08 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 67F3E200C1E;
 Thu, 18 Jun 2020 08:15:01 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 97C66200068;
 Thu, 18 Jun 2020 08:14:57 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id F302440302;
 Thu, 18 Jun 2020 14:14:51 +0800 (SGT)
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/5] ARM: dts: imx6sx: Enable ASRC device
Date: Thu, 18 Jun 2020 14:03:45 +0800
Message-Id: <b3935b4ab4590be4880f4f16fdcfaf0d7e0bbdd9.1592460381.git.shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1592460381.git.shengjiu.wang@nxp.com>
References: <cover.1592460381.git.shengjiu.wang@nxp.com>
In-Reply-To: <cover.1592460381.git.shengjiu.wang@nxp.com>
References: <cover.1592460381.git.shengjiu.wang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_231505_176629_C1BB74A4 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible string, update the clock table,
add fsl,asrc-rate and fsl,asrc-width property.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 arch/arm/boot/dts/imx6sx.dtsi | 26 ++++++++++++++++++--------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index 94e3df47d1ad..7d4856ffd239 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -390,18 +390,28 @@
 				};
 
 				asrc: asrc@2034000 {
+					compatible = "fsl,imx6sx-asrc", "fsl,imx53-asrc";
 					reg = <0x02034000 0x4000>;
 					interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
-					clocks = <&clks IMX6SX_CLK_ASRC_MEM>,
-						 <&clks IMX6SX_CLK_ASRC_IPG>,
-						 <&clks IMX6SX_CLK_SPDIF>,
-						 <&clks IMX6SX_CLK_SPBA>;
-					clock-names = "mem", "ipg", "asrck", "spba";
-					dmas = <&sdma 17 20 1>, <&sdma 18 20 1>,
-					       <&sdma 19 20 1>, <&sdma 20 20 1>,
-					       <&sdma 21 20 1>, <&sdma 22 20 1>;
+					clocks = <&clks IMX6SX_CLK_ASRC_IPG>,
+						<&clks IMX6SX_CLK_ASRC_MEM>, <&clks 0>,
+						<&clks 0>, <&clks 0>, <&clks 0>, <&clks 0>,
+						<&clks 0>, <&clks 0>, <&clks 0>, <&clks 0>,
+						<&clks 0>, <&clks 0>, <&clks 0>, <&clks 0>,
+						<&clks IMX6SX_CLK_SPDIF>, <&clks 0>, <&clks 0>,
+						<&clks IMX6SX_CLK_SPBA>;
+					clock-names = "mem", "ipg", "asrck_0",
+						"asrck_1", "asrck_2", "asrck_3", "asrck_4",
+						"asrck_5", "asrck_6", "asrck_7", "asrck_8",
+						"asrck_9", "asrck_a", "asrck_b", "asrck_c",
+						"asrck_d", "asrck_e", "asrck_f", "spba";
+					dmas = <&sdma 17 23 1>, <&sdma 18 23 1>,
+					       <&sdma 19 23 1>, <&sdma 20 23 1>,
+					       <&sdma 21 23 1>, <&sdma 22 23 1>;
 					dma-names = "rxa", "rxb", "rxc",
 						    "txa", "txb", "txc";
+					fsl,asrc-rate  = <48000>;
+					fsl,asrc-width = <16>;
 					status = "okay";
 				};
 			};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
