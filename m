Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7F73B0A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 10:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tFM+zRJKVxl8daND0PFtwrbUMILkdfo/m/rLsXR5lpo=; b=i885jniHdFdhhUIGAlMjbjPIPF
	kXRgQaRmOZNvoz68a8IB1ohc/oDvuvCW71n27wLO0jUoSHp87ud3suXYUW+snW1WV+YgNetdKn7JE
	9EpY90xAxbs3OlL8BCiePVvzKaTP9guYkSOjvy5mXad7RqefFx8HZZV6pbtzr6zBiCR70hev9Llkl
	e395cGXe9pSNLvsosUHkv9lP6wrslhwg2ye1YPpWCqXBoE/pAF0NRYJr7vb5M4HzaaQCwlnpmivyg
	j+ajvnZBBM+ynxKIe11BOh10Dnk+a2xzGzhLLNVAGs6qE3WWvJZZYtXm1kyMkGABVF377bRgBiJY9
	m+2RCcsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFY9-0001WN-IN; Mon, 10 Jun 2019 08:21:05 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFTt-0005Ma-T0
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 08:16:43 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6C3FE1A07CA;
 Mon, 10 Jun 2019 10:16:40 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6A3ED1A07CF;
 Mon, 10 Jun 2019 10:16:32 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C699640324;
 Mon, 10 Jun 2019 16:16:22 +0800 (SGT)
From: yibin.gong@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, broonie@kernel.org,
 festevam@gmail.com, vkoul@kernel.org, dan.j.williams@intel.com,
 u.kleine-koenig@pengutronix.de, catalin.marinas@arm.com,
 l.stach@pengutronix.de, will.deacon@arm.com
Subject: [PATCH v5 12/15] ARM: dts: imx6ul: add dma support on ecspi
Date: Mon, 10 Jun 2019 16:17:50 +0800
Message-Id: <20190610081753.11422-13-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190610081753.11422-1-yibin.gong@nxp.com>
References: <20190610081753.11422-1-yibin.gong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_011642_137973_86485B28 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Gong <yibin.gong@nxp.com>

Add dma support on ecspi.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 arch/arm/boot/dts/imx6ul.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index fc388b8..4a34316 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -227,6 +227,8 @@
 					clocks = <&clks IMX6UL_CLK_ECSPI1>,
 						 <&clks IMX6UL_CLK_ECSPI1>;
 					clock-names = "ipg", "per";
+					dmas = <&sdma 3 7 1>, <&sdma 4 7 2>;
+					dma-names = "rx", "tx";
 					status = "disabled";
 				};
 
@@ -239,6 +241,8 @@
 					clocks = <&clks IMX6UL_CLK_ECSPI2>,
 						 <&clks IMX6UL_CLK_ECSPI2>;
 					clock-names = "ipg", "per";
+					dmas = <&sdma 5 7 1>, <&sdma 6 7 2>;
+					dma-names = "rx", "tx";
 					status = "disabled";
 				};
 
@@ -251,6 +255,8 @@
 					clocks = <&clks IMX6UL_CLK_ECSPI3>,
 						 <&clks IMX6UL_CLK_ECSPI3>;
 					clock-names = "ipg", "per";
+					dmas = <&sdma 7 7 1>, <&sdma 8 7 2>;
+					dma-names = "rx", "tx";
 					status = "disabled";
 				};
 
@@ -263,6 +269,8 @@
 					clocks = <&clks IMX6UL_CLK_ECSPI4>,
 						 <&clks IMX6UL_CLK_ECSPI4>;
 					clock-names = "ipg", "per";
+					dmas = <&sdma 9 7 1>, <&sdma 10 7 2>;
+					dma-names = "rx", "tx";
 					status = "disabled";
 				};
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
