Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FF9158A6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 08:30:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZORCl2+LMXkKA97HOrrGMIybp74Wwva3U6NHHgL7U8=; b=aD09gnELTpRJcS
	b8SOcqpaHJAAu4ZoZfSvQfjYM0KypsaDvkopl1A0fpTzCBW3lexfHKv8Umwh+KW9iZDZs9NWHU8a5
	8kDYIQ4XDL2xV/bIO1ugBNAZKIbyj4GI0x1iWiLLOIUTwuf1vHtJ/Kzu4Y9htKkyYDwRJnbyuxrY5
	TWDSGEH5aZmTWhanipm4TVB8eo/fYftIGKFiGK+awTl1F8FweEK1E7ARZ8Mlp7EdGH7YNB0TBp3Ul
	Rlj/895xh6Ym5nzBhxv4I/6grNlVQoAVokzpPteCg5b8F7AaRVuUOhMN88Rb4mWr15ExLYsiN2gG0
	kbgk4M7gTSC7lzFU0VLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1PzY-0002PT-H2; Tue, 11 Feb 2020 07:29:56 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Pyl-0001id-8t
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 07:29:09 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 8405C5BD;
 Tue, 11 Feb 2020 02:29:01 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Tue, 11 Feb 2020 02:29:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=xNUtUsfuH4Ly9
 iDTvm5saY9gUrnZ7LMYvcmrJ/q0E6s=; b=bfnYxy9F7N64LwBxzVC3DS449tbj5
 Jwf3KQNviW2ODLRY8W5dHdOXEbjCafBP90cctCDrKAtXidFW/G+qovNeMFdcdgjw
 oYc3vYfi50KEIyBfdsEiowxqdJvD6Mw0QPWguHwRXuaQ5f5CKLkyd97DYdgSkn4h
 ljuxGzL+r4DT+dIXCngBQ/Uw9k8e2npyZhzFjJpfYcgpL/UpRax50Lfexf9BO96v
 BBv9OXF/2wDIEukZV9gOrg6AEvnSCCm/s2MiIdw+nBElnCV1Uf2ehYB/LPHDa1Bs
 /Xoay+RzvgjS2mozyXX3RQXJoQyUeiNjaohJbgRdWU2N8lKCMsaMD8+DQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=xNUtUsfuH4Ly9iDTvm5saY9gUrnZ7LMYvcmrJ/q0E6s=; b=pVPi4DQo
 skN3idrvv1MplozuyLT9cK8AFlkvx3ikvm55mNJQxMi6DXge8yzy5p+3mPqhlNhd
 J0CHbMNGmYlce2ABoBarh96c//bGpOM5j6I22j3VVKftGtILSej8gdMaALnKjgsR
 nogYSMPgfWxvpl2Q5zj/shJLYK/+FPVB8apY88O2ZBOKDA2DphjuzSRwSZl7G53U
 7ZEHsF7Nuxm2QaqqD2VdduO8eSsO2J8jAM/7Z5VNoTnoPFh8l4d39nWDlpPuA0Vw
 2WtuGROLdXr5Z+XsON82bjiQ6ERTl1KsZIniFXTbQTy47B8Ww5fJnRXQicivHot9
 3rlPPzXXzqwcxg==
X-ME-Sender: <xms:u1dCXry3XWNFpDLa_PUxG9meBIKjk60AXRTXH0jDLVmKaH9xeX_9iA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedvgddutdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:vFdCXtmdn2RREsi470vECnjucS2d6Zi8yC5PDufhWvoxI9YsXWZpiA>
 <xmx:vFdCXtikszpPq6QlKZ-Ru7Qcy3JWx__cUMgCuR_KLxyaV3ZbvBCeLg>
 <xmx:vFdCXgdcp3dlXnr5dyWVQNpI2xwfOvNAy7Cbqv9M8RBS2DCsfhMF9A>
 <xmx:vVdCXg2NVFBE1Y2L9WHZrXDHiot55XXzfLBgzU4TA4a0A_AR_-pEEQ>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9002C3060840;
 Tue, 11 Feb 2020 02:28:59 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org
Subject: [PATCH 2/4] drm/sun4i: dsi: Use NULL to signify "no panel"
Date: Tue, 11 Feb 2020 01:28:56 -0600
Message-Id: <20200211072858.30784-2-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200211072858.30784-1-samuel@sholland.org>
References: <20200211072858.30784-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_232907_353299_A9570C62 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: stable@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The continued use of an ERR_PTR to signify "no panel" outside of
sun6i_dsi_attach is confusing because it is a double negative. Because
the connector always reports itself as connected, there is also the
possibility of sending an ERR_PTR to drm_panel_get_modes(), which would
crash.

Solve both of these by only storing the panel pointer if it is valid.

Fixes: 133add5b5ad4 ("drm/sun4i: Add Allwinner A31 MIPI-DSI controller support")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index c07290541fff..019fdf4ec274 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -748,7 +748,7 @@ static void sun6i_dsi_encoder_enable(struct drm_encoder *encoder)
 	phy_configure(dsi->dphy, &opts);
 	phy_power_on(dsi->dphy);
 
-	if (!IS_ERR(dsi->panel))
+	if (dsi->panel)
 		drm_panel_prepare(dsi->panel);
 
 	/*
@@ -763,7 +763,7 @@ static void sun6i_dsi_encoder_enable(struct drm_encoder *encoder)
 	 * ordering on the panels I've tested it with, so I guess this
 	 * will do for now, until that IP is better understood.
 	 */
-	if (!IS_ERR(dsi->panel))
+	if (dsi->panel)
 		drm_panel_enable(dsi->panel);
 
 	sun6i_dsi_start(dsi, DSI_START_HSC);
@@ -779,7 +779,7 @@ static void sun6i_dsi_encoder_disable(struct drm_encoder *encoder)
 
 	DRM_DEBUG_DRIVER("Disabling DSI output\n");
 
-	if (!IS_ERR(dsi->panel)) {
+	if (dsi->panel) {
 		drm_panel_disable(dsi->panel);
 		drm_panel_unprepare(dsi->panel);
 	}
@@ -941,11 +941,13 @@ static int sun6i_dsi_attach(struct mipi_dsi_host *host,
 			    struct mipi_dsi_device *device)
 {
 	struct sun6i_dsi *dsi = host_to_sun6i_dsi(host);
+	struct drm_panel *panel = of_drm_find_panel(device->dev.of_node);
 
+	if (IS_ERR(panel))
+		return PTR_ERR(panel);
+
+	dsi->panel = panel;
 	dsi->device = device;
-	dsi->panel = of_drm_find_panel(device->dev.of_node);
-	if (IS_ERR(dsi->panel))
-		return PTR_ERR(dsi->panel);
 
 	dev_info(host->dev, "Attached device %s\n", device->name);
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
