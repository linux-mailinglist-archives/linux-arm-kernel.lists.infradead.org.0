Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6632F56304
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 09:17:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wn7qXoJDLN0LWcMSCUfyUdmzA4698UNYfSWpyCgj4Mg=; b=a5/DnraieKilr9
	NuD7DvbOnxFgXC6lejUPMCKqfRUuiUdH0EEJQMwmaY0YzXwJhIUWJ30tGAK1ywXDC8IhPhHQcDLH+
	oBY7KrB0VIt2z6VHONNPD51AkUK+f4gXcpA96x/OQHNku4Dym6IP760ksIDbN/pCLjUr6hD71JF7F
	aUeIjfAyEHqfzU5PdHUJ+m0ljOSaemLzPX3DMAYmstD58bTfOFhxkzKzwj7EgqBadP0aa+mHkqiT9
	ELVgaUigGfKeJwhETHry9e/CCiVB22b7AOItLg9B94FZgtTQxzI5PHc9rTQb5zUwYrSQUR3IT8Ml2
	PeH25dreaE5BvvsLwPMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg2BG-00075d-AP; Wed, 26 Jun 2019 07:17:22 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg29r-0006ND-4j
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 07:15:57 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 64A061C2F;
 Wed, 26 Jun 2019 03:15:54 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 26 Jun 2019 03:15:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=oz9nzXXJtXOsj
 DawosTjQOYjxymW8TyIxLOQSIxaK8s=; b=J6oz/6pfAD3HJ+N8+aMVfCPqjmywY
 OxjSeDBP8ITwwW8un3lsQaCu7t+PH0LaPaPHVebs/Vrakz7IPb/2FIEjCZjVs+xI
 /JOI3byihkuA1tyHAmLm/BrTOaiDbc7e80Hvwbs4S+CFfvl2SN90vI4Of9/cWTL+
 Zd1xFJmdbmhM4UhnFdimNhTLSFrTUyCATWAvcEgbxxwtI8xhItPpWtw4XMPBHVWB
 +O6maLX2N/5EjpRruw1/jBQ1hjZqbxk4PUjwLRiaA9PeEcnR0ot0eS19M8xmCbh3
 plrUURZkIzkLndcwe9Lx7z8WtFdPtyezWHvGWUiMC0cEdM4AyfVVKpbuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=oz9nzXXJtXOsjDawosTjQOYjxymW8TyIxLOQSIxaK8s=; b=xXS1MKRd
 gZ1ZQeznjCBd0r6gfIDhCIV/wGywd26pRjqx4cxGMTK8Ei1CR5I7haDSNUMIC30d
 xRUFxW1OoSN/FbDjXQMgjyMc+v7N595Echtyo74Eh0ZaqllNzAgeWKqWvLF4EdK5
 nLR39x2uCp+6AUfnCy0Y1pZZoJdVOqfAsdroE+MtfGvZrooyP2pMNdulimbgzrGO
 HdMXJ/HXhEG0zV4/u3HAIS7rIHZWR9rMPwqqvA+k2msT/OmqB6cmA6/LAZ+C/eFG
 vdXl2lC20j0PMqgq0dl+sttw3fVcOuoFLSzjktfiNqk2GYXOvNaNsEJVYgF4T08z
 1dTt3WwwxY1HGw==
X-ME-Sender: <xms:qhsTXd_SCN1XE7M1OqtmppqIOZJppIb_68AyJxyAeeg89-thL1GBeg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudehgdduudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdrohhrghenucfkph
 epvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgv
 fiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgepud
X-ME-Proxy: <xmx:qhsTXQweM2CkI2WJXoReP2A6trHpQLW6j9vkWjoX1zMrJKDXhPn1XA>
 <xmx:qhsTXRNRX5Epn-tyffb-7cVF_Y4BDhmga5g69UQGyFvXCJnN-zugFg>
 <xmx:qhsTXd-02TRe8fSTQ7ZoqJUvQZAvfJQaaEgLkORkos3uKnu0BF_Y3g>
 <xmx:qhsTXae2LW3JGbI8R5iYDd8ub8wtjNPK5xetmGP49-npEOiAoZXfDA>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 41686380076;
 Wed, 26 Jun 2019 03:15:50 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 3/8] dt-bindings: pinctrl: aspeed: Convert AST2500 bindings to
 json-schema
Date: Wed, 26 Jun 2019 16:44:25 +0930
Message-Id: <20190626071430.28556-4-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626071430.28556-1-andrew@aj.id.au>
References: <20190626071430.28556-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_001555_381778_A3179191 
X-CRM114-Status: GOOD (  13.32  )
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

Convert ASPEED pinctrl bindings to DT schema format using json-schema.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 .../pinctrl/aspeed,ast2500-pinctrl.txt        | 119 -----------------
 .../pinctrl/aspeed,ast2500-pinctrl.yaml       | 124 ++++++++++++++++++
 2 files changed, 124 insertions(+), 119 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.txt
 create mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.txt
