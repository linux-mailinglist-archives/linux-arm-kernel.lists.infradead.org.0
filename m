Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D641E4946
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PuE0I/WiriL14bcdm4GntbbrJdh1RS++4ea0VZlvGi0=; b=sdpbCiflrVs6z7
	FJbUjBYu2+YzpVwb2nV/PDcKcQ8JwF+WIYdAUt1+0L7c8+P+o+jPKj0Eri3HDkeV3LqY/2wcWWWSk
	MaiVfuf2yTExu9E8MMWyOJTFyxs9JCaWraeIEH6ZpKZeW/2FZZSObnWwmUIjFS+bWiJeynPXHEJXl
	QK3MhEQaWVMjBlOfx6Gd2Jw1S/XfCZ2ByEjGoD+KWgKOsAnfmIhjeEcrhSZLW/nrq94ZWVHtIoci6
	tVxqKCVsob40twcfqlFMoDl4QUvB9tzqo6csTA3Fm5E+XOSoPA7UOVgkdbx+lVMoTYIglfYsg1fzj
	xvIXbcOvtDsb0IHqYBZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyaC-0002c2-MH; Wed, 27 May 2020 16:07:08 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJS-0006K7-Pl; Wed, 27 May 2020 15:49:54 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C3B9A582034;
 Wed, 27 May 2020 11:49:49 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:49:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=fse909+Uy/SxW
 fg4vh9c6yKXmMtSynUFNN2rQ9mVfiM=; b=CKnAQTj4qF9YmRrmG1WEUm3QBlGmN
 +Z8rAt4fKlNZvAY2Eb+XikZjeCsWRL6RJP/EZtPIvEdPcY0D5RVMjyTxaHGH0aBU
 W5Pfmd35yAayjvkBS62zPpb/usriE4khPkxh9oSA2UPfXxTGaoeGOEhkgJgLyckQ
 rB+mXcLNXZQt+48xIiEAMM/s57iA7jJaLCo+LV8ilOr18tMPd3uLnwUyoudRjkSv
 nbLnkt9peQi8fOK/yuAJFWRYpkdxBaStJEBCqU5YdBlYDkMS+G/cM/VKXQW3tc78
 gMPYitDhLkyMhUH4MacOwqjP6N9ucPsdcX1LyrxU4jxyYkqi7hMaljNyw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=fse909+Uy/SxWfg4vh9c6yKXmMtSynUFNN2rQ9mVfiM=; b=WVS1ZcNo
 FqGEz8XqMA0IYpsSErp7m51LvvR0lGObJ+dUsbdXH6eQU35Y56w5qYrzFBtRhOsl
 2hzgk2EWUcvbGHPiu3utHZQ5zgZlFU27yfeJEVAt0PguyjAmNpReL4rlHdefo/X+
 j732M4b7CbOxrSN9YsngEYwNhjlj+JP32FncSBJeiydEdLwgjCG+moaCIChdWPJn
 jTPDYlMOF4Jnqn1/gLAN9ehLRyuPvupVYaPeMIRNwHRgnuF6uGrSyMR4tesjnFDr
 fS98le+8/daRG2aEu2OqrnHH7qG9BNJHCxqcR6Wk9L34wrcRtsgImA9WqXwoGrPH
 hnHQ5jM7s9K6/w==
X-ME-Sender: <xms:HYzOXmPOhVtbZq6umOLH4FtKV5U4Tj_CosAY3igUXG-WM129k0e4GA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:HYzOXk_un5RM9e-lK-qGZ68t6hcTojeALMY8u1Fah22J90mV8JyAAg>
 <xmx:HYzOXtTJZyLPprvipXGYkG8Tu3vxZ1iby2tBW4q5zAy3MXjngKsOAw>
 <xmx:HYzOXmvT2BHsdkWVaXc0DZ1cmgywxTOJhSXevJj1XYYwO3elv7YLhA>
 <xmx:HYzOXkuqrYplodrUNRB_wbrLkHS7Qd6S4WZStS_tro5ibw_HrziP5A>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 605A63061CCB;
 Wed, 27 May 2020 11:49:49 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 021/105] drm/vc4: plane: Create more planes
Date: Wed, 27 May 2020 17:47:51 +0200
Message-Id: <6b4586842314b8c101758fdda6555d4353b7789b.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084952_807478_9DA067DE 
X-CRM114-Status: UNSURE (   9.05  )
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

Let's now create more planes that can be affected to all the CRTCs.

vc4 has 3 CRTCs, 1 primary and 1 cursor each, and was having 24 (8
planes per CRTC) overlays.

However, vc5 has 5 CRTCs, so keeping the same logic would put us at 50
planes which is well above the 32 planes limit imposed by DRM.

Using 16 seems like a good tradeoff between staying under 32 and yet
providing enough planes.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_plane.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_plane.c b/drivers/gpu/drm/vc4/vc4_plane.c
index 5335123ae2a0..c190ccc42c51 100644
--- a/drivers/gpu/drm/vc4/vc4_plane.c
+++ b/drivers/gpu/drm/vc4/vc4_plane.c
@@ -1387,7 +1387,7 @@ int vc4_plane_create_additional_planes(struct drm_device *drm)
 	 * modest number of planes to expose, that should hopefully
 	 * still cover any sane usecase.
 	 */
-	for (i = 0; i < 8; i++) {
+	for (i = 0; i < 16; i++) {
 		struct drm_plane *plane =
 			vc4_plane_init(drm, DRM_PLANE_TYPE_OVERLAY);
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
