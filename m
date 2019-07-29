Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19716784BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 07:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JV68BE+GqAy8sa24yXa4AWkSoM6U/4VuBQY8WIj7P9g=; b=FkOQ0wonvzFk3b
	oL7/XWk10+Cv66S38W5auP1GiasmYiH4iEwbQXhHjBBT/bOAqlmxOPsbbSUVpuzH0Fp9Hner4N6BE
	JchMFvRd6nzn/8lUD8/UDwrPKFC1sOksfShAAbG0CwGyBm3h3m2nxpkaZ5gZY8QkhDE6guBz5WGyO
	mwccPPA1AObKqqVHB6bR9dpqzWtHx2USiq/48h2lxhNqHjJarbKK+g52V7O+K4aR4sBhIPo532Qy0
	FrkLtjvs75SNDP04EHrRiHnSXn6FSXiiS8herrg+lEq4RFTP0gA0bfT+NZwTcD0sJ4ZNcY+7fsHZW
	BKwTCLZO2Y+ZgyAVQ1kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hryeJ-0007TN-Mo; Mon, 29 Jul 2019 05:56:43 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrydg-0007Et-Cp
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 05:56:06 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C162523CA;
 Mon, 29 Jul 2019 01:56:03 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 29 Jul 2019 01:56:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=KlI91RVSAeNoB
 2/JShlPlrRfKov9OlcqZW9bJxduYUk=; b=RM7EzxQ5oSjFQsoEI29Hx/GUefMNd
 HXMyKxhTt0n5tDi+DLfI5WlIVpAA3s21C5eNybULOFJBmkdWo1SoJ+Kr3eDaiRaT
 flEe/ySmMYiKeNQeFw/+VXbj8s7CFJo9u/yqEIG0VSscR60RctThfaqR6AOrcGQ9
 YTwIUhT5zRb1Fm2F/dQDS4D7oB4nOPqw0m8i+ZUPPdvruf4ia1G7adBiX/X/y+n2
 SPK6PhQ5PGVVTXXAhd22NK84ddCdssYyO/ei28WHMPKTsCJp3oPYCJWJLwtVfMbh
 MCcR+Fo7nRShrkRD9frGbRVd2dTCQJKMNLZc5KJBFqSYAVLBUqiFdYHfQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=KlI91RVSAeNoB2/JShlPlrRfKov9OlcqZW9bJxduYUk=; b=JdBvx693
 bOXfTqDqqz7sLI4qC9WVXof8TyAfXwwS7/JJ6qHuVp/LAlblPVpTlw+W0NLS3ZiH
 59A+PxDrSUq92xw1+ZW5EA5lgGLybukmQchcRkjyidTRXhzJWt35SSkSb0T4zow9
 nA58jf/ciMPjzQ1n0AaThlmzUKABybcgQRUw0+LMcKs/fTigcV2tfc1tBNig0CA/
 y51NgwyAx5FjfPk46sGbXJmaK6afMikiE+os8rI2/kYIYZtPtNqz2iotIK+Fnmq1
 fcDfHNH+sqoGizkr+oRR1TU5VRHe1d6jfaTpn+OaxXUdjnE2iIyxd+iihK3WXe2d
 K2XD8ohnIKDJhg==
X-ME-Sender: <xms:c4o-XVpVTz9bU4IaWJJR5rBlmy6nUEb4VNGiIQwB-RefkbNmWEu-zg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrledtgddutddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdrohhrghenucfkph
 epvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgv
 fiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:c4o-XT8gGbiTINXVyhzrctAqeTrShsumE2oN7Y_zzKv1FDytk7cpIA>
 <xmx:c4o-XU9evmDZrebFGJWOe4HOHEda2PJapX_4kxwLS4VHeQdKpDj8MA>
 <xmx:c4o-XSvBMIXm2w5vioDTvnPhrL3UAPAditYxuMncui2Kq1lEvqzvrA>
 <xmx:c4o-XVH8c6c_vo-Sul8ZHCat5DoFgQSghUeR8sZWhIB5KMbbD_5eUw>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id C949E80061;
 Mon, 29 Jul 2019 01:55:59 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH v2 1/6] dt-bindings: pinctrl: aspeed: Document AST2600 pinmux
Date: Mon, 29 Jul 2019 15:25:59 +0930
Message-Id: <20190729055604.13239-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729055604.13239-1-andrew@aj.id.au>
References: <20190729055604.13239-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_225604_580752_DA7B7F59 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 johnny_huang@aspeedtech.com, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linus.walleij@linaro.org,
 ryanchen.aspeed@gmail.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AST260 differs from the 2400 and 2500 in that it supports multiple
