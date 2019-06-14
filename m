Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A35945C83
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yGHqyTwW2r9RFNTRpjHX/KsOou7C6NP19dSq68wg08I=; b=vAG5MrsUAk+Oa/
	NjLpOKQHO51IZvDvzl4WUp6ZID6neZ+DlDghrZV+E4jQwMDhu76dsk+LG3H6zaRXffSW5dEWnSqkd
	nc6gUpjGiT/MK5Wf/dL6KfxIdPeH4fzsZDwTI1+1MasbWpz8fn5c3czMKWz6FWhTi7TcxH5chBOFH
	W6YYy2WqgJ/SYZYYEElzD9/OfqrYRbtb+b81cXheILzSNv42iUj1RwXeGO0EFTbISXtebiaf/UOB0
	K4alM6hYqI2P7uTVMHCfdqOncYyVJQnFD6BEFvcnxlJ4Jcd/etv1ykDF07cOxY5i+nPFkY0pCJnwT
	807ItvhZ62r6FyP7pfyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbl8i-0008Bh-B1; Fri, 14 Jun 2019 12:17:04 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl5V-0004Np-QW
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:13:47 +0000
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 72B56240002;
 Fri, 14 Jun 2019 12:13:31 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v4 02/12] drm/client: Restrict the plane_state scope
Date: Fri, 14 Jun 2019 14:13:09 +0200
Message-Id: <4f6344cb770047cf5808791d849bbc0cbd330e54.1560514379.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051346_044162_8EB71537 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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

The drm_client_modeset_commit_atomic function uses two times the
plane_state variable in inner blocks of code, but the variable has a scope
global to this function.

This will lead to inadvertent devs to reuse the variable in the second
block with the value left by the first, without any warning from the
compiler since value would have been initialized.

Fix this by moving the variable declaration to the proper scope.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 drivers/gpu/drm/drm_client_modeset.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_client_modeset.c b/drivers/gpu/drm/drm_client_modeset.c
index 006bf7390e7d..8264c3a732b0 100644
--- a/drivers/gpu/drm/drm_client_modeset.c
+++ b/drivers/gpu/drm/drm_client_modeset.c
@@ -861,7 +861,6 @@ EXPORT_SYMBOL(drm_client_panel_rotation);
 static int drm_client_modeset_commit_atomic(struct drm_client_dev *client, bool active)
 {
 	struct drm_device *dev = client->dev;
-	struct drm_plane_state *plane_state;
 	struct drm_plane *plane;
 	struct drm_atomic_state *state;
 	struct drm_modeset_acquire_ctx ctx;
@@ -879,6 +878,8 @@ static int drm_client_modeset_commit_atomic(struct drm_client_dev *client, bool 
 	state->acquire_ctx = &ctx;
 retry:
 	drm_for_each_plane(plane, dev) {
+		struct drm_plane_state *plane_state;
+
 		plane_state = drm_atomic_get_plane_state(state, plane);
 		if (IS_ERR(plane_state)) {
 			ret = PTR_ERR(plane_state);
@@ -901,6 +902,8 @@ static int drm_client_modeset_commit_atomic(struct drm_client_dev *client, bool 
 		unsigned int rotation;
 
 		if (drm_client_panel_rotation(mode_set, &rotation)) {
+			struct drm_plane_state *plane_state;
+
 			/* Cannot fail as we've already gotten the plane state above */
 			plane_state = drm_atomic_get_new_plane_state(state, primary);
 			plane_state->rotation = rotation;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
