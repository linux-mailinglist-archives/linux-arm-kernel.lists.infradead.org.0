Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E683F10E5C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 07:13:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5iTR+6otzZ03P9LG7py/Duo4t7SHfhRdzghnJ3CxTAQ=; b=sle5ctoEP8WsKP
	/nI+zR/kaM8LWGR4LTKo86r/GczTN5sefu5vbkFMFhpOIBTmkq2vVXyEQgyUj1yNKrnm2qB53VA/W
	2YRs3TN2ZOeJ0I2aD4WHQD9Inm1TtgPIUo0SXSLUwBzq+JD6Gh2m+/tY+9JgEp18HslOnKenkw9Gc
	gDMo9uINQJdwx/TcpgVxP1qoiNPMr5uda7fCPJyPvKCH4e+oEUX92WmDtdL1gOUUWnQLisMpwHCss
	92mbjYQ+wwvfQWBID1o1nkQ8Q2CtrEafEIcR0sft/g+V7mPmm2/81TKlRAklGztLcz2y0UIL6Or0E
	nawMuAusQVJ8zInOKmlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibey4-00049k-J3; Mon, 02 Dec 2019 06:13:56 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibexB-0003TW-JT
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 06:13:03 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 03B3C224A7;
 Mon,  2 Dec 2019 01:13:01 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 02 Dec 2019 01:13:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=E36weiBH8m/Vq
 E8nSge2uRzO3FAv6UpmEY1p78whbww=; b=jUMO0tAq6sSANBEBAqloK9D6C+At/
 7pKA4p8v1B83EeZGnmkMqr6hvuOLo2lUeP4PVgGM4K+Xr8II+xxjfkSBbzA7v3e2
 M1x1fiAHcSXpDvjEaij7r1AIjhi3dWXjhiy9Hx//sN/C2dzn2pKGAHVDlPcN5mDC
 FpU2Q01mo7M+0PG4rW9bjmLHMfYIkbrjVkbUbBJnZz5gW/+dI1f/cTqyXDXZnlKr
 4pXMFRSsZmSzUDvdbtVy4bMT5nHNpS3YVlC8TeoZA/C9wQQpuQ2e5Bmk0y2/WbRD
 DHu71Vg1wpxK/pWV0L7jgLhR/T496lUVoCe/KAoc80umrosWdB9F/hJtA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=E36weiBH8m/VqE8nSge2uRzO3FAv6UpmEY1p78whbww=; b=kX8Hyyls
 KJrDhRrXYadinZ9nW87eF0NNch6DNgd50WOhXMz4OyBn/uANa/JNDZaNc4dJMJ75
 wXDy4iFsBT1lf816s8oBaJpzAirBJlvlDJqp7Oa95trAVSz0vCP6PtU3uBMrNs4I
 Jc5b2kgWqKWohQWbLQy1+pVx7oBGemrZ1290T4li9oFE47a8c0XPPeyP1NI+CYoh
 lxpRKGM+WQDXUGRZ6+cRet/L0ep88E5n9Nl3fejEfgiIcNyJu/cytVr+xNBircee
 1hR/4+PmwgLw1GtEe4DePLN8JAy3WrNwCUMozKv1upfCzH6YtXE7RZztbJPrbiKs
 DCiT+ED4G12qyQ==
X-ME-Sender: <xms:bKvkXbM7RnNqDD1p4qbScRMALn1XcMKYSmUkTUFlWo9GiOGJeGjfnQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejgedgleegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfkphepudduke
 drvdduuddrledvrddufeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegr
 jhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedv
X-ME-Proxy: <xmx:bKvkXbgqzOXSGuwt8SAmYkdFv4jMB7lKLJ8EweNg79ZOYnU8OLrKGA>
 <xmx:bKvkXcRXloOcOO5l0QB5UmLc7XBM6P0ol7x8DoJyzx7d6XilCHsczQ>
 <xmx:bKvkXeMag0KRyE-_6w9NQzeHc8QCEe0i-VwbUWT6KhvLew9PaDpf0A>
 <xmx:bKvkXZwmr-NkiYvIaAwMi-kD88sl4i3jIIZMtM4FEc4-9hLEQS4HaQ>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id 527EE8005B;
 Mon,  2 Dec 2019 01:12:57 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 3/7] pinctrl: aspeed-g6: Add support for the AST2600 USB pinmux
Date: Mon,  2 Dec 2019 16:44:28 +1030
Message-Id: <20191202061432.3996-4-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191202061432.3996-1-andrew@aj.id.au>
References: <20191202061432.3996-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_221301_803229_BFE34E4F 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Johnny Huang <johnny_huang@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Johnny Huang <johnny_huang@aspeedtech.com>

AST2600 has two USB ports, A, B:

Port A supports 4 distinct modes:
	1. PCIe EHCI to Hub
	2. Hub to PHY
	3. BMC EHCI to PHY
	4. PCIe EHCI to PHY

Port B support 3 modes:
	1. USB1.1 HID controller
	2. USB2.0 Device controller
	3. BMC EHCI port2

Implement pinmux support by mapping each ports' functions onto a single
pin group for each port.

