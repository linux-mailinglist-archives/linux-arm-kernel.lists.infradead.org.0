Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD7B45C81
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:16:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtGVJ+iTu0C791VDzi8faGvawZFDxJqH7hMiV8+F8Ks=; b=gXUJDja7xIJ/RO
	1Rh0ba5XcuhQ/LAdRaxYPPNo1zOgqJJQnwjjm5kDgaTsB5qEp1+dnTsK12CQJwVweP2ROOQ5MIwAc
	hwls68nkZFgsZGp7fkdJNa0woWVQd5n3GRyJDthikiS0ZwayiWAdI1va/z89uEnnpZ84xICpZYKNF
	TQ41B7yr+q4h218k9JJvsj5J0wXCkAM+09Sm6ejq1z1m5/QHIbInxXmty/Bx9rwadzQmIbs4Zhkpt
	swxaordl5fWBwKAIPEb3oCwmYWQyaA+kqnFnRJwq7+0AF/P6E/axffXMeEXuG+nInIrqIBS6DlQ7G
	FUXnuc0idQ1XRCBanoLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbl8T-0007wQ-6E; Fri, 14 Jun 2019 12:16:49 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl5S-0004LK-78
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:13:44 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 62FB2FF805;
 Fri, 14 Jun 2019 12:13:26 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v4 01/12] drm/connector: Add documentation for drm_cmdline_mode
Date: Fri, 14 Jun 2019 14:13:08 +0200
Message-Id: <19279b675ec213f8011def396b43bad2420e2992.1560514379.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051342_531439_47AFFEF6 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: eben@raspberrypi.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Eric Anholt <eric@anholt.net>, noralf@tronnes.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The struct drm_cmdline_mode holds the result of the command line parsers.
However, it wasn't documented so far, so let's do that.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 include/drm/drm_connector.h | 86 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 84 insertions(+), 2 deletions(-)

diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 47e749b74e5f..f9cfa96f5d7e 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -904,18 +904,100 @@ struct drm_connector_funcs {
 				   const struct drm_connector_state *state);
 };
 
-/* mode specified on the command line */
+/**
+ * struct drm_cmdline_mode - DRM Mode passed through the kernel command-line
+ *
+ * Each connector can have an initial mode with additional options
+ * passed through the kernel command line. This structure allows to
+ * express those parameters and will be filled by the command-line
+ * parser.
+ */
 struct drm_cmdline_mode {
+	/**
+	 * @specified:
+	 *
+	 * Has a mode been read from the command-line?
+	 */
 	bool specified;
+
+	/**
+	 * @refresh_specified:
+	 *
+	 * Did the mode has a preferred refresh rate?
+	 */
 	bool refresh_specified;
+
+	/**
+	 * @bpp_specified:
+	 *
+	 * Did the mode has a preferred BPP?
+	 */
 	bool bpp_specified;
-	int xres, yres;
+
+	/**
+	 * @xres:
+	 *
+	 * Active resolution on the X axis, in pixels.
+	 */
+	int xres;
+
+	/**
+	 * @yres:
+	 *
+	 * Active resolution on the Y axis, in pixels.
+	 */
+	int yres;
+
+	/**
+	 * @bpp:
+	 *
+	 * Bits per pixels for the mode.
+	 */
 	int bpp;
+
+	/**
+	 * @refresh:
+	 *
+	 * Refresh rate, in Hertz.
+	 */
 	int refresh;
+
+	/**
+	 * @rb:
+	 *
+	 * Do we need to use reduced blanking?
+	 */
 	bool rb;
+
+	/**
+	 * @interlace:
+	 *
+	 * The mode is interlaced.
+	 */
 	bool interlace;
+
+	/**
+	 * @cvt:
+	 *
+	 * The timings will be calculated using the VESA Coordinated
+	 * Video Timings instead of looking up the mode from a table.
+	 */
 	bool cvt;
+
+	/**
+	 * @margins:
+	 *
+	 * Add margins to the mode calculation (1.8% of xres rounded
+	 * down to 8 pixels and 1.8% of yres).
+	 */
 	bool margins;
+
+	/**
+	 * @force:
+	 *
+	 * Ignore the hotplug state of the connector, and force its
+	 * state to one of the DRM_FORCE_* values.
+	 */
 	enum drm_connector_force force;
 };
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
