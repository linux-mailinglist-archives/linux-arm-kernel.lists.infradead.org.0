Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 396091A567D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 01:17:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXZ2fu028aw91gnu02qSdo7R0jV9q3bN9OZqwVDVGEk=; b=S/JW3PiChTYK/p
	f+Z1OapWXZSoROsVFyv9dgjKpooa3ozPFprx1EqSEgnLi3CIU2DJtpXXbDnspISjGIweHkQLgSNJw
	knU4IOIsj0kypcjzt4LzNfrf4tWlLOr1U54J+psBRlBcBJEW5G1RXrZCXhUY6epq2QCn65B05Yshr
	lDa0sAa2IyCdzqZopFX3vhbshCpcNloTc91+MaJfowi5NFnfj5oIm3TY+/1hQfB3vdqew+FxwW7ak
	fDhd+ZzHDN5EzNAj3WqkqSdqUp/s0a8qerFbPcvfAtlQn6pdf5FhAxGtyss5USSNecgDAW0FYsHHp
	bR3oEKTQbXC4J0fvSs4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNPN5-0006c8-Gg; Sat, 11 Apr 2020 23:17:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNPGl-0006hi-P1
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 23:10:37 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7879A20757;
 Sat, 11 Apr 2020 23:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586646635;
 bh=G6doahWEhEoWqA7g3gA5FqgZGobBc8m5pKoJLoAJSdA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ea3/W8vppEjMZBJj+YmXu2blDJKIRzCSlAVkoW/H0Uw6rrUBqo8faOJgXm/6oivrv
 uXPNKghB+oLNk6ueZPpGIeGWRa3tq4or1e/crA55rViajBXgSYwBUnSNt4a9n/lHdg
 Q5m+HQK07EEMmGN4DJbyl2PoNIvY5xaQE/LjBoPM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 042/108] drm/sun4i: dsi: Use NULL to signify "no
 panel"
Date: Sat, 11 Apr 2020 19:08:37 -0400
Message-Id: <20200411230943.24951-42-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411230943.24951-1-sashal@kernel.org>
References: <20200411230943.24951-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_161035_853237_064E05D1 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>, dri-devel@lists.freedesktop.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Samuel Holland <samuel@sholland.org>

[ Upstream commit 0e4e3fb4901d19f49e5c0a582f383b10dda8d1c5 ]

The continued use of an ERR_PTR to signify "no panel" outside of
sun6i_dsi_attach is confusing because it is a double negative. Because
the connector always reports itself as connected, there is also the
possibility of sending an ERR_PTR to drm_panel_get_modes(), which would
crash.

Solve both of these by only storing the panel pointer if it is valid.

Fixes: 133add5b5ad4 ("drm/sun4i: Add Allwinner A31 MIPI-DSI controller support")
Signed-off-by: Samuel Holland <samuel@sholland.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
Link: https://patchwork.freedesktop.org/patch/msgid/20200211072858.30784-2-samuel@sholland.org
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index f83522717488a..d2ade0ad67708 100644
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
