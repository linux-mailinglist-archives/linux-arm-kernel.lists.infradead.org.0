Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 404551E4999
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cA1N8MdcWP+/R2UtAiqErNA7qYBIqK63FduTDeCQoVY=; b=CegmU5+KIffioz
	GgtssqfWvB/5WB8Jl0lCsz+9/A75+V9k9O03/hzMjFsuhKiliRJ6nIfg0lUMmoPZ7yr+90JTK0eXc
	i+TsxWO6XUkyBvGUoQ5UA43DBFXz3vRuHwgmdxNKpcFYBvsZGr6ZwOBaAxm+SOUG6m6yk/fC41Qzq
	OQWBLVFNkn+oAFm+FgTmUv/MBDY6U6rkZBtjlsGk6rr8wfF/k2TWKfrfnCXJxfSH9oI1NGQSxldE+
	/u/jHoGjvqq2U85s9T9xQOQtu6j2eiojPjLbm+6XQ88nXR+p54kGbTzLOL45yRFXVYKsh0YsywnfE
	TZaE9i9hti2z2lbq0aKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyjF-0006Sm-VE; Wed, 27 May 2020 16:16:29 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyKB-0000nm-QS; Wed, 27 May 2020 15:50:37 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 24771582091;
 Wed, 27 May 2020 11:50:35 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=hn1mG4jcbIIbo
 0o9ITAXWH7T5+mqDrg6shUmeSL5Ixs=; b=yGj2WBWf7aNTKqe1XIdQP4IugcG9G
 TuzE15VYtv8mLN71gqg4eV581al6ajI26dzIllgwH27l3dnkV+2BaP1f9IR+rnor
 DU7qpFnW0P5kgua31cubGUsyTCeoRQSIt4YyaMelcQkzgnnohDQtuFYjBHsgVD7G
 ikup90t+Cu+pC+5N3/QRUOZPoHaV5tiBDWPl4ujvSvCkNfOrcqKz75MjPXpLycz6
 Capu3XGBShRlvZuU9gTUxktRy7MgcvZj4ldZwrn1ks+aNXDuWbBmO2xYjGAldHkD
 jik0JVaEEUtKaPbJXlaKtG5If3HJOgSPE2HJRd9lXWx5AaoZFaiCNO14Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=hn1mG4jcbIIbo0o9ITAXWH7T5+mqDrg6shUmeSL5Ixs=; b=C5KeHyMO
 TOkvrTlxF/7oCvfP3SWDCIWcAEREFST4OiTEdFsZA0p7TaczWuc72n008+yJBISr
 aKsYXfYKCYbk/yiOpWCEs83P9JCwmd+DLpXYQ7cABrv8s6O1NMRqiEmK0QLBBkFC
 xCB69EglMkj2r3PGVtP5Fkcu2rteC5KKVu5Fe0eOfE21GkK3Iqg89XHftbeRDnVO
 OmB4Oi99OmXEBub/5GpLsoDBbFXiZ/ir28g6bJZXGptyX6GXdqtxtywVUX5fvvNL
 TxXhK2CgEvq54RoQrrL69yAe4ydssNVzFmUpP7M8a/wDJ2n/2/YkiE4taGBEfNQi
 ceGKr3ZvL121Jw==
X-ME-Sender: <xms:SozOXmDJWrCkdo2nd4Lz7cJR6MfsSZV_MwwY7COZ57Df3OHAbZtSHQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdelne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:S4zOXggaCtR7hg7cv6dn4bg-ezlvtNObeeOTXozymM7UzWsqYoMPHw>
 <xmx:S4zOXpmdcELaqVxt9UWNNvBxbIAAdgyjqM2Qnf4pVTCkfmco4eWIYw>
 <xmx:S4zOXkz8ebPac6UM5GKPlDcb6nlZ3Ubz3z2cP6dKQROyl29jMFqrRQ>
 <xmx:S4zOXkQ2zqijMys-l8NIkgkAoUPUu-AOPkB3dc5bVHAj-IWCMLiRTw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B3C2D306218B;
 Wed, 27 May 2020 11:50:34 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 049/105] drm/vc4: crtc: Move HVS channel init before the PV
 initialisation
Date: Wed, 27 May 2020 17:48:19 +0200
Message-Id: <04fdaf2379fbb315a1e73d44139e9205490e7a6b.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085036_014432_7407E925 
X-CRM114-Status: GOOD (  10.41  )
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

In order to avoid stale pixels getting stuck in an intermediate FIFO
between the HVS and the pixelvalve on BCM2711, we need to configure the HVS
channel before the pixelvalve is reset and configured.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 3c9b0d684136..83fb5ba19b43 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -433,11 +433,6 @@ static void vc4_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	require_hvs_enabled(dev);
 
-	if (!vc4_state->feed_txp)
-		vc4_crtc_config_pv(crtc);
-
-	CRTC_WRITE(PV_CONTROL, CRTC_READ(PV_CONTROL) | PV_CONTROL_EN);
-
 	/* Enable vblank irq handling before crtc is started otherwise
 	 * drm_crtc_get_vblank() fails in vc4_crtc_update_dlist().
 	 */
@@ -445,6 +440,11 @@ static void vc4_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	vc4_hvs_atomic_enable(crtc, old_state);
 
+	if (!vc4_state->feed_txp)
+		vc4_crtc_config_pv(crtc);
+
+	CRTC_WRITE(PV_CONTROL, CRTC_READ(PV_CONTROL) | PV_CONTROL_EN);
+
 	/* When feeding the transposer block the pixelvalve is unneeded and
 	 * should not be enabled.
 	 */
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
