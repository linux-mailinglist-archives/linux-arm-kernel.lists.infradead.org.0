Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCCF22FC1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8dXbm6hVwIzxpVpgYJYy27s1Ksn8tn147rR2xjkCxB0=; b=CWerXAM5kkKB7w
	NGEu9VzgVDLhS3GAWjnw4vESpMxZCzTh0/6Nh0Mrjq9zl9GJyeI2pbEa0rt5i2SyfEd5nnjRbz+u3
	5B19QQitqIcUfCRC7qHAcw/Sz80wb/D1IxxSAe466FCKPiCTRDhq4IFe7QxrjENgQTN+I5GIO9Zwo
	GJ/TUCxhu3B9E1uEC2mB+4lXL+wPdAronF5xpIdpn8pL537d1zmXlHw4Wj0u47/vcohWt0OACBsOA
	l0e7VwYW2AC3k2NlmF/SJUrOBtA8QCOex4Z0MS9m1+wHvSCKM6Lm82TiYxFtmQlY1US35xak1M0SE
	O+T5lcQieD8mPRL2aifg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSeH3-00034G-Bi; Mon, 20 May 2019 09:08:01 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeGY-0002Y0-3z
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:07:39 +0000
Received: by mail-pg1-x543.google.com with SMTP id h17so6501858pgv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 02:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kYczVIziVgtoXaMdiCSJdvyko6PsZTz3vls3yir8pOc=;
 b=KGiXud+0mWIzef+T+5928Tp2QLkZEwQdsube/Mgj1NsURWWBSmIr1e5eaY1DllcZ3t
 6qJ6btrYaRzmtfjBPOQI2vNNXZoFKi5TvA20kzKNDW+cxd3g8pjk7qvGgaynXuvr2LA4
 181A9OS01zODaG73aVNpLn7K8Pk5sHcKdrBRU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kYczVIziVgtoXaMdiCSJdvyko6PsZTz3vls3yir8pOc=;
 b=I+DmuQ/UuPmBRmfYK5VaF45ftI/RWKqFLOkMTn/SQJ/F05uSspheXPs1P6i/H+sNiH
 tNkXGcJYYlH2KHduR1hUUd6R6fvmfj3ZtBMCX0wP1xDf0NujHCmKOMH6NLdKXm9Yyl7Z
 Xzf9QQTjLgkBWS4nuB58KThpjkKZ1abPz22W9gP4kE1IgvEGCGJ18/JoOiUDzISOH2BR
 BvU/XWboL4bu1bPROpZmPAFudUO+neSFrZYv4K/9/aO4lk0I9Mnp0FV125N68amemhCN
 girsxg67GSg5HbDaFLn+I4IcUuABa7goErgi90kPcNJv+VPAIYiHwIkZRnNMrAaKvye6
 mxUw==
X-Gm-Message-State: APjAAAVKWnewMXkATpyuCvrd9OX83Gz4Wb/irtNHF7z69T21gxJ74ngw
 keg+nrvWpGpbekfXkbLWFfKugQ==
X-Google-Smtp-Source: APXvYqwM3CLUrDYKF/BBqBe7vJrcloDE2nkmCClqznvzdeHC5V98hdU+vn56RYsovMfxbvtGLzfsZg==
X-Received: by 2002:a65:6449:: with SMTP id s9mr72257102pgv.90.1558343249223; 
 Mon, 20 May 2019 02:07:29 -0700 (PDT)
Received: from localhost.localdomain ([183.82.227.193])
 by smtp.gmail.com with ESMTPSA id d15sm51671614pfm.186.2019.05.20.02.07.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 02:07:28 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v10 03/11] drm/sun4i: dsi: Fix video start delay computation
Date: Mon, 20 May 2019 14:33:10 +0530
Message-Id: <20190520090318.27570-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190520090318.27570-1-jagan@amarulasolutions.com>
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_020730_889229_ED39FE56 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: bshah@mykolab.com, powerpan@qq.com, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current code is computing vertical video start delay as

delay = mode->vtotal - (mode->vsync_end - mode->vdisplay) + start;

On which the second parameter

mode->vsync_end - mode->vdisplay = front porch + sync timings

according to "DRM kernel-internal display mode structure" in
include/drm/drm_modes.h

