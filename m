Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 042F0562FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 09:16:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3kFT7ISW1gBrxEdo5jeWJGiLVJHl9pUalBHtJBhvi0=; b=Uy1KOhQ4s+F1N4
	+zM9SIAe5eOOXP+R7s3wMLTZgRZmcApaM+At3QOIT1gi0w5cAwTB1aR++yCNHSB4oCv1PCpRJwDni
	4s2Q+/kWFRPjlWLsxehmNYoEzWCs+48tj+82hLN6rUWPJecZgs8rq8Han5tIICObJZLI+zC81ToTH
	i6kwxDoLlXYwGG3XAUCVuUxdd6uHqFQjac2A75fnnrKBMpxkwR6xnz9xveh0UYwKx/mqUWXLxzPrS
	oQU9AGOfKmLyjvyAMqCiuabzUUQJpFnSC/25Y8N3IMNDRFIBj3J5GtlGO/VOs4nxm0zrAmY6q7eKU
	y9kuDiojMMQO5ovnyK3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg2AG-0006RB-5G; Wed, 26 Jun 2019 07:16:20 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg29i-0006GG-JL
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 07:15:48 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id EEAB61721;
 Wed, 26 Jun 2019 03:15:45 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 26 Jun 2019 03:15:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=bDsw6KjgIezE4
 hKWkzgtOU4DL3U+oK1ddciLPL0D0S8=; b=jgTqN9Qt0tKbDlrYNXZVyNrppjk4m
 6CXWrAXgwqZaLY4QPjt5tXHK7UUtZGyI8ugpEaBm6puCMqsfd3QSHF/DLq6nCs6B
 8XcRBVaptjMcMKdv+Hw1KMRevzD+e467BNY4EJ6GADwDfeTfOKcr7VBpM0/Szdaf
 +lhBKsUtgSdRwOFGp9mLqqZH71Vh1yV4JYu3lxONUbHvz69bK3SHjbOrf6B8R4/9
 /Foai8Sf2FZx/JXH7WmU3NtsB7qcgMWseJqA2WDz84N95U1P7qQ6r3JwdeoV30+a
 RmIawYcwV5nnKBj2AQtD8PX90Ia8vVFXDjzCL2v8YlDVFOmIO/LNCvarg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=bDsw6KjgIezE4hKWkzgtOU4DL3U+oK1ddciLPL0D0S8=; b=Mf2hR8iR
 wZj13vNy+U9ofaOoVPHadePDABhAjysADa5xu7FXU/SUubGr19fXXUqwUz5wTWVP
 bvLp9t90Mbpi3QEJWb0S8bVLbxaGl76J1COJcX1bRaLFsdaksvMF+V9nmgP1Q42q
 DfJeKq1PLjR4sysLuVqPgCZaW6EH94u6YClOYiiN0ha6LVbEld48wvD398SrY2zO
 shWO8KkPgGKUMugqVWH248/TRFqpKrAV0FO0iBiBjkk8DJUzl7XIxdrI6GXeEScH
 VjjhVffB+t2OjJvVP9s3VbMCGHHm5wUZUMe/CufRmiCBzCSR6JmvqRsN24zyJs6V
 Lx4wnfho/oqcdg==
X-ME-Sender: <xms:oRsTXcyFO1kJUgG0daPO_LgVBeMgDelLnuzUkEviJqxDb34x5UlHFg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudehgdduudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppedvtddvrdekuddrudekrdeftdenucfrrghrrghmpehmrg
 hilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigv
 pedt
X-ME-Proxy: <xmx:oRsTXcias8y2_Rv88h13RPQg4Vz1pbXWdgNMFREyLhofO64D2fVWVA>
 <xmx:oRsTXUlVgHMjzU9HOopndEOFDJhFkxOXJHQUDls8jtThFzLHh1ut_w>
 <xmx:oRsTXYKHQ8XXElm0-l45r7flU65FKRCCZP7JW-XclM_R9S1ekkgJzw>
 <xmx:oRsTXWLMjniddxG_YKQDBlR1cgwRFJ08CinFuvbbEUu8_1ncc_LBMg>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0D486380083;
 Wed, 26 Jun 2019 03:15:41 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 1/8] dt-bindings: pinctrl: aspeed: Split bindings document in
 two
