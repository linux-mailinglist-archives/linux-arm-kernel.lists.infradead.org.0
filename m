Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D430F16A255
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:31:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/722jvDg7uQtacO/Qokg/AO1jK0Xs9P2UhTq+8xnN0Y=; b=AiCS7keyiV1Ev0
	hyNstm82DwaYwAd/ix+Q0DzrsYnwjoB8gkVNzYi397DgmfMNKhxbeo7FKuNT/xJj1oeWSJu4qQ7FN
	oTfocYi30+9D858pigCqazh2fwxgp7TgwkeIv4a/Ks5IPKUgq2xttBqNhocI4OXgxyzL3yJO47CFR
	hdfmzEUqyc2YjCs5s1w9xwJ8t4GLVVK8DcOFQEvjBEZbRxB7fkt5ugT4sxxU9WQXh3ctON5xRYH/8
	llzHd7UWRRvsbKAFs0i+tbg1wKDIOil7dEOloRbIRt97f7BhtbXWVnAxHf1L2EJccKRDAtjAIU47P
	dgR7HK2MSZCaDJAbCGwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6A5K-00081y-FR; Mon, 24 Feb 2020 09:31:30 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69ki-0002cZ-3B; Mon, 24 Feb 2020 09:10:14 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 3A54C63D;
 Mon, 24 Feb 2020 04:10:09 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=ZtAyc22Qh+7fe
 I99EvhdXdqmDRkKwoe6XlTATcY7g/o=; b=y/H4KcsooNRcnF5dlYeOo1adfOydi
 rh0bwK+josehPn7ebG1k+2G5WTVK0nLc23+nZHdgp5fRcU4Lok6HF3llGL9iMhe+
 aGbu3B1CTr6pmUSpb6KLR4/KlRi9Y+ZoAQd74cF0Kh/EHQcGtHARWbNyyykpWIgZ
 09I9g3UljLBXR65qL29AUZfgxret8ETHAe+9tjRDQXW2ZTwvZy4cwKGy0k68h7+s
 2QY/daQmksoPGmifYWAwgCgjlAHgOT8PRdzEl1jd/vA06sveLDunNrcwJiaakdhk
 ZpcysJaJSkdr34w8HSeXabkcpSM9n3dQCZNtAgZMG9Wmp2UF31kPWhtwg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=ZtAyc22Qh+7feI99EvhdXdqmDRkKwoe6XlTATcY7g/o=; b=kQmw8tc7
 iWGG/r85ESIM71uX5o6/ZYj5z440vhXrhkaPdyMAu1qbXp11ny47KbZSoySMNClR
 WDB/onzDawq5gvp+zj+Jr3LBHNTEovGB3jIAwJM+Z/Xw7l8oN3hLofuhYmZIzPsj
 j17+trS6F8XsZlQZLUJGtDd3Ejco5qvc3r3EHk5Bwdhvy6LAITNHsgJ1cRQf8JmI
 FZD9trpoOVnHYQ+EaLPOWqyk2PpQIGZkUC773oWswSSB9G+FY4CgSpkmyxhIqzt8
 2M9dd9y/0J/udRHvu3cyKIN6Tw8d0LdyM+4iecMNg2Ct+qr7PLyFmfV3RDDxyLsu
 tamIm8dgE1AGhQ==
X-ME-Sender: <xms:8JJTXibGeYttQ4m5vyoMhe5CCyppODTaS2ckHcmhe0c5DOmROSFtWg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepgeeknecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:8JJTXuO-p3QQdIbDsigbiIHerg8GFY174XQCVITBX9Hj7BCntGoSSw>
 <xmx:8JJTXjSBmceG2HEdw7XV62TfsK941wK7ihD7MvewRrZpHygcPZ1yJg>
 <xmx:8JJTXrQw7QuBP8KJtDY_eYPzZBDMSR4e2ekPlc2n-B0zRDU7Yhi2mA>
 <xmx:8JJTXitThrGOVQb3Q5LVxWYxpJQ-MbH94mKrxp_JgpQkysdyDnoLnlwk9nw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7C22A30610DB;
 Mon, 24 Feb 2020 04:10:08 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 55/89] drm/vc4: crtc: Rename HDMI encoder type to HDMI0
Date: Mon, 24 Feb 2020 10:06:57 +0100
Message-Id: <67ac540760a9025410aeb6ec9bfe7646aaea8207.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011012_561665_5E4B4EA9 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The previous generations were only supporting a single HDMI controller, but
that's about to change, so put an index as well to differentiate between
the two controllers.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 2 +-
 drivers/gpu/drm/vc4/vc4_drv.h  | 2 +-
 drivers/gpu/drm/vc4/vc4_hdmi.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 1dd0a9fb1c02..34e914b3c686 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -1109,7 +1109,7 @@ static const struct vc4_crtc_data bcm2835_pv2_data = {
 	.fifo_depth = 64,
 	.pixels_per_clock = 1,
 	.encoder_types = {
-		[PV_CONTROL_CLK_SELECT_DPI_SMI_HDMI] = VC4_ENCODER_TYPE_HDMI,
+		[PV_CONTROL_CLK_SELECT_DPI_SMI_HDMI] = VC4_ENCODER_TYPE_HDMI0,
 		[PV_CONTROL_CLK_SELECT_VEC] = VC4_ENCODER_TYPE_VEC,
 	},
 };
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 967d57d0ab08..c262c7a388a4 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -427,7 +427,7 @@ to_vc4_plane_state(struct drm_plane_state *state)
 
 enum vc4_encoder_type {
 	VC4_ENCODER_TYPE_NONE,
-	VC4_ENCODER_TYPE_HDMI,
+	VC4_ENCODER_TYPE_HDMI0,
 	VC4_ENCODER_TYPE_VEC,
 	VC4_ENCODER_TYPE_DSI0,
 	VC4_ENCODER_TYPE_DSI1,
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index cea18dc15f77..0c3cfa552239 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -1305,7 +1305,7 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 					GFP_KERNEL);
 	if (!vc4_hdmi_encoder)
 		return -ENOMEM;
-	vc4_hdmi_encoder->base.type = VC4_ENCODER_TYPE_HDMI;
+	vc4_hdmi_encoder->base.type = VC4_ENCODER_TYPE_HDMI0;
 	hdmi->encoder = &vc4_hdmi_encoder->base.base;
 
 	hdmi->pdev = pdev;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
