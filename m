Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 676091E49AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:18:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=07KafZNZ9sq6WoSMI7ztR6KlOOn6QpkMLBtXWxon0NY=; b=sy3M6+gq6SPwar
	2FyLEFX6M9Hs1E0+oZwnhrUFjHsNgKxzzD3IuEDtZRbu9tpm7FO1cT6oAZsTPcyrG+dFe5KsbFbDt
	lGQE3HA4a7mCoAmLUiLXCZM7l4VtV/J8I8Gk4JteURg8Qt/qsLUhTYRFo8QIqOU+mx5Ykj+NSyA2e
	waKqulB+4Y6fJHo1QuluqbFP51G7UpPkaejclaP0lqmGJ06hLYCQ53ksglNFHzt7dEECTYUtYeSWN
	3xmAK0w2jGc/CoswvDr8nwDJSNz9Iwlz8m2e77CrC26BiMMOJew1ATLlIsA5cn6ljIn45crK9Jlkh
	JfQPs4r1l4FqrWsy2K2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdylH-00083A-5w; Wed, 27 May 2020 16:18:35 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyKW-00014L-NS; Wed, 27 May 2020 15:51:03 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0AA285820D5;
 Wed, 27 May 2020 11:50:56 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=XdQ6iRAhu8U2f
 7gfuagdDFcfDndRqBG48qhD4gZkt8c=; b=vmspI16VHZuZiZZwGgofS/PX52HdA
 9gg1n5/of24ml5grEGyTqzzwJ4ceqItVtvtCNIikm7obuMljyz1evpQqMkPt0NIz
 pV+ATGbxQnIB8lzc0cRlcaIzrt7lY3Nrl9uGuRDN05eArQFQW151DA8p1UhjIKjh
 BR38zgbArjF/3FX7u6WHwqIUj2RIE9Qid/xwbTcJYZcCFvSNG/P/oNMaEkdYlyyO
 cM08DiO4bb5mZYWY8cB5d8bQuAskEZ4Sp8d4vYEI+T9PKD7rhqUvte5rtMek9mp/
 ZPQ5jDKSYhRtzq6O3yqDNBLasnTjBadx7mITi/nZ+QugL14pL6Up8nMgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=XdQ6iRAhu8U2f7gfuagdDFcfDndRqBG48qhD4gZkt8c=; b=A7oFUrfA
 d3dwV+H0N7w883+Vhuww8Nujc0IhoOmfDLpxpi1Lgqo3jWoGLhm7xQ3oRrbbDzfV
 eeF2WOYqFx/qR6D30NyrICbZsHpx1WxfD6FhD6RcCBYQX1/homEKxKNlH0pRDsGb
 HMFhXzTqQ0J1K5ZsaXtEtpTzX9bR/PFKVVxgnagL25cNV4ozXKmc7HNJu4NvOSHa
 snvHolFAMJTMh+m2PJE4n++Eq0G3MFVXrfBO2l3y7tSsthvdfX8K5ksj9A1iLsDZ
 ACkAXiY3MKZXWSxfLTF74pbazJUqx41SaOXHMTHDZVEExS1fJnK+tnqlteVb6/o4
 WuxsJKpews1vAw==
X-ME-Sender: <xms:X4zOXl0raS165CJYhEeXeJ-N0avjTOkm-96JgHQMZofNDFv30mu6aQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepgeegne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:X4zOXsEgb7pHavS1LuPVjyoCyHMr3-OcKFpuYYSyZBosS_zr0lterA>
 <xmx:X4zOXl6wCsBR_b3unhv38aNmBXqDhMIr_AgowlMlLdyS96oqmqm85g>
 <xmx:X4zOXi34jL7b52AY6ZhyRpNGwJ6LVyp9EA64ilzKbyxuXupWqkhtkQ>
 <xmx:YIzOXj1dVl5MrjdWZAZ6b5fS6V6kA2cORf52Cc8zkByqmXCoTvAgbQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A374D3280069;
 Wed, 27 May 2020 11:50:55 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 062/105] drm/vc4: crtc: Only access the PixelValve
 registers if we have to
Date: Wed, 27 May 2020 17:48:32 +0200
Message-Id: <202be364d8312537461ac6c1fd67b8e16b5ccac2.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085056_946996_A7E0E0A2 
X-CRM114-Status: GOOD (  11.26  )
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

The CRTC hooks are called both for the TXP and the pixelvalve, yet some
will read / write the registers as if the device was a pixelvalve, which
won't really work.

Let's make sure we only access those registers if we are running on a
PixelValve.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 25 ++++++++++++++++++-------
 1 file changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index f82e3b0e11bd..ee4381c144a5 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -405,16 +405,19 @@ static void require_hvs_enabled(struct drm_device *dev)
 
 static int vc4_crtc_disable(struct drm_crtc *crtc, unsigned int channel)
 {
+	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
 	struct drm_encoder *encoder = vc4_get_crtc_encoder(crtc);
 	struct vc4_encoder *vc4_encoder = to_vc4_encoder(encoder);
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
 	struct drm_device *dev = crtc->dev;
 	int ret;
 
-	CRTC_WRITE(PV_V_CONTROL,
-		   CRTC_READ(PV_V_CONTROL) & ~PV_VCONTROL_VIDEN);
-	ret = wait_for(!(CRTC_READ(PV_V_CONTROL) & PV_VCONTROL_VIDEN), 1);
-	WARN_ONCE(ret, "Timeout waiting for !PV_VCONTROL_VIDEN\n");
+	if (!vc4_state->feed_txp) {
+		CRTC_WRITE(PV_V_CONTROL,
+			   CRTC_READ(PV_V_CONTROL) & ~PV_VCONTROL_VIDEN);
+		ret = wait_for(!(CRTC_READ(PV_V_CONTROL) & PV_VCONTROL_VIDEN), 1);
+		WARN_ONCE(ret, "Timeout waiting for !PV_VCONTROL_VIDEN\n");
+	}
 
 	mdelay(20);
 
@@ -508,10 +511,10 @@ static void vc4_crtc_atomic_enable(struct drm_crtc *crtc,
 	if (vc4_encoder->pre_crtc_configure)
 		vc4_encoder->pre_crtc_configure(encoder);
 
-	if (!vc4_state->feed_txp)
+	if (!vc4_state->feed_txp) {
 		vc4_crtc_config_pv(crtc);
-
-	CRTC_WRITE(PV_CONTROL, CRTC_READ(PV_CONTROL) | PV_CONTROL_EN);
+		CRTC_WRITE(PV_CONTROL, CRTC_READ(PV_CONTROL) | PV_CONTROL_EN);
+	}
 
 	if (vc4_encoder->pre_crtc_enable)
 		vc4_encoder->pre_crtc_enable(encoder);
@@ -611,6 +614,10 @@ static int vc4_crtc_atomic_check(struct drm_crtc *crtc,
 static int vc4_enable_vblank(struct drm_crtc *crtc)
 {
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
+	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
+
+	if (vc4_state->feed_txp)
+		return 0;
 
 	CRTC_WRITE(PV_INTEN, PV_INT_VFP_START);
 
@@ -620,6 +627,10 @@ static int vc4_enable_vblank(struct drm_crtc *crtc)
 static void vc4_disable_vblank(struct drm_crtc *crtc)
 {
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
+	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
+
+	if (vc4_state->feed_txp)
+		return;
 
 	CRTC_WRITE(PV_INTEN, 0);
 }
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
