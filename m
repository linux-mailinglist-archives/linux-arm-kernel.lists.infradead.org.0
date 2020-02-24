Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA7D16ADC6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:40:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9NRBy4KhvwXnGvz2cEffIJ+PZflsXa7/QnCnM3/pYRk=; b=BL1fsdgjB5ZNjB
	sxMNjhI1QmOtUWjH9qIk0SqnBvT4cMHE6b8oxGfBMWs+Rlw/IjT23IgVRfQ3z0vVspjG7slGsSnSZ
	MkJSverx6ciXJ+dKFsS2ug3Fssttl3N5p44RewMf7yxbowPoM8X3KjDNpBoYb/rT6hy+WK0odgRiL
	TM4EMtIctNEcZ4/35EN8IzCOvdkMJYVYk3vVG51MdMyaO5miQHeMPbgL56u6NmnqqzYUysrIcp10v
	gamt0+bUnAvPhCVYsocUsaQLZZoskzns+3gkm1U9Ti6jeSbp9EUR8kzXJdBJp/0AX21kHpcnOAw62
	RMyNdJFIx2pE9pzvYKFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6HiV-0000Cy-4K; Mon, 24 Feb 2020 17:40:27 +0000
Received: from mailoutvs28.siol.net ([185.57.226.219] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HhQ-00086M-Co
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:39:22 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id F27065236E8;
 Mon, 24 Feb 2020 18:39:11 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id JRsQv1euN1Bq; Mon, 24 Feb 2020 18:39:11 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id A7E775236BE;
 Mon, 24 Feb 2020 18:39:11 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 0743E5236E8;
 Mon, 24 Feb 2020 18:39:09 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 1/7] drm/sun4i: de2/de3: Remove unsupported VI layer formats
Date: Mon, 24 Feb 2020 18:38:55 +0100
Message-Id: <20200224173901.174016-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200224173901.174016-1-jernej.skrabec@siol.net>
References: <20200224173901.174016-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_093920_602697_2BD1D41C 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.219 listed in list.dnswl.org]
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
Cc: jernej.skrabec@siol.net, airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YUV444 and YVU444 are planar formats, but HW format RGB888 is packed.
This means that those two mappings were never correct. Remove them.

Fixes: 60a3dcf96aa8 ("drm/sun4i: Add DE2 definitions for YUV formats")
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c    | 12 ------------
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c |  2 --
 2 files changed, 14 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index 7c24f8f832a5..3a78dbbceb8a 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -196,12 +196,6 @@ static const struct de2_fmt_info de2_formats[] = {
 		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
-	{
-		.drm_fmt = DRM_FORMAT_YUV444,
-		.de2_fmt = SUN8I_MIXER_FBFMT_RGB888,
-		.rgb = true,
-		.csc = SUN8I_CSC_MODE_YUV2RGB,
-	},
 	{
 		.drm_fmt = DRM_FORMAT_YUV422,
 		.de2_fmt = SUN8I_MIXER_FBFMT_YUV422,
@@ -220,12 +214,6 @@ static const struct de2_fmt_info de2_formats[] = {
 		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
-	{
-		.drm_fmt = DRM_FORMAT_YVU444,
-		.de2_fmt = SUN8I_MIXER_FBFMT_RGB888,
-		.rgb = true,
-		.csc = SUN8I_CSC_MODE_YVU2RGB,
-	},
 	{
 		.drm_fmt = DRM_FORMAT_YVU422,
 		.de2_fmt = SUN8I_MIXER_FBFMT_YUV422,
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index 42d445d23773..6a244d6fafd9 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -431,11 +431,9 @@ static const u32 sun8i_vi_layer_formats[] = {
 	DRM_FORMAT_YUV411,
 	DRM_FORMAT_YUV420,
 	DRM_FORMAT_YUV422,
-	DRM_FORMAT_YUV444,
 	DRM_FORMAT_YVU411,
 	DRM_FORMAT_YVU420,
 	DRM_FORMAT_YVU422,
-	DRM_FORMAT_YVU444,
 };
 
 struct sun8i_vi_layer *sun8i_vi_layer_init_one(struct drm_device *drm,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