With adding additional sync timings, the desired video start delay
value as 510 for "bananapi,s070wv20-ct16" panel timings which indeed
trigger panel flip_done timed out as:

 WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
 [CRTC:46:crtc-0] vblank wait timed out
 Modules linked in:
 CPU: 0 PID: 31 Comm: kworker/0:1 Not tainted 5.1.0-next-20190514-00029-g09e5b0ed0a58 #18
 Hardware name: Allwinner sun8i Family
 Workqueue: events deferred_probe_work_func
 [<c010ed54>] (unwind_backtrace) from [<c010b76c>] (show_stack+0x10/0x14)
 [<c010b76c>] (show_stack) from [<c0688c70>] (dump_stack+0x84/0x98)
 [<c0688c70>] (dump_stack) from [<c011d9e4>] (__warn+0xfc/0x114)
 [<c011d9e4>] (__warn) from [<c011da40>] (warn_slowpath_fmt+0x44/0x68)
 [<c011da40>] (warn_slowpath_fmt) from [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0)
 [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1) from [<c040e694>] (drm_atomic_helper_commit_tail_rpm+0x5c/0x6c)
 [<c040e694>] (drm_atomic_helper_commit_tail_rpm) from [<c040e4dc>] (commit_tail+0x40/0x6c)
 [<c040e4dc>] (commit_tail) from [<c040e5cc>] (drm_atomic_helper_commit+0xbc/0x128)
 [<c040e5cc>] (drm_atomic_helper_commit) from [<c0411b64>] (restore_fbdev_mode_atomic+0x1cc/0x1dc)
 [<c0411b64>] (restore_fbdev_mode_atomic) from [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked+0x54/0xa0)
 [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked) from [<c0415774>] (drm_fb_helper_set_par+0x30/0x54)
 [<c0415774>] (drm_fb_helper_set_par) from [<c03ad450>] (fbcon_init+0x560/0x5ac)
 [<c03ad450>] (fbcon_init) from [<c03eb8a0>] (visual_init+0xbc/0x104)
 [<c03eb8a0>] (visual_init) from [<c03ed1b8>] (do_bind_con_driver+0x1b0/0x390)
 [<c03ed1b8>] (do_bind_con_driver) from [<c03ed780>] (do_take_over_console+0x13c/0x1c4)
 [<c03ed780>] (do_take_over_console) from [<c03ad800>] (do_fbcon_takeover+0x74/0xcc)
 [<c03ad800>] (do_fbcon_takeover) from [<c013c9c8>] (notifier_call_chain+0x44/0x84)
 [<c013c9c8>] (notifier_call_chain) from [<c013cd20>] (__blocking_notifier_call_chain+0x48/0x60)
 [<c013cd20>] (__blocking_notifier_call_chain) from [<c013cd50>] (blocking_notifier_call_chain+0x18/0x20)
 [<c013cd50>] (blocking_notifier_call_chain) from [<c03a6e44>] (register_framebuffer+0x1e0/0x2f8)
 [<c03a6e44>] (register_framebuffer) from [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock+0x2fc/0x50c)
 [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock) from [<c04158c8>] (drm_fbdev_client_hotplug+0xe8/0x1b8)
 [<c04158c8>] (drm_fbdev_client_hotplug) from [<c0415a20>] (drm_fbdev_generic_setup+0x88/0x118)
 [<c0415a20>] (drm_fbdev_generic_setup) from [<c043f060>] (sun4i_drv_bind+0x128/0x160)
 [<c043f060>] (sun4i_drv_bind) from [<c044b598>] (try_to_bring_up_master+0x164/0x1a0)
 [<c044b598>] (try_to_bring_up_master) from [<c044b668>] (__component_add+0x94/0x140)
 [<c044b668>] (__component_add) from [<c0445e1c>] (sun6i_dsi_probe+0x144/0x234)
 [<c0445e1c>] (sun6i_dsi_probe) from [<c0452ef4>] (platform_drv_probe+0x48/0x9c)
 [<c0452ef4>] (platform_drv_probe) from [<c04512cc>] (really_probe+0x1dc/0x2c8)
 [<c04512cc>] (really_probe) from [<c0451518>] (driver_probe_device+0x60/0x160)
 [<c0451518>] (driver_probe_device) from [<c044f7a4>] (bus_for_each_drv+0x74/0xb8)
 [<c044f7a4>] (bus_for_each_drv) from [<c045107c>] (__device_attach+0xd0/0x13c)
 [<c045107c>] (__device_attach) from [<c0450474>] (bus_probe_device+0x84/0x8c)
 [<c0450474>] (bus_probe_device) from [<c0450900>] (deferred_probe_work_func+0x64/0x90)
 [<c0450900>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
 [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
 [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
 [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
 Exception stack(0xde539fb0 to 0xde539ff8)
 9fa0:                                     00000000 00000000 00000000 00000000
 9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
 9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
 ---[ end trace 495200a78b24980e ]---
 random: fast init done
 [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CRTC:46:crtc-0] flip_done timed out
 [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CONNECTOR:48:DSI-1] flip_done timed out
 [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [PLANE:30:plane-0] flip_done timed out

But the expected video start delay value is 513 which states that
the second parameter on the computation is "front porch" value
(no sync timings included).

This is clearly confirmed from the legacy [1] and new [2] bsp codes
that the second parameter on the video start delay is "front porch"

Here is the detailed evidence for calculating front porch as per
bsp code.

vfp = panel->lcd_vt - panel->lcd_y - panel->lcd_vbp
=> (panel->lcd_vt) - panel->lcd_y - panel->lcd_vbp
=> (tt->ver_front_porch + lcdp->panel_info.lcd_vbp
    + lcdp->panel_info.lcd_y) -  panel->lcd_y - panel->lcd_vbp
=> tt->ver_front_porch

Which is mode->vsync_start - mode->vdisplay according to
"DRM kernel-internal display mode structure" in include/drm/drm_modes.h

This patch fix this by updating the video start delay to use
front porch value.

[2] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L2051
[1] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/lowlevel_sun8iw5/de_dsi.c#L803

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index b3ca85410b2c..47d571d97600 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -375,7 +375,7 @@ static u16 sun6i_dsi_get_video_start_delay(struct sun6i_dsi *dsi,
 	 * working in all supported panels as of now.
 	 */
 	u8 start = 1;
-	u16 delay = mode->vtotal - (mode->vsync_end - mode->vdisplay) + start;
+	u16 delay = mode->vtotal - (mode->vsync_start - mode->vdisplay) + start;
 
 	if (delay > mode->vtotal)
 		delay = delay % mode->vtotal;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
