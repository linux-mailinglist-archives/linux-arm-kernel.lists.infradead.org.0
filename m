Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFA6562FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 09:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8sFZZaGJG2xObD208R3HUCXECSxDvu9SUlZOveP/HY=; b=j9kRT/UWJ4XKe7
	bXL5ATI8mFpEq5qjVLuyf+KwOsw3nr+0L3wj4U71tbPcyMkbkSswTdA9t6EcQAQiD/hCBzfYvtoxd
	9QAVnJFJvKuaQABlIX80qGylpmE5VUS1wT+/BaWre+OEuFo5dg0gdmGmNO29kZ4xTXAgVcVC9zCgB
	Cqid1TRGyOgp9vUk9L6IyZBFpuNZRn4xFKGtOvuJvbELPi8PnPQntnjKxaJNRfCY5LbFbegOGgx5X
	6LRwBXWP2RHguA464QFqqTpnMVXhZYo5E0/4CvATJjFjjVpwetgcNUIy6eTlVA+Yfnr+KnypmaaXd
	PJeGgv89jQg1AlcMbY+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg2Ag-0006iY-Rc; Wed, 26 Jun 2019 07:16:46 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg29m-0006JK-NN
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 07:15:52 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0CD2A1C13;
 Wed, 26 Jun 2019 03:15:50 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 26 Jun 2019 03:15:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=Xn5jEWH3WUn5N
 3Mw6ECR57mi5B3eKYvSEifcbPw1LRk=; b=IOIsMfw6/+INj+fpWKZM62+PC5MSk
 sqP4wrEEbxvrepyiYll+9cDs2bwNojo71ZbomVWUhsf317Tpr8h76okf7Ug04kOK
 tfOPGXCNNWigOO6F18VkNMyisPb6jywjJ0hNgm3B3ANh5bqcoG+vA9wZb/jsxZD1
 PGhtQQdCt7zxGOD/xNMZmSLrtq2zGaHYN+LEK2ZKieXdGF0o9b4GUtGNAzjSLM2B
 9o49qvksK6WWD2ZT6b4cC0Tg0KoovrvSr9hTKVb18peWfb8k52fjduvCWA0p4BC5
 Qhr3Pg7bONjPHE7FT675ALTClPNQV171fdF0kIkm05wdKim8pRVHGO+Yg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=Xn5jEWH3WUn5N3Mw6ECR57mi5B3eKYvSEifcbPw1LRk=; b=SHP37qXG
 H2fIX+Zin2XYEuXNf0Dwzw7CfVKxTJx3JKbZ5V3Uj3Y6/d896Rzha8yeUsPS8/qm
 TJUqJ7oLRg2v3/vbmdSwkl0sc/gY90iOK5MjiL4JDEc6tLYH7ZXPAUdL4MXg98Rc
 9AsXPCKAB6V+6wMVEa+0BDU2lQXKflGkOcbl/+BgGFocj5t3+RBUfgfxXEABQfGj
 Uun28yxZYmWNXiOuxAfC64U70csbes0iroVAy2XeaznQeg8ycMqzt5/BJoJfQ1Uw
 PF0CbYBcQr2gGnRNwCmbKtr6mfjmwwJ6xYEPVdX6ucsVMyvhje394afbAiraC/SR
 0tE/YAUUMHiZ3g==
X-ME-Sender: <xms:pRsTXSL0PU4MQ-pXgn_SLPlbXuEdDoV5CWurXotp81ulXQZCMdsHtw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudehgdduudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdrohhrghenucfkph
 epvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgv
 fiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:pRsTXSbJjPMwYPljS02p18g46HRmLLRjwbWzfBCxViGZJpWfNSskWw>
 <xmx:pRsTXYkZj5CXpcUqMPdKSURaViGBwDgMX1rmGy-B0-DUV4tJJjDHLg>
 <xmx:pRsTXZERhfH-PGTezMrNXIQ6lRPCMAEj58XTRpmA8cEdsnn2HKIcUQ>
 <xmx:phsTXc4PYHgW2AeF3MTLKWzTBWPT5-GF7Za-21Sv9_aS_IqJK9M2gA>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2836C380076;
 Wed, 26 Jun 2019 03:15:45 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 2/8] dt-bindings: pinctrl: aspeed: Convert AST2400 bindings to
 json-schema
