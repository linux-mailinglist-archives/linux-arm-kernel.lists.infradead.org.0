Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE83CF1EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 06:43:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2XRexs8zyzx171CBURnstBsK01UmC67qZQUJ0R/SAo=; b=P0T4N69HGu5nGx
	L2MwROWougSuMvWPWh6J2Wjb4by9YB0rO/JIInTA/e8PFPywvwVEatpeQTwp4CAwcn22HUYKc8y8q
	xERJ+NfwWX5OGP89jLgUQT/jqXrB3QsPDmMWBXxxeCLXZHXGI8F6Q4L4cgDQH1ggC3nsY8f/y21gD
	pbIrb6twU7cA+muPyviKxeIwvVdsr1Z9S0LqxHS+mU7QFbwmT/oyltGGXc5PtR5zzeDJjBdYhcdzy
	s0u4IjgJgcA6pzxhExi/+R8JOXeJQYlQfWFmoJzBf8Gc1bxqlj6iD6ajQhZVGotzlgVHDJIF/syWf
	cwVaJC9b948cDJNN840A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHhL7-0000J8-Kk; Tue, 08 Oct 2019 04:43:13 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHhJg-0007Zr-D7
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 04:41:45 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 996865B6F;
 Tue,  8 Oct 2019 00:41:43 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 08 Oct 2019 00:41:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=3eKFGQjeBCJWh
 5YpK75JaEOME4RWXnAljsCABlFoAJo=; b=I0yVlab7s8e4kTQMsNb5XGINFKICJ
 WeI0yn7+XVEawx3vq/OcER2JAgdDu0Y2wx/sWnjCF/ubuLsYQqTCRMmWwMrApytB
 AuP9156QQTsrYwU8Zulpp2vTYozsZJ8cKBL8PbeOQM6dNPrqcFhavgB8VHxJrjwO
 IrOMyoh2BQ8dgZCGMGb+nNbEe3cKHzz5EQE/8DtHO3+STZyVHRGLr+p105NlzngW
 9T9tafeXwOThgIbCtFr7l+RwvEyhrt9267m1G03mdaeRbpQMopjDHmxMNWXW+/aE
 xXqOI4U3I1KwGFqPnyg9mW/NwlPU2qxHJ00bQeysPbWAoKzjhiWd5CcIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=3eKFGQjeBCJWh5YpK75JaEOME4RWXnAljsCABlFoAJo=; b=EyrNzdzY
 TekI7KTRWA4vmeNx4YrMtoMjY9990YI26RxKZb88h04TKOblzOwJXWTOGhMtALVc
 LFmJvbN5qGEpedDTwMSlRLBl3tF22qVnmDKGtV8Oo+xpCRfZGpUMVlEAFnUCijG7
 2E9cDZxna8MzGOmtbqzqNnea2iVadRAQ7SP6ZoNzgkh7Y0r9gRauWzazD+4szj5Z
 71UGbdH7F5XrEHKnhfabtp2iXrPGcSvFrNmSoMEOjiDYD+hKJSEwH0SQ81WOODwa
 YTZ83T5L/V2SS6lD8L+/XWZtJr0QsCY+qhNaYLgZ4fK7s/48xDmgPlfoJRBTKMaj
 gSz6VIcDn9ho4A==
X-ME-Sender: <xms:hxOcXd8cMI7LMNA3NJXmVqRA_2Oj5NRUOW3nLkSZPawqdIZOa7xBgw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrheekgdekgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpeeh
X-ME-Proxy: <xmx:hxOcXWYe4QxphufRtURJ5hh_wSZxH0UVAhZoyWu1HOv85lumsfLqYg>
 <xmx:hxOcXX2xIQMrpRFuiCVqjS8Xda5M7dNkXS1RUgm_dEbXQ-OjH1cMXg>
 <xmx:hxOcXeVThd0QOALoPvcz6zt2JaSqgb-MhySZMaeVt5lGguz2Iz-RRw>
 <xmx:hxOcXVL-gF83_Ms8VuYh8ZUMZ6BjP6rsMj4EMziHv8YmoMiqB8QwHQ>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id E960A80061;
 Tue,  8 Oct 2019 00:41:39 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 6/7] pinctrl: aspeed-g6: Fix UART13 group pinmux
Date: Tue,  8 Oct 2019 15:11:52 +1030
Message-Id: <20191008044153.12734-7-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008044153.12734-1-andrew@aj.id.au>
References: <20191008044153.12734-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_214144_594123_29E982D2 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
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

When UART13G1 is set the pinmux configuration in SCU4B8 for UART13G0
should be cleared.

Fixes: 58dc52ad00a0 ("pinctrl: aspeed: Add AST2600 pinmux support")
Signed-off-by: Johnny Huang <johnny_huang@aspeedtech.com>
[AJ: Tweak commit message]
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
index 68b066594461..dc17cf3d3549 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
@@ -1262,13 +1262,13 @@ GROUP_DECL(SPI1, AB11, AC11, AA11);
 #define AD11 206
 SIG_EXPR_LIST_DECL_SEMG(AD11, SPI1DQ2, QSPI1, SPI1, SIG_DESC_SET(SCU438, 14));
 SIG_EXPR_LIST_DECL_SEMG(AD11, TXD13, UART13G1, UART13,
-			SIG_DESC_SET(SCU438, 14));
+			SIG_DESC_CLEAR(SCU4B8, 2), SIG_DESC_SET(SCU4D8, 14));
 PIN_DECL_2(AD11, GPIOZ6, SPI1DQ2, TXD13);
 
 #define AF10 207
 SIG_EXPR_LIST_DECL_SEMG(AF10, SPI1DQ3, QSPI1, SPI1, SIG_DESC_SET(SCU438, 15));
 SIG_EXPR_LIST_DECL_SEMG(AF10, RXD13, UART13G1, UART13,
-			SIG_DESC_SET(SCU438, 15));
+			SIG_DESC_CLEAR(SCU4B8, 3), SIG_DESC_SET(SCU4D8, 15));
 PIN_DECL_2(AF10, GPIOZ7, SPI1DQ3, RXD13);
 
 GROUP_DECL(QSPI1, AB11, AC11, AA11, AD11, AF10);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
