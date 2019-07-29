Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8541784C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 07:57:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/dfj7LuaiwJUCL3wYObTxdQUEkHb2ei+YappVDROsk=; b=T8tzH+c3oIZ+zF
	135QXtqN3wZX2o70P+X/Qy68qZQNVbFpoob4lpwxKagq7E4tlZe0gn+qu/nCvHvjWro4df3F261Z9
	mYgK/PAmz1r8tJmw/BMgXgXKzkNsGuyPFwqiyuZzrR8X4QtYhosNdE5WJwPXXE516iANRSVgpX2dN
	4JoXMZmcWS4/vaKCmkcYVMalyx76Ri+nzrDm5jFwSMjWc6cGiojZ6kdFRiA5jYPCwZipAzZxVy+9p
	gOzfXe17k7AY5w8Gihq05T3OKWfnvCA+vT+PGpqUjrkTNp/LTy0tgCD1lrZwrn4GXCTuIcoJJJi7Z
	YLE5czAjank34XQz48Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hryeq-0007oN-4o; Mon, 29 Jul 2019 05:57:16 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrydp-0007KS-E5
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 05:56:15 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C153622A8;
 Mon, 29 Jul 2019 01:56:12 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 29 Jul 2019 01:56:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=X7ftRY0n/ppqJ
 obOZqCX51ux9OAohStr29ZTJLcVjmQ=; b=EUGH7THdAQOM3iG1Id8jiHV8FZjwQ
 C3hzDk4fQZDzd+y44ucWCSN1MuY8302J8cKFOZzRVdt0+RIQGc2rdP7z/EpcNg5Y
 XPZpBXVjHrwzA7IQTfjYBO3x2IVhNCf3LSN+DYr83pokjOtN6LeMJaKe6kF4dH9m
 A4QXFeik6mO16MK9zyb+uRYJlaHRab+1lz7BXfkmOfQDPAi5jKaKs0GUeFr++qGH
 BsdTMvMQDX04Z4ONup731fYihnUtIbwnJmvJwVut8bFpfGZLGYsltG6bdPnovrod
 Vf0+5JzAuWphnJ1oYY3kn8wFYD0kbxL8/lujjpEmCXQfa4gbCs4qeMECA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=X7ftRY0n/ppqJobOZqCX51ux9OAohStr29ZTJLcVjmQ=; b=bNjOWRxl
 25J8pw0RHXBsJOEzEhKiCTz2e0jvKKsXnTFpEwT2m8t8HYArZNbhVdmMSHPTgCc3
 02RPkuJMhPctf2DMZcNhNfhEmVAXMoqhq7mhiZYHj6EOEFycTLdnYFoDBPRrAJ3R
 JJ8dBmGxv3yEsy/PQcfBG3CwkdR5FWIooFUkIlCIyaDgqHjL095cfmIqm3irHfiu
 xlBhERNxGpo16htg6+Y5YRGUxOjDlc5mZr8XCU+FsHroNfcBodODrV8Fuo93Dgi6
 Qw0QsuCeckuTzNIS7FGu+JBjUBPgQkxr5iXnG0FAsmTAhAuxUpXuLXRRtjgVCABd
 OPbUG7u1bvEIGw==
X-ME-Sender: <xms:fIo-XTzWFpMswbo4cgeSSr5i0Nt4KNTeCNoecqnCLpCXL1ixKtS0AA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrledtgddutddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppedvtddvrdekuddrudekrdeftdenucfrrghrrghmpehmrg
 hilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigv
 pedu
X-ME-Proxy: <xmx:fIo-XR1gy1Lz874ZpvXOjqMDKi5SkSSwgg-ti5Aup7l8Uq9V3c6upQ>
 <xmx:fIo-XagmNyvH2cujLiMIaAkxCaoneW69btXVUbkATWQapf_xWk0hog>
 <xmx:fIo-XflGS1NUezg5Ah4iVwiVa5_Je1JmckekKwoHacTS-j2T5gGlFw>
 <xmx:fIo-XYkfdj7PEE7V22i8z8udPQ20GZlls2bNk-XeJQ-8-jNUZnXScA>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id D2DCD8005B;
 Mon, 29 Jul 2019 01:56:08 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH v2 3/6] pinctrl: aspeed: Add PIN_DECL_3() helper
Date: Mon, 29 Jul 2019 15:26:01 +0930
Message-Id: <20190729055604.13239-4-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729055604.13239-1-andrew@aj.id.au>
References: <20190729055604.13239-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_225613_862393_8F199D14 
X-CRM114-Status: UNSURE (   9.82  )
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

This case is common in the AST2600, so add to the collection.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/pinctrl/aspeed/pinmux-aspeed.h | 72 ++++++++++++++------------
 1 file changed, 40 insertions(+), 32 deletions(-)