Date: Wed, 26 Jun 2019 16:44:23 +0930
Message-Id: <20190626071430.28556-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626071430.28556-1-andrew@aj.id.au>
References: <20190626071430.28556-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_001546_792358_2D63E1F2 
X-CRM114-Status: GOOD (  12.38  )
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

Have one for each of the AST2400 and AST2500. The only thing that was
common was the fact that both support ASPEED BMC SoCs.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 .../pinctrl/aspeed,ast2400-pinctrl.txt        | 80 +++++++++++++++++++
 ...-aspeed.txt => aspeed,ast2500-pinctrl.txt} | 63 ++-------------
 2 files changed, 85 insertions(+), 58 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
 rename Documentation/devicetree/bindings/pinctrl/{pinctrl-aspeed.txt => aspeed,ast2500-pinctrl.txt} (66%)

diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
new file mode 100644
index 000000000000..67e0325ccf2e
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
@@ -0,0 +1,80 @@
+=============================
+Aspeed AST2400 Pin Controller
+=============================
+
+Required properties for the AST2400:
+- compatible : 			Should be one of the following:
+				"aspeed,ast2400-pinctrl"
+				"aspeed,g4-pinctrl"
+
+The pin controller node should be the child of a syscon node with the required
+property:
+
+- compatible : 		Should be one of the following:
+			"aspeed,ast2400-scu", "syscon", "simple-mfd"
+			"aspeed,g4-scu", "syscon", "simple-mfd"
+
+Refer to the the bindings described in
+Documentation/devicetree/bindings/mfd/syscon.txt
+
+Subnode Format
+==============
+
+The required properties of pinmux child nodes are:
+- function: the mux function to select
+- groups  : the list of groups to select with this function
+
+Required properties of pinconf child nodes are:
+- groups: A list of groups to select (either this or "pins" must be
+          specified)
+- pins  : A list of ball names as strings, eg "D14" (either this or "groups"
+          must be specified)
+
+Optional properties of pinconf child nodes are:
+- bias-disable  : disable any pin bias
+- bias-pull-down: pull down the pin
+- drive-strength: sink or source at most X mA
+
+Definitions are as specified in
+Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt, with any
+further limitations as described above.
+
+For pinmux, each mux function has only one associated pin group. Each group is
+named by its function. The following values for the function and groups
+properties are supported:
+
+ACPI ADC0 ADC1 ADC10 ADC11 ADC12 ADC13 ADC14 ADC15 ADC2 ADC3 ADC4 ADC5 ADC6
+ADC7 ADC8 ADC9 BMCINT DDCCLK DDCDAT EXTRST FLACK FLBUSY FLWP GPID GPID0 GPID2
+GPID4 GPID6 GPIE0 GPIE2 GPIE4 GPIE6 I2C10 I2C11 I2C12 I2C13 I2C14 I2C3 I2C4
+I2C5 I2C6 I2C7 I2C8 I2C9 LPCPD LPCPME LPCRST LPCSMI MAC1LINK MAC2LINK MDIO1
+MDIO2 NCTS1 NCTS2 NCTS3 NCTS4 NDCD1 NDCD2 NDCD3 NDCD4 NDSR1 NDSR2 NDSR3 NDSR4
+NDTR1 NDTR2 NDTR3 NDTR4 NDTS4 NRI1 NRI2 NRI3 NRI4 NRTS1 NRTS2 NRTS3 OSCCLK PWM0
+PWM1 PWM2 PWM3 PWM4 PWM5 PWM6 PWM7 RGMII1 RGMII2 RMII1 RMII2 ROM16 ROM8 ROMCS1
+ROMCS2 ROMCS3 ROMCS4 RXD1 RXD2 RXD3 RXD4 SALT1 SALT2 SALT3 SALT4 SD1 SD2 SGPMCK
+SGPMI SGPMLD SGPMO SGPSCK SGPSI0 SGPSI1 SGPSLD SIOONCTRL SIOPBI SIOPBO SIOPWREQ
+SIOPWRGD SIOS3 SIOS5 SIOSCI SPI1 SPI1DEBUG SPI1PASSTHRU SPICS1 TIMER3 TIMER4
+TIMER5 TIMER6 TIMER7 TIMER8 TXD1 TXD2 TXD3 TXD4 UART6 USB11D1 USB11H2 USB2D1
+USB2H1 USBCKI VGABIOS_ROM VGAHS VGAVS VPI18 VPI24 VPI30 VPO12 VPO24 WDTRST1
+WDTRST2
+
+Example
+=======
+
+syscon: scu@1e6e2000 {
+	compatible = "aspeed,ast2400-scu", "syscon", "simple-mfd";
+	reg = <0x1e6e2000 0x1a8>;
+
+	pinctrl: pinctrl {
+		compatible = "aspeed,g4-pinctrl";
+
+		pinctrl_i2c3_default: i2c3_default {
+			function = "I2C3";
+			groups = "I2C3";
+		};
+
+		pinctrl_gpioh0_unbiased_default: gpioh0 {
+			pins = "A8";
+			bias-disable;
+		};
+	};
+};
diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.txt
similarity index 66%
rename from Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt
rename to Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.txt
index 3b7266c7c438..2f16e401338a 100644
--- a/Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.txt
@@ -1,14 +1,6 @@
-======================
-Aspeed Pin Controllers
-======================
-
-The Aspeed SoCs vary in functionality inside a generation but have a common mux
-device register layout.
-
-Required properties for g4:
-- compatible : 			Should be one of the following:
-				"aspeed,ast2400-pinctrl"
-				"aspeed,g4-pinctrl"
+=============================
+Aspeed AST2500 Pin Controller
+=============================
 
 Required properties for g5:
 - compatible : 			Should be one of the following:
