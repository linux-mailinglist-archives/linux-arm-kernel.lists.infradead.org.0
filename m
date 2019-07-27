Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B807793B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 16:27:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7eqHNZjf1whnDxYsmOSt1l4mLa4tssib7s041fnLvxs=; b=GJz
	kLSIvGx1klyUHgCVmI7EkweiRE+2CJAqCtiCrdNwsQi9cNstci7HTZI/9JfpccP/KC3iGJtIrkdHX
	435a2wEbDfPGr9e2818lKI/r9MpYPj0ZKEtKpjCBe7RjT8puigZG/sGTJUU0shuGeBoaDYAzgNJWy
	3gnx55DuThcOHUsZQ8EcvKf8FS7tXu+vpdBWLsp2XmrhQnPrgY6VhXdgJ6iDV1hMENUkNWw0fzapu
	/uRkWh58jsimTE5jPyXaXRo6VIFZxS9YSTDBlUtNty5mZxKe5XA1VbAtJNnwWI0CmGYu7IJER9IlF
	u86R0EdXQzYze34SuE+7e1fRXQHXwrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrNff-0007pK-8m; Sat, 27 Jul 2019 14:27:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrNer-0007ou-QX
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 14:26:52 +0000
Received: from localhost.localdomain (unknown [194.230.155.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 84CE22084C;
 Sat, 27 Jul 2019 14:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564237609;
 bh=/eTzIMDjMIGp1wnb8WaIUMLlyUf7mAgRLeHFLheAv78=;
 h=From:To:Cc:Subject:Date:From;
 b=F1KzGryb+uzXvU1POY+lT/rl7lY61lzsaAYIyccu9dZbno7g/F11Tt5aBtL9EPXS0
 Wy6HPoXrNJEuPmMWbj/DT5tpH5zLuMVpvZkctdEtZvMKgWn3eo1+JlyrPRCbzg7ePr
 E22Z934D3wUsgNkJxJI+bcFfnuvz6zomlkTyMLFE=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: imx: Cleanup style around assignment operator
Date: Sat, 27 Jul 2019 16:26:40 +0200
Message-Id: <20190727142640.23014-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_072650_145218_199E2824 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use a space before and after assignment operator to have consistent
style.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/boot/dts/imx6sll.dtsi              |  4 ++--
 arch/arm/boot/dts/imx6sx.dtsi               |  4 ++--
 arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi |  2 +-
 arch/arm/boot/dts/imx6ul.dtsi               | 12 ++++++------
 arch/arm/boot/dts/imx7d.dtsi                |  4 ++--
 arch/arm/boot/dts/imx7s.dtsi                |  6 +++---
 arch/arm/boot/dts/imx7ulp.dtsi              |  8 ++++----
 7 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll.dtsi
index b0a77ff70b67..0a103a19dc0a 100644
--- a/arch/arm/boot/dts/imx6sll.dtsi
+++ b/arch/arm/boot/dts/imx6sll.dtsi
@@ -234,7 +234,7 @@
 					compatible = "fsl,imx6sl-uart", "fsl,imx6q-uart",
 						     "fsl,imx21-uart";
 					reg = <0x02018000 0x4000>;
-					interrupts =<GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
+					interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
 					dmas = <&sdma 31 4 0>, <&sdma 32 4 0>;
 					dma-names = "rx", "tx";
 					clocks = <&clks IMX6SLL_CLK_UART4_IPG>,
@@ -801,7 +801,7 @@
 				compatible = "fsl,imx6sll-uart", "fsl,imx6q-uart",
 					     "fsl,imx21-uart";
 				reg = <0x021f4000 0x4000>;
-				interrupts =<GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
 				dmas = <&sdma 33 4 0>, <&sdma 34 4 0>;
 				dma-names = "rx", "tx";
 				clocks = <&clks IMX6SLL_CLK_UART5_IPG>,
diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index bb25add90f19..b36f31b633d3 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -926,8 +926,8 @@
 					 <&clks IMX6SX_CLK_ENET_PTP>;
 				clock-names = "ipg", "ahb", "ptp",
 					      "enet_clk_ref", "enet_out";
-				fsl,num-tx-queues=<3>;
-				fsl,num-rx-queues=<3>;
+				fsl,num-tx-queues = <3>;
+				fsl,num-rx-queues = <3>;
 				status = "disabled";
 			};
 
diff --git a/arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi b/arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi
index fc2997449b49..a2fec095e2ab 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi
@@ -70,7 +70,7 @@
 
 &i2c1 {
 	pinctrl-names = "default";
-	pinctrl-0 =<&pinctrl_i2c1>;
+	pinctrl-0 = <&pinctrl_i2c1>;
 	clock-frequency = <100000>;
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index 81d4b4925127..ef6437198db1 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -510,8 +510,8 @@
 					 <&clks IMX6UL_CLK_ENET2_REF_125M>;
 				clock-names = "ipg", "ahb", "ptp",
 					      "enet_clk_ref", "enet_out";
-				fsl,num-tx-queues=<1>;
-				fsl,num-rx-queues=<1>;
+				fsl,num-tx-queues = <1>;
+				fsl,num-rx-queues = <1>;
 				status = "disabled";
 			};
 
@@ -845,8 +845,8 @@
 					 <&clks IMX6UL_CLK_ENET_REF>;
 				clock-names = "ipg", "ahb", "ptp",
 					      "enet_clk_ref", "enet_out";
-				fsl,num-tx-queues=<1>;
-				fsl,num-rx-queues=<1>;
+				fsl,num-tx-queues = <1>;
+				fsl,num-rx-queues = <1>;
 				status = "disabled";
 			};
 
