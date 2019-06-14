Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E779345C86
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:17:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rp9iYv9rSRTcLteoU4DBFxG/Z7kbR34YOnCC6lCTaI=; b=Ho9rftAG/Zug/I
	tFfMsea8kBcaS/3Ycf44xNyctZ5geiGJjkcD+gkvvREcwY1MY2yaBrBCsIDjln7koBoGJLO6jKUKk
	GTkE1cRI08SIAipWZUIyHnOmQrjweXcp6leFitHtfUWuwWTG9cA+W2kKW846lsjyRaaBP9TR+p8zB
	o/5/nYtqKqtXTgtjAvHglmKJPDIK3khfcbGdW/i2tm/vZ1FuKOaFjpooaSR4v0BvA55/+VjZzLaD7
	2gftn0ktXydjtyYJrPkPAlktZw9rBWFHyQ+Gsms5WRERky/hj+wW5+BRlVXrPW+GB4S9bCJmhTcUh
	6bm1qV4mEI2EifAh0+hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbl9L-0000DW-GA; Fri, 14 Jun 2019 12:17:43 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl5d-0004SO-LD
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:13:56 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 89FDC1C0011;
 Fri, 14 Jun 2019 12:13:40 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v4 04/12] drm/client: Change drm_client_panel_rotation name
Date: Fri, 14 Jun 2019 14:13:11 +0200
Message-Id: <9a75b69460e0b365499562492d012824b4d341f2.1560514379.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051354_024566_5839B5F2 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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

The drm_client_panel_rotation function has been used so far to set the
default rotation based on the panel orientation.

However, we can have more sources of information to make that decision,
starting with the command line that we will introduce later in this series.

Change the name to remove the panel mention.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 drivers/gpu/drm/drm_client_modeset.c | 12 ++++++------
 drivers/gpu/drm/drm_fb_helper.c      |  2 +-
 include/drm/drm_client.h             |  2 +-
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/drm_client_modeset.c b/drivers/gpu/drm/drm_client_modeset.c
index b4e5fb0a17cf..4869a0170bec 100644
--- a/drivers/gpu/drm/drm_client_modeset.c
+++ b/drivers/gpu/drm/drm_client_modeset.c
@@ -804,19 +804,19 @@ int drm_client_modeset_probe(struct drm_client_dev *client, unsigned int width, 
 EXPORT_SYMBOL(drm_client_modeset_probe);
 
 /**
- * drm_client_panel_rotation() - Check panel orientation
+ * drm_client_rotation() - Check the initial rotation value
  * @modeset: DRM modeset
  * @rotation: Returned rotation value
  *
- * This function checks if the primary plane in @modeset can hw rotate to match
- * the panel orientation on its connector.
+ * This function checks if the primary plane in @modeset can hw rotate
+ * to match the rotation needed on its connector.
  *
  * Note: Currently only 0 and 180 degrees are supported.
  *
  * Return:
  * True if the plane can do the rotation, false otherwise.
  */
-bool drm_client_panel_rotation(struct drm_mode_set *modeset, unsigned int *rotation)
+bool drm_client_rotation(struct drm_mode_set *modeset, unsigned int *rotation)
 {
 	struct drm_connector *connector = modeset->connectors[0];
 	struct drm_plane *plane = modeset->crtc->primary;
@@ -857,7 +857,7 @@ bool drm_client_panel_rotation(struct drm_mode_set *modeset, unsigned int *rotat
 
 	return true;
 }
-EXPORT_SYMBOL(drm_client_panel_rotation);
+EXPORT_SYMBOL(drm_client_rotation);
 
 static int drm_client_modeset_commit_atomic(struct drm_client_dev *client, bool active)
 {
@@ -902,7 +902,7 @@ static int drm_client_modeset_commit_atomic(struct drm_client_dev *client, bool 
 		struct drm_plane *primary = mode_set->crtc->primary;
 		unsigned int rotation;
 
-		if (drm_client_panel_rotation(mode_set, &rotation)) {
+		if (drm_client_rotation(mode_set, &rotation)) {
 			struct drm_plane_state *plane_state;
 
 			/* Cannot fail as we've already gotten the plane state above */
diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
index 946cae196475..c19b92d4c7e3 100644
--- a/drivers/gpu/drm/drm_fb_helper.c
+++ b/drivers/gpu/drm/drm_fb_helper.c
@@ -1722,7 +1722,7 @@ static void drm_setup_crtcs_fb(struct drm_fb_helper *fb_helper)
 
 		modeset->fb = fb_helper->fb;
 
-		if (drm_client_panel_rotation(modeset, &rotation))
+		if (drm_client_rotation(modeset, &rotation))
 			/* Rotating in hardware, fbcon should not rotate */
 			sw_rotations |= DRM_MODE_ROTATE_0;
 		else
diff --git a/include/drm/drm_client.h b/include/drm/drm_client.h
index f2d5ed745733..72d51d1e9dd9 100644
--- a/include/drm/drm_client.h
+++ b/include/drm/drm_client.h
@@ -153,7 +153,7 @@ void drm_client_framebuffer_delete(struct drm_client_buffer *buffer);
 int drm_client_modeset_create(struct drm_client_dev *client);
 void drm_client_modeset_free(struct drm_client_dev *client);
 int drm_client_modeset_probe(struct drm_client_dev *client, unsigned int width, unsigned int height);
-bool drm_client_panel_rotation(struct drm_mode_set *modeset, unsigned int *rotation);
+bool drm_client_rotation(struct drm_mode_set *modeset, unsigned int *rotation);
 int drm_client_modeset_commit_force(struct drm_client_dev *client);
 int drm_client_modeset_commit(struct drm_client_dev *client);
 int drm_client_modeset_dpms(struct drm_client_dev *client, int mode);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
