Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC571F692C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=voayra3eH80YtzFn7EfaBWLMxpMPd9yKsu76TzxmWD8=; b=jxZkDr5LRxO2Zg
	s1pPkEtNoLm289oXPsGs558VT40JSVw3H8+qQ7NPdxVpnHu+eqnBa0b6O+LL/Q46O0g7z11Kiy8Ah
	HP2my9fLa2pJGr7RGtgyteGbIfk8BLoS5+xaRzVxS3PXDZYiTQShD5O+8QL5ihsSjRlNtzeXyCIot
	VaH8M2OVBeqM/pGc8n61TbvHP97VcTwo/y5+Gjppdf+HMUK44xHImA/GC4NtLd3/TvAP9aMYC5YBd
	AwMaw5gMgUvEj9HTWci+Pjeo25CRCfnsZvl6eUts3XLx3Vx9zetwAKR4WGBm8xDXxi7OYX0bXpjjM
	XZoqEgLqwlv5hs/dRjrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNS7-0006ce-9v; Thu, 11 Jun 2020 13:41:07 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNPp-0002UM-18; Thu, 11 Jun 2020 13:38:47 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 412E15801E1;
 Thu, 11 Jun 2020 09:38:44 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 09:38:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=HRV+MiemGs5P9
 punwbKUb1BmroV4uFiYrY/M08ZBttw=; b=OvrbZUnrN1XMPl+NYr0G56xMCvkUA
 yR62rMDV4X3sx+kTggdcKzq7ftOfX/AP399qKgVN+YLuro3DX19/Wm5rj0096kbD
 vyYH4aiCetl+VnKdBoQC6J4BjnAO+d1sOfbEJqAnvkt2eRtd0CVD9ffIGIu9eE6K
 oLjU2hbLUtjM6Yq/B57oB7gw6a+OKYJjPMCaUbNc3wAvpZCd3rKihfxTeaUkb2Mi
 WkAjw37j49Cd5Knp0+EbcU5paJFeTf0/AS0AAYgkG1vTtlyQcFerT0BgRdtvIk/8
 QWn+D+/Cb/lOOMHp/Mhe0Umn/GfpCOOyvXcoSTa5mZsy0QmZbP2Trw/7g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=HRV+MiemGs5P9punwbKUb1BmroV4uFiYrY/M08ZBttw=; b=MVI4FWee
 Lu/UqIIaMDlqJvNoy1LxaHa79NntQv2TL8lPMCXNM5KjEqRpEmeU7bzynnAljL3k
 klftYBku1byMHqmvIOmgAAi5yPUNlYe09mvriT74C42g4GB0KUPPIyoOKwEPY+rG
 AjR908YZXRSTutc17qEVmtFvJeLjwz4c+vdeidYlnhuSD6hQckMNTWoESj5C+YIx
 aWD6y3m/R+MdGwhjOCs82MAXZfHraKC0zDPbQ4ze70CciQnIROjZIleSVdM4Q/lU
 dwlKx3mwXEvQi6NoJJqFmNhgUeAXAmPz7FE7hfkol/yS/lknlCZMyHwRDLQQdWmF
 oMwum5klH5juzA==
X-ME-Sender: <xms:4zPiXmvdOB_rZ9P8vtM-47FwUnCw37kzkxul2egglBa3_FQCLgSnjw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehledggeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:5DPiXreEvpLw_BAXCoqNa8XcKq34YjijyuWJJx-njKIb3Na3NqfuQw>
 <xmx:5DPiXhxEb6jifXir-a2OMrMWBC1hpe0cnjtRUXV3u_A_n-RWfDk76A>
 <xmx:5DPiXhOURAXpcf_b_WOZg40iJpbpE2_aMfbbW9C3zK2GtCZ9bzTIhw>
 <xmx:5DPiXrOqvnTP2QtBa7Kzg9ppzKvC_qHsYxk4EybcbeBq_8lx9uuD_g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C3D0532801C7;
 Thu, 11 Jun 2020 09:37:13 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v4 9/9] drm/vc4: crtc: Remove the feed_txp tests
Date: Thu, 11 Jun 2020 15:36:54 +0200
Message-Id: <c044daba470fcb1cb57e3d34d88f75325b2ebbab.1591882579.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.c33f5fd8b1b2703081f25398eb879937c9f7ce0b.1591882579.git-series.maxime@cerno.tech>
References: <cover.c33f5fd8b1b2703081f25398eb879937c9f7ce0b.1591882579.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_063845_282281_47A424DB 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.229 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Now that the code in vc4_crtc accessing registers is only meant for the
pixelvalve, it doesn't make sense anymore to test whether we're accessing
the TXP or not and we can safely remove those checks.

