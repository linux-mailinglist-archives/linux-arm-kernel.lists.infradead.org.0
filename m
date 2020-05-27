Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280AB1E4984
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gO4ayyxL647zLhQ+CP+H5eJOrH61MYCPH7A6oeK5wpk=; b=BQR3+4EXkywfGd
	jg+td/t0+RnmDb7FSHl5fGBqJeaoBd7SxCv2HYrGQasJfFU4x72k8DFOirirLPdqrhh9n38j1ja66
	6Z4hitdBejgu1SlKnU/7MlsuiKZ4EZ60hOIkDC4Thf82O1QBGr785m8G4orYNmjOFMuZeaCJhbqef
	xt5bYRc8iY+KSYbXG1PDIdYaOqZKGIgUtjEsmED8gPdyTKl0azVIhsdTsiHwLJMgRkZclvNxoQ4YZ
	1whvZH4GL5I0gluVMHwE0ruffvfST2D5SDYf3ETt8kiYFBWLIr5nbDGJ40Dsiti9+rqFdd21KrQYo
	UDyMJTh+Apl0xyoh14Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdygO-0001eY-PW; Wed, 27 May 2020 16:13:32 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJy-0000Wd-Fe; Wed, 27 May 2020 15:50:26 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4C29958207D;
 Wed, 27 May 2020 11:50:21 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=YtBDdhaCMl7iI
 LeZk8zLlw9oJnVrw5gwZNyT00IhFwI=; b=Ii8hx4Un0msqVryK25ujrZnW379fE
 Apu7NPOfyKcpBGuOaK3zzU78LObaxGWye2uPBBN8GujOqI99o0hDodN6/VIDk9/0
 TYd98Qgct6q2bWYdD2ggC/nOg93zWsdfAbGSdJOAb71DNf1d5v0un2XBblvLkiSX
 KJG2GG0YXu9w6q0ZO4oQgtPDoNh1Nc+olJLb35AGIDv/3gHUKYGKDctaRXPXaHw3
 KWgtjt2Htk5TB/jATQxYrLmh72ZcFhLCQkvMsdWx5Eow5W7qLComwXTD/Mp8BZcJ
 eKwjgz9sM5/Ld4LcLBhUhlaNXyGTN/LwgmIcQmn7Q1rD0W0/3sbQzbi0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=YtBDdhaCMl7iILeZk8zLlw9oJnVrw5gwZNyT00IhFwI=; b=E8McCqRL
 9g2tLY3fUCt2ClPIBCTvIP7DGGMl95g37Z6Plk2WRXmSbWJPli2O0qvev8icPF6C
 JT19uSZIYLQ0nJNDT1OmxJ9UwyMi5USdMDIVoDoTl3vj4yAoZ3tX7VEGihzsrXO1
 hUMx08qv5H8XpvH8xqRilSwcI2rk0wXO/fHfbg7e9e8Pck0qxrdU/vcIqkZy06AV
 hgHbai38JLx53e+sM1bGTFxHDNp+hB7bwIIFL4ll6U2m5+apnMJYrjspnqtTQWPy
 nBFEf0IUN1QPQKyH/wrqEBuC9OlSeZc717vAcm9WaYP+sgkWfkhgtj2M0LMQNFYY
 OUo0X+1ZBncA9A==
X-ME-Sender: <xms:PYzOXoNDNnKywU1OQlj11iPmFop37iKrbIINz9ozVmn8TaEtPim5Ww>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvddune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:PYzOXu-MfICBrl9FRnP00a0CLwpATd5e9F4fNMFqn_BcUBdOP3x76w>
 <xmx:PYzOXvQTW8HlSi_1GrE5txyRlV-IvCnhZutFzEt-4H7eWlcZBeuXgA>
 <xmx:PYzOXgsjiGm1CRhx0N-qMA3Vox7S_T6TbIZfvsBfTSdXv2iAM9jpcQ>
 <xmx:PYzOXuswbwe1Y03ywPRygUXxTkm3rWS3ynO5Nx0kwVHB8MYHC-w2yA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DB1F6328005A;
 Wed, 27 May 2020 11:50:20 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 040/105] drm/vc4: crtc: Turn pixelvalve reset into a
 function
Date: Wed, 27 May 2020 17:48:10 +0200
Message-Id: <2c6a651cac6359cb0244a40d3b7a14e72918f169.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085022_710109_0CBFC6A0 
X-CRM114-Status: GOOD (  11.28  )
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

The driver resets the pixelvalve FIFO in a number of occurences without
always using the same sequence.

Since this will be critical for BCM2711, let's move that sequence to a
function so that we are consistent.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 9ec345254808..983ae476c203 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -308,6 +308,15 @@ static struct drm_encoder *vc4_get_crtc_encoder(struct drm_crtc *crtc)
 	return NULL;
 }
 
+static void vc4_crtc_pixelvalve_reset(struct drm_crtc *crtc)
+{
+	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
+
+	/* The PV needs to be disabled before it can be flushed */
+	CRTC_WRITE(PV_CONTROL, CRTC_READ(PV_CONTROL) & ~PV_CONTROL_EN);
+	CRTC_WRITE(PV_CONTROL, CRTC_READ(PV_CONTROL) | PV_CONTROL_FIFO_CLR);
+}
+
 static void vc4_crtc_config_pv(struct drm_crtc *crtc)
 {
 	struct drm_encoder *encoder = vc4_get_crtc_encoder(crtc);
@@ -322,10 +331,7 @@ static void vc4_crtc_config_pv(struct drm_crtc *crtc)
 	u32 format = is_dsi ? PV_CONTROL_FORMAT_DSIV_24 : PV_CONTROL_FORMAT_24;
 	u8 ppc = vc4_crtc->data->pixels_per_clock;
 
-	/* Reset the PV fifo. */
-	CRTC_WRITE(PV_CONTROL, 0);
-	CRTC_WRITE(PV_CONTROL, PV_CONTROL_FIFO_CLR | PV_CONTROL_EN);
-	CRTC_WRITE(PV_CONTROL, 0);
+	vc4_crtc_pixelvalve_reset(crtc);
 
 	CRTC_WRITE(PV_HORZA,
 		   VC4_SET_FIELD((mode->htotal - mode->hsync_end) * pixel_rep / ppc,
@@ -573,9 +579,9 @@ static void vc4_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	require_hvs_enabled(dev);
 
-	/* Reset the PV fifo. */
-	CRTC_WRITE(PV_CONTROL, CRTC_READ(PV_CONTROL) |
-		   PV_CONTROL_FIFO_CLR | PV_CONTROL_EN);
+	vc4_crtc_pixelvalve_reset(crtc);
+
+	CRTC_WRITE(PV_CONTROL, CRTC_READ(PV_CONTROL) | PV_CONTROL_EN);
 
 	/* Enable vblank irq handling before crtc is started otherwise
 	 * drm_crtc_get_vblank() fails in vc4_crtc_update_dlist().
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
