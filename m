Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1DA556B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 20:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GEB9tWEzctVzm/kyf6xYAkWqxLwWPV6MFD+PrqP9AQ8=; b=bmBVCibcFTnr0Lus2emEaCFLsq
	bynRHmiSXkaEcam6eQiJqhB1TwyTz4F2Z6iyleIPCom/8mbELJ8l/OYFeM5cuQSJsztWDe93bvDF/
	VY2ecJKA+s7yshvARHlYwo1uZoNkHOH0qrNjcN8SD/BQyqiftk9nECUh6XOsfejV1be6ozTc8T5nY
	w9fxoe93xRGyXZLwhA3LJeVvOUcAURjYXooduBOcDFY+8C2SzGdsxQLSdDuPeejrg5FBEIH1e0XkC
	Ca1Vv1FMvZam7nEXj3SV9e7TMH+kBBCzxdcW8ZukD+VCorFOQrNUrT38ZjyMp37RC9jEPM8M/ZA8x
	S4lO6s2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfpn2-0005tV-M3; Tue, 25 Jun 2019 18:03:32 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfpmB-0005Or-Vn
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 18:02:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: bbeckett) with ESMTPSA id CE79E28A3F3
From: Robert Beckett <bob.beckett@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 1/4] drm/vblank: warn on sending stale event
Date: Tue, 25 Jun 2019 18:59:12 +0100
Message-Id: <a21034afa30246f31daa16e74a0772377a4791ef.1561483965.git.bob.beckett@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <cover.1561483965.git.bob.beckett@collabora.com>
References: <cover.1561483965.git.bob.beckett@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_110240_161289_800358E8 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Robert Beckett <bob.beckett@collabora.com>,
 Fabio Estevam <festevam@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, David Airlie <airlied@linux.ie>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Sean Paul <sean@poorly.run>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Warn when about to send stale vblank info and add advice to
documentation on how to avoid.

Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
---
 drivers/gpu/drm/drm_vblank.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 603ab105125d..7dabb2bdb733 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -918,6 +918,19 @@ EXPORT_SYMBOL(drm_crtc_arm_vblank_event);
  *
  * See drm_crtc_arm_vblank_event() for a helper which can be used in certain
  * situation, especially to send out events for atomic commit operations.
+ *
+ * Care should be taken to avoid stale timestamps. If:
+ *   - your driver has vblank support (i.e. dev->num_crtcs > 0)
+ *   - the vblank irq is off (i.e. no one called drm_crtc_vblank_get)
+ *   - from the vblank code's pov the pipe is still running (i.e. not
+ *     in-between a drm_crtc_vblank_off()/on() pair)
+ * If all of these conditions hold then drm_crtc_send_vblank_event is
+ * going to give you a garbage timestamp and and sequence number (the last
+ * recorded before the irq was disabled). If you call drm_crtc_vblank_get/put
+ * around it, or after vblank_off, then either of those will have rolled things
+ * forward for you.
+ * So, drivers should call drm_crtc_vblank_off() before this function in their
+ * crtc atomic_disable handlers.
  */
 void drm_crtc_send_vblank_event(struct drm_crtc *crtc,
 				struct drm_pending_vblank_event *e)
@@ -925,8 +938,12 @@ void drm_crtc_send_vblank_event(struct drm_crtc *crtc,
 	struct drm_device *dev = crtc->dev;
 	u64 seq;
 	unsigned int pipe = drm_crtc_index(crtc);
+	struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
 	ktime_t now;
 
+	WARN_ONCE(dev->num_crtcs > 0 && !vblank->enabled && !vblank->inmodeset,
+		  "sending stale vblank info\n");
+
 	if (dev->num_crtcs > 0) {
 		seq = drm_vblank_count_and_time(dev, pipe, &now);
 	} else {
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
