Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 199A4132020
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 08:01:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iSK0E2lD8jgm3eDjqFUg4+JaZRYZs2ylR6i2945Xp8E=; b=Bw4Wws+GoU3Ai+
	Xk/wsz/WnU/f4ANDARfqB4ENG7sEG8jpSeNfzv6vVPOsMejaVe+U7ApkvkPcvbYHTRNAcVOsKr1sB
	PY0XD4+j8EoVZNoXkc28pAHLsBs0GXzKXxmXEsC7D12VXBlGXvCqtFgwZGh3rYv6AMYCWGGG2vH0H
	eGBlbT+iybj8izTG7e0I9fU3JT/IfUj/Cs1iUNDq6x5cg1YfXb2umNX/eY2mvg2P6EGebNm9Xad7O
	OnQYO8Kat0esgBV6GnPBSLriEIxlmh+HtF1auxMw2iI6TOJ83mpMnXyPPwIe8T1DZVrwEHdmQB7WZ
	LbdPfxlA5bLUjhnfh5eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioirn-0002XR-M4; Tue, 07 Jan 2020 07:01:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioirh-0002Wl-1c
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 07:01:22 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EFB1C207E0;
 Tue,  7 Jan 2020 07:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578380480;
 bh=atyeyYGT5jcZ0qw968QE6bC4vhzHSBeJkqKe40lWcgw=;
 h=From:To:Cc:Subject:Date:From;
 b=yRlWLe9tvzeqTyU1nAkpz6Gkhk4nPMcY/UbD3NnJGpF5g1n2mhMgnAGxjcJsLud9k
 FCzRz6EHMOBWx4MFyorXoJSRuKSeMNon/6lBmN1ce4AqmIKMe89FvvEg+e1Gipjn1O
 ePyakwDZ4Iqpjw5JgTkMGCbjiCr8RVq7VIK7U1s8=
Received: by wens.tw (Postfix, from userid 1000)
 id AF3315FBD4; Tue,  7 Jan 2020 15:01:16 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH] drm/sun4i: tcon: Set RGB DCLK min. divider based on hardware
 model
Date: Tue,  7 Jan 2020 15:01:13 +0800
Message-Id: <20200107070113.28951-1-wens@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_230121_135610_ADDEB0B6 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: stable@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

In commit 0b8e7bbde5e7 ("drm/sun4i: tcon: Set min division of TCON0_DCLK
to 1.") it was assumed that all TCON variants support a minimum divider
of 1 if only DCLK was used.

However, the oldest generation of hardware only supports minimum divider
of 4 if only DCLK is used. If a divider of 1 was used on this old
hardware, some scrolling artifact would appear. A divider of 2 seemed
OK, but a divider of 3 had artifacts as well.

Set the minimum divider when outputing to parallel RGB based on the
hardware model, with a minimum of 4 for the oldest (A10/A10s/A13/A20)
hardware, and a minimum of 1 for the rest. A value is not set for the
TCON variants lacking channel 0.

This fixes the scrolling artifacts seen on my A13 tablet.

Fixes: 0b8e7bbde5e7 ("drm/sun4i: tcon: Set min division of TCON0_DCLK to 1.")
Cc: <stable@vger.kernel.org> # 5.4.x
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/gpu/drm/sun4i/sun4i_tcon.c | 15 ++++++++++++---
 drivers/gpu/drm/sun4i/sun4i_tcon.h |  1 +
 2 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index 42651d737c55..c81cdce6ed55 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -489,7 +489,7 @@ static void sun4i_tcon0_mode_set_rgb(struct sun4i_tcon *tcon,
 
 	WARN_ON(!tcon->quirks->has_channel_0);
 
-	tcon->dclk_min_div = 1;
+	tcon->dclk_min_div = tcon->quirks->dclk_min_div;
 	tcon->dclk_max_div = 127;
 	sun4i_tcon0_mode_set_common(tcon, mode);
 
@@ -1426,12 +1426,14 @@ static int sun8i_r40_tcon_tv_set_mux(struct sun4i_tcon *tcon,
 static const struct sun4i_tcon_quirks sun4i_a10_quirks = {
 	.has_channel_0		= true,
 	.has_channel_1		= true,
+	.dclk_min_div		= 4,
 	.set_mux		= sun4i_a10_tcon_set_mux,
 };
 
 static const struct sun4i_tcon_quirks sun5i_a13_quirks = {
 	.has_channel_0		= true,
 	.has_channel_1		= true,
+	.dclk_min_div		= 4,
 	.set_mux		= sun5i_a13_tcon_set_mux,
 };
 
@@ -1440,6 +1442,7 @@ static const struct sun4i_tcon_quirks sun6i_a31_quirks = {
 	.has_channel_1		= true,
 	.has_lvds_alt		= true,
 	.needs_de_be_mux	= true,
+	.dclk_min_div		= 1,
 	.set_mux		= sun6i_tcon_set_mux,
 };
 
@@ -1447,11 +1450,13 @@ static const struct sun4i_tcon_quirks sun6i_a31s_quirks = {
 	.has_channel_0		= true,
 	.has_channel_1		= true,
 	.needs_de_be_mux	= true,
+	.dclk_min_div		= 1,
 };
 
 static const struct sun4i_tcon_quirks sun7i_a20_quirks = {
 	.has_channel_0		= true,
 	.has_channel_1		= true,
+	.dclk_min_div		= 4,
 	/* Same display pipeline structure as A10 */
 	.set_mux		= sun4i_a10_tcon_set_mux,
 };
@@ -1459,11 +1464,13 @@ static const struct sun4i_tcon_quirks sun7i_a20_quirks = {
 static const struct sun4i_tcon_quirks sun8i_a33_quirks = {
 	.has_channel_0		= true,
 	.has_lvds_alt		= true,
+	.dclk_min_div		= 1,
 };
 
 static const struct sun4i_tcon_quirks sun8i_a83t_lcd_quirks = {
 	.supports_lvds		= true,
 	.has_channel_0		= true,
+	.dclk_min_div		= 1,
 };
 
 static const struct sun4i_tcon_quirks sun8i_a83t_tv_quirks = {
@@ -1477,11 +1484,13 @@ static const struct sun4i_tcon_quirks sun8i_r40_tv_quirks = {
 
 static const struct sun4i_tcon_quirks sun8i_v3s_quirks = {
 	.has_channel_0		= true,
+	.dclk_min_div		= 1,
 };
 
 static const struct sun4i_tcon_quirks sun9i_a80_tcon_lcd_quirks = {
-	.has_channel_0	= true,
-	.needs_edp_reset = true,
+	.has_channel_0		= true,
+	.needs_edp_reset	= true,
+	.dclk_min_div		= 1,
 };
 
 static const struct sun4i_tcon_quirks sun9i_a80_tcon_tv_quirks = {
diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.h b/drivers/gpu/drm/sun4i/sun4i_tcon.h
index f9f1fe80b206..a62ec826ae71 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.h
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.h
@@ -224,6 +224,7 @@ struct sun4i_tcon_quirks {
 	bool	needs_de_be_mux; /* sun6i needs mux to select backend */
 	bool    needs_edp_reset; /* a80 edp reset needed for tcon0 access */
 	bool	supports_lvds;   /* Does the TCON support an LVDS output? */
+	u8	dclk_min_div;	/* minimum divider for TCON0 DCLK */
 
 	/* callback to handle tcon muxing options */
 	int	(*set_mux)(struct sun4i_tcon *, const struct drm_encoder *);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
