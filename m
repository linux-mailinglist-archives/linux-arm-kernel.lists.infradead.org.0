Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6A41E4998
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:16:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4AqZ/Jugqm6E7nLHhTRtjuUdesq8V3SK6FWFpw/7nIA=; b=YTNymw0h5xLZfj
	jswftluQVznl8aWLE8y3B/ETN7MEQoh7S8/AbnKy9v7IEoNkOdc1j90js3l+HKazJZwXHgJhnxwuj
	DukWJ5suB/S472P8j7WDHFiJEIh1/e1Uf0jflN7+FgH9wYFGkeW76IRBrqSIj5FL/skcQArdn4RSf
	lROTmq5VujT+qmEqK4OmeED/KTiMukcJZ6uBEM0m4a7fmyO609VCl6ksQPXcO/NmCc78LIdHL7g7f
	rgbSYpnOWblTiEi7SOZI5JrDJbX1r3gkHq3sWotI7A6pQJ1wDCBLyWeefs8lw5iurHj0lhvsvEVGO
	RZx1QC8/qlRgPBssK43w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyj1-0006E4-W7; Wed, 27 May 2020 16:16:16 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyKA-0000mA-8u; Wed, 27 May 2020 15:50:35 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 82BC6582096;
 Wed, 27 May 2020 11:50:33 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=oDKZIgoeG+vnD
 EfqXcJAda79bnMM+UMDrK/U0Onwb1w=; b=a/Xn4+11C4fXDUvHzBoeRoGWVulPI
 0kTzhNDJMeaZQHurBlMtx1HneHExI+Khp5kAU/5+rzL9ZZfFPGLEA2eUJaLO0LZO
 fudOW7Uw5Fpe57Ml2AfP9bYc31R7Zk7Ui6+4LZ8f7qBVE+zmoX2bxLf454En9ncK
 +X7sWUuuRYtY2zE/uHOTxPjI25VDNNKy2tUgysPGjlTjwolTcvbyNcd6/A/BCczF
 YEwK5fQuxV+F7Ww0sE+d+hv/Ug/rc1JsSPAl+Ly2ic94Wx9ljXnlp+GqnKmjtV9k
 7NKwYb3o7jSZIfzRi1fbdoapSdpVGI6MuMQZNaaysp1rJbeSbwDzTI2wA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=oDKZIgoeG+vnDEfqXcJAda79bnMM+UMDrK/U0Onwb1w=; b=Hiq/c1jp
 avrufbNjOhMZXDNJx3gYpXSZg6gHYKBQk3iGZ+PU8QLQgpaUOhhKK2FOpGzWIINY
 f/egZWG1uEgK7Nx9nnWOmJAFps/qIjo5P6lrI4Lb0cMIEBGpbEJwu8qfBfl3PzqQ
 qQKM67Cwr/ExRzofXxceHz9QejZ1V5Y9c+u/YF3YDynTmSdHLJHBkoVHP02YxHfN
 T974zTz1NLAK8S9r7N88ik/w++Y9JGeQ/WBfdOT+daG6BsKMxYi4UFLd+80RqCJd
 1/0L90kG4OqUOLOp11WRA8gg/eORxVIwLZrMjBQWfAyPEUX1pcxXRLBRpAAgXABj
 hYQFt7ovkl7nOg==
X-ME-Sender: <xms:SYzOXuIopX0SUHYDtL7Z7L6gStUb4_CqaTuHqzenmXZ-djMZcyCUdw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdelne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:SYzOXmKQW9Zf4WwPPFI_6Rj0dPAcm8JU8FaS9xd2x7PG06aqNdJeow>
 <xmx:SYzOXuvdbJY51tXtRSU5MgiJvv-3dAYTkWrZkLfQ0tUwwwgsKwj1Zg>
 <xmx:SYzOXjYLQ3-X0_k95auKGmo5lVxVWjTdiz3Wtm_git4w8I4smnyykw>
 <xmx:SYzOXh73MUPgWKUnbJzjWi6FVc_LBj2qBBXw2g15OgRqkMMxq0XIXw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 32A7E3280060;
 Wed, 27 May 2020 11:50:33 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 048/105] drm/vc4: crtc: Remove redundant pixelvalve reset
Date: Wed, 27 May 2020 17:48:18 +0200
Message-Id: <0fa72666fcd0ad1d0c97f92310c60238715bbd59.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085034_473735_3C932B87 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Since we moved the pixelvalve configuration to atomic_enable, we're now
first calling the function that resets the pixelvalve and then the one that
configures it.

However, the first thing the latter is doing is calling the reset function,
meaning that we reset twice our pixelvalve. Let's remove the first call.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 08bd595f6a7c..3c9b0d684136 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -433,8 +433,6 @@ static void vc4_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	require_hvs_enabled(dev);
 
-	vc4_crtc_pixelvalve_reset(crtc);
-
 	if (!vc4_state->feed_txp)
 		vc4_crtc_config_pv(crtc);
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
