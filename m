Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6936E1B7ADC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:56:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bDCrCcYTH5k9045OnT3/nTYECp2d5IhdL+0V/fF8MJ4=; b=OqLHrr2Xrb56eJ
	hs8qBWsjT43j+VGxUIv1nSzu/Jn081X1qE/E6ozhH+PW05emBgke+2beuysjd3wAtTdr+lMOEfkHw
	oiGa7z5xv3xm9a5pgyCQCgVMaASt0gEGuIlzoJPxn48a1wU5MtPWUoxWIosnWf/vriPBPt14y0Fif
	uNrQvKNgxGiped8Olmk7PUo7AuwAEF6t8E5un3ez9DjVgpCZPcrusfASO3I7DVrPkiqDFcpN/jqWX
	R4UR3QtoA79+jRBERdgAEkxmMq+XadGE7C5zRG8y67sobks4TGighaXAAmNmCu69nyTVMXV1Mk7zD
	fcj1BRqxGMhE1hiEAq2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0gx-0001XL-RN; Fri, 24 Apr 2020 15:56:39 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Ng-0008QE-B7; Fri, 24 Apr 2020 15:36:46 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 7160B8D8;
 Fri, 24 Apr 2020 11:36:42 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=NfU04ZbWTlRaU
 OfAgYIn+seJnzzhfTfT5EWXdLphHik=; b=CPPbPzjQY+xKqYh8Hb/CNnJ8gY3v1
 1x6mmJTUiTpEZTRj6ZP+amERYWIYR1fBxTtx9QAz3fKVXKgbMoB9kZWonigSPHFo
 Y7a6cyEFpPDT49urQLb+Od0HUaNdfp/xpTxlOIDK3Z469uV6LKZkE4XgveGKljoP
 qtTH4ZZ17qOWREfou7KE5j1BbX9i1dmlyeSUCUDvGDAzpJy0gCQQEseiVrOXSOV+
 hYxD8dmrCzyacia+/pTd/YcC2uhVKyotL1NC3VlhZL5RCDDBDp/Zj+Yl7JUvK8yZ
 6E1SmCKdti1aicqT/4iW7gJY88NIsYbQQO90KAHZ0CuXNMJHXXw+wQATA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=NfU04ZbWTlRaUOfAgYIn+seJnzzhfTfT5EWXdLphHik=; b=kpEUqXiT
 llb5bmmpmqOa5S3fIQFCCwfD7JApwWNfCJkQx+SlMvn9YZww+3nbTrWDg8NxgmKR
 SZ+LuQXPO5+1mUQa95+Q1uCu36XsuUdb2cbXugTkBZCx3CJ5L3/QG5GhNzrtEvgE
 9R2azls6/2NEZVwrlgy9d3V6vqADHgwUh3nDnjtLhuLr0rxYsmiTNPDGnE1a6YXX
 EP7HEmcDmajTSOykEUTLeF2FqX3q4gd510ibVCuxbI/Wqa/TvexRlFJaLJKvoFFd
 cIoVdgyAVcxPbdTvQdikSFb04/eAKmOm/d1t4ah6T1nUVSEfpZhEqQ5hh/R1SKEF
 1FoXFS2kfS5Y9Q==
X-ME-Sender: <xms:iQejXuzeu8-6-WltR7qp8MxJ7h-BJPWdc0_duCLOq_oEVpu2dmKG4A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeehudenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:iQejXh51oAjDtI_PPuj2SuOnj6YB3qABKacueTNpjA9jgSBbFviSZQ>
 <xmx:iQejXrgdzw2vwUdFRqBF3kejkpOBVlkuS0n_KLgig9drpioan-J5tA>
 <xmx:iQejXu1co4-2L6Gro16ZHbFSfF8p_eE2vBp0t3OYyDngwZJSAzgQpA>
 <xmx:igejXvD68BhhqhLpDsHEwanQ5PzgRXqpfKb2AkUwK9QcXBxm9-yOXbAp52A>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B16E03065D93;
 Fri, 24 Apr 2020 11:36:41 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 57/91] drm/vc4: crtc: Remove redundant call to
 drm_crtc_enable_color_mgmt
Date: Fri, 24 Apr 2020 17:34:38 +0200
Message-Id: <66c5257c74f8b625ce2716df135a7778326efab1.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083644_807300_B1C1AA18 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
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

The driver calls the helper to add the color management properties twice,
which is redundant. Remove the first one.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 22c0cd0dfc46..5bd01c16ea45 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -1201,7 +1201,6 @@ static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 				  &vc4_crtc_funcs, NULL);
 	drm_crtc_helper_add(crtc, &vc4_crtc_helper_funcs);
 	drm_mode_crtc_set_gamma_size(crtc, ARRAY_SIZE(vc4_crtc->lut_r));
-	drm_crtc_enable_color_mgmt(crtc, 0, false, crtc->gamma_size);
 
 	/* We support CTM, but only for one CRTC at a time. It's therefore
 	 * implemented as private driver state in vc4_kms, not here.
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