deleted file mode 100644
index 2f16e401338a..000000000000
--- a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.txt
+++ /dev/null
@@ -1,119 +0,0 @@
-=============================
-Aspeed AST2500 Pin Controller
-=============================
-
-Required properties for g5:
-- compatible : 			Should be one of the following:
-				"aspeed,ast2500-pinctrl"
-				"aspeed,g5-pinctrl"
-
-- aspeed,external-nodes:	A cell of phandles to external controller nodes:
-				0: compatible with "aspeed,ast2500-gfx", "syscon"
-				1: compatible with "aspeed,ast2500-lhc", "syscon"
-
-The pin controller node should be the child of a syscon node with the required
-property:
-
-- compatible : 		Should be one of the following:
-			"aspeed,ast2500-scu", "syscon", "simple-mfd"
-			"aspeed,g5-scu", "syscon", "simple-mfd"
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
-ADC7 ADC8 ADC9 BMCINT DDCCLK DDCDAT ESPI FWSPICS1 FWSPICS2 GPID0 GPID2 GPID4
-GPID6 GPIE0 GPIE2 GPIE4 GPIE6 I2C10 I2C11 I2C12 I2C13 I2C14 I2C3 I2C4 I2C5 I2C6
-I2C7 I2C8 I2C9 LAD0 LAD1 LAD2 LAD3 LCLK LFRAME LPCHC LPCPD LPCPLUS LPCPME
-LPCRST LPCSMI LSIRQ MAC1LINK MAC2LINK MDIO1 MDIO2 NCTS1 NCTS2 NCTS3 NCTS4 NDCD1
-NDCD2 NDCD3 NDCD4 NDSR1 NDSR2 NDSR3 NDSR4 NDTR1 NDTR2 NDTR3 NDTR4 NRI1 NRI2
-NRI3 NRI4 NRTS1 NRTS2 NRTS3 NRTS4 OSCCLK PEWAKE PNOR PWM0 PWM1 PWM2 PWM3 PWM4
-PWM5 PWM6 PWM7 RGMII1 RGMII2 RMII1 RMII2 RXD1 RXD2 RXD3 RXD4 SALT1 SALT10
-SALT11 SALT12 SALT13 SALT14 SALT2 SALT3 SALT4 SALT5 SALT6 SALT7 SALT8 SALT9
-SCL1 SCL2 SD1 SD2 SDA1 SDA2 SGPS1 SGPS2 SIOONCTRL SIOPBI SIOPBO SIOPWREQ
-SIOPWRGD SIOS3 SIOS5 SIOSCI SPI1 SPI1CS1 SPI1DEBUG SPI1PASSTHRU SPI2CK SPI2CS0
-SPI2CS1 SPI2MISO SPI2MOSI TIMER3 TIMER4 TIMER5 TIMER6 TIMER7 TIMER8 TXD1 TXD2
-TXD3 TXD4 UART6 USB11BHID USB2AD USB2AH USB2BD USB2BH USBCKI VGABIOSROM VGAHS
-VGAVS VPI24 VPO WDTRST1 WDTRST2
-
-Example
-=======
-
-ahb {
-	apb {
-		syscon: scu@1e6e2000 {
-			compatible = "aspeed,ast2500-scu", "syscon", "simple-mfd";
-			reg = <0x1e6e2000 0x1a8>;
-
-			pinctrl: pinctrl {
-				compatible = "aspeed,g5-pinctrl";
-				aspeed,external-nodes = <&gfx &lhc>;
-
-				pinctrl_i2c3_default: i2c3_default {
-					function = "I2C3";
-					groups = "I2C3";
-				};
-
-				pinctrl_gpioh0_unbiased_default: gpioh0 {
-					pins = "A18";
-					bias-disable;
-				};
-			};
-		};
-
-		gfx: display@1e6e6000 {
-			compatible = "aspeed,ast2500-gfx", "syscon";
-			reg = <0x1e6e6000 0x1000>;
-		};
-	};
-
-	lpc: lpc@1e789000 {
-		compatible = "aspeed,ast2500-lpc", "simple-mfd";
-		reg = <0x1e789000 0x1000>;
-
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0x0 0x1e789000 0x1000>;
-
-		lpc_host: lpc-host@80 {
-			compatible = "aspeed,ast2500-lpc-host", "simple-mfd", "syscon";
-			reg = <0x80 0x1e0>;
-			reg-io-width = <4>;
-
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges = <0x0 0x80 0x1e0>;
-
-			lhc: lhc@20 {
-			       compatible = "aspeed,ast2500-lhc";
-			       reg = <0x20 0x24 0x48 0x8>;
-			};
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
new file mode 100644
index 000000000000..bf4d1e3bb23d
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
@@ -0,0 +1,124 @@
+# SPDX-License-Identifier: GPL-2.0+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/aspeed,ast2500-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ASPEED AST2500 Pin Controller
+
+maintainers:
+  - Andrew Jeffery <andrew@aj.id.au>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+        - enum:
+          - aspeed,ast2500-pinctrl
+      - items:
+        - enum:
+          - aspeed,g5-pinctrl
+  aspeed,external-nodes:
+    minItems: 2
+    maxItems: 2
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: |
+      A cell of phandles to external controller nodes:
+      0: compatible with "aspeed,ast2500-gfx", "syscon"
+      1: compatible with "aspeed,ast2500-lhc", "syscon"
+
+required:
+  - compatible
+  - aspeed,external-nodes
+
+description: |+
+  The pin controller node should be the child of a syscon node with the required
+  property:
+
+  - compatible: 	Should be one of the following:
+  			"aspeed,ast2500-scu", "syscon", "simple-mfd"
+  			"aspeed,g5-scu", "syscon", "simple-mfd"
+
+  Refer to the the bindings described in
+  Documentation/devicetree/bindings/mfd/syscon.txt
+
+  For the AST2500 pinmux, each mux function has only one associated pin group.
+  Each group is named by its function. The following values for the function
+  and groups properties are supported:
+
+  ACPI ADC0 ADC1 ADC10 ADC11 ADC12 ADC13 ADC14 ADC15 ADC2 ADC3 ADC4 ADC5 ADC6
+  ADC7 ADC8 ADC9 BMCINT DDCCLK DDCDAT ESPI FWSPICS1 FWSPICS2 GPID0 GPID2 GPID4
+  GPID6 GPIE0 GPIE2 GPIE4 GPIE6 I2C10 I2C11 I2C12 I2C13 I2C14 I2C3 I2C4 I2C5
+  I2C6 I2C7 I2C8 I2C9 LAD0 LAD1 LAD2 LAD3 LCLK LFRAME LPCHC LPCPD LPCPLUS
+  LPCPME LPCRST LPCSMI LSIRQ MAC1LINK MAC2LINK MDIO1 MDIO2 NCTS1 NCTS2 NCTS3
+  NCTS4 NDCD1 NDCD2 NDCD3 NDCD4 NDSR1 NDSR2 NDSR3 NDSR4 NDTR1 NDTR2 NDTR3 NDTR4
+  NRI1 NRI2 NRI3 NRI4 NRTS1 NRTS2 NRTS3 NRTS4 OSCCLK PEWAKE PNOR PWM0 PWM1 PWM2
+  PWM3 PWM4 PWM5 PWM6 PWM7 RGMII1 RGMII2 RMII1 RMII2 RXD1 RXD2 RXD3 RXD4 SALT1
+  SALT10 SALT11 SALT12 SALT13 SALT14 SALT2 SALT3 SALT4 SALT5 SALT6 SALT7 SALT8
+  SALT9 SCL1 SCL2 SD1 SD2 SDA1 SDA2 SGPS1 SGPS2 SIOONCTRL SIOPBI SIOPBO
+  SIOPWREQ SIOPWRGD SIOS3 SIOS5 SIOSCI SPI1 SPI1CS1 SPI1DEBUG SPI1PASSTHRU
+  SPI2CK SPI2CS0 SPI2CS1 SPI2MISO SPI2MOSI TIMER3 TIMER4 TIMER5 TIMER6 TIMER7
+  TIMER8 TXD1 TXD2 TXD3 TXD4 UART6 USB11BHID USB2AD USB2AH USB2BD USB2BH USBCKI
+  VGABIOSROM VGAHS VGAVS VPI24 VPO WDTRST1 WDTRST2
+
+examples:
+  - |
+    compatible = "simple-bus";
+    ranges;
+
+    apb {
+        compatible = "simple-bus";
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges;
+
+        syscon: scu@1e6e2000 {
+            compatible = "aspeed,ast2500-scu", "syscon", "simple-mfd";
+            reg = <0x1e6e2000 0x1a8>;
+
+            pinctrl: pinctrl {
+                compatible = "aspeed,g5-pinctrl";
+                aspeed,external-nodes = <&gfx &lhc>;
+
+                pinctrl_i2c3_default: i2c3_default {
+                    function = "I2C3";
+                    groups = "I2C3";
+                };
+
+                pinctrl_gpioh0_unbiased_default: gpioh0 {
+                    pins = "A18";
+                    bias-disable;
+                };
+            };
+        };
+
+        gfx: display@1e6e6000 {
+            compatible = "aspeed,ast2500-gfx", "syscon";
+            reg = <0x1e6e6000 0x1000>;
+        };
+    };
+
+    lpc: lpc@1e789000 {
+        compatible = "aspeed,ast2500-lpc", "simple-mfd";
+        reg = <0x1e789000 0x1000>;
+
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0x0 0x1e789000 0x1000>;
+
+        lpc_host: lpc-host@80 {
+            compatible = "aspeed,ast2500-lpc-host", "simple-mfd", "syscon";
+            reg = <0x80 0x1e0>;
+            reg-io-width = <4>;
+
+            #address-cells = <1>;
+            #size-cells = <1>;
+            ranges = <0x0 0x80 0x1e0>;
+
+            lhc: lhc@20 {
+                   compatible = "aspeed,ast2500-lhc";
+                   reg = <0x20 0x24 0x48 0x8>;
+            };
+        };
+    };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