Signed-off-by: Johnny Huang <johnny_huang@aspeedtech.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 69 +++++++++++++++++++++-
 drivers/pinctrl/aspeed/pinmux-aspeed.h     |  1 +
 2 files changed, 69 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
index 49fc4824ccee..22e6c07149c3 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
@@ -26,6 +26,7 @@
 #define SCU430		0x430 /* Multi-function Pin Control #8  */
 #define SCU434		0x434 /* Multi-function Pin Control #9  */
 #define SCU438		0x438 /* Multi-function Pin Control #10 */
+#define SCU440		0x440 /* USB Multi-function Pin Control #12 */
 #define SCU450		0x450 /* Multi-function Pin Control #14 */
 #define SCU4B0		0x4B0 /* Multi-function Pin Control #17 */
 #define SCU4B4		0x4B4 /* Multi-function Pin Control #18 */
@@ -36,8 +37,9 @@
 #define SCU500		0x500 /* Hardware Strap 1 */
 #define SCU510		0x510 /* Hardware Strap 2 */
 #define SCU694		0x694 /* Multi-function Pin Control #25 */
+#define SCUC20		0xC20 /* PCIE configuration Setting Control */
 
-#define ASPEED_G6_NR_PINS 252
+#define ASPEED_G6_NR_PINS 256
 
 #define M24 0
 SIG_EXPR_LIST_DECL_SESG(M24, MDC3, MDIO3, SIG_DESC_SET(SCU410, 0));
@@ -1562,6 +1564,58 @@ PIN_DECL_(AE22, SIG_EXPR_LIST_PTR(AE22, I3C2SDA));
 
 FUNC_GROUP_DECL(I3C2, AF22, AE22);
 
