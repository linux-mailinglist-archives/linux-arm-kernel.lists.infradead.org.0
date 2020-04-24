Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D03061B7A9E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=//VOJn2PsNv7H14qaJytnD2v01ts9xmfyF4NWjuD0nQ=; b=AVa4ioxaJGkeXo
	UAw2CDXuuXLq5k/iE19hifFLl0TV1/xZskfo/e3rA3VNUJxVRfIQpk1zkHuJtLp6Q92TRYXM3zA2C
	7xfHWjylcmb8vDtKD+DD2cC2y0LOkUbezZKcKSJmoIVG0s+uSugmhE0cRiC6TNVKBeHKtS1Y2DlhD
	on4bsN7zFpQAYSHUT2l+lKaoqcarkaWDJQ+RFONy8U65N7sVti0gIpTfRRaGc+tG5/fuq6APijryP
	Ie6kEDh2yHFgEbhtEx6+EUmsJB/bm3LHqLw1//wAmSdqYUhTx5ceqrnHgf7Jnnie2+hgjesFGeEtp
	ryQONfHBsIzVufVN4rjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0bd-0002bY-FF; Fri, 24 Apr 2020 15:51:09 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0NX-0008IG-B5; Fri, 24 Apr 2020 15:36:37 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 1E62A1458;
 Fri, 24 Apr 2020 11:36:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=D8dEwkq3X2WC7
 BWcKxRQwnGqBepwqpcl1orVBKVWao8=; b=hjoZbdM5iJ9p65etstAMDgKox1fxS
 cpuDQA/CkpE2EqKsbdFL3OqSFqnEjw6lQ+sTXY869xvZZhYPXTinWKBrE/+UquoU
 e0a4XP+n+5pIyAyCtbKnRu9DmnzT6leUewls+JiL33XX2qDFL5BZoMVkF6dY48MF
 QD7pvR19ku17n/GTw/mg32anPQFVAF434OL3xzxK0TP8XhPSTjc3M+vIhRGvfI1+
 CCJ3gYP2I5vpVa/rtAfZ6BSUh/l9BLP2p5iWV0iTT31eKypTbj97euhUOR68HslK
 WKazdWaACLxVKPMO31KHSK8G+/IT5CckjX5sjkODCryQfn2KOthI6YrxQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=D8dEwkq3X2WC7BWcKxRQwnGqBepwqpcl1orVBKVWao8=; b=alRPB36B
 ZIc4jz8IjnZ//jq7Z4yfWkuaGUl6EgM8HXKFJjbbh+F+L7s/pQnb61rc/4ljuMlx
 X+jPg4iVJNbEoCKTHu79HKw5cfGO3dEfGx9IiFNPBg75VdjJSJ6CJgq9VOrqtJSZ
 6eGR85DsXd4PSrg7yuEWxZlLWBqXnqXckUB08s6Ob14z16iI2cC4MgJ39MoPa+Vh
 1OOMfu1rGWo32FRDe16+yfyAzxuRJBjl4faMokiIRlw9Sh5n8gcr+igjpJh3DAyI
 /u1/fAktdTd430+aoFY+GYgKyVyMUh4eg0Xvp1PbYNBpMx0eCeUfgae4YjoaE+j3
 mneJhfdbc9m9vg==
X-ME-Sender: <xms:gQejXoH60ICcxcvlBs1EFjOrtsuNaF0D17koWYt4IRGnByYBZ0Ducw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeegvdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:gQejXt51wt652v5O4K5TOwJK9stdh56QR3DfLrjkc8xwLNuoHzdWrg>
 <xmx:gQejXmnc_y4tijJOvyDNkQ-BqiDpWlaGqOE2o2wzBRMDX7KrfISKLg>
 <xmx:gQejXg4wOFLvPJlrkK0Dj1JVTGKRjfuA5NjnYXgRVoikN6JLxjG9pg>
 <xmx:gQejXkXr3BDGVyb4K2G4-xZ4fiRaBo6UZlNDx4HKU_Lp9Cr1y6GMYcnXI-w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5E3F33065DA6;
 Fri, 24 Apr 2020 11:36:33 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 51/91] drm/vc4: crtc: Enable and disable the PV in
 atomic_enable / disable
Date: Fri, 24 Apr 2020 17:34:32 +0200
Message-Id: <9256bf0aab60235d3dc0dc34ceacb89df53e9cfa.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083635_462289_A1CA5895 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The VIDEN bit in the pixelvalve currently being used to enable or disable
the pixelvalve seems to not be enough in some situations, which whill end
up with the pixelvalve stalling.

In such a case, even re-enabling VIDEN doesn't bring it back and we need to
clear the FIFO. This can only be done if the pixelvalve is disabled though.

In order to overcome this, we can configure the pixelvalve during
mode_set_no_fb, but only enable it in atomic_enable and flush the FIFO
there, and in atomic_disable disable the pixelvalve again.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 3a15d711ff55..00e6ecf5a6d4 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -374,9 +374,7 @@ static void vc4_crtc_config_pv(struct drm_crtc *crtc)
 		   PV_CONTROL_TRIGGER_UNDERFLOW |
 		   PV_CONTROL_WAIT_HSTART |
 		   VC4_SET_FIELD(vc4_encoder->clock_select,
-				 PV_CONTROL_CLK_SELECT) |
-		   PV_CONTROL_FIFO_CLR |
-		   PV_CONTROL_EN);
+				 PV_CONTROL_CLK_SELECT));
 }
 
 static void vc4_crtc_mode_set_nofb(struct drm_crtc *crtc)
@@ -467,6 +465,8 @@ static void vc4_crtc_atomic_disable(struct drm_crtc *crtc,
 	ret = wait_for(!(CRTC_READ(PV_V_CONTROL) & PV_VCONTROL_VIDEN), 1);
 	WARN_ONCE(ret, "Timeout waiting for !PV_VCONTROL_VIDEN\n");
 
+	CRTC_WRITE(PV_CONTROL, CRTC_READ(PV_CONTROL) & ~PV_CONTROL_EN);
+
 	if (HVS_READ(SCALER_DISPCTRLX(chan)) &
 	    SCALER_DISPCTRLX_ENABLE) {
 		HVS_WRITE(SCALER_DISPCTRLX(chan),
@@ -554,6 +554,10 @@ static void vc4_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	require_hvs_enabled(dev);
 
+	/* Reset the PV fifo. */
+	CRTC_WRITE(PV_CONTROL, CRTC_READ(PV_CONTROL) |
+		   PV_CONTROL_FIFO_CLR | PV_CONTROL_EN);
+
 	/* Enable vblank irq handling before crtc is started otherwise
 	 * drm_crtc_get_vblank() fails in vc4_crtc_update_dlist().
 	 */
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
