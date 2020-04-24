Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA591B7AE9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:59:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0EZUhCMlwg0dGXF+/IBRg/QvCdkoApnOtMOrCSbCbOE=; b=Eb43HkaUSnXFBm
	iTYTKzlN9EIhhpy3WOzJaTQ56d9eePBguDd16EJDJAl1zzw0a2CuUWzu1SaVKy6+0cXfDUbuMMBNi
	PAiyFRODERirMdm/lw/yya9kR+vywmpw0gtijXy/j6IyaojtStbHULzRGdbsifFh1FKOO0v2Lw+RA
	+Yo2tqTmjXDZ1B/3jnO2chRxwhfwi2gUesHaH/urNU/HuLt4N0u0VEf707XoGNoSIQZzxpo2NJttX
	BNOVJdwYWGDgQ8i2bmm5x/NBrrPAgFVEV7j8Gfyy5dbAYZU1hg9/Z1H/Xy4XeCFbSCXh8up4KqAAR
	bc/VkUXXcZqCFEvX5fmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0jF-0003Vu-Je; Fri, 24 Apr 2020 15:59:01 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Nu-0000Aw-DH; Fri, 24 Apr 2020 15:37:03 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 80C7A1338;
 Fri, 24 Apr 2020 11:36:56 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=uucV+As7ogGw9
 YUEVrtmYr03Dg9rcZtBL91xE2/BjR8=; b=N1XoLXG9Bndy9PbuUXNFA1pEbGDBw
 Js3gtMW5guD1bXCetxLG5TTazwZ9jdK9dl5wNSarNQxLUsfOHWT/a4HUpr5Kx90K
 oapv2k2k3iBMcchFpU4gNQTlBG1ju1iuDHXG47jaNF5XANRMy3siLd7r00xnApkR
 CFkTyFMgklSytNQYlBTjJTOVy3eN7B+ZwEBJEvDejZ2l8rjsOVmgfUqTaJDgePaD
 3xvCChaUZE6UOCg8PKQvoRubfLaphuf7JkzpKUWcRrQcEzea/y1vNrkVtjBEx9Ps
 2tkitcMxCTtlnzpihzGJhM+W+fH8iSdPrko4+qZ/jh0cVE987sIUnfbeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=uucV+As7ogGw9YUEVrtmYr03Dg9rcZtBL91xE2/BjR8=; b=bnH9dvIP
 NxgjfgdfqZiP8kx5Vl509fzB/S+GKRQkcDnQM26Pl04sN11kAgYXMJDif3UFmayX
 f/8CNqPTc7LAP4vkALmOzerxHJN4A84HG0Y0bljWfQkGFOg6F8pROCKbpefrvVvK
 t5yDCdPBUTGplohHj3m9MH817cDfCL3E/dxvniF+RgPnbKGh89Ihqxq2TzLg30oj
 ccQ28gCHsvmnkiK1wjwyNrsXNK897Z6uOCuBGQx3nW4SEzBK/OQA3xX2/AYpKlPi
 kT6LkAnOx6xGH4HuFNw28tmX1ceYo2oyBWyCcfhZ2XTAQ7TL86nPqYdOxarMV10n
 dzYO7/23b428cw==
X-ME-Sender: <xms:mAejXsAvqIGZPnahZ_anjFiMRYzfie9Bu8KCLzjHiD_N3Mu_6ebJ3g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeehleenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:mAejXjZk9YfWv8nxmXPbEG--NPUGWW4G-isMbsL7hqLfMCJCOUHmkw>
 <xmx:mAejXlfF9RC_aH_JGZrN8W3P4PVWB9dh1pgu0zrzPRqjXWpz7QCrgw>
 <xmx:mAejXlP2wSlP5oWEoyk7aN7oSrgwKn-q2gp26ZDHOf_93rPXAdsS0Q>
 <xmx:mAejXosX9YFMoD8cG91qoMH_Xr9PLDSLr785Z-s22F3mUt_9ZJe2B6iBTxQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id BF72D3065CDA;
 Fri, 24 Apr 2020 11:36:55 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 67/91] drm/vc4: hdmi: Use local vc4_hdmi directly
Date: Fri, 24 Apr 2020 17:34:48 +0200
Message-Id: <40376b3861789147031ff914a0927c05ce6a2101.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083658_674168_BE376C88 
X-CRM114-Status: UNSURE (   7.74  )
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

The function vc4_hdmi_connector_detect access its vc4_hdmi struct by
dereferencing the pointer in the structure vc4_dev. This will cause some
issues when we will have multiple HDMI controllers, so let's just use the
local variable for now instead of dereferencing that pointer all the time,
and we'll fix the local variable later.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 7a98520665e3..9a89541f7d64 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -124,20 +124,20 @@ vc4_hdmi_connector_detect(struct drm_connector *connector, bool force)
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
 	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 
-	if (vc4->hdmi->hpd_gpio) {
-		if (gpio_get_value_cansleep(vc4->hdmi->hpd_gpio) ^
-		    vc4->hdmi->hpd_active_low)
+	if (vc4_hdmi->hpd_gpio) {
+		if (gpio_get_value_cansleep(vc4_hdmi->hpd_gpio) ^
+		    vc4_hdmi->hpd_active_low)
 			return connector_status_connected;
-		cec_phys_addr_invalidate(vc4->hdmi->cec_adap);
+		cec_phys_addr_invalidate(vc4_hdmi->cec_adap);
 		return connector_status_disconnected;
 	}
 
-	if (drm_probe_ddc(vc4->hdmi->ddc))
+	if (drm_probe_ddc(vc4_hdmi->ddc))
 		return connector_status_connected;
 
 	if (HDMI_READ(VC4_HDMI_HOTPLUG) & VC4_HDMI_HOTPLUG_CONNECTED)
 		return connector_status_connected;
-	cec_phys_addr_invalidate(vc4->hdmi->cec_adap);
+	cec_phys_addr_invalidate(vc4_hdmi->cec_adap);
 	return connector_status_disconnected;
 }
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