Date: Wed, 26 Jun 2019 16:44:24 +0930
Message-Id: <20190626071430.28556-3-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626071430.28556-1-andrew@aj.id.au>
References: <20190626071430.28556-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_001550_951027_2C9342EB 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ryan_chen@aspeedtech.com,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, openbmc@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert ASPEED pinctrl bindings to DT schema format using json-schema

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 .../pinctrl/aspeed,ast2400-pinctrl.txt        | 80 -------------------
 .../pinctrl/aspeed,ast2400-pinctrl.yaml       | 73 +++++++++++++++++
 2 files changed, 73 insertions(+), 80 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
 create mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
deleted file mode 100644
index 67e0325ccf2e..000000000000
--- a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
+++ /dev/null
@@ -1,80 +0,0 @@
-=============================
-Aspeed AST2400 Pin Controller
-=============================
-
-Required properties for the AST2400:
-- compatible : 			Should be one of the following:
-				"aspeed,ast2400-pinctrl"
-				"aspeed,g4-pinctrl"
-
-The pin controller node should be the child of a syscon node with the required
-property:
-
-- compatible : 		Should be one of the following:
-			"aspeed,ast2400-scu", "syscon", "simple-mfd"
-			"aspeed,g4-scu", "syscon", "simple-mfd"
-
-Refer to the the bindings described in
-Documentation/devicetree/bindings/mfd/syscon.txt
-
-Subnode Format
-==============
-
-The required properties of pinmux child nodes are:
-- function: the mux function to select
-- groups  : the list of groups to select with this function
-
-Required properties of pinconf child nodes are:
-- groups: A list of groups to select (either this or "pins" must be
-          specified)
-- pins  : A list of ball names as strings, eg "D14" (either this or "groups"
-          must be specified)
-
-Optional properties of pinconf child nodes are:
-- bias-disable  : disable any pin bias
-- bias-pull-down: pull down the pin
-- drive-strength: sink or source at most X mA
-
-Definitions are as specified in
-Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt, with any
-further limitations as described above.
-
-For pinmux, each mux function has only one associated pin group. Each group is
-named by its function. The following values for the function and groups
-properties are supported:
-
-ACPI ADC0 ADC1 ADC10 ADC11 ADC12 ADC13 ADC14 ADC15 ADC2 ADC3 ADC4 ADC5 ADC6
-ADC7 ADC8 ADC9 BMCINT DDCCLK DDCDAT EXTRST FLACK FLBUSY FLWP GPID GPID0 GPID2
-GPID4 GPID6 GPIE0 GPIE2 GPIE4 GPIE6 I2C10 I2C11 I2C12 I2C13 I2C14 I2C3 I2C4
-I2C5 I2C6 I2C7 I2C8 I2C9 LPCPD LPCPME LPCRST LPCSMI MAC1LINK MAC2LINK MDIO1
-MDIO2 NCTS1 NCTS2 NCTS3 NCTS4 NDCD1 NDCD2 NDCD3 NDCD4 NDSR1 NDSR2 NDSR3 NDSR4
-NDTR1 NDTR2 NDTR3 NDTR4 NDTS4 NRI1 NRI2 NRI3 NRI4 NRTS1 NRTS2 NRTS3 OSCCLK PWM0
-PWM1 PWM2 PWM3 PWM4 PWM5 PWM6 PWM7 RGMII1 RGMII2 RMII1 RMII2 ROM16 ROM8 ROMCS1
-ROMCS2 ROMCS3 ROMCS4 RXD1 RXD2 RXD3 RXD4 SALT1 SALT2 SALT3 SALT4 SD1 SD2 SGPMCK
-SGPMI SGPMLD SGPMO SGPSCK SGPSI0 SGPSI1 SGPSLD SIOONCTRL SIOPBI SIOPBO SIOPWREQ
-SIOPWRGD SIOS3 SIOS5 SIOSCI SPI1 SPI1DEBUG SPI1PASSTHRU SPICS1 TIMER3 TIMER4
-TIMER5 TIMER6 TIMER7 TIMER8 TXD1 TXD2 TXD3 TXD4 UART6 USB11D1 USB11H2 USB2D1
-USB2H1 USBCKI VGABIOS_ROM VGAHS VGAVS VPI18 VPI24 VPI30 VPO12 VPO24 WDTRST1
-WDTRST2
-
-Example
-=======
-
-syscon: scu@1e6e2000 {
-	compatible = "aspeed,ast2400-scu", "syscon", "simple-mfd";
-	reg = <0x1e6e2000 0x1a8>;
-
-	pinctrl: pinctrl {
-		compatible = "aspeed,g4-pinctrl";
-
-		pinctrl_i2c3_default: i2c3_default {
-			function = "I2C3";
-			groups = "I2C3";
-		};
-
-		pinctrl_gpioh0_unbiased_default: gpioh0 {
-			pins = "A8";
-			bias-disable;
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
new file mode 100644
index 000000000000..3b8cf3e51506
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: GPL-2.0+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/aspeed,ast2400-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ASPEED AST2400 Pin Controller
+
+maintainers:
+  - Andrew Jeffery <andrew@aj.id.au>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+        - enum:
+          - aspeed,ast2400-pinctrl
+      - items:
+        - enum:
+          - aspeed,g4-pinctrl
+
+required:
+  - compatible
+
+description: |+
+  The pin controller node should be the child of a syscon node with the
+  required property:
+
+  - compatible:     Should be one of the following:
+                    "aspeed,ast2400-scu", "syscon", "simple-mfd"
+                    "aspeed,g4-scu", "syscon", "simple-mfd"
+
+  Refer to the the bindings described in
+  Documentation/devicetree/bindings/mfd/syscon.txt
+
+  For the AST2400 pinmux, each mux function has only one associated pin group.
+  Each group is named by its function. The following values for the function
+  and groups properties are supported:
+
+  ACPI ADC0 ADC1 ADC10 ADC11 ADC12 ADC13 ADC14 ADC15 ADC2 ADC3 ADC4 ADC5 ADC6
+  ADC7 ADC8 ADC9 BMCINT DDCCLK DDCDAT EXTRST FLACK FLBUSY FLWP GPID GPID0 GPID2
+  GPID4 GPID6 GPIE0 GPIE2 GPIE4 GPIE6 I2C10 I2C11 I2C12 I2C13 I2C14 I2C3 I2C4
+  I2C5 I2C6 I2C7 I2C8 I2C9 LPCPD LPCPME LPCRST LPCSMI MAC1LINK MAC2LINK MDIO1
+  MDIO2 NCTS1 NCTS2 NCTS3 NCTS4 NDCD1 NDCD2 NDCD3 NDCD4 NDSR1 NDSR2 NDSR3 NDSR4
+  NDTR1 NDTR2 NDTR3 NDTR4 NDTS4 NRI1 NRI2 NRI3 NRI4 NRTS1 NRTS2 NRTS3 OSCCLK
+  PWM0 PWM1 PWM2 PWM3 PWM4 PWM5 PWM6 PWM7 RGMII1 RGMII2 RMII1 RMII2 ROM16 ROM8
+  ROMCS1 ROMCS2 ROMCS3 ROMCS4 RXD1 RXD2 RXD3 RXD4 SALT1 SALT2 SALT3 SALT4 SD1
+  SD2 SGPMCK SGPMI SGPMLD SGPMO SGPSCK SGPSI0 SGPSI1 SGPSLD SIOONCTRL SIOPBI
+  SIOPBO SIOPWREQ SIOPWRGD SIOS3 SIOS5 SIOSCI SPI1 SPI1DEBUG SPI1PASSTHRU
+  SPICS1 TIMER3 TIMER4 TIMER5 TIMER6 TIMER7 TIMER8 TXD1 TXD2 TXD3 TXD4 UART6
+  USB11D1 USB11H2 USB2D1 USB2H1 USBCKI VGABIOS_ROM VGAHS VGAVS VPI18 VPI24
+  VPI30 VPO12 VPO24 WDTRST1 WDTRST2
+
+examples:
+  - |
+    syscon: scu@1e6e2000 {
+        compatible = "aspeed,ast2400-scu", "syscon", "simple-mfd";
+        reg = <0x1e6e2000 0x1a8>;
+
+        pinctrl: pinctrl {
+            compatible = "aspeed,g4-pinctrl";
+
+            pinctrl_i2c3_default: i2c3_default {
+                function = "I2C3";
+                groups = "I2C3";
+            };
+
+            pinctrl_gpioh0_unbiased_default: gpioh0 {
+                pins = "A8";
+                bias-disable;
+            };
+        };
+    };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
