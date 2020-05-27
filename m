Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAE41E4A33
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wLbelHMuRkScr0UZ5BalM65XDNT9T0pXWCNlYmd8684=; b=sMqCdsQ+kNL/y6
	q72fxBa1WUklJd3gWOUF8NeMT4F0DCub+ZylMreizJP7WFx16ir8CYv3MVgVWHNkJo8fZt5MHFeo3
	8p9i1gf5ITOnlftgvdA4fhFU++f0BSAIUYRN/i5RulGNaz5AAkXjvhAp67xoMNH8CQjVo4x9DjWku
	iY7PEaI/xD8SW+ZP++qWoDc42uA7sW2MtAZKs94cIX2kWcMpphN0lj8l2lgaf91qJJ4YzhVi/gfpP
	gSRZ5kvxUMfStHhWu5TM3v/X6yv82NDhuuna6hHGX23cbt2ZhvrTdc34gG4lq6ltuzTgvFDaY7dBi
	1wWtqwYCLLlCR9/oz3NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyxe-0008Fz-6R; Wed, 27 May 2020 16:31:22 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyLE-0001lV-CD; Wed, 27 May 2020 15:51:43 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2498F581505;
 Wed, 27 May 2020 11:51:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:51:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=3+zDc9lTxZ95D
 Zq2DjYcpdZ0XDPW3I9hVIKy3fpBFXE=; b=WiIW7Or2XQ2o69kz13E2uXS0/1aKZ
 N4+fenXfWiJcboN9PbwtV+4xVq6gDux6b8vMVqgscUDRsSY5Ip23g7MYybDQCFy4
 c/qUMO71sKtXUiDfCI/Wf+TragpHZfB6mculEQtHDk0jZmCenoTWyU8JgERD63FV
 7NPCWeNJmH0fQvn5K4K37wOaS9keWNvJq5t99H+pYetWX2zL3ZHOF253W3zCenJM
 daBeKpGJKA/XDnQo04rA2pabB2bhep4tIQgaXF/hPUj9f41UGXLxmOzXPZIYT6rq
 5rurRg1rpcnPm68ZhfmcILIE5fK23e/rXz+oCCV8j97PKdV84A3Mxc17A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=3+zDc9lTxZ95DZq2DjYcpdZ0XDPW3I9hVIKy3fpBFXE=; b=MtF8OMy6
 03/sCddXj1x7uxh7uLyQsfpsiR//FPiUvzvFT7r+ZFz8PQ4gCQKBvb4Sqi6HTZ7C
 Ez4CnIOCKQYzHYPmddg/JkKMpaN5DxIfcy4XN8R2pUWr7yEqQ3UF0hUUqbqqX0fY
 BynbtPlabrTp4JlgMtP+Pa2mEyXvKq98CyGNYYmIjDHj/3zLnQBhb0/URQC7fiQE
 tU9r2pvckAfYYY+HXmQigNJ4H0uU734geT9SqoYg8LWsQ+W4/wj0LQQQC6Vaz0CL
 IYEA6V+XXv+ek2KWhopgF/sK5y15sFTFPj0K468shMWOKFxcfvdvnl/JbqacXQGB
 6jhMMZEkxps0MQ==
X-ME-Sender: <xms:iozOXpMfr7uhRZFGocsWjEvM3Oxc0H9SKwW-1TxTwdnC7yaEVMhkXw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepieejne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:i4zOXr-faB2rga6JTY5H2ZP-CFH9AdguHRYDc5JxKTaHZaZ-pzYjuA>
 <xmx:i4zOXoT2hWKWCvE8s5NtafX8paGkcWVnWRjV8lQ1eDUeUaufDAo8qQ>
 <xmx:i4zOXlv6F006h0xR9YkIsdKQcQweOd5yj5ODrmjdyW8KI4mjw8F_sA>
 <xmx:i4zOXruXxT2DOBjj8timRIR01DHr5LD6dqpvHFzPM8It-DlPtLw1YQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B77A2328005D;
 Wed, 27 May 2020 11:51:38 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 090/105] drm/vc4: hdmi: Rename drm_encoder pointer in
 mode_valid
Date: Wed, 27 May 2020 17:49:00 +0200
Message-Id: <dcd79c893c993715b4bd2bedb664d6a4bd683e01.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085140_691622_BB6901AE 
X-CRM114-Status: GOOD (  10.05  )
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

The mode_valid hook on the encoder uses a pointer to a drm_encoder called
crtc, which is pretty confusing. Let's rename it to encoder to make it
clear what it is.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index f62b488c5bdb..e816e5ab9a51 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -556,7 +556,7 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 }
 
 static enum drm_mode_status
-vc4_hdmi_encoder_mode_valid(struct drm_encoder *crtc,
+vc4_hdmi_encoder_mode_valid(struct drm_encoder *encoder,
 			    const struct drm_display_mode *mode)
 {
 	/*
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
