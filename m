Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC9E1F6928
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWCx3TIwSZlDUWXG9IvNibkBpuLeAqoQv8kFFnKecVU=; b=ARYJbtKQsjx+Gv
	lhwuyke1jrGnlTP87p5D6yvuj/p3fzOhOvoisEQMP6KWC6asGRdEOLzKkHvYjYz+fLQv9QCTc2V8N
	HCEX+RMy9wTNVQrJkk5wSc+iCCR2XjKH/XT/TtJm8SVjhr33o9c9V03Ay0TAqW0GadyWHDZzvZpK0
	6lENFAKQtpDjNgfe8OwNy4NKRF0Q06UeXwvtO+sXJ9h8yHcVJ73OhZbDunEU9AZc6uFP2Fn6rUsgQ
	dEtjkz9qOwaTqFBFCLQEFpjR1fg1wvL8AZOwRjWpU/Cvz9/beoJVOhwk3JaXZLJTietM7EWITpxwA
	ZarT88gNS2U2Y8iCCiuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNRr-0006NW-Rf; Thu, 11 Jun 2020 13:40:51 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNPo-0002Tk-LB; Thu, 11 Jun 2020 13:38:46 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id D62A35801DD;
 Thu, 11 Jun 2020 09:38:43 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 09:38:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=gICVuJ6JxKf6T
 QPbCxr0GHMfBnZdU1/nxb1POOuoQgE=; b=X/AOES0MbnLou+TuWpjBo8gabvUj/
 bLtiuyEAus5zAF0VuVlLXe82tQqP0h6PjLSV7k6zh8g0b9XCih7t4Oqv4UnM6OOJ
 OCdmOVBtTbie9u/E8ssDcBxS+EsdAu4ynYLF/szb9KPwmexvQNv63/ocB0DyBGyW
 3oC+qy3uyypgPJjZ48PJfuL0GB5AudiyT4SW6Jc3sYqLa3Zr5se+QTKpi1DtrVvk
 WnhnUxdydhRKvivg6ax1bobXLaGQr6MQEuLORl9C13jcIFL3RQo0YIjajw9CTLwa
 lIhuYW9X1oAxv3b2ccYA18M7Gjv7SkgdB010W+Y9CpHJzwGV+SFNKECxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=gICVuJ6JxKf6TQPbCxr0GHMfBnZdU1/nxb1POOuoQgE=; b=IZQwgbYE
 lJzAL5F1kbyC3drkqxzv1e47AkQIqCnhFjwxBLWmNIK11+WO6ZFhUBhD58aQPDQM
 VygDHAr1NP6Yqr1Lft3k/cfwtAcaZ4PtPKQ9pwwXkEWxji4B0JWMwFpYI3LOEkGB
 Y6dQi0u7QfQFDNp4gFMKvOLTR+v2+IkCII7SyrQ21HHwrXE07vO7HC1dznyoURrG
 fJtG/J5JeCiwKtXA/ySHOL4Z1FsWFyDrjWocWzzPPeF34eNsOFPuEfYarur2Va8b
 /knECGuS5ZeclsGATV5NXksnLKeoFBQbrEXpZS9QPU1uu+NFfbDdMAP7TX1Lh0dG
 V3rzJjbenTStWA==
X-ME-Sender: <xms:4zPiXmskKEeP4nHHtYF6DSoyKMhOdHSoZVBgQjmajmtptwhpV4CCOw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehledggeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:4zPiXre_aQFikMkOfnu5xnsPDUXqecjcxYVCW-TE6fXE7g--bwNhtg>
 <xmx:4zPiXhxjWQKZOzfmNvnPrES6v-F2QU79gNfDWwAi20E8hVGUWguOjA>
 <xmx:4zPiXhPHzTn9qjsw8aQ_JAEEkHlQUKzOMxj6-i5VmKHOfI57Ma2iuA>
 <xmx:4zPiXrOlrqDmv2qmsq-EFYZIcT8wWQOd6pQLcJRvPoK5EfP5QsNgMA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A02A5328023E;
 Thu, 11 Jun 2020 09:37:10 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v4 7/9] drm/vc4: crtc: Move the txp_armed function to the TXP
Date: Thu, 11 Jun 2020 15:36:52 +0200
Message-Id: <12b383e7b8462e281b00c0a21b2b50f13691bead.1591882579.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.c33f5fd8b1b2703081f25398eb879937c9f7ce0b.1591882579.git-series.maxime@cerno.tech>
References: <cover.c33f5fd8b1b2703081f25398eb879937c9f7ce0b.1591882579.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_063844_869277_4DD1B6C8 
X-CRM114-Status: GOOD (  10.66  )
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

The TXP driver is the only place where we need to set the txp_armed flag,
so let's move the function in the TXP driver.

Reviewed-by: Eric Anholt <eric@anholt.net>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c |  7 -------
 drivers/gpu/drm/vc4/vc4_drv.h  |  1 -
 drivers/gpu/drm/vc4/vc4_txp.c  |  9 ++++++++-
 3 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index e30a5036d2e6..82ebdf8da108 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -390,13 +390,6 @@ static void vc4_crtc_atomic_disable(struct drm_crtc *crtc,
 	}
 }
 
-void vc4_crtc_txp_armed(struct drm_crtc_state *state)
-{
-	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(state);
-
-	vc4_state->txp_armed = true;
-}
-
 static void vc4_crtc_atomic_enable(struct drm_crtc *crtc,
 				   struct drm_crtc_state *old_state)
 {
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 1c49c27a564f..fa19160c801f 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -808,7 +808,6 @@ void vc4_crtc_destroy_state(struct drm_crtc *crtc,
 			    struct drm_crtc_state *state);
 void vc4_crtc_reset(struct drm_crtc *crtc);
 void vc4_crtc_handle_vblank(struct vc4_crtc *crtc);
-void vc4_crtc_txp_armed(struct drm_crtc_state *state);
 void vc4_crtc_get_margins(struct drm_crtc_state *state,
 			  unsigned int *right, unsigned int *left,
 			  unsigned int *top, unsigned int *bottom);
diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
index bf720206727f..d9a8ab87ad25 100644
--- a/drivers/gpu/drm/vc4/vc4_txp.c
+++ b/drivers/gpu/drm/vc4/vc4_txp.c
@@ -222,6 +222,13 @@ static const u32 txp_fmts[] = {
 	TXP_FORMAT_BGRA8888,
 };
 
+static void vc4_txp_armed(struct drm_crtc_state *state)
+{
+	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(state);
+
+	vc4_state->txp_armed = true;
+}
+
 static int vc4_txp_connector_atomic_check(struct drm_connector *conn,
 					  struct drm_atomic_state *state)
 {
@@ -256,7 +263,7 @@ static int vc4_txp_connector_atomic_check(struct drm_connector *conn,
 	if (fb->pitches[0] & GENMASK(3, 0))
 		return -EINVAL;
 
-	vc4_crtc_txp_armed(crtc_state);
+	vc4_txp_armed(crtc_state);
 
 	return 0;
 }
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
