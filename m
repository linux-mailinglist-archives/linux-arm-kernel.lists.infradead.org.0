Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FD0125D72
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 10:17:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqFYJh90Th56qeydSt75SzYYpw1/y7vnz1PFVM4V+64=; b=cgJKoanNpL6KJE
	+aMcJUWc08MKCShUcNDj4taWMgZWfJzea2sWKxUQVN45FUu+kVM2eXQpAMQURedYbJG+F/LSO35PB
	/J8jlCx4ojWjrPY+/r1PYSoG8k5kKxF7Sl5Bl76XAnnQwWCZbUbqLhzkOksyTpLPJzKe0ZScT2MPm
	skoYZLMyGiYWmNEXLzfNYB/F2FC5cj28GNY8ahG/1NefL3yelU6p2IH/81LATWQmEdSqpA5Fcr6+I
	YlUydlquHKBaOJoGTvOyfnE/xWbF6qVLpEyv7NPCJQG2vVEFuzAnTq0ZHtozgT/SQcr+zqJECqeiF
	CvxVPHD90XnEP9ZFvO3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihrvW-0006xF-2t; Thu, 19 Dec 2019 09:16:58 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihruP-0006CT-Ne
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 09:15:51 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 095FE580;
 Thu, 19 Dec 2019 04:15:48 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 19 Dec 2019 04:15:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=QrwyAU1lJaA1q
 WM4+iFPebzsdpUebBJmA9Qa+MWDdvA=; b=Vyq64PMAWykxvVEjaJQx780PaAIqH
 GIGrl8nwfCQGKQrHLLQyerFgRTH94reIiaAUJ3S8XaBmN5v/wl3YWtapIeo4/baI
 mM1WjsW88TW/Ye8NFBDWEelKdqo3JPleifHw6SGPStiZ6vfa2+hyJ0IkUWjwIFm4
 DUcHigRCbS2cq2tfMqCz76sIsvwVY6zKUzYeVwudBoROXJjfpBy7PptbAMw/ZOBA
 sKGrqgWFtRnD61F2cPmtaYiita3cMPUjEJk3hSv/g4v5It1baV2J5sdFx1SfYu1o
 RNVpYEh6VEJ/ONRqDadiRYrUAqZwUZXFcndEVp2xrHqWXfgWIRGDLZBRw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=QrwyAU1lJaA1qWM4+iFPebzsdpUebBJmA9Qa+MWDdvA=; b=dzqySnbG
 fm8CJswjkNHfRte0DXcWrJXpPINKk9zyCf1eDoAWwtb4CmbDAatEexYrbZ+rDFOc
 ze7CEvNQRPtiEwbBSD3c6pxMdFc3yHDZBMuNVIeXckTdgZ9nH+gKU+pqQxXPloby
 TUVmlojwm115Vo0pAWFc0x0OzT+ZyKwhmNSCIH9Gz6cPwOb/OF/HTDj6QRxa7mNL
 2lVfjBvQAZribQx2DCB3vqpIEVloBYQI326FRAs9yLe+sLDoCDbBU3gzU/GzJGmj
 2Hbtakl7RekbGvQ6jcAoQRUlX6c+rHTn/Q+unu3iTuqcAKqMLRK4wmtPAYd9Si2k
 XW38gEqgE3T1pg==
X-ME-Sender: <xms:xD_7XXYH7IypTwyi8yqkHLAxD1iEjH6C5lxMGwU27Y_hseiYoEVBlA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdduuddgtdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrgigihhmvgestggv
 rhhnohdrthgvtghhqeenucfkphepledtrdekledrieekrdejieenucfrrghrrghmpehmrg
 hilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthhenucevlhhushhtvghrufhi
 iigvpedt
X-ME-Proxy: <xmx:xD_7Xdg3mHF5JXBre68Da2vqA7F_wN4rAZAvjLfDlkNwuR6eJjAfLg>
 <xmx:xD_7XcSts676lfOZ0_KzOmRgMEdtOYMiYZJVIMEPPbQC7G5vvlqDKg>
 <xmx:xD_7XWa3kJIPaLCu6aEFeZlMbmkiExLiIBEgC8znJH_3eGPiWNKGTg>
 <xmx:xD_7XQe4xQknkEKXG3amxGfbvr5-J81AnRJjAEIPcbmrIAKRRBPVjw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 472EA30609DC;
 Thu, 19 Dec 2019 04:15:48 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>,
	Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 4/5] ARM: dts: sun8i: nanopi-duo2: Fix GPIO regulator state
 array
Date: Thu, 19 Dec 2019 10:15:38 +0100
Message-Id: <20191219091539.948530-4-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191219091539.948530-1-maxime@cerno.tech>
References: <20191219091539.948530-1-maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_011549_807396_441E421D 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Even though it translates to the same thing down to the binary level, we
should have an array of 2 number cells to describe each voltage state,
which in turns create a validation warning.

Let's fix this.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts b/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
index c73f59900975..6b149271ef13 100644
--- a/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
+++ b/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
@@ -60,8 +60,7 @@
 		enable-gpio = <&r_pio 0 8 GPIO_ACTIVE_HIGH>; /* PL8 */
 		gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
 		gpios-states = <0x1>;
-		states = <1100000 0x0
-			  1300000 0x1>;
+		states = <1100000 0>, <1300000 1>;
 	};
 
 	reg_vcc_dram: vcc-dram {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
