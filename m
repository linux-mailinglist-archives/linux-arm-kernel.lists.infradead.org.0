Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DA1CF1EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 06:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6J4Tr1jVPtkdsxrb7Q1tkJq0AfBeupUgR574re0Oxw=; b=ic/o8fQPDq1ICG
	9KsCfzoHCNVzOeIpIw6q4F9g0+Ewe5Qo9j3//ox2HkO1335zy4F4izw1gl/pKiMoCPGEje7W9WHNt
	JE+jmy0nmZc3dwaDpPxVOYcKa1TkV8I7hKhjDGvloxCLKsSkwmauVr3xT8CUgytALhyxreacyOm9G
	MvoeHiJcGc+JC0FioU1fui1sc9D3CwamotI0kpc9W2DI8UlzU1YR06uiap0mmwq67c/U6TOg18AJz
	BYimR4jmUQQDYevL+daXBRBBham1LzfHkwLKiNMo5l8P3iQQS2kAPSHregX/6+3vFBXPXzm8qPWAp
	YQow9u7Taw5TGny9SDmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHhLU-0000eh-ME; Tue, 08 Oct 2019 04:43:36 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHhJk-0007dU-3b
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 04:41:52 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 798A55C3A;
 Tue,  8 Oct 2019 00:41:47 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 08 Oct 2019 00:41:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=kF31BW0z8uvi3
 pnf0WkiPfYd82ETsdEe/9YmksStdys=; b=XLdd0L7gzS4vrRWpRfk0jdVrYWdqu
 3I1Bou81XP8FGV0if4ELMKDMXlyUQh5SWw88mrwqfQmXSc26yyIW8hyG0nuF+Pze
 vrWD619t+qvLUR7fE7JlMZXCQEQ1hgzRNPifA8ld8lnyXSEX2KXFKvjuGfTI0hrf
 7hXczVoc9olrrMPug/p6Xptl+U/H4PSKnBM0iDpYnphNXHiTAABsfs/vhBZj/3Ga
 GnMUpPpL86d13ZgU4nTEgGM013bO92Om2i5TlN2FR1ChAbtHhKs3c8fe1h89FBsP
 hsaxaK/yJVO1SmsZHr0sMF+IZzUSUY+GD7wJWelknE54Z/Lipu4vPDbbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=kF31BW0z8uvi3pnf0WkiPfYd82ETsdEe/9YmksStdys=; b=fAu74A0Q
 B0mTiIdKc9LCdG76bx/aphvUrJ4HxeeKwsWcLDKMTgVuFdQd/cE5QNXpVC9y7jKU
 1/co6p258CGHjCMmAsxSbNrJnnW1SHHHLn+Uzl6VnqL7tPZ+7PBaZoW+YsTc2FMB
 M6xfc62pj8GefZqQPpcjsCD8H0E5Z3zLYd8AImD9HMcHTgitQ2+D5AC4lahWng0U
 I8hUV6C0jXL4X+pCMQ/QCOePvmv+k+hM9eU63jDeeedHDCGPFVCdJlJ6DvxVYT8c
 P2DQ4M7TIpNQmj7DQP6tHJjW+JS+JQDwX41kbdHsD8pGDTMOzT1i06T5tS/aGfeZ
 h1U7yMNxJw7FjQ==
X-ME-Sender: <xms:ixOcXXUMhtOUjDd5dptZYSMEpTf--_Nbt6Ksx7lfu-QAiVlmrlXDUQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrheekgdekgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpeei
X-ME-Proxy: <xmx:ixOcXfv827Pu7SCWQiO5YIKt_EJsfWZap1tXUxNBLtocsubSNTYz0Q>
 <xmx:ixOcXa1NjaLqjxkZz7_kRMuYTxvXCuwVDe-6hu4hlIj6I7e9LLn18w>
 <xmx:ixOcXY4gNnhxSD4y53Da7Vi_fuuDy2KrwNxUOG4Mgkin8ONhZhnmNw>
 <xmx:ixOcXadgxZzo9zqmeT9aQ_ejFF9ng4nfdvTULiYOGpf-MQCfi-Y2xw>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id D71C280069;
 Tue,  8 Oct 2019 00:41:43 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 7/7] pinctrl: aspeed-g6: Rename SD3 to EMMC and rework pin
 groups
Date: Tue,  8 Oct 2019 15:11:53 +1030
Message-Id: <20191008044153.12734-8-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008044153.12734-1-andrew@aj.id.au>
References: <20191008044153.12734-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_214149_494094_1F16A4EA 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linus.walleij@linaro.org, ryanchen.aspeed@gmail.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Johnny Huang <johnny_huang@aspeedtech.com>

