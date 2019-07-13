Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6123667A11
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jul 2019 14:04:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JBihfqhZdPKFQSV6gRaZvbQxRdQvdhSChpjTiwrJpbY=; b=ApOmZCTNrHbuD3
	8OAWADxLKzA56Nz0VypGiP3P6/zepuZkMt5QIedLTsBvxO4lBRZZcA3Jk1ho8Kt+KgqzFe0Aalwio
	2W0IUzUAfy+BMqC/ljshlTD9KDhxhT8N9SGxlKJrFSnbnTXUv8RA0Yt7WigekYda1TjFDA0mBMLdr
	7+p9ptINUU+sfom67sUOCLNk1S1WVb2u8SRptGEK63939UTTkCsVaWR26K0vVNc6Y3cHO4py8fpm1
	xWgm+xA4aRoIWg2ZdRr7TNUZXINXZNYVSOO3/y8uPd3rau8bvEioLV2c5gPb2xR6cdMIJQO2GuuBo
	s+/FhVd/VmYr1zlZljPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmGlE-0007oP-VJ; Sat, 13 Jul 2019 12:04:16 +0000
Received: from mailoutvs4.siol.net ([185.57.226.195] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmGl4-0007fT-St
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jul 2019 12:04:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 5CF29520E52;
 Sat, 13 Jul 2019 14:03:59 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id bZRhldBXFahl; Sat, 13 Jul 2019 14:03:59 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 0566252059A;
 Sat, 13 Jul 2019 14:03:59 +0200 (CEST)
Received: from localhost.localdomain (cpe-194-152-11-237.cable.triera.net
 [194.152.11.237]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id AC240520778;
 Sat, 13 Jul 2019 14:03:56 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: maxime.ripard@bootlin.com,
	wens@csie.org
Subject: [PATCH 1/3] drm/sun4i: Introduce color encoding and range properties
Date: Sat, 13 Jul 2019 14:03:44 +0200
Message-Id: <20190713120346.30349-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190713120346.30349-1-jernej.skrabec@siol.net>
References: <20190713120346.30349-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_050407_100816_8898278C 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.195 listed in list.dnswl.org]
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to correctly convert YUV color space to RGB, we have to know
color encoding and range.

Introduce these two properties using helper method.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index bd0e6a52d1d8..240a800217df 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -441,6 +441,7 @@ struct sun8i_vi_layer *sun8i_vi_layer_init_one(struct drm_device *drm,
 					       struct sun8i_mixer *mixer,
 					       int index)
 {
+	u32 supported_encodings, supported_ranges;
 	struct sun8i_vi_layer *layer;
 	unsigned int plane_cnt;
 	int ret;
@@ -469,6 +470,22 @@ struct sun8i_vi_layer *sun8i_vi_layer_init_one(struct drm_device *drm,
 		return ERR_PTR(ret);
 	}
 
+	supported_encodings = BIT(DRM_COLOR_YCBCR_BT601) |
+			      BIT(DRM_COLOR_YCBCR_BT709);
+
+	supported_ranges = BIT(DRM_COLOR_YCBCR_LIMITED_RANGE) |
+			   BIT(DRM_COLOR_YCBCR_FULL_RANGE);
+
+	ret = drm_plane_create_color_properties(&layer->plane,
+						supported_encodings,
+						supported_ranges,
+						DRM_COLOR_YCBCR_BT709,
+						DRM_COLOR_YCBCR_LIMITED_RANGE);
+	if (ret) {
+		dev_err(drm->dev, "Couldn't add encoding and range properties!\n");
+		return ERR_PTR(ret);
+	}
+
 	drm_plane_helper_add(&layer->plane, &sun8i_vi_layer_helper_funcs);
 	layer->mixer = mixer;
 	layer->channel = index;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
