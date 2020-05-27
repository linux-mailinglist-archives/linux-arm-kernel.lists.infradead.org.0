Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0161E4A50
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:34:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1q09L9Fi5nm+aUWjJy8iohddQDDszXSNu9JeIcLaRGc=; b=Bm0KJCISOUtaB2
	JeyJKXWgchvyQP0uje8AS0lB9Cw+U9Gc8CiQgb//3QdklorLumRxA4iv5g5NAH3Fkaaoj2IKMhf0k
	nhk8dO+6n32lphYvAoKcismEfSZwrxSxVQEDqyhXd33xuJnPbXm3cVll9aZL9sGs3w9ACyxdD6KDt
	fbK5OKsw9xZ7vUJI1ug7Z9655iVVbXiZageDlaggBELRrbT+Cv+GlaKuXDOYw/ZPJaE0I8WOXfVbg
	HhNZyJy3AW48a0M8cvz9CIu02dLdvplA5oJsZC9u2rFY2TFjDgZBa2CrRCSU2yqxAz3OoqpCyPfbG
	RtAr9/+dsrZP5DgsReKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdz0Q-0002Sz-Lg; Wed, 27 May 2020 16:34:14 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyLV-0001z2-5g; Wed, 27 May 2020 15:51:58 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 03D44582101;
 Wed, 27 May 2020 11:51:56 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:51:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=JDEX6MAtxosDe
 l7oC/fdDO/+J0huIvOIGDcYTweJxI0=; b=x3eRxR4NffTRdfcoyyIj7gXOrg6B1
 jjqqGl37SonoO+MqSMFUESbdSiVX4DioNRBId/l9XNtOpk1mggRxqmCVcWRmV4na
 jbT8+15S/VAaANzakrEcVnuluMc9bvDcw6sgXuf7xkAABWQ7oiL/jgJmrxDkI17t
 cvh5iFfr9t9vcIIFCJJFeTiFKiUqgEG7De2GSt9nlFZnhfQWyoJfoebTQxVbWd0A
 Hne2mRlsCkguZsKRAQ3SjRkktHzWJAMUsPMGXg35BMU0DW0GBRA0vqBp33KpexQn
 R3F8KRDt9lo8EYhACtlHHiHbo+K70gNc0nE0ykfa5YsdcsT0anoH6ebew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=JDEX6MAtxosDel7oC/fdDO/+J0huIvOIGDcYTweJxI0=; b=PYZrrH0V
 T2bzziBFlbEGOaS+ytete6XxyzrDCYH1HtHq49MmEB0cVm7TCaRNG6WFaed8sKBM
 WoNYFmAptJaS5lzWZDBFeNBTOTPTx1vcnTRVBoTWUZashX6G4ME9iJY0v5ueK/ik
 /QF6Cl623a9dtv6qZLSvbhY/bMBT0Y6o2TNex6aSx6sd6I4p9CjapDyRd9fcAw4r
 nu2VKwIuC4NkPDBzm0AhYayqfbVYDHJR9wlD2rI9uCHdWNhmihI+0NvI20FKYQSa
 pmaz9o7JzuAC7SHqWAeqogBN0tdgjSvG8lfYcS2dUtqDtzN+msNUWxy6dWSKMeOS
 Vm3/CjuIsa2Xtg==
X-ME-Sender: <xms:m4zOXin0eoXbTUjy4Wwqjab0bt_hPbnsoNBcIBgwYFVDRyQXx9r0KA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepjeekne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:m4zOXp3neDgaUFj3t6analbmLAOHqioyOT9amYyEkbikdmGVcE-sWA>
 <xmx:m4zOXgoErk0KyxwpJbjY1iYmVku4E4Bw4GIwV_k_k1F92pUeHhCgFQ>
 <xmx:m4zOXmkg1BTpY3ohSGRg5npgje76EhOJfC6fMKYnXbpkAP48x7kzQA>
 <xmx:nIzOXhmTDw5uQksbRQQQpunfPmrweuXj3tP1XHIB2YCTnxkGbCGgew>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 90C75306215A;
 Wed, 27 May 2020 11:51:55 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 101/105] drm/vc4: hdmi: Do the VID_CTL configuration at once
Date: Wed, 27 May 2020 17:49:11 +0200
Message-Id: <733b4ae69521eb4e580efde2dd1cffeba9dcd80b.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085157_358370_6B252EE6 
X-CRM114-Status: UNSURE (   8.91  )
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

The VID_CTL setup is done in several places in the driver even though it's
not really required. Let's simplify it a bit to do the configuration in one
go.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 86ce8d247a00..d889a83a0f56 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -429,10 +429,6 @@ static void vc4_hdmi_set_timings(struct vc4_hdmi *vc4_hdmi,
 
 	HDMI_WRITE(HDMI_VERTB0, vertb_even);
 	HDMI_WRITE(HDMI_VERTB1, vertb);
-
-	HDMI_WRITE(HDMI_VID_CTL,
-		   (vsync_pos ? 0 : VC4_HD_VID_CTL_VSYNC_LOW) |
-		   (hsync_pos ? 0 : VC4_HD_VID_CTL_HSYNC_LOW));
 }
 
 static void vc4_hdmi_recenter_fifo(struct vc4_hdmi *vc4_hdmi)
@@ -521,8 +517,6 @@ static void vc4_hdmi_encoder_pre_crtc_configure(struct drm_encoder *encoder)
 	if (vc4_hdmi->variant->phy_init)
 		vc4_hdmi->variant->phy_init(vc4_hdmi, mode);
 
-	HDMI_WRITE(HDMI_VID_CTL, 0);
-
 	HDMI_WRITE(HDMI_SCHEDULER_CONTROL,
 		   HDMI_READ(HDMI_SCHEDULER_CONTROL) |
 		   VC4_HDMI_SCHEDULER_CONTROL_MANUAL_FORMAT |
@@ -566,8 +560,8 @@ static void vc4_hdmi_encoder_post_crtc_enable(struct drm_encoder *encoder)
 	HDMI_WRITE(HDMI_VID_CTL,
 		   HDMI_READ(HDMI_VID_CTL) |
 		   VC4_HD_VID_CTL_ENABLE |
-		   VC4_HD_VID_CTL_UNDERFLOW_ENABLE |
-		   VC4_HD_VID_CTL_FRAME_COUNTER_RESET);
+		   (vsync_pos ? 0 : VC4_HD_VID_CTL_VSYNC_LOW) |
+		   (hsync_pos ? 0 : VC4_HD_VID_CTL_HSYNC_LOW));
 
 	if (vc4_encoder->hdmi_monitor) {
 		HDMI_WRITE(HDMI_SCHEDULER_CONTROL,
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
