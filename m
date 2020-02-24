Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3425516A216
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:24:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1PzjI9FaZunztPmk0Z1ZWKUZPswx5X6zb8b/tS/oUVs=; b=kmSVbiz+gFa3MU
	ITVGvQYeqe2tjQsTBUp9Twet6G3P4cKDfZwdZfeixs2Em0vrBa3hNzCHSQdew1ePdvqKBrx5ZB2Fv
	tbWPDABlsN2ZRyZF6boV2EugfWyFw7shAw+K0TOSlZ8W38C+oMr6NE5C1BtyL1TgOLAYite4f/VFc
	a1D6ncU7rolE1rzyzrrqo2ZBmkzotBvCxLp2AtGj+IghLSFEDF1lf0ozo7aCTfgYyFDE2q6Q/5Xbg
	oHTbHxCDhL0KmXb2qPKCpCoQsKd2tXPXdFyPulNheqw6zXNlE1BiTOjFcwdfD8CSxLJ3lY64tzoDq
	xVABp3WCiHxtDq8TjJjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69xy-00078O-8u; Mon, 24 Feb 2020 09:23:54 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kP-0001yQ-NR; Mon, 24 Feb 2020 09:09:55 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id D70CD628;
 Mon, 24 Feb 2020 04:09:51 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=+P3Mooao6xRyz
 6NjQNJGdStRJFWbrJ+Bh4471XgOQgM=; b=Cp9C1sQdZx0REJGTYG0//Oo5uxn9y
 JLAKxPa1xmq93in6rwnL7+J4rLFQ362WljOlLbkCWGMhaVkTU0QTeCNTs0lJa7yO
 vOsqJeYCmc5iWdjOLIYaIgq9quGKwCeHrSp8fDw8O0OZGYUTPVusq1qpJjzP9pD0
 L+DJUhuJ2gFoQT0kivxZtLHV5Ornjzt34fv7k3l74qXdxhXrf6h3rjpb/mzkTQ4P
 8hTOfuIwUOjOFLRgiXh7SrrcI1P24ZmiJ+4MpHknX6hEJ2peLDyIjy2pBrQcqKS0
 SpqqEsVwtoXPanPUMqzal78e6ioSkw+hk3+PnSZ3kLpXC87iJvfgx2LQw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=+P3Mooao6xRyz6NjQNJGdStRJFWbrJ+Bh4471XgOQgM=; b=vYPU9pzx
 Kps0fNlvLdFA8PefzEsPVdY3SxbqupZ2ZmEjg0SPLf2nQa13AVeBHdtOWkOXNs4m
 1tur1Vv0TX/7MvQeCc3HDJijPpogM7DYwXUJy1AqpzbwBH98ror+aaFN9pPQ9ljE
 oze+Drh6OFfJPPTqNwf+Bp96fQf5AIt7BFYTsgqyF1GOMzZVg6gOLBTUh0aRaOZm
 YrMzJIwURJI4cF+NrECuhCcIyBY6IgcvLEY8//6+EVmNNDcR0fYjX69QscYpiOfL
 RY79sGlGL/JPf4VrR6xANHYfoqOalyV9jJfPRbquiNavMsfpnh2DW2jLp8HuUQaX
 K+5S9LN149TMxg==
X-ME-Sender: <xms:35JTXmjaUr4AVRjD6XrnEEjtzvV46o2LNJORuwlhDL6knFqKWf3yFg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepfeehnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:35JTXp-MYRFMh640P9eWEBp9W9Kk3jPDL4LAkqxi1G8glS1vMBOV3Q>
 <xmx:35JTXmQOPOw7fWMiiCHczLM86IZNLOWKwRj57GpKOBAC1xBBVQqIZA>
 <xmx:35JTXuGcqSOxqag1LBpsxKS1En-5V5NxmSOCPpQX4dasoI-5EMsIvQ>
 <xmx:35JTXlU4jbN1-ch0skW9_0xo-rDQZS8e2mYDOwd65LvdFrYVYAm2Tjt71Sk>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2500D3060D1A;
 Mon, 24 Feb 2020 04:09:51 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 43/89] drm/vc4: crtc: Rename SoC data structures
Date: Mon, 24 Feb 2020 10:06:45 +0100
Message-Id: <e1b911053d81fe2c3e4961be973e5df92796d0f9.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010953_944676_3D50761D 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since we're going to introduce pixelvalve data structures for other SoCs
than the BCM2835, let's rename the structures defined in the code to
make it obvious which SoC we're targetting.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index fc9977bdf347..ce902d31f92c 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -1055,7 +1055,7 @@ static const struct drm_crtc_helper_funcs vc4_crtc_helper_funcs = {
 	.atomic_disable = vc4_crtc_atomic_disable,
 };
 
-static const struct vc4_crtc_data pv0_data = {
+static const struct vc4_crtc_data bcm2835_pv0_data = {
 	.hvs_channel = 0,
 	.debugfs_name = "crtc0_regs",
 	.encoder_types = {
@@ -1064,7 +1064,7 @@ static const struct vc4_crtc_data pv0_data = {
 	},
 };
 
-static const struct vc4_crtc_data pv1_data = {
+static const struct vc4_crtc_data bcm2835_pv1_data = {
 	.hvs_channel = 2,
 	.debugfs_name = "crtc1_regs",
 	.encoder_types = {
@@ -1073,7 +1073,7 @@ static const struct vc4_crtc_data pv1_data = {
 	},
 };
 
-static const struct vc4_crtc_data pv2_data = {
+static const struct vc4_crtc_data bcm2835_pv2_data = {
 	.hvs_channel = 1,
 	.debugfs_name = "crtc2_regs",
 	.encoder_types = {
@@ -1083,9 +1083,9 @@ static const struct vc4_crtc_data pv2_data = {
 };
 
 static const struct of_device_id vc4_crtc_dt_match[] = {
-	{ .compatible = "brcm,bcm2835-pixelvalve0", .data = &pv0_data },
-	{ .compatible = "brcm,bcm2835-pixelvalve1", .data = &pv1_data },
-	{ .compatible = "brcm,bcm2835-pixelvalve2", .data = &pv2_data },
+	{ .compatible = "brcm,bcm2835-pixelvalve0", .data = &bcm2835_pv0_data },
+	{ .compatible = "brcm,bcm2835-pixelvalve1", .data = &bcm2835_pv1_data },
+	{ .compatible = "brcm,bcm2835-pixelvalve2", .data = &bcm2835_pv2_data },
 	{}
 };
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