groups for a subset of functions.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

---
v2:
* Avoid patternProperties for fixed strings
* Don't needlessly quote strings
---
 .../pinctrl/aspeed,ast2600-pinctrl.yaml       | 115 ++++++++++++++++++
 1 file changed, 115 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml
new file mode 100644
index 000000000000..f83d888176cc
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml
@@ -0,0 +1,115 @@
+# SPDX-License-Identifier: GPL-2.0+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/aspeed,ast2600-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ASPEED AST2600 Pin Controller
+
+maintainers:
+  - Andrew Jeffery <andrew@aj.id.au>
+
+description: |+
+  The pin controller node should be the child of a syscon node with the
+  required property:
+
+  - compatible: Should be one of the following:
+                "aspeed,ast2600-scu", "syscon", "simple-mfd"
+
+  Refer to the the bindings described in
+  Documentation/devicetree/bindings/mfd/syscon.txt
+
+properties:
+  compatible:
+    const: aspeed,ast2600-pinctrl
+
+patternProperties:
+  '^.*$':
+    if:
+      type: object
+    then:
+      properties:
+        function:
+          allOf:
+            - $ref: "/schemas/types.yaml#/definitions/string"
+            - enum: [ ADC0, ADC1, ADC10, ADC11, ADC12, ADC13, ADC14, ADC15,
+              ADC2, ADC3, ADC4, ADC5, ADC6, ADC7, ADC8, ADC9, BMCINT, ESPI,
+              ESPIALT, FSI1, FSI2, FWSPIABR, FWSPID, FWSPIWP, GPIT0, GPIT1,
+              GPIT2, GPIT3, GPIT4, GPIT5, GPIT6, GPIT7, GPIU0, GPIU1, GPIU2,
+              GPIU3, GPIU4, GPIU5, GPIU6, GPIU7, I2C1, I2C10, I2C11, I2C12,
+              I2C13, I2C14, I2C15, I2C16, I2C2, I2C3, I2C4, I2C5, I2C6, I2C7,
+              I2C8, I2C9, I3C3, I3C4, I3C5, I3C6, JTAGM, LHPD, LHSIRQ, LPC,
+              LPCHC, LPCPD, LPCPME, LPCSMI, LSIRQ, MACLINK1, MACLINK2,
+              MACLINK3, MACLINK4, MDIO1, MDIO2, MDIO3, MDIO4, NCTS1, NCTS2,
+              NCTS3, NCTS4, NDCD1, NDCD2, NDCD3, NDCD4, NDSR1, NDSR2, NDSR3,
+              NDSR4, NDTR1, NDTR2, NDTR3, NDTR4, NRI1, NRI2, NRI3, NRI4, NRTS1,
+              NRTS2, NRTS3, NRTS4, OSCCLK, PEWAKE, PWM0, PWM1, PWM10, PWM11,
+              PWM12, PWM13, PWM14, PWM15, PWM2, PWM3, PWM4, PWM5, PWM6, PWM7,
+              PWM8, PWM9, RGMII1, RGMII2, RGMII3, RGMII4, RMII1, RMII2, RMII3,
+              RMII4, RXD1, RXD2, RXD3, RXD4, SALT1, SALT10, SALT11, SALT12,
+              SALT13, SALT14, SALT15, SALT16, SALT2, SALT3, SALT4, SALT5,
+              SALT6, SALT7, SALT8, SALT9, SD1, SD2, SD3, SD3DAT4, SD3DAT5,
+              SD3DAT6, SD3DAT7, SGPM1, SGPS1, SIOONCTRL, SIOPBI, SIOPBO,
+              SIOPWREQ, SIOPWRGD, SIOS3, SIOS5, SIOSCI, SPI1, SPI1ABR, SPI1CS1,
+              SPI1WP, SPI2, SPI2CS1, SPI2CS2, TACH0, TACH1, TACH10, TACH11,
+              TACH12, TACH13, TACH14, TACH15, TACH2, TACH3, TACH4, TACH5,
+              TACH6, TACH7, TACH8, TACH9, THRU0, THRU1, THRU2, THRU3, TXD1,
+              TXD2, TXD3, TXD4, UART10, UART11, UART12, UART13, UART6, UART7,
+              UART8, UART9, VB, VGAHS, VGAVS, WDTRST1, WDTRST2, WDTRST3,
+              WDTRST4, ]
+        groups:
+          allOf:
+            - $ref: "/schemas/types.yaml#/definitions/string"
+            - enum: [ ADC0, ADC1, ADC10, ADC11, ADC12, ADC13, ADC14, ADC15,
+              ADC2, ADC3, ADC4, ADC5, ADC6, ADC7, ADC8, ADC9, BMCINT, ESPI,
+              ESPIALT, FSI1, FSI2, FWSPIABR, FWSPID, FWQSPID, FWSPIWP, GPIT0,
+              GPIT1, GPIT2, GPIT3, GPIT4, GPIT5, GPIT6, GPIT7, GPIU0, GPIU1,
+              GPIU2, GPIU3, GPIU4, GPIU5, GPIU6, GPIU7, HVI3C3, HVI3C4, I2C1,
+              I2C10, I2C11, I2C12, I2C13, I2C14, I2C15, I2C16, I2C2, I2C3,
+              I2C4, I2C5, I2C6, I2C7, I2C8, I2C9, I3C3, I3C4, I3C5, I3C6,
+              JTAGM, LHPD, LHSIRQ, LPC, LPCHC, LPCPD, LPCPME, LPCSMI, LSIRQ,
+              MACLINK1, MACLINK2, MACLINK3, MACLINK4, MDIO1, MDIO2, MDIO3,
+              MDIO4, NCTS1, NCTS2, NCTS3, NCTS4, NDCD1, NDCD2, NDCD3, NDCD4,
+              NDSR1, NDSR2, NDSR3, NDSR4, NDTR1, NDTR2, NDTR3, NDTR4, NRI1,
+              NRI2, NRI3, NRI4, NRTS1, NRTS2, NRTS3, NRTS4, OSCCLK, PEWAKE,
+              PWM0, PWM1, PWM10G0, PWM10G1, PWM11G0, PWM11G1, PWM12G0, PWM12G1,
+              PWM13G0, PWM13G1, PWM14G0, PWM14G1, PWM15G0, PWM15G1, PWM2, PWM3,
+              PWM4, PWM5, PWM6, PWM7, PWM8G0, PWM8G1, PWM9G0, PWM9G1, QSPI1,
+              QSPI2, RGMII1, RGMII2, RGMII3, RGMII4, RMII1, RMII2, RMII3,
+              RMII4, RXD1, RXD2, RXD3, RXD4, SALT1, SALT10G0, SALT10G1,
+              SALT11G0, SALT11G1, SALT12G0, SALT12G1, SALT13G0, SALT13G1,
+              SALT14G0, SALT14G1, SALT15G0, SALT15G1, SALT16G0, SALT16G1,
+              SALT2, SALT3, SALT4, SALT5, SALT6, SALT7, SALT8, SALT9G0,
+              SALT9G1, SD1, SD2, SD3, SD3DAT4, SD3DAT5, SD3DAT6, SD3DAT7,
+              SGPM1, SGPS1, SIOONCTRL, SIOPBI, SIOPBO, SIOPWREQ, SIOPWRGD,
+              SIOS3, SIOS5, SIOSCI, SPI1, SPI1ABR, SPI1CS1, SPI1WP, SPI2,
+              SPI2CS1, SPI2CS2, TACH0, TACH1, TACH10, TACH11, TACH12, TACH13,
+              TACH14, TACH15, TACH2, TACH3, TACH4, TACH5, TACH6, TACH7, TACH8,
+              TACH9, THRU0, THRU1, THRU2, THRU3, TXD1, TXD2, TXD3, TXD4,
+              UART10, UART11, UART12G0, UART12G1, UART13G0, UART13G1, UART6,
+              UART7, UART8, UART9, VB, VGAHS, VGAVS, WDTRST1, WDTRST2, WDTRST3,
+              WDTRST4, ]
+
+required:
+  - compatible
+
+examples:
+  - |
+    syscon: scu@1e6e2000 {
+        compatible = "aspeed,ast2600-scu", "syscon", "simple-mfd";
+        reg = <0x1e6e2000 0xf6c>;
+
+        pinctrl: pinctrl {
+            compatible = "aspeed,g6-pinctrl";
+
+            pinctrl_pwm10g1_default: pwm10g1_default {
+                function = "PWM10";
+                groups = "PWM10G1";
+            };
+
+            pinctrl_gpioh0_unbiased_default: gpioh0 {
+                pins = "A18";
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
