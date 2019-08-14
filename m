Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E81E98D17C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:52:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cn2rrkdjFa7FrgJtXO2tmSyqIEUQk6C53vbLMiuL+8s=; b=dYNTNIPUqY+Rwdy0RnSq+VCMJl
	EckBRcoWnMqZnY81huqn7EkZfe/+l/FY5s/2gKfmCSmDnJDd36HTSj8OPTMqxAOk2JrFOtONaHSmB
	TDQ/D1gn3rcJ8DA/K17qsA3WkqftcHjeC9qtT20owPKW3S6IzWDDcIfvZPYSwBeMMF/wI89N4xYHC
	+bGxMSEbF8cnwI/CkIC269WJXn3yFKFs866FoxbUgk2L3+UvjODLWSbQ5383XA5sBOytoAV4a57bP
	7rut30a1IEDRhLS9zaC/l5Wy9F6WzqdkSWogkqUFPb4mIp4GDaKx8NuDyQIDfgU3NAd4rQDdRanor
	YKhq7nyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqsr-0008Tq-4q; Wed, 14 Aug 2019 10:52:01 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqq9-0003xZ-VZ
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:49:15 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B0D7E200184;
 Wed, 14 Aug 2019 12:49:12 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A427B200012;
 Wed, 14 Aug 2019 12:49:12 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id A91DD2060E;
 Wed, 14 Aug 2019 12:49:11 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 15/15] drm/mxsfb: Add support for live pixel format change
Date: Wed, 14 Aug 2019 13:48:51 +0300
Message-Id: <1565779731-1300-16-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565779731-1300-1-git-send-email-robert.chiras@nxp.com>
References: <1565779731-1300-1-git-send-email-robert.chiras@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_034914_173222_32C83A9A 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This IP requires full stop and re-start when changing display timings,
but we can change the pixel format while running.

Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
---
 drivers/gpu/drm/mxsfb/mxsfb_crtc.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
index 317575e..5607fc0 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
@@ -494,6 +494,7 @@ void mxsfb_plane_atomic_update(struct mxsfb_drm_private *mxsfb,
 	struct drm_crtc *crtc = &pipe->crtc;
 	struct drm_plane_state *new_state = pipe->plane.state;
 	struct drm_framebuffer *fb = pipe->plane.state->fb;
+	struct drm_framebuffer *old_fb = state->fb;
 	struct drm_pending_vblank_event *event;
 	u32 fb_addr, src_off, src_w, stride, cpp = 0;
 
@@ -510,7 +511,7 @@ void mxsfb_plane_atomic_update(struct mxsfb_drm_private *mxsfb,
 	}
 	spin_unlock_irq(&crtc->dev->event_lock);
 
-	if (!fb)
+	if (!fb || !old_fb)
 		return;
 
 	fb_addr = mxsfb_get_fb_paddr(mxsfb);
@@ -533,4 +534,17 @@ void mxsfb_plane_atomic_update(struct mxsfb_drm_private *mxsfb,
 		src_w = new_state->src_w >> 16;
 		mxsfb_set_fb_hcrop(mxsfb, src_w, stride);
 	}
+
+	if (old_fb->format->format != fb->format->format) {
+		struct drm_format_name_buf old_fmt_buf;
+		struct drm_format_name_buf new_fmt_buf;
+
+		DRM_DEV_DEBUG_DRIVER(crtc->dev->dev,
+				"Switching pixel format: %s -> %s\n",
+				drm_get_format_name(old_fb->format->format,
+						    &old_fmt_buf),
+				drm_get_format_name(fb->format->format,
+						    &new_fmt_buf));
+		mxsfb_set_pixel_fmt(mxsfb, true);
+	}
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
