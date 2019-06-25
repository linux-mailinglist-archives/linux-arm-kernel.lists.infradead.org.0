Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7E8556B3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 20:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=prajIWG2vk4gI+c2yfiH+KJXMkm9MmcuyNpsqFB6dRQ=; b=Ivi5iVuLhZl7BioM7i0yeVinh4
	bUMxAJi/PniJcCOifplEoRdCytFbAfBajUtjBt+3Hukif4tLDDZOCg4HXZA08NcFXCiNzhM3O464h
	jdK1YMGGg9F37EK2NH5g2MVCPBNDuXEoN5b76cunWGwGxOnKj1IZqADF1vmS0D3LsrqHsf4xfV+lZ
	O7Q4K/jJ00EUSqztYPtayF8Benw6QgoGguNj3pTUC/Egbi+Gm/cr7DqMbm4DI2T1C7fakNkkRA+zH
	GddE+NqZC7jf9O5G86IgIUxt84YDXbYnqQIAe3JQ3tDPw9UYcni1Dh299U43rsOl8LvLLXT1VVqFY
	gjglM/8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfpnZ-0006Lb-JW; Tue, 25 Jun 2019 18:04:05 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfpmC-0005Ot-71
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 18:02:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: bbeckett) with ESMTPSA id 8D2A6286276
From: Robert Beckett <bob.beckett@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 3/4] drm/vblank: estimate vblank while disabling vblank if
 interrupt disabled
Date: Tue, 25 Jun 2019 18:59:14 +0100
Message-Id: <b96132cef4b63118df1026a99b3c345692e3de26.1561483965.git.bob.beckett@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <cover.1561483965.git.bob.beckett@collabora.com>
References: <cover.1561483965.git.bob.beckett@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_110240_385490_1575D1CF 
X-CRM114-Status: GOOD (  12.00  )
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

If interrupts are disabled (e.g. via vblank_disable_fn) and we come to
disable vblank, update the vblank count to best guess as to what it
would be had the interrupts remained enabled, and update the timesamp to
now.

This avoids a stale vblank event being sent while disabling crtcs during
atomic modeset.

Fixes: 68036b08b91bc ("drm/vblank: Do not update vblank count if interrupts
are already disabled.")

Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
---
 drivers/gpu/drm/drm_vblank.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 7dabb2bdb733..db68b8cbf797 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -375,9 +375,23 @@ void drm_vblank_disable_and_save(struct drm_device *dev, unsigned int pipe)
 	 * interrupts were enabled. This avoids calling the ->disable_vblank()
 	 * operation in atomic context with the hardware potentially runtime
 	 * suspended.
+	 * If interrupts are disabled (e.g. via blank_disable_fn) then make
+	 * best guess as to what it would be now and make sure we have an up
+	 * to date timestamp.
 	 */
-	if (!vblank->enabled)
+	if (!vblank->enabled) {
+		ktime_t now = ktime_get();
+		u32 diff = 0;
+		if (vblank->framedur_ns) {
+			u64 diff_ns = ktime_to_ns(ktime_sub(now, vblank->time));
+			diff = DIV_ROUND_CLOSEST_ULL(diff_ns,
+						     vblank->framedur_ns);
+		}
+
+		store_vblank(dev, pipe, diff, now, vblank->count);
+
 		goto out;
+	}
 
 	/*
 	 * Update the count and timestamp to maintain the
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