AST2600 EMMC support 3 types DAT bus sizes (1, 4 and 8-bit),
corresponding to 3 groups: EMMCG1, EMMCG4 and EMMCG8

Fixes: 58dc52ad00a0 ("pinctrl: aspeed: Add AST2600 pinmux support")
Signed-off-by: Johnny Huang <johnny_huang@aspeedtech.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 72 ++++++++++------------
 drivers/pinctrl/aspeed/pinmux-aspeed.h     |  1 +
 2 files changed, 33 insertions(+), 40 deletions(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
index dc17cf3d3549..c6800d220920 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
@@ -1440,74 +1440,72 @@ FUNC_GROUP_DECL(RGMII2, D4, C2, C1, D3, E4, F5, D2, E3, D1, F4, E2, E1);
 FUNC_GROUP_DECL(RMII2, D4, C2, C1, D3, D2, D1, F4, E2, E1);
 
 #define AB4 232
-SIG_EXPR_LIST_DECL_SESG(AB4, SD3CLK, SD3, SIG_DESC_SET(SCU400, 24));
-PIN_DECL_1(AB4, GPIO18D0, SD3CLK);
+SIG_EXPR_LIST_DECL_SEMG(AB4, EMMCCLK, EMMCG1, EMMC, SIG_DESC_SET(SCU400, 24));
+PIN_DECL_1(AB4, GPIO18D0, EMMCCLK);
 
 #define AA4 233
-SIG_EXPR_LIST_DECL_SESG(AA4, SD3CMD, SD3, SIG_DESC_SET(SCU400, 25));
-PIN_DECL_1(AA4, GPIO18D1, SD3CMD);
+SIG_EXPR_LIST_DECL_SEMG(AA4, EMMCCMD, EMMCG1, EMMC, SIG_DESC_SET(SCU400, 25));
+PIN_DECL_1(AA4, GPIO18D1, EMMCCMD);
 
 #define AC4 234
-SIG_EXPR_LIST_DECL_SESG(AC4, SD3DAT0, SD3, SIG_DESC_SET(SCU400, 26));
-PIN_DECL_1(AC4, GPIO18D2, SD3DAT0);
+SIG_EXPR_LIST_DECL_SEMG(AC4, EMMCDAT0, EMMCG1, EMMC, SIG_DESC_SET(SCU400, 26));
+PIN_DECL_1(AC4, GPIO18D2, EMMCDAT0);
 
 #define AA5 235
-SIG_EXPR_LIST_DECL_SESG(AA5, SD3DAT1, SD3, SIG_DESC_SET(SCU400, 27));
-PIN_DECL_1(AA5, GPIO18D3, SD3DAT1);
+SIG_EXPR_LIST_DECL_SEMG(AA5, EMMCDAT1, EMMCG4, EMMC, SIG_DESC_SET(SCU400, 27));
+PIN_DECL_1(AA5, GPIO18D3, EMMCDAT1);
 
 #define Y5 236
-SIG_EXPR_LIST_DECL_SESG(Y5, SD3DAT2, SD3, SIG_DESC_SET(SCU400, 28));
-PIN_DECL_1(Y5, GPIO18D4, SD3DAT2);
+SIG_EXPR_LIST_DECL_SEMG(Y5, EMMCDAT2, EMMCG4, EMMC, SIG_DESC_SET(SCU400, 28));
+PIN_DECL_1(Y5, GPIO18D4, EMMCDAT2);
 
 #define AB5 237
-SIG_EXPR_LIST_DECL_SESG(AB5, SD3DAT3, SD3, SIG_DESC_SET(SCU400, 29));
-PIN_DECL_1(AB5, GPIO18D5, SD3DAT3);
+SIG_EXPR_LIST_DECL_SEMG(AB5, EMMCDAT3, EMMCG4, EMMC, SIG_DESC_SET(SCU400, 29));
+PIN_DECL_1(AB5, GPIO18D5, EMMCDAT3);
 
 #define AB6 238
-SIG_EXPR_LIST_DECL_SESG(AB6, SD3CD, SD3, SIG_DESC_SET(SCU400, 30));
-PIN_DECL_1(AB6, GPIO18D6, SD3CD);
+SIG_EXPR_LIST_DECL_SEMG(AB6, EMMCCD, EMMCG1, EMMC, SIG_DESC_SET(SCU400, 30));
+PIN_DECL_1(AB6, GPIO18D6, EMMCCD);
 
 #define AC5 239
-SIG_EXPR_LIST_DECL_SESG(AC5, SD3WP, SD3, SIG_DESC_SET(SCU400, 31));
-PIN_DECL_1(AC5, GPIO18D7, SD3WP);
+SIG_EXPR_LIST_DECL_SEMG(AC5, EMMCWP, EMMCG1, EMMC, SIG_DESC_SET(SCU400, 31));
+PIN_DECL_1(AC5, GPIO18D7, EMMCWP);
 
-FUNC_GROUP_DECL(SD3, AB4, AA4, AC4, AA5, Y5, AB5, AB6, AC5);
+GROUP_DECL(EMMCG1, AB4, AA4, AC4, AB6, AC5);
+GROUP_DECL(EMMCG4, AB4, AA4, AC4, AA5, Y5, AB5, AB6, AC5);
 
 #define Y1 240
 SIG_EXPR_LIST_DECL_SEMG(Y1, FWSPIDCS, FWSPID, FWSPID, SIG_DESC_SET(SCU500, 3));
 SIG_EXPR_LIST_DECL_SESG(Y1, VBCS, VB, SIG_DESC_SET(SCU500, 5));
-SIG_EXPR_LIST_DECL_SESG(Y1, SD3DAT4, SD3DAT4, SIG_DESC_SET(SCU404, 0));
-PIN_DECL_3(Y1, GPIO18E0, FWSPIDCS, VBCS, SD3DAT4);
-FUNC_GROUP_DECL(SD3DAT4, Y1);
+SIG_EXPR_LIST_DECL_SEMG(Y1, EMMCDAT4, EMMCG8, EMMC, SIG_DESC_SET(SCU404, 0));
+PIN_DECL_3(Y1, GPIO18E0, FWSPIDCS, VBCS, EMMCDAT4);
 
 #define Y2 241
 SIG_EXPR_LIST_DECL_SEMG(Y2, FWSPIDCK, FWSPID, FWSPID, SIG_DESC_SET(SCU500, 3));
 SIG_EXPR_LIST_DECL_SESG(Y2, VBCK, VB, SIG_DESC_SET(SCU500, 5));
-SIG_EXPR_LIST_DECL_SESG(Y2, SD3DAT5, SD3DAT5, SIG_DESC_SET(SCU404, 1));
-PIN_DECL_3(Y2, GPIO18E1, FWSPIDCK, VBCK, SD3DAT5);
-FUNC_GROUP_DECL(SD3DAT5, Y2);
+SIG_EXPR_LIST_DECL_SEMG(Y2, EMMCDAT5, EMMCG8, EMMC, SIG_DESC_SET(SCU404, 1));
+PIN_DECL_3(Y2, GPIO18E1, FWSPIDCK, VBCK, EMMCDAT5);
 
 #define Y3 242
 SIG_EXPR_LIST_DECL_SEMG(Y3, FWSPIDMOSI, FWSPID, FWSPID,
 			SIG_DESC_SET(SCU500, 3));
 SIG_EXPR_LIST_DECL_SESG(Y3, VBMOSI, VB, SIG_DESC_SET(SCU500, 5));
-SIG_EXPR_LIST_DECL_SESG(Y3, SD3DAT6, SD3DAT6, SIG_DESC_SET(SCU404, 2));
-PIN_DECL_3(Y3, GPIO18E2, FWSPIDMOSI, VBMOSI, SD3DAT6);
-FUNC_GROUP_DECL(SD3DAT6, Y3);
+SIG_EXPR_LIST_DECL_SEMG(Y3, EMMCDAT6, EMMCG8, EMMC, SIG_DESC_SET(SCU404, 2));
+PIN_DECL_3(Y3, GPIO18E2, FWSPIDMOSI, VBMOSI, EMMCDAT6);
 
 #define Y4 243
 SIG_EXPR_LIST_DECL_SEMG(Y4, FWSPIDMISO, FWSPID, FWSPID,
 			SIG_DESC_SET(SCU500, 3));
 SIG_EXPR_LIST_DECL_SESG(Y4, VBMISO, VB, SIG_DESC_SET(SCU500, 5));
-SIG_EXPR_LIST_DECL_SESG(Y4, SD3DAT7, SD3DAT7, SIG_DESC_SET(SCU404, 3));
-PIN_DECL_3(Y4, GPIO18E3, FWSPIDMISO, VBMISO, SD3DAT7);
-FUNC_GROUP_DECL(SD3DAT7, Y4);
+SIG_EXPR_LIST_DECL_SEMG(Y4, EMMCDAT7, EMMCG8, EMMC, SIG_DESC_SET(SCU404, 3));
+PIN_DECL_3(Y4, GPIO18E3, FWSPIDMISO, VBMISO, EMMCDAT7);
 
 GROUP_DECL(FWSPID, Y1, Y2, Y3, Y4);
 GROUP_DECL(FWQSPID, Y1, Y2, Y3, Y4, AE12, AF12);
+GROUP_DECL(EMMCG8, AB4, AA4, AC4, AA5, Y5, AB5, AB6, AC5, Y1, Y2, Y3, Y4);
 FUNC_DECL_2(FWSPID, FWSPID, FWQSPID);
 FUNC_GROUP_DECL(VB, Y1, Y2, Y3, Y4);
-
+FUNC_DECL_3(EMMC, EMMCG1, EMMCG4, EMMCG8);
 /*
  * FIXME: Confirm bits and priorities are the right way around for the
  * following 4 pins
@@ -1968,11 +1966,9 @@ static const struct aspeed_pin_group aspeed_g6_groups[] = {
 	ASPEED_PINCTRL_GROUP(SALT9G1),
 	ASPEED_PINCTRL_GROUP(SD1),
 	ASPEED_PINCTRL_GROUP(SD2),
-	ASPEED_PINCTRL_GROUP(SD3),
-	ASPEED_PINCTRL_GROUP(SD3DAT4),
-	ASPEED_PINCTRL_GROUP(SD3DAT5),
-	ASPEED_PINCTRL_GROUP(SD3DAT6),
-	ASPEED_PINCTRL_GROUP(SD3DAT7),
+	ASPEED_PINCTRL_GROUP(EMMCG1),
+	ASPEED_PINCTRL_GROUP(EMMCG4),
+	ASPEED_PINCTRL_GROUP(EMMCG8),
 	ASPEED_PINCTRL_GROUP(SGPM1),
 	ASPEED_PINCTRL_GROUP(SGPS1),
 	ASPEED_PINCTRL_GROUP(SIOONCTRL),
@@ -2051,6 +2047,7 @@ static const struct aspeed_pin_function aspeed_g6_functions[] = {
 	ASPEED_PINCTRL_FUNC(ADC8),
 	ASPEED_PINCTRL_FUNC(ADC9),
 	ASPEED_PINCTRL_FUNC(BMCINT),
+	ASPEED_PINCTRL_FUNC(EMMC),
 	ASPEED_PINCTRL_FUNC(ESPI),
 	ASPEED_PINCTRL_FUNC(ESPIALT),
 	ASPEED_PINCTRL_FUNC(FSI1),
@@ -2183,11 +2180,6 @@ static const struct aspeed_pin_function aspeed_g6_functions[] = {
 	ASPEED_PINCTRL_FUNC(SALT9),
 	ASPEED_PINCTRL_FUNC(SD1),
 	ASPEED_PINCTRL_FUNC(SD2),
-	ASPEED_PINCTRL_FUNC(SD3),
-	ASPEED_PINCTRL_FUNC(SD3DAT4),
-	ASPEED_PINCTRL_FUNC(SD3DAT5),
-	ASPEED_PINCTRL_FUNC(SD3DAT6),
-	ASPEED_PINCTRL_FUNC(SD3DAT7),
 	ASPEED_PINCTRL_FUNC(SGPM1),
 	ASPEED_PINCTRL_FUNC(SGPS1),
 	ASPEED_PINCTRL_FUNC(SIOONCTRL),
diff --git a/drivers/pinctrl/aspeed/pinmux-aspeed.h b/drivers/pinctrl/aspeed/pinmux-aspeed.h
index d5202241f411..140c5ce9fbc1 100644
--- a/drivers/pinctrl/aspeed/pinmux-aspeed.h
+++ b/drivers/pinctrl/aspeed/pinmux-aspeed.h
@@ -738,6 +738,7 @@ struct aspeed_pin_desc {
 	static const char *FUNC_SYM(func)[] = { __VA_ARGS__ }
 
 #define FUNC_DECL_2(func, one, two) FUNC_DECL_(func, #one, #two)
+#define FUNC_DECL_3(func, one, two, three) FUNC_DECL_(func, #one, #two, #three)
 
 #define FUNC_GROUP_DECL(func, ...) \
 	GROUP_DECL(func, __VA_ARGS__); \
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
