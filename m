Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D46666DF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 08:18:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/xSyTgynpwhddzvUnnWk6u7YmalB/Ft7/p1tKZw4UOU=; b=liacsFUrwgb7RX
	j/UpEds7fQkqAioGDr4p9dmdT9A5OzNpGTUZ2mj+34Yx8bAK+dDw/Y2wETSxJhExsL84z4CeUYj+f
	4GHgE+4lrsisAVS4n7Sm2VWQmxHcyinCQrYtlPJZuNyc1Mx6bLfOEwJAY7KShxd9GlX5L3IUDGEJZ
	HXTkXU620p/Ig5K3QUK2z/fiYo5aj2uq4BIGodzAv+4qN6rsxBa9kveoSaaYI+a2GuRIoM7+jMN1/
	AfwSO3S1LR+CXj/FpbJjuqEQET0wMzvGGcMOAW/BiK/J04EyMijJEg4W/h2tEqcBhF/BWh+XhY6Ja
	X3tqkdWazgk8gv5RTwHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlose-00036n-MO; Fri, 12 Jul 2019 06:18:04 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlosQ-00035o-Vx
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 06:17:53 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 1EB192223A;
 Fri, 12 Jul 2019 02:17:45 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 12 Jul 2019 02:17:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=LxE0mQurpNi+Nw2gFJjTVSZyJ5
 bmZmtxq8G3mOjaB4Y=; b=cOhV8JN4QdIbJq6mnKkWb3psnXYiBgz6yYy6uCPRNb
 kUjYrUdSF1OYULFdZn2ycjAx9I4m4uHz+62bSnC3+4iMgZVqtufuDx1eCPuL6ucc
 RvGrH1K0RBLg+2oe/4ZSfZasKD5pmHUmDyGKl4t97xxuAhHSCYsUb8zuAtISmE1C
 nrq7gpmiyAc5KsMq/5tNNaKLlnnh0rqMg/F08175gMipURW5Vx514N26FfTPCpvV
 asTmMOOb2jSqohbA0qPOGXdfm08gws3cDv47oLt5P1gs/FXOa+RAKAj5su/HGfS4
 4MxnJesrSDca+9d2zJnKH9ZLgCJRhH1qtDH0tobFKmBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=LxE0mQurpNi+Nw2gF
 JjTVSZyJ5bmZmtxq8G3mOjaB4Y=; b=Ekaet4pKp7NOusIIXUjozF3wXk5SH7ITl
 g5xXkkjizrwxfXQSpwgw+7ahsYcN/xJvTbhfFFsR2viWv3q3dgbqbR4A0rdNi9Qr
 rhj4XDNJ5qrpNITkuqGczINkrdSwmK+eUndGT/8ib+dDdGEJMhnuDNNjMWL4YC5K
 E3USkl19fhqi5XU3OQ/sigSZMNswj++PW7xbxgijRd7YgsLMrXAVt3+U4A6yYojl
 p3AdIbjtzSbjCo0ETH4AGQHrAL02ysljnDSy/tM2pn1O/3nyqSkn+Ib1HWpXbyRX
 yqn0Q/fG9IpaaK0yZNBHHqwmtef67oHe2A5KV4yCAft1J6sHIDcPw==
X-ME-Sender: <xms:ByYoXcmxA-4Wr3Jy0LkJne05TdZA9b7mn5sMJLPNnxhuQAfDrO6F0g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeelgddutdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecuffhomhgrihhnpehoiihlrggsshdrohhrghenucfkphepvddtvddrke
 durddukedrfedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhi
 ugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:ByYoXS0JyD-YpmQ7qxRvKTO_gFcrLUklHGdqlr_WUziHQ4PXX0h6KA>
 <xmx:ByYoXfpj0Mk3dS2kzyOsoOcyYJzZd1-daKLsnhpKvHm_sqzzVi_ArA>
 <xmx:ByYoXXc7JfeCZRCuUaV1wbfMws6ALoyMRTjk5hEWPLSR7O7ee-5Qmw>
 <xmx:CSYoXTBVGv1m8K6A49B6Ul33Qco8-a4X_ro3VAb0grJXbSa7pGTkYA>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4A26D380074;
 Fri, 12 Jul 2019 02:17:40 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH] dt-bindings: pinctrl: aspeed: Strip unnecessary quotes
