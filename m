Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B653CBB456
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 14:52:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p8b/N90aGQRus+N2KLja7oYUZI1BJx0ajtzAjr258xs=; b=SK7kvSr2DxN/7szfJPuWxTHkOt
	KUycZSoONHommWGACOs245y0xE0xNu8+ihkiu6tfQnguGJa5A+yi+CS34FqdCtLH3FpanQAYE1j2j
	R+oLNumjSp/K6xY2JnmnZ/IPDuaN8q9MBvvvAbHW9s9OMY3mOYf6RszSQVSS1koRD79P+iwhl8RxE
	vqhWI7RWUpQcZOT8jIGflbnrTbv5QGZD3E9IcM9UFhgybZOd/nXqX0ntpUL71L4ghiGdf+lXoung5
	VM8mapYcDF92fKxl1l+WKqTjNxdXFU71skXOmhkn8EkkIioAzvGritzFyTsH+cPmW1mEdhY4uQOdt
	mZItp66A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCNpe-00008I-EW; Mon, 23 Sep 2019 12:52:46 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCNpP-00007g-QO
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 12:52:33 +0000
Received: from hjc?rock-chips.com (unknown [192.168.167.128])
 by regular1.263xmail.com (Postfix) with ESMTP id 4931FB7E;
 Mon, 23 Sep 2019 20:52:29 +0800 (CST)
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
 P15436T140160991741696S1569243121384240_; 
 Mon, 23 Sep 2019 20:52:28 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <0879891f7949fe71dcd17fbe9529da66>
X-RL-SENDER: hjc@rock-chips.com
X-SENDER: hjc@rock-chips.com
X-LOGIN-NAME: hjc@rock-chips.com
X-FST-TO: dri-devel@lists.freedesktop.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Sandy Huang <hjc@rock-chips.com>
To: dri-devel@lists.freedesktop.org, Philipp Zabel <p.zabel@pengutronix.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 25/36] drm/imx: use bpp instead of cpp for drm_format_info
Date: Mon, 23 Sep 2019 20:51:48 +0800
Message-Id: <1569243119-183293-5-git-send-email-hjc@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569243119-183293-1-git-send-email-hjc@rock-chips.com>
References: <1569243119-183293-1-git-send-email-hjc@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_055232_039358_3194175C 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.196 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-kernel@vger.kernel.org, hjc@rock-chips.com,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cpp[BytePerPlane] can't describe the 10bit data format correctly,
So we use bpp[BitPerPlane] to instead cpp.

Signed-off-by: Sandy Huang <hjc@rock-chips.com>
---
 drivers/gpu/drm/imx/ipuv3-plane.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/imx/ipuv3-plane.c b/drivers/gpu/drm/imx/ipuv3-plane.c
index 28826c0..f7c7036 100644
--- a/drivers/gpu/drm/imx/ipuv3-plane.c
+++ b/drivers/gpu/drm/imx/ipuv3-plane.c
@@ -101,7 +101,7 @@ drm_plane_state_to_eba(struct drm_plane_state *state, int plane)
 	BUG_ON(!cma_obj);
 
 	return cma_obj->paddr + fb->offsets[plane] + fb->pitches[plane] * y +
-	       fb->format->cpp[plane] * x;
+	       fb->format->bpp[plane] / 8 * x;
 }
 
 static inline unsigned long
@@ -120,7 +120,7 @@ drm_plane_state_to_ubo(struct drm_plane_state *state)
 	y /= fb->format->vsub;
 
 	return cma_obj->paddr + fb->offsets[1] + fb->pitches[1] * y +
-	       fb->format->cpp[1] * x - eba;
+	       fb->format->bpp[1] / 8 * x - eba;
 }
 
 static inline unsigned long
@@ -139,7 +139,7 @@ drm_plane_state_to_vbo(struct drm_plane_state *state)
 	y /= fb->format->vsub;
 
 	return cma_obj->paddr + fb->offsets[2] + fb->pitches[2] * y +
-	       fb->format->cpp[2] * x - eba;
+	       fb->format->bpp[2] / 8 * x - eba;
 }
 
 void ipu_plane_put_resources(struct ipu_plane *ipu_plane)
@@ -628,7 +628,7 @@ static void ipu_plane_atomic_update(struct drm_plane *plane,
 	width = drm_rect_width(&state->src) >> 16;
 	height = drm_rect_height(&state->src) >> 16;
 	info = drm_format_info(fb->format->format);
-	ipu_calculate_bursts(width, info->cpp[0], fb->pitches[0],
+	ipu_calculate_bursts(width, info->bpp[0] / 8, fb->pitches[0],
 			     &burstsize, &num_bursts);
 
 	ipu_cpmem_zero(ipu_plane->ipu_ch);
-- 
2.7.4




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
