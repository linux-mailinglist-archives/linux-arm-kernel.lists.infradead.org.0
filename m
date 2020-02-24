Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2782816A25F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:33:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RrrlqQGu4fmc+H1DggGhtG9U3/j+qj80k7OWm+VKikM=; b=NgEETFbZOtgqWb
	pGGe+A7dkL+uNQqU4dmjLvncJ7n+O6ux3+LjoMTMKpZdSDYtluCM8Fp9110m9sewswS2W4pT6KEhd
	ULne/euQdb7Ntl+rdUGnZsXmleSJXdIed5u0Fvb3OluRD/j8h/LzGbJyikGIf6fkgkZ8XsERTQbAy
	r5vaiVGSTWc7rsZAnFQZg46xqdlcNTRfP61ZFakLvYmdTyhZjjV24Prj8hFXxoNaO04zqsvOZaZk2
	DMmlyKeMovFm0l8XtCd2+eBu9/l5vsE4NozHmQAPdvXXN3DTFiYjMVXa+tnYz3xiPVEC+po2XkM4K
	rJLAyk9NCtnzYYOfREog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6A6w-0001NS-0c; Mon, 24 Feb 2020 09:33:10 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69ky-0003dm-5H; Mon, 24 Feb 2020 09:10:30 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 7871260C;
 Mon, 24 Feb 2020 04:10:26 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=xdEmxI5f8XbEy
 pSv28nRJoKuW6VrPNbVXtzW3i8T0t4=; b=jgYzdUzdeiYMgcppca/xTPSXnLj0Y
 uYONTG/K6idY2MXAcOL9RI4bI3ENhbdsUtgD+qt3BgQ4AUJwRcX1I2RvKinx66K3
 jg+O79cCFJdZIe3IfCg+sf0O/1JY9fnnc2aKM8ChgYyuZ/shNhglYEkLZ8Y3TK89
 1IMoHNOC0M4WzL6tINwJwiQRCkXQpA+CACbVEa7uu8YsrDb2hJK59THRMqFIdOdh
 G6OgkMP4LCG3kWNo0pXNkZbuwcZlbFq6eFOTrzaOEjN/MDSAOUxH48Sv9yF5pW7t
 IUAyjxeunq7kqJG34BQuKXCPaZuQPWYoW6LGcCCUvtW1Kpl+4AuyWuSjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=xdEmxI5f8XbEypSv28nRJoKuW6VrPNbVXtzW3i8T0t4=; b=DcbMLhiC
 jnrJ5hGNMgEbdWMXYfuNRVl7dbJUM1K5FndqKjj9rb8SWdKvO7VjTTxkxPdWvU/t
 rkMgfgdbFs0DMEkdpqSlLVvicGWz7Evki72J7FGkWQTiI67NZucketQYgztm4kBO
 KCtfBjNulLjKCBYajEVCa+zs0hOSMAJ1O+6Vs0CbmxhMd0LnNChWTBFJ7rqC1b7c
 EKuCGK9Z9KRMdIwiQrJdl6ucaWliJAM/z7NyZQgsn8wcv4Kn3iuDrs/+WF830Hf4
 4RRYDwRBvx6R79C/aryhFSdYNd7mn9uSVOlsz0JmWhRVQjVr8evu5e4UEVzeRjdz
 BqTMGqA0xmNleA==
X-ME-Sender: <xms:ApNTXgDoJkgD-ThqDtdfXtWnPVo2Wdx68MXI4q61sMG8uKPUdV7Cew>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepjeenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:ApNTXlzQfsFml0FmfAqHOT44sEVXUlW2x9ipoTwe_RQHelM0o6sw9A>
 <xmx:ApNTXtDiyxeoW68FsnByY9H239og-sCDdcF1lPkcZzFbM9rsuhRrqg>
 <xmx:ApNTXibutzEbapNaSTexxrg6E4gabipQIvGS4Vsx-tBECsb9_ML0ug>
 <xmx:ApNTXmKJBUz64ClDzAEskkDZEzYe3IGw1Ru8VqW3bNUwquyrlONoO3lqQYk>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id BB8ED3060D1A;
 Mon, 24 Feb 2020 04:10:25 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 67/89] drm/vc4: hdmi: Use local vc4_hdmi directly
Date: Mon, 24 Feb 2020 10:07:09 +0100
Message-Id: <a48b4c6f7e56de1a7fce53661261ad487c2e86d7.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011028_356337_5D19D4D1 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
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
index ec3062c4469f..8b563bdd451d 100644
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
