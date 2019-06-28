Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD1C59143
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 04:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Da6J9RI/9O52WO1xuo7yby1cc1+4s0IJ/IrzAFXLeI=; b=UNOi8MGS5J4HaU
	CatjuZp2hFrnUQOUgl8WfKP50xhcsY4npseC1GXIHjKxWGI+Tu8GQOFpPF7gKdukTX2oygG99OSZ5
	0kOTRmdUTUJxYxr/TLrat6U/4GNyCPD8KhlHlkWIMfVJN+D5OvQEzqsN2XwPpN9toF3GxZhaDb6EB
	er1DU7vEUGI6PEHlexvMNB66nIKWOFg1Vd9x2vXLx8S81c2zNCavI+CL7YTQs/eeToIsKa3NOPh/7
	vs/2TYkXG9atF7MX3gc13ywYHIQJu2efr9Ls/bS0w1N2pI0AYd/LlVYcKzAF4sOcRkvMdBqItPWK2
	d5N5uDn9trA8pAPodHBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hggow-0004VS-J3; Fri, 28 Jun 2019 02:41:02 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hggnQ-0002Z5-Sf
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 02:39:31 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2F57934CF;
 Thu, 27 Jun 2019 22:39:28 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 27 Jun 2019 22:39:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=Z7ciHbon7U3gY
 FTOb3qa6kGkEvjBtouoF8bLyp7hpdE=; b=JQrslFJJnJgQJyJUvUWoAsuDSMgWp
 inNFNUQ0e8/fwIGVA/RcTSMX+SV6qto14oDQ+xX8L02AS1UaZB7sriWrKdlN2e/w
 UK0geGsF27k54r+qYUaw2Owg6Nap6tBpLWN2IlVo5kj8M86VerPz5h/hBqvEzJzw
 tMfIpBI+Trr8bXMWvA8dd+49HwShMV0tVG2YZADToetjrkEfwtvHlfA4e/4j+E7M
 /3SaDHE7ttMYBF7cnyQB7XtBFkZ15seian6Y7mxjpgcjtyzhpw+jCSGeL7qPUSOP
 u+IGiBd/zSMPBZzGTt+6Q55LZ1Nz1iuub5I4jo/A418lN94Wxw6bsDIiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=Z7ciHbon7U3gYFTOb3qa6kGkEvjBtouoF8bLyp7hpdE=; b=o8v/kTV0
 370pRvDZBjS16gZBY0fJtwZykFVlD5L5ZxQjtNLrDDeWGGeZEqsf+n1WPhuHVtTW
 KUu1DKTwE5b9W1PqZxg5kHsfJhzmC3xu6+7p2QOuuZm9MHujMVbLUiDalgIoWFIg
 cD2HRrhqxPdSGRBZOEGFWBkPTFjaXN9YUYvql8dAlxURmBdkfVJqAaIpX/7X63WS
 knyE+mKwAxbQauoj0ub7GYuyosv4xDg2viRrVCTLi33W8XkyApXb/U57IO9DbUJG
 5GYSSN138JNbsjph3cgEUfKVah+Ts5pLWg/pWom04x+C9OtAICcUN2J3TD3BiThY
 ESuAGhadkXsNhw==
X-ME-Sender: <xms:330VXUoQt-3WzP9ekimfhV92w05CHZoobPrmGnYsyPBKFzAghaaH-Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudelgdeiudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecuffhomhgrihhnpe
 guvghvihgtvghtrhgvvgdrohhrghenucfkphepvddtvddrkedurddukedrfedtnecurfgr
 rhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsth
 gvrhfuihiivgepud
X-ME-Proxy: <xmx:4H0VXRsCKKATgEPPfPeZXqvNcdW1Z1IBrx0U0lO2HZWXzsBBntKEkw>
 <xmx:4H0VXQ5Jm4cJ8YnHS8sZ9x-wmyUb_IF9n-l4WkBUP8srq09ZlODnrg>
 <xmx:4H0VXSRjt4c4p_BYTPbaSagmzF9SpIHBEAVqXLhtcW-OUUJQFTp2Ow>
 <xmx:4H0VXU3Od58wtEsRYXaxmfYDqrmCnATkI8gvACtcpk_Us4706l6y1w>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id AE45B380074;
 Thu, 27 Jun 2019 22:39:23 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH v2 3/8] dt-bindings: pinctrl: aspeed: Convert AST2500 bindings
 to json-schema
Date: Fri, 28 Jun 2019 12:08:33 +0930
Message-Id: <20190628023838.15426-4-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190628023838.15426-1-andrew@aj.id.au>
References: <20190628023838.15426-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_193929_139562_1820F336 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Johnny Huang <johnny_huang@aspeedtech.com>, ryan_chen@aspeedtech.com,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, openbmc@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert ASPEED pinctrl bindings to DT schema format using json-schema.

