Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C891E4961
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+dq6OowDt+IFqFO6spXqmgDHjfxN3BPlaiPXmjyttd8=; b=YOcziVtnk0CvrV
	37ehb2ytdbtCO3hGIA6awW7xRtOX7wQjieAvcxjG1e4CrOQSde0xGtcRN6hLKeXVf5yL89bsOg/YY
	uNFYmFBpNlp8zWnXTtKIlZWs46OrG3ie2NxJ98+2ugOXadFcodQdiRYfvjScejO5R5LsQb5FSNSDF
	isd4w7lr1dl+ce+u9MR8D13K9vRjhYDz1reQUK94nvDxN9pT2c+88z7Ecu9WY2tcHWwEi6hEmwOYv
	1PgN94+Ll9dZIqPD+s7X7HkmFCeh0zIR+ESEt3U0dHUUfVpeWpR8yO7Z1b3ck4TMAYEVkgNqI+M9L
	IGIj9ZKeAhyn+MJKnpig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyby-00041C-00; Wed, 27 May 2020 16:08:58 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJc-0006QY-7h; Wed, 27 May 2020 15:50:02 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id F391A582047;
 Wed, 27 May 2020 11:49:58 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:49:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Pxu7vA5Ztijwd
 iw3yLEGYhK1l1UJ+hr3CS6N4Y76y48=; b=fYBAxbLd98sy8dK67SHNOEzOO077K
 UzkZGNQZTYfiR8bpvhKS1EzxRbEgATF5KbBjqt48Lsj9Vc8rKBphZ+jPkZ6WtSik
 SYumh3bPHig18CVgoxuBPf7hbpNob1NuzFgKsN9oTL+WTdR1OleVXOF26zQp8Xp2
 VsruCU+gnly9kLlmZRJlQy+K+jwmlNQWoaasXVGKtgXtcjot/CU/7i+2uVf0e6PO
 LR9Bs/6MX6Nfmd56UdiOGeo9NrewKCsMGSSmUWd5G8MA6Uchz1TyfYt3xJTpnItT
 zXvIBjQYAoeG2nU7QjXCZnXtas4ry9ZAp+iOBfO7lIZVsRIy9mi5x6+Fw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Pxu7vA5Ztijwdiw3yLEGYhK1l1UJ+hr3CS6N4Y76y48=; b=S50iwG11
 xmYOc8ssPxOQL/ispbjNy4wwvKOVG67Ji/LBVK/q906PgkrEahq/ny1YTUPmZLmG
 RCsDXTMb2Xt1cw5OfBAPz+r8JukKpcA+J0td75VPiUXcaV72hGn2JzeVN+eDrrLl
 ibdkKSTTQQ5yW2yqwnGf6G4zeiago+u+ieuXoJdhdKqkd+VeTljHOf0/xfguNwyy
 HvuY/ztFNqUde44v01APswKhNN5dZX5QU7qCr0yf/40PqMQVwBwvzO8KAoz28q0W
 KB32TLlmrPOpy66UbWvuL7fwlcBXJW7gJEGRj3tOYdp5UmdSpBB9TeV34UqZ2vdr
 DiblzDH02BKXCA==
X-ME-Sender: <xms:JozOXi9BDjxQEewzf0thTjoo-yLetDggu2LkItqM2uXScH0NxBijwQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepjeenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:JozOXisX7IGRjnvn5m6xH4oYzbmnp9HSF09dYFoGOfI7h5JjebPizQ>
 <xmx:JozOXoDXWgvgXS2umQAck0Vvw2ntE-Ed0dbTc7JNmDMF-6u62G578w>
 <xmx:JozOXqctLmLyK19jIqq6QtFkRHPL6J3zuqnaEzXj0uGu-30B9H5D4w>
 <xmx:JozOXifCBWe1my8-h0gaJgxDXlkrhGqgnmMVeAkKtE0WuwHSfQvMgg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 957AC3061856;
 Wed, 27 May 2020 11:49:58 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 027/105] drm/vc4: crtc: Turn static const variable into a
 define
Date: Wed, 27 May 2020 17:47:57 +0200
Message-Id: <8535c679f79af8abaa1b7796261bfeda11f874fd.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085000_426226_0E39ABC9 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The hvs_latency_pix variable doesn't need to be a variable and can just be
defined.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index fd248ee546e8..8dbf06cdb069 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -44,6 +44,8 @@
 #include "vc4_drv.h"
 #include "vc4_regs.h"
 
+#define HVS_FIFO_LATENCY_PIX	6
+
 #define CRTC_WRITE(offset, val) writel(val, vc4_crtc->regs + (offset))
 #define CRTC_READ(offset) readl(vc4_crtc->regs + (offset))
 
@@ -231,18 +233,17 @@ vc4_crtc_update_gamma_lut(struct drm_crtc *crtc)
 static u32 vc4_get_fifo_full_level(u32 format)
 {
 	static const u32 fifo_len_bytes = 64;
-	static const u32 hvs_latency_pix = 6;
 
 	switch (format) {
 	case PV_CONTROL_FORMAT_DSIV_16:
 	case PV_CONTROL_FORMAT_DSIC_16:
-		return fifo_len_bytes - 2 * hvs_latency_pix;
+		return fifo_len_bytes - 2 * HVS_FIFO_LATENCY_PIX;
 	case PV_CONTROL_FORMAT_DSIV_18:
 		return fifo_len_bytes - 14;
 	case PV_CONTROL_FORMAT_24:
 	case PV_CONTROL_FORMAT_DSIV_24:
 	default:
-		return fifo_len_bytes - 3 * hvs_latency_pix;
+		return fifo_len_bytes - 3 * HVS_FIFO_LATENCY_PIX;
 	}
 }
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
