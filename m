Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B07FBD98E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 10:08:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kl+GxJGFOh6F2/QX3rU7FYH2xwjbidQIns9kbemKkuc=; b=uxhQNzIDXzcj0kZPsJZC6r6XIa
	ppGjTpvtGAo1SSmKQAStYTPVQOZPfWSggh4sDf+bGXn+PMGEFmbCFUfPG5F7EDmqyXzTeDTETovY7
	4LDMlu/OM0h27oE0fWRcSlG/6e3Slalh8XVrs3upBxoVWAmeSSI6gfvdHHaBvOjEKFFxfvXp5/9+6
	h9yomUeedALIRWmuh1XjOCnF2ntqQd/l1IshpNTAl8Spch+aezt/y8DQ/tb+3vY+UJdzHpq/9Ub73
	h8KGZ6NH0O+oMOMvdxevnV0oPZ+RDuOSctRR2MA6+MRB1mjhVthbsN0o7vKYv2356Kl+P/VMhVPzi
	3YgEK/IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD2LF-0005D3-M7; Wed, 25 Sep 2019 08:08:05 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD2Kk-00059A-1S; Wed, 25 Sep 2019 08:07:41 +0000
Received: from hjc?rock-chips.com (unknown [192.168.167.42])
 by regular1.263xmail.com (Postfix) with ESMTP id 00F882D5;
 Wed, 25 Sep 2019 16:07:11 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2645T139744972404480S1569398812082049_; 
 Wed, 25 Sep 2019 16:07:10 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4eb4121ae0eabc237eee6c7347c4a621>
X-RL-SENDER: hjc@rock-chips.com
X-SENDER: hjc@rock-chips.com
X-LOGIN-NAME: hjc@rock-chips.com
X-FST-TO: dri-devel@lists.freedesktop.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Sandy Huang <hjc@rock-chips.com>
To: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 2/3] drm/rockchip: Add vop_format_get_bpp to get format bpp
Date: Wed, 25 Sep 2019 16:06:39 +0800
Message-Id: <1569398801-92201-3-git-send-email-hjc@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569398801-92201-1-git-send-email-hjc@rock-chips.com>
References: <1569398801-92201-1-git-send-email-hjc@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_010734_907701_B8BC1AF6 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.202 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.150.70.202 listed in wl.mailspike.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: linux-rockchip@lists.infradead.org, Ayan.Halder@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For 10bit yuv format, we need to get format bpp each plane, so we
Add vop_format_get_bpp() to instead of format->cpp[];

Signed-off-by: Sandy Huang <hjc@rock-chips.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 26 +++++++++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 2f821c5..ce5b45d 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -249,6 +249,25 @@ static bool has_rb_swapped(uint32_t format)
 	}
 }
 
+static int vop_format_get_bpp(u32 format, u8 plane)
+{
+	const struct drm_format_info *info;
+
+	info = drm_format_info(format);
+	if (!info || plane >= info->num_planes)
+		return 0;
+
+	if (info->cpp[0] == 0) {
+		/* only support DRM_FORMAT_NVxx_10 now */
+		if (plane == 0)
+			return 10;
+		else
+			return 20;
+	}
+
+	return info->cpp[plane] * 8;
+}
+
 static enum vop_data_format vop_convert_format(uint32_t format)
 {
 	switch (format) {
@@ -832,7 +851,8 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 	dsp_sty = dest->y1 + crtc->mode.vtotal - crtc->mode.vsync_start;
 	dsp_st = dsp_sty << 16 | (dsp_stx & 0xffff);
 
-	offset = (src->x1 >> 16) * fb->format->cpp[0];
+	offset = (src->x1 >> 16) *
+			vop_format_get_bpp(fb->format->format, 0) / 8;
 	offset += (src->y1 >> 16) * fb->pitches[0];
 	dma_addr = rk_obj->dma_addr + offset + fb->offsets[0];
 
@@ -859,12 +879,12 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 	if (is_yuv) {
 		int hsub = fb->format->hsub;
 		int vsub = fb->format->vsub;
-		int bpp = fb->format->cpp[1];
+		int bpp = vop_format_get_bpp(fb->format->format, 1);
 
 		uv_obj = fb->obj[1];
 		rk_uv_obj = to_rockchip_obj(uv_obj);
 
-		offset = (src->x1 >> 16) * bpp / hsub;
+		offset = (src->x1 >> 16) * bpp / 8 / hsub;
 		offset += (src->y1 >> 16) * fb->pitches[1] / vsub;
 
 		dma_addr = rk_uv_obj->dma_addr + offset + fb->offsets[1];
-- 
2.7.4




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
