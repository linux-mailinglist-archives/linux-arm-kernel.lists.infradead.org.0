Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12765200468
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UN8XhN6/FZJIuzTHAhtHsdtNjJV4rgnEmlF6KvoZHUc=; b=jZE
	o/ZmEO7Le08xx6G4UojBjcNZC/iqyBqrgf8BmXaAkbkJIugsy5cLJAGi8QJOmbadQb0qIso7y7S2G
	SDUcg1A3S0FvaYmBpaDsIrGdFmgyfGPZxDUq1s0UqcVb3/UW+FxwWvkX+2v9gQZ5xRYQzBvlHYXqa
	BwVGxB6sBnCH51yiC5K/1QRYx5nAlFxqnf4LROCgGNuBXBlquyKTe1WGY17hhpPQg/Oy1IrK4spfO
	+t2o8dGV+29DOqE/+CJuoDG6IWqUU7+tKCeDvUewBbcYZ0LjYzI3s/ZCe7AOg7pbcDqwAyxg6GPTl
	mqfEqETgQV945i2LBLO2jl3jwDEHOUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCm1-0002ZU-Gc; Fri, 19 Jun 2020 08:53:21 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmClr-0002YD-A5; Fri, 19 Jun 2020 08:53:12 +0000
Received: from localhost (unknown [192.168.167.209])
 by lucky1.263xmail.com (Postfix) with ESMTP id 6ADA7BFCA3;
 Fri, 19 Jun 2020 16:53:05 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P10491T139788078274304S1592556784649283_; 
 Fri, 19 Jun 2020 16:53:05 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <01c70fabecef316f33fcc8cfd259d260>
X-RL-SENDER: hjc@rock-chips.com
X-SENDER: hjc@rock-chips.com
X-LOGIN-NAME: hjc@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Sandy Huang <hjc@rock-chips.com>
To: heiko@sntech.de, Sandy Huang <hjc@rock-chips.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v2] drm/rockchip: vop: fix vop full rgb24 r/b color error
Date: Fri, 19 Jun 2020 16:53:02 +0800
Message-Id: <20200619085302.2263-1-hjc@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_015311_538499_55039E9F 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.134 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.134 listed in wl.mailspike.net]
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
Cc: huangtao@rock-chips.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 andy.yan@rock-chips.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGB888 format msb is red component and the lsb is blue component,
at vop full platform this is swapped, and this is different from vop
lite and vop next, so add this patch to fix it.

v2:
    move to has_rb_swapped() function.

Signed-off-by: Sandy Huang <hjc@rock-chips.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index c80f7d9fd13f..99bdb5a2a185 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -132,6 +132,7 @@ struct vop_win {
 
 struct rockchip_rgb;
 struct vop {
+	uint32_t version;
 	struct drm_crtc crtc;
 	struct device *dev;
 	struct drm_device *drm_dev;
@@ -248,17 +249,28 @@ static inline void vop_cfg_done(struct vop *vop)
 	VOP_REG_SET(vop, common, cfg_done, 1);
 }
 
-static bool has_rb_swapped(uint32_t format)
+static bool has_rb_swapped(struct vop *vop, uint32_t format)
 {
+	bool rb_swapped;
+
 	switch (format) {
 	case DRM_FORMAT_XBGR8888:
 	case DRM_FORMAT_ABGR8888:
 	case DRM_FORMAT_BGR888:
 	case DRM_FORMAT_BGR565:
-		return true;
+		rb_swapped = true;
 	default:
-		return false;
+		rb_swapped = false;
 	}
+
+	/*
+	 * VOP full need to do rb swap to show rgb888/bgr888 format color correctly
+	 */
+	if ((format == DRM_FORMAT_RGB888 || format == DRM_FORMAT_BGR888) &&
+	    VOP_MAJOR(vop->version) == 3)
+		rb_swapped = !rb_swapped;
+
+	return rb_swapped;
 }
 
 static enum vop_data_format vop_convert_format(uint32_t format)
@@ -988,7 +1000,7 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 	VOP_WIN_SET(vop, win, dsp_info, dsp_info);
 	VOP_WIN_SET(vop, win, dsp_st, dsp_st);
 
-	rb_swap = has_rb_swapped(fb->format->format);
+	rb_swap = has_rb_swapped(vop, fb->format->format);
 	VOP_WIN_SET(vop, win, rb_swap, rb_swap);
 
 	/*
@@ -2091,6 +2103,7 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
 	vop->dev = dev;
 	vop->data = vop_data;
 	vop->drm_dev = drm_dev;
+	vop->version = vop_data->version;
 	dev_set_drvdata(dev, vop);
 
 	vop_win_init(vop);
-- 
2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