Cc: Johnny Huang <johnny_huang@aspeedtech.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
In v2:

* Enforce function/group names in bindings
* Move description above properties
* Simplify specification of compatible
* Cleanup license specification

 .../pinctrl/aspeed,ast2500-pinctrl.txt        | 119 ----------------
 .../pinctrl/aspeed,ast2500-pinctrl.yaml       | 134 ++++++++++++++++++
 2 files changed, 134 insertions(+), 119 deletions(-)
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
index 000000000000..cf561bd55128
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
@@ -0,0 +1,134 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
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
+description: |+
+  The pin controller node should be the child of a syscon node with the
+  required property:
+
+  - compatible: 	Should be one of the following:
+  			"aspeed,ast2500-scu", "syscon", "simple-mfd"
+  			"aspeed,g5-scu", "syscon", "simple-mfd"
+
+  Refer to the the bindings described in
+  Documentation/devicetree/bindings/mfd/syscon.txt
+
+properties:
+  compatible:
+    enum: [ aspeed,ast2500-pinctrl, aspeed,g5-pinctrl ]
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
+patternProperties:
+  '^.*$':
+    if:
+      type: object
+    then:
+      patternProperties:
+        "^function|groups$":
+          allOf:
+            - $ref: "/schemas/types.yaml#/definitions/string"
+            - enum: [ "ACPI", "ADC0", "ADC1", "ADC10", "ADC11", "ADC12", "ADC13",
+              "ADC14", "ADC15", "ADC2", "ADC3", "ADC4", "ADC5", "ADC6", "ADC7",
+              "ADC8", "ADC9", "BMCINT", "DDCCLK", "DDCDAT", "ESPI", "FWSPICS1",
+              "FWSPICS2", "GPID0", "GPID2", "GPID4", "GPID6", "GPIE0", "GPIE2",
+              "GPIE4", "GPIE6", "I2C10", "I2C11", "I2C12", "I2C13", "I2C14",
+              "I2C3", "I2C4", "I2C5", "I2C6", "I2C7", "I2C8", "I2C9", "LAD0",
+              "LAD1", "LAD2", "LAD3", "LCLK", "LFRAME", "LPCHC", "LPCPD",
+              "LPCPLUS", "LPCPME", "LPCRST", "LPCSMI", "LSIRQ", "MAC1LINK",
+              "MAC2LINK", "MDIO1", "MDIO2", "NCTS1", "NCTS2", "NCTS3", "NCTS4",
+              "NDCD1", "NDCD2", "NDCD3", "NDCD4", "NDSR1", "NDSR2", "NDSR3",
+              "NDSR4", "NDTR1", "NDTR2", "NDTR3", "NDTR4", "NRI1", "NRI2",
+              "NRI3", "NRI4", "NRTS1", "NRTS2", "NRTS3", "NRTS4", "OSCCLK",
+              "PEWAKE", "PNOR", "PWM0", "PWM1", "PWM2", "PWM3", "PWM4", "PWM5",
+              "PWM6", "PWM7", "RGMII1", "RGMII2", "RMII1", "RMII2", "RXD1",
+              "RXD2", "RXD3", "RXD4", "SALT1", "SALT10", "SALT11", "SALT12",
+              "SALT13", "SALT14", "SALT2", "SALT3", "SALT4", "SALT5", "SALT6",
+              "SALT7", "SALT8", "SALT9", "SCL1", "SCL2", "SD1", "SD2", "SDA1",
+              "SDA2", "SGPS1", "SGPS2", "SIOONCTRL", "SIOPBI", "SIOPBO",
+              "SIOPWREQ", "SIOPWRGD", "SIOS3", "SIOS5", "SIOSCI", "SPI1",
+              "SPI1CS1", "SPI1DEBUG", "SPI1PASSTHRU", "SPI2CK", "SPI2CS0",
+              "SPI2CS1", "SPI2MISO", "SPI2MOSI", "TIMER3", "TIMER4", "TIMER5",
+              "TIMER6", "TIMER7", "TIMER8", "TXD1", "TXD2", "TXD3", "TXD4",
+              "UART6", "USB11BHID", "USB2AD", "USB2AH", "USB2BD", "USB2BH",
+              "USBCKI", "VGABIOSROM", "VGAHS", "VGAVS", "VPI24", "VPO",
+              "WDTRST1", "WDTRST2", ]
+
+required:
+  - compatible
+  - aspeed,external-nodes
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
