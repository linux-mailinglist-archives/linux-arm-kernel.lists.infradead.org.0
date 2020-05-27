Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECD31E4987
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:14:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ElFNSxwjgqe8vjy+J/6wbes0edTKvYbD1/tTs9Pwk8=; b=gh5V662tzjLDlM
	lP3G4nYY0f6GtPBdzzGtaGkeAlIZL3KPMFh72sg+ybSvpZciykSRHOCBf1HtBJdNGAp2JLNYSseh3
	fIctcVwN3b4kz7JbPzr+tqsr+o3ly/xxXBK4OvG3vVkdEucjCvrOCobkEzpQvi6KunVfOhMtrC8zm
	QzCyaAnvqs7ZsjqBMEO3S9rkcGqhLrhi9JJxgduYX8vh1QZi2pQcr8+AvEItuR+qm4REoDzs8th9H
	1USvSTAd/xeYr8SpmZYd4RsXPmmYxU2RGua1XW71pA2W8UfSUqItasi7rypNWvavCoSyfDlVvwKkj
	jXkbF3mr3SCqrFoeMt/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdygu-0002G0-C8; Wed, 27 May 2020 16:14:04 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyK4-0000gK-5K; Wed, 27 May 2020 15:50:30 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6E7ED58208B;
 Wed, 27 May 2020 11:50:27 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=GAOeZq/xDTflc
 6+P9LvBBHtQ9OlNDddl/lapwGwoANs=; b=cgimq93HzfgKRS6nQic9ZXJgcznq7
 feFRMqB03YBMQWWq1b+bVSj/YpqnQTTZ7qI/hAGiApbVOvzABTMYmil/xS+cwHBh
 +D8XXng7/de7pN5Et12Zz8Tc/QjEo72vIlwKzhd6lbv3kOje/4dD8/USN+39+ngD
 fNtOwzNhogquofQl2hFmoGeQmTBKHsCArTKtNYc3ZlzObMoFmBYuMtZnkw5ZzEOo
 /+xKjrtiEgFIWSfMTD/tI06w5MjLrMck6Es+btliBSX1d4l84IuD4vLKwd5Ps6XP
 Jpg3hw8Kiyd1RUYZyOXImYgaIhr5+KwgdnwqBrcHpWUDL+NNIzK5k00dQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=GAOeZq/xDTflc6+P9LvBBHtQ9OlNDddl/lapwGwoANs=; b=kmDEp8eU
 cmwjzM9Z1zO8xSDTSEJDUHynohjfK1PCbcxanoMa04/A4xa76ipoMndA3kMONFgj
 UJSVySYgPcZBcF+PcyDFz7UrGWGGCZLxI/auSl2WNmdE15F7EmjkQY6Hf69qvgOx
 qVjFCaFIz0xzCsi7YJf4jg1/EbzPvo5116RzPJNqAASIb+vzOg0ugWHkNEF3sln+
 uUhtpIArAszMcUHKgVIUWAEMi0BbTW2emtgsNUE7T0xKqneO+p9lUOK19MeI+iVa
 2EhrsqTp1Ol3cXCBicFLTb8k+paI27u7lxv1lTT4Y97H8rNvc14wgOOKqiSBeCrr
 NpY128nQ9VdBXw==
X-ME-Sender: <xms:Q4zOXkazRh37YV4SnK8xjokLg1tb7ezshx9C5MikkgMutmHCvhmCIg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdehne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Q4zOXvZUqTwumq3GQPgyl_IwNuKVir2V-YsRGrinksEbnIO9FYXQ5g>
 <xmx:Q4zOXu-IlpTh-fXIXDi8N31lycdWcV5x1AicnbzZ_B9f42ZKybbOhg>
 <xmx:Q4zOXupzVkZgmioJvv77Bb-QS2UnNIPay_4r88Bq4M0737zsetkYZA>
 <xmx:Q4zOXrIIimuNMJbJWpoP-V5mjdb8yB23cQzVLHUNXW-s_sT52ZVN6g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 11EDF3280060;
 Wed, 27 May 2020 11:50:26 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 044/105] drm/vc4: crtc: Move the HVS gamma LUT setup to our
 init function
