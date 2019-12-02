Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DF010E5C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 07:13:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HlAmHdZENi1AC15NxNA+/MOHJQ3SswUF7jMAmAyU5Ng=; b=tM7kSjU03Vvxkm
	IJI34jWfWre/9e2W9f+1pTO2229AjToYVl3iquaEMcCpFTmXIepskFg6pIdCeLBOi1j451Ahol6oo
	78jRvw7CleNFkUspuqlSuVkz0gHN42oZdqCKVojukYSTkvWR5jXW+tY3ebDSSty+VbaHJZw/eJ973
	rBX6kxYYoC90yxwHJK0cNwE/ouqiYcSf4FDRMLQ4SMUXmEwTIXAla8BJhIcDWMSZ2Xa6l1UUAGEC2
	z82FZ/yC79ehxRjTamUfONV43m0agqQqTz2KPWYLWNdrqUHR9W+UkCRWL9DX6OTHE1tc4l+J4Khcb
	u2aS+g3KBCmZ5B9sWy4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibexa-0003c8-N6; Mon, 02 Dec 2019 06:13:26 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibex7-0003Rk-OE
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 06:12:59 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 2D37E224A7;
 Mon,  2 Dec 2019 01:12:57 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 02 Dec 2019 01:12:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=jlWllcUTVv5SX
 2RtZ9JYjgUykmxfyTIbsbM3/crA7Bk=; b=SiFFskpvT863fYykSPWCZxSQxS/7a
 OGo2IfpYymebOZam21NPxk14QRZpNHuSgx3CoC5wvrdf0LXBhcYbuEUnF7g2lGRq
 4XuCMBFXEmgaU0SsYw0Ep8ZthBwPTEop1gXVTZYTyQW6EgOCQLB8pgUG7a+cdJGq
 XgZlat0xGEd/tLSsXUcJPQ16nytxC4qnnKJH47vAqHG40lx0oFC9x54QR+1rk095
 waUhkktCW/sHxf17QZjsSeiPg0hgrZorw5dOKdqT8PkDnoaTYUSo9PLBhnYDOeNt
 8Lw/LKm8EVsE5rIvXF8H3eAAVrDdKKja7c5BTqRfiAAFWV/Z+DZVoJAvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=jlWllcUTVv5SX2RtZ9JYjgUykmxfyTIbsbM3/crA7Bk=; b=TB+uzLSI
 OXoNTZaBtPf91ojLROKEoRTRKCB5IqxtZDrkFthHhZEGvskldl6fnqxOBGXRaX/b
 cSj7o6zgDwt/ELLkoHf+WBDOy84LXh1EgcCEjm4j/di79WXrnnaE1l/Sl3QAIhB/
 h8tkOdbjHBgKB29lniqcGDJyt4Hlob8tp+EMDoMEboGJ+sjifb80P2e4/vLGbvNF
 XfBxr0PIIDHcPySxf94BVRgdfIK9051y4UWIN1RTscKntJsNIhyR8p2UdaH+jGMF
 VREWQaa925o/vLzwnAqIHMF5bjo8CCpszvDxzGD1G8J/pyndOwWOU8un80aljOPb
 6+voZYLL7xj+/w==
X-ME-Sender: <xms:aKvkXRexa_jaylCUU4jPDhz6-gjGbynbjPpKPPzZyoLUZmBpDKGRJQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejgedgleegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfkphepudduke
 drvdduuddrledvrddufeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegr
 jhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:aKvkXf4ccZ_Y1VcKSjHwy951XsrLFEfQaNJm_kJ345N3bIRM5X5HcQ>
 <xmx:aKvkXVnzVLBxVC9VfXBpzvmNoj5yz6biii4FhTKH8cCpuxTWLcllog>
 <xmx:aKvkXa9kqk3vXxjmWWDf89PumX5Q14GXqiq8omf8QVhWZRqZP8Nc9A>
 <xmx:aavkXSZMYI4-PxUJxKNSJ6l0LVQqgveNS6IeGa43fz1SjZyjvkcp7Q>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id F0AFD80059;
 Mon,  2 Dec 2019 01:12:52 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 2/7] pinctrl: aspeed-g6: Add AST2600 I3C1 and I3C2 pinmux
 config
Date: Mon,  2 Dec 2019 16:44:27 +1030
Message-Id: <20191202061432.3996-3-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191202061432.3996-1-andrew@aj.id.au>
References: <20191202061432.3996-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_221258_204362_7D841F18 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
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

These pins only expose a single function but are not fixed-function as
their I3C capability can be disabled.

Signed-off-by: Johnny Huang <johnny_huang@aspeedtech.com>
[AJ: Tweak commit message, sort pins list]
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 30 +++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
index c6800d220920..49fc4824ccee 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
@@ -37,7 +37,7 @@
 #define SCU510		0x510 /* Hardware Strap 2 */
 #define SCU694		0x694 /* Multi-function Pin Control #25 */
 
