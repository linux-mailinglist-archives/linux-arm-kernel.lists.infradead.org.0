Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 287F415BE30
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 13:01:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5sl5YXgrNE+sTCEnahUJixxVIhJ21GsHNQm73rsVT3g=; b=t4+vZVsdwsYq85
	OBq6qaPRy07fuQiyduNCZ1IX1UD0dkbP4yzUGS20P9REEcV5M2L5ZQzIIUfoo8HsZwhXRKRzEGGN1
	8Sw3PBPAR8f6iE5rmRVZpEd4aBzTE9PYm2vNHVAPCGjhzC733MJmID7yqdiNqvaHsXZBJaiL0ljmh
	usTh8HVQKPtoxnsohuBcgXelxrb3Gs9b4h9uKAYaTkNOhcLjsb+8mE11sY/bdCSue66/Jm3wfM0Fm
	inaUhahJPwmW0Xz01R4HDXIupr1TlH6CWMwy3yPD/BH5ZWKYgXMS23Nt5IcB8TjgwkXrHNq1bh1Hf
	UXTY2SbaIK7GrkdcAURw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2DBW-0003Sh-2m; Thu, 13 Feb 2020 12:01:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2DBH-0003Rb-Ij; Thu, 13 Feb 2020 12:01:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 8D7602950AB
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] drm/mediatek: Update the fb property
 mtk_plane_atomic_async_update
Date: Thu, 13 Feb 2020 13:01:03 +0100
Message-Id: <20200213120103.823501-1-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_040119_754565_2536B978 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: drinkcat@chromium.org, Philipp Zabel <p.zabel@pengutronix.de>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, hsinyi@chromium.org,
 matthias.bgg@gmail.com, Daniel Vetter <daniel@ffwll.ch>,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 920fffcc8912 ("drm/mediatek: update cursors by using async atomic
update") added support to async updates of cursors by using the new atomic
interface for that. Unfortunately, introduced two issues. The first one is
that since then, the drm_atomic_helper_async_commit triggers a WARNING due
current fb is not the new fb. The second one, is that we get a black screen
connecting the external display on Elm device and another WARNING due vblank
wait timed out.

Swap the fb in mtk_plane_atomic_async_update to fix both issues.

Fixes: 920fffcc8912 ("drm/mediatek: update cursors by using async atomic update")
Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 drivers/gpu/drm/mediatek/mtk_drm_plane.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index 914cc7619cd7..7eb10115e72a 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -116,6 +116,7 @@ static void mtk_plane_atomic_async_update(struct drm_plane *plane,
 	plane->state->src_h = new_state->src_h;
 	plane->state->src_w = new_state->src_w;
 	state->pending.async_dirty = true;
+	swap(plane->state->fb, new_state->fb);
 
 	mtk_drm_crtc_async_update(new_state->crtc, plane, new_state);
 }
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
