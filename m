Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4358433B8D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 00:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bftt3I7djClfZCYN6rAfFwo33vklXhXjLoTwzQ2Hrnc=; b=mLRFfV0Kmgn+Tb
	Grh6Cy5/IGLxLPQuDRjukmTt18cv2kYAuzi4k1Hztfu3ie7XAIiQwaAV4T6By4813j/4MqFIo9UL/
	+yator0KVRGqtcnoeRsu7/a2MHbmsxS7/9s1PWyS8Y5oLwXvyDYDHNn9OitS6MsA4pwqLXun5Ydew
	hQOuawsKAr6PIhayvB9Yf4ykk3WwM3vpP3pNkcKu71Cs0uoAlb5H0MWuj8XfIMDFRupW+UMtoX2Xl
	TayYaEmdGcLEH8BAqhhrV4sm0jIK/o7/C0AnGafrg1q+Morsis5faIQYfrbfxg10tC/eWAKSlO/my
	FO43E3nlHvqmDUdvqJzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXvgn-0001U6-TI; Mon, 03 Jun 2019 22:44:25 +0000
Received: from atlmailgw2.ami.com ([63.147.10.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXvgg-0001TG-Lw
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 22:44:20 +0000
X-AuditID: ac10606f-bd5ff70000003de9-4b-5cf5a2bc2cf5
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw2.ami.com (Symantec Messaging Gateway) with SMTP id
 C7.FD.15849.CB2A5FC5; Mon,  3 Jun 2019 18:44:13 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 3 Jun 2019 18:44:12 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Joel Stanley <joel@jms.id.au>, Linus Walleij <linus.walleij@linaro.org>,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>, Mark
 Rutland <mark.rutland@arm.com>
Subject: [PATCH linux dev-5.1 v1] ARM: dts: aspeed: Add SGPM pinmux
Date: Mon, 3 Jun 2019 18:43:09 -0400
Message-ID: <1559601789-27121-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrCLMWRmVeSWpSXmKPExsWyRiBhgu7eRV9jDJ5NkLTYdZnDYv6Rc6wW
 v8//ZbaY8mc5k8Wmx9dYLZpXn2O22Dz/D6PF5V1z2CyWXr/IZNG69wi7A5fH1fZd7B5r5q1h
 9Lj48Rizx6ZVnWwed67tYfPYvKTe4/yMhYwenzfJBXBEcdmkpOZklqUW6dslcGVsubuKqWC2
 RMWfM81MDYzHRboYOTkkBEwkXrz9xQZiCwnsYpK4s6usi5ELyD7EKDH9/C12kASbgJrE3s1z
 mEASIgI7GCU657exgjjMAmcZJTY83MsMUiUs4Czx78NGRhCbRUBFYu2sS2BxXgEHic4rk9kh
 1slJ3DzXCRUXlDg58wkLiM0sICFx8MULZogzZCVuHXrMBFGvIPG87zHLBEa+WUhaZiFpWcDI
 tIpRKLEkJzcxMye93EgvMTdTLzk/dxMjJKTzdzB+/Gh+iJGJgxHoJQ5mJRHexNtfYoR4UxIr
 q1KL8uOLSnNSiw8xSnOwKInzzgi5HCMkkJ5YkpqdmlqQWgSTZeLglGpgXFWk/GnRonOdGUuS
 Yvj+KN696zD/SIOiGe9i1tu51qxbHpmmTKi+xySVLxDkWlKqesnXKcfL1mijY7nSMhND1wcz
 nFXCAo1vqgbVvpP/wvr8Q3ha28qiqNnlLscamS8/Z7tUU6QdbnZvscfNq0IFhzYXzP59cmJw
 ZLXxjnk29exmpTETWL4rsRRnJBpqMRcVJwIA93vZXlcCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_154418_787178_75AF6528 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [63.147.10.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Hongwei Zhang <hongweiz@ami.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add SGPM pinmux to ast2500-pinctrl function and group, to prepare for
supporting SGPIO in AST2500 SoC.

Signed-off-by: Hongwei Zhang <hongweiz@ami.com>
---
 Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt | 2 +-
 arch/arm/boot/dts/aspeed-g5.dtsi                             | 5 +++++
 drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c                   | 4 ++++
 3 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt b/Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt
index 3b7266c..8f1c5c4 100644
--- a/Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt
+++ b/Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt
@@ -84,7 +84,7 @@ NDCD2 NDCD3 NDCD4 NDSR1 NDSR2 NDSR3 NDSR4 NDTR1 NDTR2 NDTR3 NDTR4 NRI1 NRI2
 NRI3 NRI4 NRTS1 NRTS2 NRTS3 NRTS4 OSCCLK PEWAKE PNOR PWM0 PWM1 PWM2 PWM3 PWM4
 PWM5 PWM6 PWM7 RGMII1 RGMII2 RMII1 RMII2 RXD1 RXD2 RXD3 RXD4 SALT1 SALT10
 SALT11 SALT12 SALT13 SALT14 SALT2 SALT3 SALT4 SALT5 SALT6 SALT7 SALT8 SALT9
-SCL1 SCL2 SD1 SD2 SDA1 SDA2 SGPS1 SGPS2 SIOONCTRL SIOPBI SIOPBO SIOPWREQ
+SCL1 SCL2 SD1 SD2 SDA1 SDA2 SGPM SGPS1 SGPS2 SIOONCTRL SIOPBI SIOPBO SIOPWREQ
 SIOPWRGD SIOS3 SIOS5 SIOSCI SPI1 SPI1CS1 SPI1DEBUG SPI1PASSTHRU SPI2CK SPI2CS0
 SPI2CS1 SPI2MISO SPI2MOSI TIMER3 TIMER4 TIMER5 TIMER6 TIMER7 TIMER8 TXD1 TXD2
 TXD3 TXD4 UART6 USB11BHID USB2AD USB2AH USB2BD USB2BH USBCKI VGABIOSROM VGAHS
diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index 383510d..d10c3ea 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -1394,6 +1394,11 @@
 		groups = "SDA2";
 	};
 
+	pinctrl_sgpm_default: sgpm_default {
+		function = "SGPM";
+		groups = "SGPM";
+	};
+
 	pinctrl_sgps1_default: sgps1_default {
 		function = "SGPS1";
 		groups = "SGPS1";
diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
index 187abd7..0c89647 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
@@ -577,6 +577,8 @@ SS_PIN_DECL(N3, GPIOJ2, SGPMO);
 SIG_EXPR_LIST_DECL_SINGLE(SGPMI, SGPM, SIG_DESC_SET(SCU84, 11));
 SS_PIN_DECL(N4, GPIOJ3, SGPMI);
 
+FUNC_GROUP_DECL(SGPM, R2, L2, N3, N4);
+
 #define N5 76
 SIG_EXPR_LIST_DECL_SINGLE(VGAHS, VGAHS, SIG_DESC_SET(SCU84, 12));
 SIG_EXPR_LIST_DECL_SINGLE(DASHN5, DASHN5, SIG_DESC_SET(SCU94, 8));
@@ -2127,6 +2129,7 @@ static const struct aspeed_pin_group aspeed_g5_groups[] = {
 	ASPEED_PINCTRL_GROUP(SD2),
 	ASPEED_PINCTRL_GROUP(SDA1),
 	ASPEED_PINCTRL_GROUP(SDA2),
+	ASPEED_PINCTRL_GROUP(SGPM),
 	ASPEED_PINCTRL_GROUP(SGPS1),
 	ASPEED_PINCTRL_GROUP(SGPS2),
 	ASPEED_PINCTRL_GROUP(SIOONCTRL),
@@ -2296,6 +2299,7 @@ static const struct aspeed_pin_function aspeed_g5_functions[] = {
 	ASPEED_PINCTRL_FUNC(SD2),
 	ASPEED_PINCTRL_FUNC(SDA1),
 	ASPEED_PINCTRL_FUNC(SDA2),
+	ASPEED_PINCTRL_FUNC(SGPM),
 	ASPEED_PINCTRL_FUNC(SGPS1),
 	ASPEED_PINCTRL_FUNC(SGPS2),
 	ASPEED_PINCTRL_FUNC(SIOONCTRL),
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
