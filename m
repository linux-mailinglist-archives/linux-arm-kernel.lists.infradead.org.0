Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1735BBB41A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 14:46:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Mq+KJP46rY9QCE3bAOe2JfVK025udp/Bbor3aRFpFAA=; b=Mcb
	W6kMADs4W4kpkoWjGjlvY1CaR7R9Hzw/m/5QBSf+XnUopALCr7cnAbLHcQu/pPxhiClm7R6K0nsWf
	9hegVeoCP6jN4trb+DSCygQrtc2+UrYL256Lp1dDj3TpKx8nJOHXSINCQPHLVxYfzlXWWuXBj5wQU
	jTnJU5I4T6RVE3u1QmnvFdY6msS5yM/HE67EnmkJgrfFIDHyYifGObiaxhF0D8USwFPADPgal0+I6
	E/OfipPjoXqBZy9mIYgcRJv8EMDk+RRd1N9rvYhnQHgt8ld3H84A+g4jQUcWav+l0UiAteXXGs9eD
	BT0CFfPpaIP8aJRTcYiJRffm0P/nYug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCNjX-0006Fp-OS; Mon, 23 Sep 2019 12:46:28 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCNjL-0006F0-4s
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 12:46:16 +0000
Received: from hjc?rock-chips.com (unknown [192.168.167.152])
 by regular1.263xmail.com (Postfix) with ESMTP id 20C333F2;
 Mon, 23 Sep 2019 20:46:13 +0800 (CST)
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
 P32406T140255445382912S1569242769949542_; 
 Mon, 23 Sep 2019 20:46:11 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <954fbc5d0a41ef46db41fdad09735c21>
X-RL-SENDER: hjc@rock-chips.com
X-SENDER: hjc@rock-chips.com
X-LOGIN-NAME: hjc@rock-chips.com
X-FST-TO: dri-devel@lists.freedesktop.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Sandy Huang <hjc@rock-chips.com>
To: dri-devel@lists.freedesktop.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 05/36] drm/sun4i: use bpp instead of cpp for drm_format_info
Date: Mon, 23 Sep 2019 20:46:09 +0800
Message-Id: <1569242769-182724-1-git-send-email-hjc@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_054615_403889_11502B52 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
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
Cc: hjc@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cpp[BytePerPlane] can't describe the 10bit data format correctly,
So we use bpp[BitPerPlane] to instead cpp.

Signed-off-by: Sandy Huang <hjc@rock-chips.com>
---
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 2 +-
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
index c87fd84..147e251 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
@@ -211,7 +211,7 @@ static int sun8i_ui_layer_update_buffer(struct sun8i_mixer *mixer, int channel,
 	DRM_DEBUG_DRIVER("Using GEM @ %pad\n", &gem->paddr);
 
 	/* Compute the start of the displayed memory */
-	bpp = fb->format->cpp[0];
+	bpp = fb->format->bpp[0] / 8;
 	paddr = gem->paddr + fb->offsets[0];
 
 	/* Fixup framebuffer address for src coordinates */
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index 42d445d..dd777aa 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -295,7 +295,7 @@ static int sun8i_vi_layer_update_buffer(struct sun8i_mixer *mixer, int channel,
 		}
 
 		/* Fixup framebuffer address for src coordinates */
-		paddr += dx * format->cpp[i];
+		paddr += dx * format->bpp[i] / 8;
 		paddr += dy * fb->pitches[i];
 
 		/* Set the line width */
-- 
2.7.4




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