@@ -23,8 +15,6 @@ The pin controller node should be the child of a syscon node with the required
 property:
 
 - compatible : 		Should be one of the following:
-			"aspeed,ast2400-scu", "syscon", "simple-mfd"
-			"aspeed,g4-scu", "syscon", "simple-mfd"
 			"aspeed,ast2500-scu", "syscon", "simple-mfd"
 			"aspeed,g5-scu", "syscon", "simple-mfd"
 
@@ -57,24 +47,6 @@ For pinmux, each mux function has only one associated pin group. Each group is
 named by its function. The following values for the function and groups
 properties are supported:
 
-aspeed,ast2400-pinctrl, aspeed,g4-pinctrl:
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
-aspeed,ast2500-pinctrl, aspeed,g5-pinctrl:
-
 ACPI ADC0 ADC1 ADC10 ADC11 ADC12 ADC13 ADC14 ADC15 ADC2 ADC3 ADC4 ADC5 ADC6
 ADC7 ADC8 ADC9 BMCINT DDCCLK DDCDAT ESPI FWSPICS1 FWSPICS2 GPID0 GPID2 GPID4
 GPID6 GPIE0 GPIE2 GPIE4 GPIE6 I2C10 I2C11 I2C12 I2C13 I2C14 I2C3 I2C4 I2C5 I2C6
@@ -90,33 +62,8 @@ SPI2CS1 SPI2MISO SPI2MOSI TIMER3 TIMER4 TIMER5 TIMER6 TIMER7 TIMER8 TXD1 TXD2
 TXD3 TXD4 UART6 USB11BHID USB2AD USB2AH USB2BD USB2BH USBCKI VGABIOSROM VGAHS
 VGAVS VPI24 VPO WDTRST1 WDTRST2
 
-Examples
-========
-
-g4 Example
-----------
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
-
-g5 Example
-----------
+Example
+=======
 
 ahb {
 	apb {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