-#define ASPEED_G6_NR_PINS 248
+#define ASPEED_G6_NR_PINS 252
 
 #define M24 0
 SIG_EXPR_LIST_DECL_SESG(M24, MDC3, MDIO3, SIG_DESC_SET(SCU410, 0));
@@ -1542,6 +1542,26 @@ GROUP_DECL(I3C4, AE25, AF24);
 FUNC_DECL_2(I3C4, HVI3C4, I3C4);
 FUNC_GROUP_DECL(FSI2, AE25, AF24);
 
+#define AF23 248
+SIG_EXPR_LIST_DECL_SESG(AF23, I3C1SCL, I3C1, SIG_DESC_SET(SCU438, 16));
+PIN_DECL_(AF23, SIG_EXPR_LIST_PTR(AF23, I3C1SCL));
+
+#define AE24 249
+SIG_EXPR_LIST_DECL_SESG(AE24, I3C1SDA, I3C1, SIG_DESC_SET(SCU438, 17));
+PIN_DECL_(AE24, SIG_EXPR_LIST_PTR(AE24, I3C1SDA));
+
+FUNC_GROUP_DECL(I3C1, AF23, AE24);
+
+#define AF22 250
+SIG_EXPR_LIST_DECL_SESG(AF22, I3C2SCL, I3C2, SIG_DESC_SET(SCU438, 18));
+PIN_DECL_(AF22, SIG_EXPR_LIST_PTR(AF22, I3C2SCL));
+
+#define AE22 251
+SIG_EXPR_LIST_DECL_SESG(AE22, I3C2SDA, I3C2, SIG_DESC_SET(SCU438, 19));
+PIN_DECL_(AE22, SIG_EXPR_LIST_PTR(AE22, I3C2SDA));
+
+FUNC_GROUP_DECL(I3C2, AF22, AE22);
+
 /* Pins, groups and functions are sort(1):ed alphabetically for sanity */
 
 static struct pinctrl_pin_desc aspeed_g6_pins[ASPEED_G6_NR_PINS] = {
@@ -1633,6 +1653,8 @@ static struct pinctrl_pin_desc aspeed_g6_pins[ASPEED_G6_NR_PINS] = {
 	ASPEED_PINCTRL_PIN(AE16),
 	ASPEED_PINCTRL_PIN(AE18),
 	ASPEED_PINCTRL_PIN(AE19),
+	ASPEED_PINCTRL_PIN(AE22),
+	ASPEED_PINCTRL_PIN(AE24),
 	ASPEED_PINCTRL_PIN(AE25),
 	ASPEED_PINCTRL_PIN(AE26),
 	ASPEED_PINCTRL_PIN(AE7),
@@ -1642,6 +1664,8 @@ static struct pinctrl_pin_desc aspeed_g6_pins[ASPEED_G6_NR_PINS] = {
 	ASPEED_PINCTRL_PIN(AF12),
 	ASPEED_PINCTRL_PIN(AF14),
 	ASPEED_PINCTRL_PIN(AF15),
+	ASPEED_PINCTRL_PIN(AF22),
+	ASPEED_PINCTRL_PIN(AF23),
 	ASPEED_PINCTRL_PIN(AF24),
 	ASPEED_PINCTRL_PIN(AF25),
 	ASPEED_PINCTRL_PIN(AF7),
@@ -1855,6 +1879,8 @@ static const struct aspeed_pin_group aspeed_g6_groups[] = {
 	ASPEED_PINCTRL_GROUP(I2C7),
 	ASPEED_PINCTRL_GROUP(I2C8),
 	ASPEED_PINCTRL_GROUP(I2C9),
+	ASPEED_PINCTRL_GROUP(I3C1),
+	ASPEED_PINCTRL_GROUP(I3C2),
 	ASPEED_PINCTRL_GROUP(I3C3),
 	ASPEED_PINCTRL_GROUP(I3C4),
 	ASPEED_PINCTRL_GROUP(I3C5),
@@ -2087,6 +2113,8 @@ static const struct aspeed_pin_function aspeed_g6_functions[] = {
 	ASPEED_PINCTRL_FUNC(I2C7),
 	ASPEED_PINCTRL_FUNC(I2C8),
 	ASPEED_PINCTRL_FUNC(I2C9),
+	ASPEED_PINCTRL_FUNC(I3C1),
+	ASPEED_PINCTRL_FUNC(I3C2),
 	ASPEED_PINCTRL_FUNC(I3C3),
 	ASPEED_PINCTRL_FUNC(I3C4),
 	ASPEED_PINCTRL_FUNC(I3C5),
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