Date: Fri, 12 Jul 2019 15:47:21 +0930
Message-Id: <20190712061721.26645-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_231751_324780_7C740496 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rob pointed out that we didn't need the noise of the quotes in a
separate review[1], so strip them out for consistency and avoid setting
a bad example.

[1] https://lists.ozlabs.org/pipermail/linux-aspeed/2019-July/002009.html

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---

This patch applies to the tip of pinctrl/devel where the aspeed pinctrl binding
conversion patches have already landed.

 .../pinctrl/aspeed,ast2400-pinctrl.yaml       | 40 ++++++++---------
 .../pinctrl/aspeed,ast2500-pinctrl.yaml       | 45 +++++++++----------
 2 files changed, 38 insertions(+), 47 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
index 61a110a7db8a..faedfed0769c 100644
--- a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
@@ -33,28 +33,24 @@ patternProperties:
         "^function|groups$":
           allOf:
             - $ref: "/schemas/types.yaml#/definitions/string"
-            - enum: [ "ACPI", "ADC0", "ADC1", "ADC10", "ADC11", "ADC12", "ADC13",
-              "ADC14", "ADC15", "ADC2", "ADC3", "ADC4", "ADC5", "ADC6", "ADC7",
-              "ADC8", "ADC9", "BMCINT", "DDCCLK", "DDCDAT", "EXTRST", "FLACK",
-              "FLBUSY", "FLWP", "GPID", "GPID0", "GPID2", "GPID4", "GPID6",
-              "GPIE0", "GPIE2", "GPIE4", "GPIE6", "I2C10", "I2C11", "I2C12",
-              "I2C13", "I2C14", "I2C3", "I2C4", "I2C5", "I2C6", "I2C7", "I2C8",
-              "I2C9", "LPCPD", "LPCPME", "LPCRST", "LPCSMI", "MAC1LINK",
-              "MAC2LINK", "MDIO1", "MDIO2", "NCTS1", "NCTS2", "NCTS3", "NCTS4",
-              "NDCD1", "NDCD2", "NDCD3", "NDCD4", "NDSR1", "NDSR2", "NDSR3",
-              "NDSR4", "NDTR1", "NDTR2", "NDTR3", "NDTR4", "NDTS4", "NRI1",
-              "NRI2", "NRI3", "NRI4", "NRTS1", "NRTS2", "NRTS3", "OSCCLK",
-              "PWM0", "PWM1", "PWM2", "PWM3", "PWM4", "PWM5", "PWM6", "PWM7",
-              "RGMII1", "RGMII2", "RMII1", "RMII2", "ROM16", "ROM8", "ROMCS1",
-              "ROMCS2", "ROMCS3", "ROMCS4", "RXD1", "RXD2", "RXD3", "RXD4",
-              "SALT1", "SALT2", "SALT3", "SALT4", "SD1", "SD2", "SGPMCK",
-              "SGPMI", "SGPMLD", "SGPMO", "SGPSCK", "SGPSI0", "SGPSI1", "SGPSLD",
-              "SIOONCTRL", "SIOPBI", "SIOPBO", "SIOPWREQ", "SIOPWRGD", "SIOS3",
-              "SIOS5", "SIOSCI", "SPI1", "SPI1DEBUG", "SPI1PASSTHRU", "SPICS1",
-              "TIMER3", "TIMER4", "TIMER5", "TIMER6", "TIMER7", "TIMER8", "TXD1",
-              "TXD2", "TXD3", "TXD4", "UART6", "USB11D1", "USB11H2", "USB2D1",
-              "USB2H1", "USBCKI", "VGABIOS_ROM", "VGAHS", "VGAVS", "VPI18",
-              "VPI24", "VPI30", "VPO12", "VPO24", "WDTRST1", "WDTRST2" ]
+            - enum: [ ACPI, ADC0, ADC1, ADC10, ADC11, ADC12, ADC13, ADC14,
+              ADC15, ADC2, ADC3, ADC4, ADC5, ADC6, ADC7, ADC8, ADC9, BMCINT,
+              DDCCLK, DDCDAT, EXTRST, FLACK, FLBUSY, FLWP, GPID, GPID0, GPID2,
+              GPID4, GPID6, GPIE0, GPIE2, GPIE4, GPIE6, I2C10, I2C11, I2C12,
+              I2C13, I2C14, I2C3, I2C4, I2C5, I2C6, I2C7, I2C8, I2C9, LPCPD,
+              LPCPME, LPCRST, LPCSMI, MAC1LINK, MAC2LINK, MDIO1, MDIO2, NCTS1,
+              NCTS2, NCTS3, NCTS4, NDCD1, NDCD2, NDCD3, NDCD4, NDSR1, NDSR2,
+              NDSR3, NDSR4, NDTR1, NDTR2, NDTR3, NDTR4, NDTS4, NRI1, NRI2,
+              NRI3, NRI4, NRTS1, NRTS2, NRTS3, OSCCLK, PWM0, PWM1, PWM2, PWM3,
+              PWM4, PWM5, PWM6, PWM7, RGMII1, RGMII2, RMII1, RMII2, ROM16,
+              ROM8, ROMCS1, ROMCS2, ROMCS3, ROMCS4, RXD1, RXD2, RXD3, RXD4,
+              SALT1, SALT2, SALT3, SALT4, SD1, SD2, SGPMCK, SGPMI, SGPMLD,
+              SGPMO, SGPSCK, SGPSI0, SGPSI1, SGPSLD, SIOONCTRL, SIOPBI, SIOPBO,
+              SIOPWREQ, SIOPWRGD, SIOS3, SIOS5, SIOSCI, SPI1, SPI1DEBUG,
+              SPI1PASSTHRU, SPICS1, TIMER3, TIMER4, TIMER5, TIMER6, TIMER7,
+              TIMER8, TXD1, TXD2, TXD3, TXD4, UART6, USB11D1, USB11H2, USB2D1,
+              USB2H1, USBCKI, VGABIOS_ROM, VGAHS, VGAVS, VPI18, VPI24, VPI30,
+              VPO12, VPO24, WDTRST1, WDTRST2 ]
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
index cf561bd55128..d1984f619b74 100644
--- a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
@@ -42,31 +42,26 @@ patternProperties:
         "^function|groups$":
           allOf:
             - $ref: "/schemas/types.yaml#/definitions/string"