Reviewed-by: Eric Anholt <eric@anholt.net>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 29 +++++++----------------------
 1 file changed, 7 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 0c9d14c70485..bc417e081f07 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -323,7 +323,6 @@ static void vc4_crtc_config_pv(struct drm_crtc *crtc)
 static void vc4_crtc_mode_set_nofb(struct drm_crtc *crtc)
 {
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
-	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
 	bool debug_dump_regs = false;
 
 	if (debug_dump_regs) {
@@ -333,8 +332,7 @@ static void vc4_crtc_mode_set_nofb(struct drm_crtc *crtc)
 		drm_print_regset32(&p, &vc4_crtc->regset);
 	}
 
-	if (!vc4_state->feed_txp)
-		vc4_crtc_config_pv(crtc);
+	vc4_crtc_config_pv(crtc);
 
 	vc4_hvs_mode_set_nofb(crtc);
 
@@ -357,7 +355,6 @@ static void require_hvs_enabled(struct drm_device *dev)
 static void vc4_crtc_atomic_disable(struct drm_crtc *crtc,
 				    struct drm_crtc_state *old_state)
 {
-	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
 	struct drm_device *dev = crtc->dev;
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
 	int ret;
@@ -367,12 +364,10 @@ static void vc4_crtc_atomic_disable(struct drm_crtc *crtc,
 	/* Disable vblank irq handling before crtc is disabled. */
 	drm_crtc_vblank_off(crtc);
 
-	if (!vc4_state->feed_txp) {
-		CRTC_WRITE(PV_V_CONTROL,
-			   CRTC_READ(PV_V_CONTROL) & ~PV_VCONTROL_VIDEN);
-		ret = wait_for(!(CRTC_READ(PV_V_CONTROL) & PV_VCONTROL_VIDEN), 1);
-		WARN_ONCE(ret, "Timeout waiting for !PV_VCONTROL_VIDEN\n");
-	}
+	CRTC_WRITE(PV_V_CONTROL,
+		   CRTC_READ(PV_V_CONTROL) & ~PV_VCONTROL_VIDEN);
+	ret = wait_for(!(CRTC_READ(PV_V_CONTROL) & PV_VCONTROL_VIDEN), 1);
+	WARN_ONCE(ret, "Timeout waiting for !PV_VCONTROL_VIDEN\n");
 
 	vc4_hvs_atomic_disable(crtc, old_state);
 
@@ -395,7 +390,6 @@ static void vc4_crtc_atomic_enable(struct drm_crtc *crtc,
 {
 	struct drm_device *dev = crtc->dev;
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
-	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
 	struct drm_display_mode *mode = &crtc->state->adjusted_mode;
 
 	require_hvs_enabled(dev);
@@ -410,9 +404,8 @@ static void vc4_crtc_atomic_enable(struct drm_crtc *crtc,
 	/* When feeding the transposer block the pixelvalve is unneeded and
 	 * should not be enabled.
 	 */
-	if (!vc4_state->feed_txp)
-		CRTC_WRITE(PV_V_CONTROL,
-			   CRTC_READ(PV_V_CONTROL) | PV_VCONTROL_VIDEN);
+	CRTC_WRITE(PV_V_CONTROL,
+		   CRTC_READ(PV_V_CONTROL) | PV_VCONTROL_VIDEN);
 }
 
 static enum drm_mode_status vc4_crtc_mode_valid(struct drm_crtc *crtc,
@@ -488,10 +481,6 @@ static int vc4_crtc_atomic_check(struct drm_crtc *crtc,
 static int vc4_enable_vblank(struct drm_crtc *crtc)
 {
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
-	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
-
-	if (vc4_state->feed_txp)
-		return 0;
 
 	CRTC_WRITE(PV_INTEN, PV_INT_VFP_START);
 
@@ -501,10 +490,6 @@ static int vc4_enable_vblank(struct drm_crtc *crtc)
 static void vc4_disable_vblank(struct drm_crtc *crtc)
 {
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
-	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
-
-	if (vc4_state->feed_txp)
-		return;
 
 	CRTC_WRITE(PV_INTEN, 0);
 }
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