Date: Wed, 27 May 2020 17:48:14 +0200
Message-Id: <aa92d353d0cf3673a5d36a60fb82f7a5634270ac.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085028_367448_94C6A751 
X-CRM114-Status: GOOD (  10.68  )
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

Since most of the HVS channel is setup in the init function, let's move the
gamma setup there too.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hvs.c | 28 ++++++++++++++++------------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hvs.c b/drivers/gpu/drm/vc4/vc4_hvs.c
index 2352a63fd26b..87bbd68d44db 100644
--- a/drivers/gpu/drm/vc4/vc4_hvs.c
+++ b/drivers/gpu/drm/vc4/vc4_hvs.c
@@ -201,6 +201,8 @@ static int vc4_hvs_init_channel(struct vc4_dev *vc4, struct drm_crtc *crtc,
 {
 	struct vc4_crtc_state *vc4_crtc_state = to_vc4_crtc_state(crtc->state);
 	unsigned int chan = vc4_crtc_state->assigned_channel;
+	bool interlace = mode->flags & DRM_MODE_FLAG_INTERLACE;
+	u32 dispbkgndx;
 	u32 dispctrl;
 
 	/* Turn on the scaler, which will wait for vstart to start
@@ -225,6 +227,20 @@ static int vc4_hvs_init_channel(struct vc4_dev *vc4, struct drm_crtc *crtc,
 
 	HVS_WRITE(SCALER_DISPCTRLX(chan), dispctrl);
 
+	dispbkgndx = HVS_READ(SCALER_DISPBKGNDX(chan));
+	dispbkgndx &= ~SCALER_DISPBKGND_GAMMA;
+	dispbkgndx &= ~SCALER_DISPBKGND_INTERLACE;
+
+	HVS_WRITE(SCALER_DISPBKGNDX(chan), dispbkgndx |
+		  SCALER_DISPBKGND_AUTOHS |
+		  ((!vc4->hvs->hvs5) ? SCALER_DISPBKGND_GAMMA : 0) |
+		  (interlace ? SCALER_DISPBKGND_INTERLACE : 0));
+
+	/* Reload the LUT, since the SRAMs would have been disabled if
+	 * all CRTCs had SCALER_DISPBKGND_GAMMA unset at once.
+	 */
+	vc4_hvs_lut_load(crtc);
+
 	return 0;
 }
 
@@ -427,8 +443,6 @@ void vc4_hvs_mode_set_nofb(struct drm_crtc *crtc)
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
 	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
-	struct drm_display_mode *mode = &crtc->state->adjusted_mode;
-	bool interlace = mode->flags & DRM_MODE_FLAG_INTERLACE;
 
 	if (vc4_crtc->data->hvs_output == 2) {
 		u32 dispctrl;
@@ -453,16 +467,6 @@ void vc4_hvs_mode_set_nofb(struct drm_crtc *crtc)
 			   ~SCALER_DISPCTRL_DSP3_MUX_MASK;
 		HVS_WRITE(SCALER_DISPCTRL, dispctrl | dsp3_mux);
 	}
-
-	HVS_WRITE(SCALER_DISPBKGNDX(vc4_state->assigned_channel),
-		  SCALER_DISPBKGND_AUTOHS |
-		  ((!vc4->hvs->hvs5) ? SCALER_DISPBKGND_GAMMA : 0) |
-		  (interlace ? SCALER_DISPBKGND_INTERLACE : 0));
-
-	/* Reload the LUT, since the SRAMs would have been disabled if
-	 * all CRTCs had SCALER_DISPBKGND_GAMMA unset at once.
-	 */
-	vc4_hvs_lut_load(crtc);
 }
 
 void vc4_hvs_mask_underrun(struct drm_device *dev, int channel)
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
