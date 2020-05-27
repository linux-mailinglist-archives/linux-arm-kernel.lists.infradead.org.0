Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4CA1E4983
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+ofLiHvFOhXPI03EKa0q2dcqbcmayuGJwOdLlLojDo=; b=jpMN5hgtB8nhza
	YpCnZegGMw9rbTEjZpqfl/8ZT7sD1r9AWxi7TnoAOl6Jz92nIZSuZP7pyaDSbxahyS+xVlkx8akS1
	rqETCPOcRgLGc06gyYycGwrokaKkvuhejaecI1P//nCD0QBWnTQgVTclU9Z97ii2fBAb5p3L1zcLq
	UMtm8TtfsEmOnr1+kCDqv6BVisPBJmMyjSkv0XdTRTTj7dUoMOx8mintuJy3d7orJpeAOMSnvvR04
	RBJKInhsg/LJ/Aq+AO/nz//oAn1Mk+7goE+D4tw0v/Zh8QViltMPfk7KcChYRvVJwUJ3/J2pZc634
	Y188mbq3zhKqqDYaa68Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyg2-0001NF-UL; Wed, 27 May 2020 16:13:10 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyK1-0000eh-0e; Wed, 27 May 2020 15:50:27 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6E6F5582086;
 Wed, 27 May 2020 11:50:24 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=4MdUDm80GBXGn
 TwBeiEDzegeC1j5S1JHHNoMQgIRATM=; b=ipUT4Gq9aHBrWYGGzoaRdCgFSZT9j
 sSTY29tqtyTlQLe09B9CmFeo6zvikfn6dXBIxOyIIGcoAj+ibvKfH53/QHoq3rwl
 egyOmZjNrtZVWie9pDORunzEfhUNPRRpb8vnseJfP2/NKMnGfpcJDHiuvLN+dOdl
 QeGtLLLwz6vhkcQbZsPuuFRBB6awKx12JXM7Wo6axMQgYZhgk9kjLeUxPKzM6MQk
 o3pXbBklTVICEkuU+bKhxBuZwy5OB8hlfpX5891baVd9f/4fG8ySQtqGuLBCBrOQ
 aGov/lD9WuI2kJt5HhJsJeZkGoH01EAyZ32mdyOVxlgzn5vU3wjql3QNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=4MdUDm80GBXGnTwBeiEDzegeC1j5S1JHHNoMQgIRATM=; b=OA/7dW/l
 TahIAL905j8wkxjSrCFj7Ahwz6Oz9EI9UlL7zQYtZVjiJN2M8f5B/NhTw8uSFHcU
 Ae/Q28QzNfIh6T52gZsHf2bH7LwvnqkoTTWVUHa/y1c7hwotZnatVga3LqjbrLNc
 CVPwLQhJJm51rly1MpUTzrtY721Y8WVDYVXcqFbq/4cU/vqzzC+0te4tE7I2FuEs
 H12lecQ147wElucaY2Tzsb/JF3hPeW5Rt2MseM+0Hx14pWSf6Qpq/ej8ljz3RTqq
 Db4I4gSWgL3etdC9T5o7uM6CzXXJxDXb3FuQeWXFT0rjvO1Obfoe6DA3TNOhMckG
 JwUeaDL05K4AjA==
X-ME-Sender: <xms:QIzOXilv0Q8MoafmhCpnWzaIWdjncYMaFe-GvlzgNKRg9xopGPifAA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvddune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:QIzOXp1GzTWHca9KlL73aku8sZcz419ZE6w28l57DDPPScyilNi6zw>
 <xmx:QIzOXgp39Iv9U_3NOdWwD6oKFohbN-gLnm7NAF_8kwBXXrP5EMzaMg>
 <xmx:QIzOXmkXJegQjj7PA4J63QPiTveoG2g2F621SoMWp76mBbmaH36b-w>
 <xmx:QIzOXhmyORXLsYDY6ZGS_lmwiMtr2I26ygma1s00GiWFgitPhDQuAA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0FCA13280067;
 Wed, 27 May 2020 11:50:23 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 042/105] drm/vc4: crtc: Move PV dump to config_pv
Date: Wed, 27 May 2020 17:48:12 +0200
Message-Id: <04750e39caf96b4ae2154732c138b8c21ad84825.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085025_445923_09B9657B 
X-CRM114-Status: UNSURE (   8.80  )
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

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 29 ++++++++++++++---------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 93161b98e22a..0a67b27cec9b 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -288,6 +288,14 @@ static void vc4_crtc_config_pv(struct drm_crtc *crtc)
 		       vc4_encoder->type == VC4_ENCODER_TYPE_DSI1);
 	u32 format = is_dsi ? PV_CONTROL_FORMAT_DSIV_24 : PV_CONTROL_FORMAT_24;
 	u8 ppc = vc4_crtc->data->pixels_per_clock;
+	bool debug_dump_regs = false;
+
+	if (debug_dump_regs) {
+		struct drm_printer p = drm_info_printer(&vc4_crtc->pdev->dev);
+		dev_info(&vc4_crtc->pdev->dev, "CRTC %d regs before:\n",
+			 drm_crtc_index(crtc));
+		drm_print_regset32(&p, &vc4_crtc->regset);
+	}
 
 	vc4_crtc_pixelvalve_reset(crtc);
 
@@ -357,32 +365,23 @@ static void vc4_crtc_config_pv(struct drm_crtc *crtc)
 		   PV_CONTROL_WAIT_HSTART |
 		   VC4_SET_FIELD(vc4_encoder->clock_select,
 				 PV_CONTROL_CLK_SELECT));
-}
-
-static void vc4_crtc_mode_set_nofb(struct drm_crtc *crtc)
-{
-	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
-	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
-	bool debug_dump_regs = false;
 
 	if (debug_dump_regs) {
 		struct drm_printer p = drm_info_printer(&vc4_crtc->pdev->dev);
-		dev_info(&vc4_crtc->pdev->dev, "CRTC %d regs before:\n",
+		dev_info(&vc4_crtc->pdev->dev, "CRTC %d regs after:\n",
 			 drm_crtc_index(crtc));
 		drm_print_regset32(&p, &vc4_crtc->regset);
 	}
+}
+
+static void vc4_crtc_mode_set_nofb(struct drm_crtc *crtc)
+{
+	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
 
 	if (!vc4_state->feed_txp)
 		vc4_crtc_config_pv(crtc);
 
 	vc4_hvs_mode_set_nofb(crtc);
-
-	if (debug_dump_regs) {
-		struct drm_printer p = drm_info_printer(&vc4_crtc->pdev->dev);
-		dev_info(&vc4_crtc->pdev->dev, "CRTC %d regs after:\n",
-			 drm_crtc_index(crtc));
-		drm_print_regset32(&p, &vc4_crtc->regset);
-	}
 }
 
 static void require_hvs_enabled(struct drm_device *dev)
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
