Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3661D1E49A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TJ3PsiQENFWAMKbBhNdxjsmAJcKjDQzkknKhBxeukBU=; b=Pduu5qYkKChRxG
	NRGepQJQ8o3GnPo0SJsGl41LziOpyWCQLjvgg9k+wpn7am+h2MPB6X3Y6uUOcgaq2pST6oIgtUYnm
	xrFBAagqpVAdoECkkxqX/qsAtjYoO5lok7BUWo1vWqJL9bthNxg0JLQQREAFEQEZ7fpGaHtzSvXEH
	UZavaJtpr8F82vAri+9r4Q0Bn732JtFlcbuKFbLi91Ti36bWyx0yuL5aM9t2nkJtfiCMzFVe8pe+z
	EidbS/tYVO+IoApH5SAftcvhCW3NeItIIzVS4KPbzf8B180h3B4hF8jvDtJqP/R1j5WydwrvCL/qY
	s3K9WJ9BI4LuXriABL4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyk7-0007Dt-M7; Wed, 27 May 2020 16:17:23 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyKF-0000qd-9J; Wed, 27 May 2020 15:50:41 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 318E05820A4;
 Wed, 27 May 2020 11:50:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=VKidWh/xRLUFk
 +z0aZ3qSdUJ5qwcVhi/4K7wFX4ohRw=; b=Lab361bwp8weaCdvQ1Vw2hzig+xSy
 3dpMfc31fNL5pzV5n/gH2Ys4CN1YiPklGiVtvsws+N/QUKhAjc1jcMYIRGgYydVH
 Rch9j0M4Fsf0JNVLkBFJ7z/utJdFK4DyMyyc5sVq2pMQlVQGdAWEnJKA3fiFhgkl
 si9HBDY06GYAIcgGW4x0JkpA1JyGK+DXWJ1kpOeg44LTYcWqU/DIYZP9v2YuNOvJ
 wjxSPNQK1RBnZcv72YbBb1/HNnMomD4GrpRahMz4d6THgym4+vq5serQWIt7D/ai
 GrNxeONND4SKkD6LXx/1pcMTpSk29lA3DVUmaF+yHDME2Lssrqui+TsvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=VKidWh/xRLUFk+z0aZ3qSdUJ5qwcVhi/4K7wFX4ohRw=; b=K257Z5g/
 CApKwqzjdOKRmulXPeNFjZi8NZjj5biiX7HC/FzdcgFFIpCyvjSFJZJK0c/YFbxM
 rBby5VyUiJD5i/6LHhajeuiZ08zuzSlwkBoi2YX5ZectZU6I7zvrVuMWia7n7pbh
 dFZfsxrSyc7FvmfEQPZ6D2C6bpFx0FX3cWg1gQlyBauUQql8PwzaLxc1p4Kle+68
 SeJer/sBc+KOhO6sEmiOtdW846mjD5Xofm0ko2r4bRyQAkjFtHFi4+ZFUzffoOtW
 fUEUqhjmr0QD27ufqKVwgZmqbMttLY2YzH3eTnvxXP+1Iqsk0SWGuXt5PrClmacz
 oLS840lOc1r7Yg==
X-ME-Sender: <xms:TozOXvVegG84VuxgC_Az_ZtNewWWL32HiKyShXtJf4Mgq_Ayeniywg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeefne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:TozOXnmoyhYaoz41JMzjytFh-QDk_ICckmqqJybj08wzoniY2vL_ig>
 <xmx:TozOXrbJkvyvuI8AoSrdV2I2yuyyUvU_R5oRvlHCT08rYUEgrxAYsA>
 <xmx:TozOXqXSZHjK9QOUpFxIpXXHZEn-oPs43I0cxkI7nshcBL8KJHiT2A>
 <xmx:TozOXvVCAwjVHFUvJOH10CsI5G-8945LCchadQmgNrQqBjPXnbjcKQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C73F030618B7;
 Wed, 27 May 2020 11:50:37 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 051/105] drm/vc4: crtc: Add a delay after disabling the
 PixelValve output
Date: Wed, 27 May 2020 17:48:21 +0200
Message-Id: <5935e1b778ec330216a0143646746f9d3b18bfd9.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085039_479620_7F58DC29 
X-CRM114-Status: UNSURE (   8.43  )
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

In order to avoid pixels getting stuck in the (unflushable) FIFO between
the HVS and the PV, we need to add some delay after disabling the PV output
and before disabling the HDMI controller. 20ms seems to be good enough so
let's use that.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index b3721bce7c81..dee8dc7b9409 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -401,6 +401,8 @@ static void vc4_crtc_atomic_disable(struct drm_crtc *crtc,
 	ret = wait_for(!(CRTC_READ(PV_V_CONTROL) & PV_VCONTROL_VIDEN), 1);
 	WARN_ONCE(ret, "Timeout waiting for !PV_VCONTROL_VIDEN\n");
 
+	mdelay(20);
+
 	if (vc4_encoder->post_crtc_disable)
 		vc4_encoder->post_crtc_disable(encoder);
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
