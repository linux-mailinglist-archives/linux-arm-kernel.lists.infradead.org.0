Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E44B914997A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 08:00:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lRlhMIcgUYx9zgMl+W8yro/IeBrMbyY9e9bgGyF2W8Y=; b=UU4afTeBhdGhAB
	E5j2uVEyB5/87U+GJEVdb4RIC1G49SExH33bkEmKeSbGBVY00BxrXd1lhVJAgfYUEqNa+z0LUTZQM
	S5xtdYRwe07oI1x4bzsPj2azSH/pwrez7U+RbMyXslY+jeBxnY2+0yGdVRdxdYzplY/MCun9nDM1H
	j1kG6RVw8A4v4gTaps9vBi/Gsb6oof2PfCitoQSR2olutwvB8ogZMCM7Ve2unk/tDRl0rU78y1h3U
	7yrUtQNyMUC1/jhOuL0xodLD5OByKipLmEFJBGhEhAJKbUwpSw1t4EHkxN1vfiaxk2tZLmWxzT26p
	sIjj3NHIupQwEpTMYU4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivbu1-0001MF-B1; Sun, 26 Jan 2020 07:00:13 +0000
Received: from mailoutvs56.siol.net ([185.57.226.247] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivbtn-00019x-93
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Jan 2020 07:00:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 9F43E522717;
 Sun, 26 Jan 2020 07:59:48 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id L66nzIyDXhLa; Sun, 26 Jan 2020 07:59:48 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 57D7F522718;
 Sun, 26 Jan 2020 07:59:48 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 6298F522717;
 Sun, 26 Jan 2020 07:59:46 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH] Revert "drm/sun4i: drv: Allow framebuffer modifiers in mode
 config"
Date: Sun, 26 Jan 2020 07:59:37 +0100
Message-Id: <20200126065937.9564-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_225959_474293_FF5928DE 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.247 listed in list.dnswl.org]
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
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit 9db9c0cf5895e4ddde2814360cae7bea9282edd2.

Setting mode_config.allow_fb_modifiers manually is completely
unnecessary. It is set automatically by drm_universal_plane_init() based
on the fact if modifier list is provided or not. Even more, it breaks
DE2 and DE3 as they don't support any modifiers beside linear. Modifiers
aware applications can be confused by provided empty modifier list - at
least linear modifier should be included, but it's not for DE2 and DE3.

Fixes: 9db9c0cf5895 ("drm/sun4i: drv: Allow framebuffer modifiers in mode config")
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/gpu/drm/sun4i/sun4i_drv.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_drv.c b/drivers/gpu/drm/sun4i/sun4i_drv.c
index 5ae67d526b1d..328272ff77d8 100644
--- a/drivers/gpu/drm/sun4i/sun4i_drv.c
+++ b/drivers/gpu/drm/sun4i/sun4i_drv.c
@@ -85,7 +85,6 @@ static int sun4i_drv_bind(struct device *dev)
 	}
 
 	drm_mode_config_init(drm);
-	drm->mode_config.allow_fb_modifiers = true;
 
 	ret = component_bind_all(drm->dev, drm);
 	if (ret) {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
