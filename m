Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FD71E4997
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4dEMMK2jEsPWalqf6gZw+cDtvxs+9h3d/2kg95VwJBk=; b=L29gOqfTZYZrfz
	vZQg+ZfossPtysQQ+pJgcmn9kpc0CEXqL5onTDGxpy0VFrpedw7kLshR0MlG8TxqCtf/FXFT71Hzj
	31BZjsmtwOcZthxnn90A5lvK6cLfbE5duMHiJvACnTZTIismzL8pxs9sLHyepkUirtGcRJ60K3TQt
	ShhwZKsk5u4QTpjSD5LbUn5Y+lU00zn/wnFzio4g7bXifkQBcgnXbI5hPDEISuBWiP+nUzeyPLvCI
	EqjaQOjB2YcFZ1IgHlVKgZzv/rAQ0otVa2gTq3JDNvGoM9VqxX+nNnzMOCU3Atd4FD2hg7e3I3DIL
	84bQn54oc5T0vDSSEA8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyil-000618-WF; Wed, 27 May 2020 16:16:00 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyK9-0000kM-2f; Wed, 27 May 2020 15:50:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0F52B582093;
 Wed, 27 May 2020 11:50:32 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=E53byJeSNwsr3
 s5waq0oOBfsjIRNSegJ0GAwzJ3dKV0=; b=sxKM2ghAxtoX8X7/rDFVhvjLsFkyo
 WWHNPKANFQSb4tm6a/8eKNl8tb9VWBnC4K0anIfMM9B+0P10p82Q5w+58/OW/oUc
 UU0nLVYXIIHevosOreIRoPCuiHHEkdkPs+/n8jhQ5Cs4u0L+5S39opaYwm/ZjMmB
 TC9GPXuwXD6magMViFfP5EFWcDP/ezjWJ56bLnGsnBg9UwQb5eO++o3LqPoa8SmM
 Ewf4Tp0VBeRsGaYbEqYO7zrzWGpDyz5Lc14IFcDEIOB1pFytlWoC2CCRrJjUYggO
 B71HdY8aAUkB7LS9DdXIUgfAQKZlmr5Q2P90F+NjGDosFaFCLW/VkiRDA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=E53byJeSNwsr3s5waq0oOBfsjIRNSegJ0GAwzJ3dKV0=; b=lxe6q5Vu
 2OaUqxU1RVX4LXxpIXGYnFZGL1oiQO9MHElCorOtDsExBvJ1fO53SN732yGG6Mct
 RVVHTQ0fAkDylwWtwY4WlcOsSLA9729JaURg23Yu4YrO8wv3OU2QUlU33MmwRMJf
 637oLMpcYv639+Ko3NGgHTGRPuPcHw9LGygmCo6qUaFxdR4yjH6VD2ndNWj34E8I
 ueSL+sh1bp/bPgbPZv245Nt9RbYK8azkWwR6eoUF4NaVFE5RJaXDfAOWc3/J798V
 dn05WEqzbu2vBFP27HfsG7IKfXLBMjwuzH2KTSnVyAXi0Vep9BRjm5TwitPmztcC
 goFvYarCdc/lqg==
X-ME-Sender: <xms:R4zOXtyHhyRtifLbDGaG1F-I87LsgoBRSMnudmdEeQX5wunsBXhslw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdelne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:R4zOXtSciqCeBEfCYrjmgDXfnb6VTTFIFvbEfc-af6BnMeND5OF1hg>
 <xmx:R4zOXnWWu0am_Vgnyi3qUPytpyLF_ut9P2yoOTlM6-Bs2c9L8xQHtQ>
 <xmx:R4zOXviZyxWp7bvsCz-jydGkZmVW_ZWOmTCtTC8c0EE4Wl25BL6IpQ>
 <xmx:SIzOXhAE5VrsDfoHA6VwPz8y6xN-PJbsPT5JAecBlJd6GHbs6d1sAQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A6C35306218B;
 Wed, 27 May 2020 11:50:31 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 047/105] drm/vc4: crtc: Remove mode_set_nofb
Date: Wed, 27 May 2020 17:48:17 +0200
Message-Id: <41435b33f4f0c072aa1645dc84f78c4390b457b0.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085033_273337_F0416140 
X-CRM114-Status: UNSURE (   9.95  )
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

On BCM2711 to avoid stale pixels getting stuck in intermediate FIFOs, the
pixelvalve needs to be setup each time there's a mode change or enable /
disable sequence.

Therefore, we can't really use mode_set_nofb anymore to configure it, but
we need to move it to atomic_enable.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index a69e0d456b79..08bd595f6a7c 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -374,14 +374,6 @@ static void vc4_crtc_config_pv(struct drm_crtc *crtc)
 	}
 }
 
-static void vc4_crtc_mode_set_nofb(struct drm_crtc *crtc)
-{
-	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
-
-	if (!vc4_state->feed_txp)
-		vc4_crtc_config_pv(crtc);
-}
-
 static void require_hvs_enabled(struct drm_device *dev)
 {
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
@@ -443,6 +435,9 @@ static void vc4_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	vc4_crtc_pixelvalve_reset(crtc);
 
+	if (!vc4_state->feed_txp)
+		vc4_crtc_config_pv(crtc);
+
 	CRTC_WRITE(PV_CONTROL, CRTC_READ(PV_CONTROL) | PV_CONTROL_EN);
 
 	/* Enable vblank irq handling before crtc is started otherwise
@@ -814,7 +809,6 @@ static const struct drm_crtc_funcs vc4_crtc_funcs = {
 };
 
 static const struct drm_crtc_helper_funcs vc4_crtc_helper_funcs = {
-	.mode_set_nofb = vc4_crtc_mode_set_nofb,
 	.mode_valid = vc4_crtc_mode_valid,
 	.atomic_check = vc4_crtc_atomic_check,
 	.atomic_flush = vc4_hvs_atomic_flush,
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
