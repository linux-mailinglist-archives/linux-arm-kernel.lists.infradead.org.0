Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C3F15B6A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 02:24:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lqBrTWK5RXNtU1phqcYs5A3fRnrIgsQXWW0VnpJZ/iE=; b=JnAOdYvI0dqHjS
	G/FVIkTJOVvKd/i+M0C3bIlKmBgXsb2a2wNX3vcItISTnPQ5398GrueMr7udVecSI48BrznuvcaVy
	UwRlNxJmRYc/E33CWy/EsNAiDYbUlCnQ9OqihqZgaa9leS1MnOWREE6+jeErvZfyfx4+ohMqYmhSK
	8FB1/jzobdO+WWpebP5EZMP/RiubPexp7hz+BwUC+DugoaregEyprvpr3eN7nYAB9mBlD+svYko47
	qqjsSBDwfbgfQktDSyqi3V+8UdP8GXP67KU6no9cMIStAqAry81hLpSrVSh909AvOtNWedUd9Y6BR
	KciFZXskCmuW5RKREg2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j23F3-0008Sj-Ln; Thu, 13 Feb 2020 01:24:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j23Eb-0008Ji-Pa; Thu, 13 Feb 2020 01:24:07 +0000
X-UUID: f953441362584c63ae391c9a1f1b8733-20200212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=Y2Th+gHYhXqwVTZtN+Ab3LnVwLW4lWLwZX1aM07dOp4=; 
 b=eZQJRZ81MC9LeheYsOJ5sGcT3KMUqpOknl2xYlRPQAOQ5nyNQKiEpAEfjcyrONm1MBGUCEHbC02+LSVB0lxntMFCTkjkDNnAgvEgL7dNT+okQ1zYIFZwQMMlTk7JlsVhx9RyeZ0HZS9/RubEvEmo6rjhnQ6yCZjMcEtkgDLCXc8=;
X-UUID: f953441362584c63ae391c9a1f1b8733-20200212
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 14602288; Wed, 12 Feb 2020 17:23:58 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Feb 2020 17:24:37 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Feb 2020 09:24:28 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 13 Feb 2020 09:23:59 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: David Airlie <airlied@linux.ie>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH 1/2] drm/mediatek: add plane check in async_check function
Date: Thu, 13 Feb 2020 09:23:52 +0800
Message-ID: <20200213012353.26815-1-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_172405_837340_59491083 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: drinkcat@chromium.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, YT Shen <yt.shen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTK do rotation checking and transferring in layer check function,
but we do not check that in atomic_check,
so add back in atomic_check function.

Fixes: 920fffcc8912 ("drm/mediatek: update cursors by using async atomic update")

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_plane.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index 189744d34f53..d32b494ff1de 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -81,6 +81,7 @@ static int mtk_plane_atomic_async_check(struct drm_plane *plane,
 					struct drm_plane_state *state)
 {
 	struct drm_crtc_state *crtc_state;
+	int ret;
 
 	if (plane != state->crtc->cursor)
 		return -EINVAL;
@@ -91,6 +92,11 @@ static int mtk_plane_atomic_async_check(struct drm_plane *plane,
 	if (!plane->state->fb)
 		return -EINVAL;
 
+	ret = mtk_drm_crtc_plane_check(state->crtc, plane,
+				       to_mtk_plane_state(state));
+	if (ret)
+		return ret;
+
 	if (state->state)
 		crtc_state = drm_atomic_get_existing_crtc_state(state->state,
 								state->crtc);
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
