Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D361F62CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RUwaGxZNSr64idZOx4VKt+zgpvrpoMZI8aSu3/wBgGU=; b=uGdq48Q8oJuQDl
	1+7vpZZV7R7cmKAL5lfJ8yerl/mPDxfymoU/MqvyGMQvL7v5+IDu4MecRPIGuCL/waIpgMrboRwDM
	93IX2KuLIp4QP3Y27tfr5EZTWZqXRsa/hFOoPc28Y6PJvp5hZaO17lVbUQ9kcIQF4zCuEi4Zj42Vc
	W92m7ng8bupXf/9TnVDH6L4lAmOzGzwVbc2/YI1qwDReshZMu2W/0aJOIKFlLaitDpVaEXf12w/bf
	6V1ik/EX37TL6exqW6p1pt2bIgatK7XUvKzg+S+etkkC5rhlg+OFo9YnECDBHANAIBA1mLJlPOAop
	MQiykJqnXWJNBPOMZ+1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHpv-0004zX-9D; Thu, 11 Jun 2020 07:41:19 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhv-0001rI-51; Thu, 11 Jun 2020 07:33:04 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 49FBD5800D3;
 Thu, 11 Jun 2020 03:33:02 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:33:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=pruSBGKy1aIYN
 RS8+kryGjri7n1iWSNf01jIudDkaSA=; b=H+X61dtN5eCd6WNXwzH82cGESdHP4
 UQfxKYK9JMltJ9TA8jNJepx+k84ZiHptW947n3cas3LlTaE4NtaA2QOKePMK4fI6
 wNOC9in/xyZj6vgp3IZUBxe04UpYJ6fUHhLRoVVbFQ4JIk9UN9BjFRygBqOI2mD9
 ZYVylQNIv3xfNrztgXQXdd7ON0E9L5LnMG4QdfQI0kbba86Ks9Pzqo1CTc2HBjOb
 Udmk0v2XgUw7GTDqApqDf3M/5pQRwal3cgwqLvVoj0tvV1KTr3sUO0vW+ka21BMw
 VxdG0YxBymwrebnKWJToyndNHnr7adw3vl4i/aO9tHQzyJS5TWnZrK4TQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=pruSBGKy1aIYNRS8+kryGjri7n1iWSNf01jIudDkaSA=; b=lr8N3yRG
 gIT86Q9JdZEFj2VwYJnR+hzBEUsSTFAUKFZ2vlhAapkNfvVngw9TNIibXu3P/B9U
 06NhB66MSfU4dXBzNOcU4zgA/5hPuo/4h+AXo21SN8IaXvuwTQOAAslH4DycVOXq
 EWXgv3/ntlEnfuB+i//Pf9jFzzvWhUITvrlwQbhzhUJ3laQ5vfvEZ7STkPCF9aLa
 lLwI2A4+6jy6UoQ9r2zc2Lb/P745hqvWUZNKWPWezoNtVPpun0Ki+HIVRV2V7Bqt
 4z9m6QnRppFUAQ3OuzSCUrg5TJq6VSSTGr/FevDmajJswAOm7J0xmedIYpiArLcx
 ZzwPHHsb9yNwrA==
X-ME-Sender: <xms:Lt7hXi0SCauSb1lDypmiRqSRFz1V34mAthKVCZTTA_HzOi2mp4XqvA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvge
 enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:Lt7hXlFHowhZ5EcPpi5AjfJClpmaAtLBsJmwX7OD919VjvRHsERUOg>
 <xmx:Lt7hXq57pFOCuVNNwUkZe7Z6oAaHZDA8YKUrSDjiHpaQJYQ8H0S_kw>
 <xmx:Lt7hXj1pcpHWOeWt2HO3EsNQa6AxBf16Vtcx3x3aKogXRjOqfrAcVw>
 <xmx:Lt7hXrarQQgbnEwAC7VYaDRYDXSVHhVD3K1RtJly1ObU23-EM7rMGA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D91F23280059;
 Thu, 11 Jun 2020 03:33:01 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 26/27] clk: bcm2835: Don't cache the PLLB rate
Date: Thu, 11 Jun 2020 09:32:15 +0200
Message-Id: <264ad21afaae4a7098c3da59970d6cb9da1a8b0e.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003303_358719_25DEB1BB 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PLLB rate will be changed through the firmware clocks drivers and will
change behind this drivers' back, so we don't want to cache the rate.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-bcm2835.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index 846ea68b2c73..64e23733e6b7 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -1700,7 +1700,8 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 
 		.min_rate = 600000000u,
 		.max_rate = 3000000000u,
-		.max_fb_rate = BCM2835_MAX_FB_RATE),
+		.max_fb_rate = BCM2835_MAX_FB_RATE,
+		.flags = CLK_GET_RATE_NOCACHE),
 	[BCM2835_PLLB_ARM]	= REGISTER_PLL_DIV(
 		SOC_ALL,
 		.name = "pllb_arm",
@@ -1710,7 +1711,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.load_mask = CM_PLLB_LOADARM,
 		.hold_mask = CM_PLLB_HOLDARM,
 		.fixed_divider = 1,
-		.flags = CLK_SET_RATE_PARENT),
+		.flags = CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE),
 
 	/*
 	 * PLLC is the core PLL, used to drive the core VPU clock.
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
