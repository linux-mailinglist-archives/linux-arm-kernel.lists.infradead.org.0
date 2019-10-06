Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB0BCD364
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 18:05:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yB5VGtIDiTBYJqZKk7rlIVF4WHSvdomiyZrYvFJdjUs=; b=BHoG90q7UQXhfs
	8q1+3r0Q+YZOu0m2RsOBA0K6i4UVcE5OM/Eqmm6FETrIF4Yk2D2ewh7chi9CsD38TY4A7jSpmDVGW
	LhvwZPsK++aBsMt4beijdJwzv/JSj0FadfhvK8If02aPGLznOsh29owXkq1uizoDXYTA2NwINgLzo
	kg+zqwc4cClMdacHH2yvbZq/NP18Pb+RqXSoG6wgZJthbsi7AIpF/EWXplllY5lFtawJsKwWCyxGq
	UT6/c+XTEzdPVC0AdtVwIsTQfF/rLiE2dzy0u3RlKFgcMEOavSPkJZL5vBxkW7HrhA3yfcPaZTH7h
	GmCb41kgxWSEBe+HItfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH92K-0007lk-0q; Sun, 06 Oct 2019 16:05:32 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH91k-0006JH-5X
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 16:04:57 +0000
Received: from [199.195.250.187] (port=53656 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <icenowy@aosc.io>)
 id 1iH91f-00055b-TT; Sun, 06 Oct 2019 17:04:52 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 1475B8289D;
 Sun,  6 Oct 2019 16:04:45 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jagan Teki <jagan@amarulasolutions.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v2 3/3] drm/sun4i: sun6i_mipi_dsi: fix DCS long write packet
 length
Date: Mon,  7 Oct 2019 00:03:02 +0800
Message-Id: <20191006160303.24413-4-icenowy@aosc.io>
In-Reply-To: <20191006160303.24413-1-icenowy@aosc.io>
References: <20191006160303.24413-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 50
X-Spam-Status: No, score=5.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_090456_469867_3A9E30D4 
X-CRM114-Status: GOOD (  13.61  )
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

The packet length of DCS long write packet should not be added with 1
when constructing long write packet.

Fix this.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 8fe8051c34e6..c958ca9bae63 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -832,8 +832,8 @@ static u32 sun6i_dsi_dcs_build_pkt_hdr(struct sun6i_dsi *dsi,
 	u32 pkt = msg->type;
 
 	if (msg->type == MIPI_DSI_DCS_LONG_WRITE) {
-		pkt |= ((msg->tx_len + 1) & 0xffff) << 8;
-		pkt |= (((msg->tx_len + 1) >> 8) & 0xffff) << 16;
+		pkt |= ((msg->tx_len) & 0xffff) << 8;
+		pkt |= (((msg->tx_len) >> 8) & 0xffff) << 16;
 	} else {
 		pkt |= (((u8 *)msg->tx_buf)[0] << 8);
 		if (msg->tx_len > 1)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