diff --git a/drivers/pinctrl/aspeed/pinmux-aspeed.h b/drivers/pinctrl/aspeed/pinmux-aspeed.h
index 0406beedd5ba..964dd5b242ac 100644
--- a/drivers/pinctrl/aspeed/pinmux-aspeed.h
+++ b/drivers/pinctrl/aspeed/pinmux-aspeed.h
@@ -604,38 +604,6 @@ struct aspeed_pin_desc {
 	static const struct aspeed_pin_desc PIN_SYM(pin) = \
 		{ #pin, PIN_EXPRS_PTR(pin) }
 
-/**
- * Declare a two-signal pin
- *
- * @pin: The pin number
- * @other: Macro name for "other" functionality (subjected to stringification)
- * @high: Macro name for the highest priority signal functions
- * @low: Macro name for the low signal functions
- *
- * For example:
- *
- *     #define A8 56
- *     SIG_EXPR_DECL(ROMD8, ROM16, SIG_DESC_SET(SCU90, 6));
- *     SIG_EXPR_DECL(ROMD8, ROM16S, SIG_DESC_SET(HW_STRAP1, 4),
- *              { HW_STRAP1, GENMASK(1, 0), 0, 0 });
- *     SIG_EXPR_LIST_DECL(ROMD8, SIG_EXPR_PTR(ROMD8, ROM16),
- *              SIG_EXPR_PTR(ROMD8, ROM16S));
- *     SIG_EXPR_LIST_DECL_SINGLE(NCTS6, NCTS6, SIG_DESC_SET(SCU90, 7));
- *     PIN_DECL_2(A8, GPIOH0, ROMD8, NCTS6);
- */
-#define PIN_DECL_2(pin, other, high, low) \
-	SIG_EXPR_LIST_DECL_SINGLE(other, other); \
-	PIN_DECL_(pin, \
-			SIG_EXPR_LIST_PTR(high), \
-			SIG_EXPR_LIST_PTR(low), \
-			SIG_EXPR_LIST_PTR(other))
-
-#define PIN_GROUP_SYM(func) pins_ ## func
-#define FUNC_GROUP_SYM(func) groups_ ## func
-#define FUNC_GROUP_DECL(func, ...) \
-	static const int PIN_GROUP_SYM(func)[] = { __VA_ARGS__ }; \
-	static const char *FUNC_GROUP_SYM(func)[] = { #func }
-
 /**
  * Declare a single signal pin
  *
@@ -670,6 +638,46 @@ struct aspeed_pin_desc {
 	SIG_EXPR_LIST_DECL_SINGLE(other, other); \
 	PIN_DECL_(pin, SIG_EXPR_LIST_PTR(sig), SIG_EXPR_LIST_PTR(other)); \
 	FUNC_GROUP_DECL(sig, pin)
+/**
+ * Declare a two-signal pin
+ *
+ * @pin: The pin number
+ * @other: Macro name for "other" functionality (subjected to stringification)
+ * @high: Macro name for the highest priority signal functions
+ * @low: Macro name for the low signal functions
+ *
+ * For example:
+ *
+ *     #define A8 56
+ *     SIG_EXPR_DECL(ROMD8, ROM16, SIG_DESC_SET(SCU90, 6));
+ *     SIG_EXPR_DECL(ROMD8, ROM16S, SIG_DESC_SET(HW_STRAP1, 4),
+ *              { HW_STRAP1, GENMASK(1, 0), 0, 0 });
+ *     SIG_EXPR_LIST_DECL(ROMD8, SIG_EXPR_PTR(ROMD8, ROM16),
+ *              SIG_EXPR_PTR(ROMD8, ROM16S));
+ *     SIG_EXPR_LIST_DECL_SINGLE(NCTS6, NCTS6, SIG_DESC_SET(SCU90, 7));
+ *     PIN_DECL_2(A8, GPIOH0, ROMD8, NCTS6);
+ */
+#define PIN_DECL_2(pin, other, high, low) \
+	SIG_EXPR_LIST_DECL_SINGLE(other, other); \
+	PIN_DECL_(pin, \
+			SIG_EXPR_LIST_PTR(high), \
+			SIG_EXPR_LIST_PTR(low), \
+			SIG_EXPR_LIST_PTR(other))
+
+#define PIN_DECL_3(pin, other, high, medium, low) \
+	SIG_EXPR_LIST_DECL_SINGLE(other, other); \
+	PIN_DECL_(pin, \
+			SIG_EXPR_LIST_PTR(high), \
+			SIG_EXPR_LIST_PTR(medium), \
+			SIG_EXPR_LIST_PTR(low), \
+			SIG_EXPR_LIST_PTR(other))
+
+#define PIN_GROUP_SYM(func) pins_ ## func
+#define FUNC_GROUP_SYM(func) groups_ ## func
+#define FUNC_GROUP_DECL(func, ...) \
+	static const int PIN_GROUP_SYM(func)[] = { __VA_ARGS__ }; \
+	static const char *FUNC_GROUP_SYM(func)[] = { #func }
+
 
 #define GPIO_PIN_DECL(pin, gpio) \
 	SIG_EXPR_LIST_DECL_SINGLE(gpio, gpio); \
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
