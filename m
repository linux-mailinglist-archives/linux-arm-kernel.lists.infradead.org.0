Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC457C2E8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 10:04:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhxG6Qg7mk94dEbOZaoypJzS/CA6HS1Ympmb31y04eQ=; b=g1iIYo4UbZJ8fm
	GMbdYmLuH7wHmXcIl0HFJTenD/WjH1rBLsy0Raar0kJDMVJLfLmw6yt5zHVg6Q2V9Gys9ieOmfUmQ
	iSkJ/bGhP3Jpo6MbdEoGJVvASpdactkjjWg19se8meP2Cowt2V8uHKggaiQXPUfMISTR4RadxCp0k
	5EJa9gA+4kJWVyySPR0w64gmLlvjjKDoYrF3RuECo1OP7sCXk13QWvU3D4me57gP7PEGaYVkp0t2y
	ixjtrOOC1qk7kZv8GUZsKHNTmPdqFEPkYJANTTe7URQ48wLOUnXs9f2xxzTf15/Jfnd7VOXDXdzd0
	d2JppKtDlla5NZrRBdGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFD8x-0003g3-0f; Tue, 01 Oct 2019 08:04:23 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFD8b-0003Zu-FX
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 08:04:02 +0000
Received: from [199.195.250.187] (port=57053 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <icenowy@aosc.io>)
 id 1iFD8X-0004I2-JQ; Tue, 01 Oct 2019 09:03:57 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id B47AA82889;
 Tue,  1 Oct 2019 08:03:52 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 1/3] Revert "drm/sun4i: dsi: Change the start delay
 calculation"
Date: Tue,  1 Oct 2019 16:02:51 +0800
Message-Id: <20191001080253.6135-2-icenowy@aosc.io>
In-Reply-To: <20191001080253.6135-1-icenowy@aosc.io>
References: <20191001080253.6135-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 50
X-Spam-Status: No, score=5.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_010401_515641_BC4138B0 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:86:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-sunxi@googlegroups.com, Icenowy Zheng <icenowy@aosc.io>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit da676c6aa6413d59ab0a80c97bbc273025e640b2.

The original commit adds a start parameter to the calculation of the
start delay according to some old BSP versions from Allwinner. However,
there're two ways to add this delay -- add it in DSI controller or add
it in the TCON. Add it in both controllers won't work.

The code before this commit is picked from new versions of BSP kernel,
which has a comment for the 1 that says "put start_delay to tcon". By
checking the sun4i_tcon0_mode_set_cpu() in sun4i_tcon driver, it has
already added this delay, so we shouldn't repeat to add the delay in DSI
controller, otherwise the timing won't match.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 1636344ba9ec..c86e11631ebc 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -365,8 +365,7 @@ static void sun6i_dsi_inst_init(struct sun6i_dsi *dsi,
 static u16 sun6i_dsi_get_video_start_delay(struct sun6i_dsi *dsi,
 					   struct drm_display_mode *mode)
 {
-	u16 start = clamp(mode->vtotal - mode->vdisplay - 10, 8, 100);
-	u16 delay = mode->vtotal - (mode->vsync_end - mode->vdisplay) + start;
+	u16 delay = mode->vtotal - (mode->vsync_end - mode->vdisplay) + 1;
 
 	if (delay > mode->vtotal)
 		delay = delay % mode->vtotal;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