+#define USB2ADP_DESC   { ASPEED_IP_SCU, SCU440, GENMASK(25, 24), 0, 0 }
+#define USB2AD_DESC    { ASPEED_IP_SCU, SCU440, GENMASK(25, 24), 1, 0 }
+#define USB2AH_DESC    { ASPEED_IP_SCU, SCU440, GENMASK(25, 24), 2, 0 }
+#define USB2AHP_DESC   { ASPEED_IP_SCU, SCU440, GENMASK(25, 24), 3, 0 }
+#define USB11BHID_DESC { ASPEED_IP_SCU, SCU440, GENMASK(29, 28), 0, 0 }
+#define USB2BD_DESC    { ASPEED_IP_SCU, SCU440, GENMASK(29, 28), 1, 0 }
+#define USB2BH_DESC    { ASPEED_IP_SCU, SCU440, GENMASK(29, 28), 2, 0 }
+
+#define A4 252
+SIG_EXPR_LIST_DECL_SEMG(A4, USB2ADPDP, USBA, USB2ADP, USB2ADP_DESC,
+			SIG_DESC_SET(SCUC20, 16));
+SIG_EXPR_LIST_DECL_SEMG(A4, USB2ADDP, USBA, USB2AD, USB2AD_DESC);
+SIG_EXPR_LIST_DECL_SEMG(A4, USB2AHDP, USBA, USB2AH, USB2AH_DESC);
+SIG_EXPR_LIST_DECL_SEMG(A4, USB2AHPDP, USBA, USB2AHP, USB2AHP_DESC);
+PIN_DECL_(A4, SIG_EXPR_LIST_PTR(A4, USB2ADPDP), SIG_EXPR_LIST_PTR(A4, USB2ADDP),
+	  SIG_EXPR_LIST_PTR(A4, USB2AHDP));
+
+#define B4 253
+SIG_EXPR_LIST_DECL_SEMG(B4, USB2ADPDN, USBA, USB2ADP, USB2ADP_DESC);
+SIG_EXPR_LIST_DECL_SEMG(B4, USB2ADDN, USBA, USB2AD, USB2AD_DESC);
+SIG_EXPR_LIST_DECL_SEMG(B4, USB2AHDN, USBA, USB2AH, USB2AH_DESC);
+SIG_EXPR_LIST_DECL_SEMG(B4, USB2AHPDN, USBA, USB2AHP, USB2AHP_DESC);
+PIN_DECL_(B4, SIG_EXPR_LIST_PTR(B4, USB2ADPDN), SIG_EXPR_LIST_PTR(B4, USB2ADDN),
+	  SIG_EXPR_LIST_PTR(B4, USB2AHDN));
+
+GROUP_DECL(USBA, A4, B4);
+
+FUNC_DECL_1(USB2ADP, USBA);
+FUNC_DECL_1(USB2AD, USBA);
+FUNC_DECL_1(USB2AH, USBA);
+FUNC_DECL_1(USB2AHP, USBA);
+
+#define A6 254
+SIG_EXPR_LIST_DECL_SEMG(A6, USB11BDP, USBB, USB11BHID, USB11BHID_DESC);
+SIG_EXPR_LIST_DECL_SEMG(A6, USB2BDDP, USBB, USB2BD, USB2BD_DESC);
+SIG_EXPR_LIST_DECL_SEMG(A6, USB2BHDP, USBB, USB2BH, USB2BH_DESC);
+PIN_DECL_(A6, SIG_EXPR_LIST_PTR(A6, USB11BDP), SIG_EXPR_LIST_PTR(A6, USB2BDDP),
+	  SIG_EXPR_LIST_PTR(A6, USB2BHDP));
+
+#define B6 255
+SIG_EXPR_LIST_DECL_SEMG(B6, USB11BDN, USBB, USB11BHID, USB11BHID_DESC);
+SIG_EXPR_LIST_DECL_SEMG(B6, USB2BDDN, USBB, USB2BD, USB2BD_DESC);
+SIG_EXPR_LIST_DECL_SEMG(B6, USB2BHDN, USBB, USB2BH, USB2BH_DESC);
+PIN_DECL_(B6, SIG_EXPR_LIST_PTR(B6, USB11BDN), SIG_EXPR_LIST_PTR(B6, USB2BDDN),
+	  SIG_EXPR_LIST_PTR(B6, USB2BHDN));
+
+GROUP_DECL(USBB, A6, B6);
+
+FUNC_DECL_1(USB11BHID, USBB);
+FUNC_DECL_1(USB2BD, USBB);
+FUNC_DECL_1(USB2BH, USBB);
+
 /* Pins, groups and functions are sort(1):ed alphabetically for sanity */
 
 static struct pinctrl_pin_desc aspeed_g6_pins[ASPEED_G6_NR_PINS] = {
@@ -1582,6 +1636,8 @@ static struct pinctrl_pin_desc aspeed_g6_pins[ASPEED_G6_NR_PINS] = {
 	ASPEED_PINCTRL_PIN(A24),
 	ASPEED_PINCTRL_PIN(A25),
 	ASPEED_PINCTRL_PIN(A3),
+	ASPEED_PINCTRL_PIN(A4),
+	ASPEED_PINCTRL_PIN(A6),
 	ASPEED_PINCTRL_PIN(AA11),
 	ASPEED_PINCTRL_PIN(AA12),
 	ASPEED_PINCTRL_PIN(AA16),
@@ -1686,6 +1742,8 @@ static struct pinctrl_pin_desc aspeed_g6_pins[ASPEED_G6_NR_PINS] = {
 	ASPEED_PINCTRL_PIN(B25),
 	ASPEED_PINCTRL_PIN(B26),
 	ASPEED_PINCTRL_PIN(B3),
+	ASPEED_PINCTRL_PIN(B4),
+	ASPEED_PINCTRL_PIN(B6),
 	ASPEED_PINCTRL_PIN(C1),
 	ASPEED_PINCTRL_PIN(C11),
 	ASPEED_PINCTRL_PIN(C12),
@@ -2046,6 +2104,8 @@ static const struct aspeed_pin_group aspeed_g6_groups[] = {
 	ASPEED_PINCTRL_GROUP(UART7),
 	ASPEED_PINCTRL_GROUP(UART8),
 	ASPEED_PINCTRL_GROUP(UART9),
+	ASPEED_PINCTRL_GROUP(USBA),
+	ASPEED_PINCTRL_GROUP(USBB),
 	ASPEED_PINCTRL_GROUP(VB),
 	ASPEED_PINCTRL_GROUP(VGAHS),
 	ASPEED_PINCTRL_GROUP(VGAVS),
@@ -2257,6 +2317,13 @@ static const struct aspeed_pin_function aspeed_g6_functions[] = {
 	ASPEED_PINCTRL_FUNC(UART7),
 	ASPEED_PINCTRL_FUNC(UART8),
 	ASPEED_PINCTRL_FUNC(UART9),
+	ASPEED_PINCTRL_FUNC(USB11BHID),
+	ASPEED_PINCTRL_FUNC(USB2AD),
+	ASPEED_PINCTRL_FUNC(USB2ADP),
+	ASPEED_PINCTRL_FUNC(USB2AH),
+	ASPEED_PINCTRL_FUNC(USB2AHP),
+	ASPEED_PINCTRL_FUNC(USB2BD),
+	ASPEED_PINCTRL_FUNC(USB2BH),
 	ASPEED_PINCTRL_FUNC(VB),
 	ASPEED_PINCTRL_FUNC(VGAHS),
 	ASPEED_PINCTRL_FUNC(VGAVS),
diff --git a/drivers/pinctrl/aspeed/pinmux-aspeed.h b/drivers/pinctrl/aspeed/pinmux-aspeed.h
index 140c5ce9fbc1..f86739e800c3 100644
--- a/drivers/pinctrl/aspeed/pinmux-aspeed.h
+++ b/drivers/pinctrl/aspeed/pinmux-aspeed.h
@@ -737,6 +737,7 @@ struct aspeed_pin_desc {
 #define FUNC_DECL_(func, ...) \
 	static const char *FUNC_SYM(func)[] = { __VA_ARGS__ }
 
+#define FUNC_DECL_1(func, group) FUNC_DECL_(func, #group)
 #define FUNC_DECL_2(func, one, two) FUNC_DECL_(func, #one, #two)
 #define FUNC_DECL_3(func, one, two, three) FUNC_DECL_(func, #one, #two, #three)
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
