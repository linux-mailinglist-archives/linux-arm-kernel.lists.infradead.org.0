Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EAD729AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:14:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/e8RByES2n8ObQeFVlomC9sMHeaN1o1t9DGjI2ppsk=; b=LazxlgyNPg8nEC
	tOwSmRbVzU9p5ksNMiNT5OvWDweSaetr5Uo4hoox2xh603buRT0zcCwGVO35Qzg5HBxQ4kT77YwEm
	egYGLNDaMNeFEPtBlwFfSOB3TOK0UzopDInM6M9S9s8QtU3RG/TTuwXIbTdgRRpY1eeaU/5Q3li/l
	tCkW38liBAYBbnbPf0wOlul7MWio0E4RAFYe4k6TLReqaHU8SyqA8w2D89rTlHvjuZvg65gdqk1ZN
	+SclqnIc48SRtl1Q1qYE9eK/Cc8yFYigUhHK+X6PbrnF1lLs7CTWs2pPxMdjbFcMIqR7/LVr0YLUA
	oLPqU4RrvLc7ASTFhrSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCPr-0003fi-4w; Wed, 24 Jul 2019 08:14:27 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCOk-00038j-Op
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:13:20 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2E09B15EF;
 Wed, 24 Jul 2019 04:13:18 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 24 Jul 2019 04:13:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=cmUXGTItnE6GV
 H81XcleXlJaOd7fWAre1oKtPY17jkw=; b=LQOKtAL12oayKyiU9odpP/ruor5Ku
 9tWk/BuisxAvi3hDQJbt4kxr3+lFgj2mXvBmqCYM51U//mjyK0oBpjh8RCKutr+Z
 sJbJwX8cIBSrf10rbAAD3KU+11C0Bs3Xmy8yEAxlaAg250oYSXru1G53F8O5oNmk
 MLCXivPSxHvcrCLEDEztAPB5h+IL75OSAwOSZiExw28VXqWTSh1+3aA1g3Tt+7UQ
 H29G6K27sn27oCvQRryX07uK51X7nXHAAcqA1IrJhE/d2oyNau9XSSjp8vGnF2UW
 IhpXucVPJbHg3c8Vy3K95VgGeagOzNYaOEAFXjrHtiTRL7tWOVq2kN5bg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=cmUXGTItnE6GVH81XcleXlJaOd7fWAre1oKtPY17jkw=; b=fmfvulHL
 WotHA6oU1mJHho9UkAy9Sem1KQOVeiLhiLkyhPkmIX1r+tMJFMB01nlLPAAClaSD
 RfMKk0WnGrvnUs0FTMAnx6KH4/VePL61O9jstIc+XyABo2imV6DXiSEqp3TuSVmF
 lrNlNKd/IBDf3NWA2Y2qP0M4iOqdlBxjZ4PQltRQhdASCAoauEIEOEDJZgDRSCkU
 l4HwPVleln5BhFL0EoxYqsZaTlaIWT7Ftl9TkSIiignw3OZsLUAaSDqgX7O5DUoA
 jRwkpYtTfzWQcLB1B5XToJUngbvEfm3VVZeBAuFZEDoNq/Ck3OtQ0EukXDc5Z92z
 JBTeethB7ejBTA==
X-ME-Sender: <xms:HRM4XTXbAB4Lmk_53B4dx2rmWKv_-BtyPL1QI8v-S1Ne3O5L7OGaOw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrjeelgdduvdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppedvtddvrdekuddrudekrdeftdenucfrrghrrghmpehmrg
 hilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigv
 pedu
X-ME-Proxy: <xmx:HhM4XYUdkDQmoMg7fGDln2zdKHfqTxwVQAXQVOJRfe7oeHRlDGgPbA>
 <xmx:HhM4Xe_ZnzCmDpchc-JgPRayDZt9ejhnSZe6tD-sQHgpJrqNo6vpiA>
 <xmx:HhM4XW_flE-Wmajk1lWC6j2CPbneL9msbkY_oVRxtx9ED66OnQrtBQ>
 <xmx:HhM4XVmVC8RYKGjQ87xjIJOr4FHZHQZl1knln3uZP2ZtS1AzI8VuIg>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7A65980059;
 Wed, 24 Jul 2019 04:13:14 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 2/3] pinctrl: aspeed: Document existence of deprecated
 compatibles
Date: Wed, 24 Jul 2019 17:43:12 +0930
Message-Id: <20190724081313.12934-3-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724081313.12934-1-andrew@aj.id.au>
References: <20190724081313.12934-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_011319_033394_064B5583 
X-CRM114-Status: UNSURE (   9.05  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Andrew Jeffery <andrew@aj.id.au>, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Otherwise they look odd in the face of not being listed in the bindings
documents.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c | 4 ++++
 drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c
index 384396cbb22d..0e087fe759d2 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c
@@ -2531,6 +2531,10 @@ static int aspeed_g4_pinctrl_probe(struct platform_device *pdev)
 
 static const struct of_device_id aspeed_g4_pinctrl_of_match[] = {
 	{ .compatible = "aspeed,ast2400-pinctrl", },
+	/*
+	 * The aspeed,g4-pinctrl compatible has been removed the from the
+	 * bindings, but keep the match in case of old devicetrees.
+	 */
 	{ .compatible = "aspeed,g4-pinctrl", },
 	{ },
 };
diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
index 053101f795a2..49255802735b 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
@@ -2676,6 +2676,10 @@ static int aspeed_g5_pinctrl_probe(struct platform_device *pdev)
 
 static const struct of_device_id aspeed_g5_pinctrl_of_match[] = {
 	{ .compatible = "aspeed,ast2500-pinctrl", },
+	/*
+	 * The aspeed,g5-pinctrl compatible has been removed the from the
+	 * bindings, but keep the match in case of old devicetrees.
+	 */
 	{ .compatible = "aspeed,g5-pinctrl", },
 	{ },
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