-            - enum: [ "ACPI", "ADC0", "ADC1", "ADC10", "ADC11", "ADC12", "ADC13",
-              "ADC14", "ADC15", "ADC2", "ADC3", "ADC4", "ADC5", "ADC6", "ADC7",
-              "ADC8", "ADC9", "BMCINT", "DDCCLK", "DDCDAT", "ESPI", "FWSPICS1",
-              "FWSPICS2", "GPID0", "GPID2", "GPID4", "GPID6", "GPIE0", "GPIE2",
-              "GPIE4", "GPIE6", "I2C10", "I2C11", "I2C12", "I2C13", "I2C14",
-              "I2C3", "I2C4", "I2C5", "I2C6", "I2C7", "I2C8", "I2C9", "LAD0",
-              "LAD1", "LAD2", "LAD3", "LCLK", "LFRAME", "LPCHC", "LPCPD",
-              "LPCPLUS", "LPCPME", "LPCRST", "LPCSMI", "LSIRQ", "MAC1LINK",
-              "MAC2LINK", "MDIO1", "MDIO2", "NCTS1", "NCTS2", "NCTS3", "NCTS4",
-              "NDCD1", "NDCD2", "NDCD3", "NDCD4", "NDSR1", "NDSR2", "NDSR3",
-              "NDSR4", "NDTR1", "NDTR2", "NDTR3", "NDTR4", "NRI1", "NRI2",
-              "NRI3", "NRI4", "NRTS1", "NRTS2", "NRTS3", "NRTS4", "OSCCLK",
-              "PEWAKE", "PNOR", "PWM0", "PWM1", "PWM2", "PWM3", "PWM4", "PWM5",
-              "PWM6", "PWM7", "RGMII1", "RGMII2", "RMII1", "RMII2", "RXD1",
-              "RXD2", "RXD3", "RXD4", "SALT1", "SALT10", "SALT11", "SALT12",
-              "SALT13", "SALT14", "SALT2", "SALT3", "SALT4", "SALT5", "SALT6",
-              "SALT7", "SALT8", "SALT9", "SCL1", "SCL2", "SD1", "SD2", "SDA1",
-              "SDA2", "SGPS1", "SGPS2", "SIOONCTRL", "SIOPBI", "SIOPBO",
-              "SIOPWREQ", "SIOPWRGD", "SIOS3", "SIOS5", "SIOSCI", "SPI1",
-              "SPI1CS1", "SPI1DEBUG", "SPI1PASSTHRU", "SPI2CK", "SPI2CS0",
-              "SPI2CS1", "SPI2MISO", "SPI2MOSI", "TIMER3", "TIMER4", "TIMER5",
-              "TIMER6", "TIMER7", "TIMER8", "TXD1", "TXD2", "TXD3", "TXD4",
-              "UART6", "USB11BHID", "USB2AD", "USB2AH", "USB2BD", "USB2BH",
-              "USBCKI", "VGABIOSROM", "VGAHS", "VGAVS", "VPI24", "VPO",
-              "WDTRST1", "WDTRST2", ]
+            - enum: [ ACPI, ADC0, ADC1, ADC10, ADC11, ADC12, ADC13, ADC14,
+              ADC15, ADC2, ADC3, ADC4, ADC5, ADC6, ADC7, ADC8, ADC9, BMCINT,
+              DDCCLK, DDCDAT, ESPI, FWSPICS1, FWSPICS2, GPID0, GPID2, GPID4,
+              GPID6, GPIE0, GPIE2, GPIE4, GPIE6, I2C10, I2C11, I2C12, I2C13,
+              I2C14, I2C3, I2C4, I2C5, I2C6, I2C7, I2C8, I2C9, LAD0, LAD1,
+              LAD2, LAD3, LCLK, LFRAME, LPCHC, LPCPD, LPCPLUS, LPCPME, LPCRST,
+              LPCSMI, LSIRQ, MAC1LINK, MAC2LINK, MDIO1, MDIO2, NCTS1, NCTS2,
+              NCTS3, NCTS4, NDCD1, NDCD2, NDCD3, NDCD4, NDSR1, NDSR2, NDSR3,
+              NDSR4, NDTR1, NDTR2, NDTR3, NDTR4, NRI1, NRI2, NRI3, NRI4, NRTS1,
+              NRTS2, NRTS3, NRTS4, OSCCLK, PEWAKE, PNOR, PWM0, PWM1, PWM2,
+              PWM3, PWM4, PWM5, PWM6, PWM7, RGMII1, RGMII2, RMII1, RMII2, RXD1,
+              RXD2, RXD3, RXD4, SALT1, SALT10, SALT11, SALT12, SALT13, SALT14,
+              SALT2, SALT3, SALT4, SALT5, SALT6, SALT7, SALT8, SALT9, SCL1,
+              SCL2, SD1, SD2, SDA1, SDA2, SGPS1, SGPS2, SIOONCTRL, SIOPBI,
+              SIOPBO, SIOPWREQ, SIOPWRGD, SIOS3, SIOS5, SIOSCI, SPI1, SPI1CS1,
+              SPI1DEBUG, SPI1PASSTHRU, SPI2CK, SPI2CS0, SPI2CS1, SPI2MISO,
+              SPI2MOSI, TIMER3, TIMER4, TIMER5, TIMER6, TIMER7, TIMER8, TXD1,
+              TXD2, TXD3, TXD4, UART6, USB11BHID, USB2AD, USB2AH, USB2BD,
+              USB2BH, USBCKI, VGABIOSROM, VGAHS, VGAVS, VPI24, VPO, WDTRST1,
+              WDTRST2, ]
 
 required:
   - compatible
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