@@ -858,7 +858,7 @@
 					 <&clks IMX6UL_CLK_USDHC1>,
 					 <&clks IMX6UL_CLK_USDHC1>;
 				clock-names = "ipg", "ahb", "per";
-				fsl,tuning-step= <2>;
+				fsl,tuning-step = <2>;
 				fsl,tuning-start-tap = <20>;
 				bus-width = <4>;
 				status = "disabled";
@@ -873,7 +873,7 @@
 					 <&clks IMX6UL_CLK_USDHC2>;
 				clock-names = "ipg", "ahb", "per";
 				bus-width = <4>;
-				fsl,tuning-step= <2>;
+				fsl,tuning-step = <2>;
 				fsl,tuning-start-tap = <20>;
 				status = "disabled";
 			};
diff --git a/arch/arm/boot/dts/imx7d.dtsi b/arch/arm/boot/dts/imx7d.dtsi
index 42528d2812a2..9c8dd32cc035 100644
--- a/arch/arm/boot/dts/imx7d.dtsi
+++ b/arch/arm/boot/dts/imx7d.dtsi
@@ -147,8 +147,8 @@
 			<&clks IMX7D_ENET_PHY_REF_ROOT_CLK>;
 		clock-names = "ipg", "ahb", "ptp",
 			"enet_clk_ref", "enet_out";
-		fsl,num-tx-queues=<3>;
-		fsl,num-rx-queues=<3>;
+		fsl,num-tx-queues = <3>;
+		fsl,num-rx-queues = <3>;
 		status = "disabled";
 	};
 
diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index c1a4fff5ceda..710f850e785c 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -151,7 +151,7 @@
 		compatible = "fsl,imx7d-tempmon";
 		interrupt-parent = <&gpc>;
 		interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
-		fsl,tempmon =<&anatop>;
+		fsl,tempmon = <&anatop>;
 		nvmem-cells = <&tempmon_calib>,
 			<&tempmon_temp_grade>;
 		nvmem-cell-names = "calib", "temp_grade";
@@ -1184,8 +1184,8 @@
 					<&clks IMX7D_ENET_PHY_REF_ROOT_CLK>;
 				clock-names = "ipg", "ahb", "ptp",
 					"enet_clk_ref", "enet_out";
-				fsl,num-tx-queues=<3>;
-				fsl,num-rx-queues=<3>;
+				fsl,num-tx-queues = <3>;
+				fsl,num-rx-queues = <3>;
 				status = "disabled";
 			};
 		};
diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index 992747a57442..ddab7c42b955 100644
--- a/arch/arm/boot/dts/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/imx7ulp.dtsi
@@ -201,12 +201,12 @@
 			clocks = <&scg1 IMX7ULP_CLK_NIC1_BUS_DIV>,
 				 <&scg1 IMX7ULP_CLK_NIC1_DIV>,
 				 <&pcc2 IMX7ULP_CLK_USDHC0>;
-			clock-names ="ipg", "ahb", "per";
+			clock-names = "ipg", "ahb", "per";
 			assigned-clocks = <&pcc2 IMX7ULP_CLK_USDHC0>;
 			assigned-clock-parents = <&scg1 IMX7ULP_CLK_NIC1_DIV>;
 			bus-width = <4>;
 			fsl,tuning-start-tap = <20>;
-			fsl,tuning-step= <2>;
+			fsl,tuning-step = <2>;
 			status = "disabled";
 		};
 
@@ -217,12 +217,12 @@
 			clocks = <&scg1 IMX7ULP_CLK_NIC1_BUS_DIV>,
 				 <&scg1 IMX7ULP_CLK_NIC1_DIV>,
 				 <&pcc2 IMX7ULP_CLK_USDHC1>;
-			clock-names ="ipg", "ahb", "per";
+			clock-names = "ipg", "ahb", "per";
 			assigned-clocks = <&pcc2 IMX7ULP_CLK_USDHC1>;
 			assigned-clock-parents = <&scg1 IMX7ULP_CLK_NIC1_DIV>;
 			bus-width = <4>;
 			fsl,tuning-start-tap = <20>;
-			fsl,tuning-step= <2>;
+			fsl,tuning-step = <2>;
 			status = "disabled";
 		};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
