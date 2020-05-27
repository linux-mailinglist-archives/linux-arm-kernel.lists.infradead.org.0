Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1A11E49AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbFDrnpXXxoADoAzaW7Hgxtrj7Uy5/jfDlhN9b/ia+Q=; b=B2f/2lP1yi4a6L
	sUeD2PMMOUChTtBX1DJKEIjdoyTM11t8AJRjWUrIXdMhmJJZC4HR40hvJcppK9cVktL0bQ7ArFVI1
	kTpM7ur2yrIyUuUnbxIoi4xgRMNZvoceCRfcfpMh0pe1RLiM/GbYhUtY0J1jbvcoIoeEvTIhAFdCd
	MyBmQQnhJY24W65Rauz289/m50FbGa6aYqS/6OgNso8vT9e32CXLuIHq+gNGncpjIZykDa1fNmrS9
	74y2Mtljy0FIqfm9ZCwjdyexVFY/Cr2IEzGN/iCmT0AVlAQUvnD+Qkt06GufQwncLDhk+2kR5P96F
	9sZwWpxDac1gFeEVKO5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdykp-0007pE-SR; Wed, 27 May 2020 16:18:07 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyKM-0000wb-AI; Wed, 27 May 2020 15:50:48 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 52C805820B7;
 Wed, 27 May 2020 11:50:45 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=ZyCl4iy/AfxZI
 XSOog2Fc/TgXjHAJO3V3x2olSe7lsU=; b=t3rscJZBw4Hi+ELfuZ8cnRpKqc+p+
 OWYJlhRWhd/CHxEPKh/+gQAULBv9Dd3/Sm+T3tcsgXT5pB51n29/QoZ0zc7/CThl
 K5ebD9cDhM5RPqeVWkBAtLEjiXECBrH7L4Hobqz2pmgZByG02oN6zR1tpg3hchwB
 ToKCymcN6rbz9yYk2mQJ4IMmqlMD+0+7py94DT5wcP/z6Pwt1RDR5dr1cuWEKzJM
 3MAX+u7vdGojSJF460S+Zs+oI649HBA6bW+HvbZXptE74wmgly6Qtjj1/Cg5GeuV
 vKZmC7SEvKtHGKgrwn7TDhjFY+nmGzb8hVmkUv/y979/HrHIV9MZHHORw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=ZyCl4iy/AfxZIXSOog2Fc/TgXjHAJO3V3x2olSe7lsU=; b=WgP10HlS
 QJ/MouSez0dPxjYEvDXKEXDCi3MwejCejkFkF0IhrN6M80RLipW0+nGPxTEHwVrP
 UGYIZfNezV4GzjXlFaaXt3pcgdy/fEQ3e97OOb5CTI+HRu6HFm5G/lcKGjlO4P64
 JZFHIin+HwYS2kc+Vs1ZULvGjkbNztZHrggZY05NravGOFwt2+iPXHXMhfi4vDVL
 oQheyMxXx3etFFspzvuJEu5ne+DZYx+kWL/xf52E9nSZmd7U797QV6U3dutRLAPf
 7MdmFmZ468dJHbF3u13p5z3HjM8P1GyNAR5SFh64nBaFJywd+6ts7hll1UAv0Mmb
 snc1yq+qrKoTPg==
X-ME-Sender: <xms:VYzOXpTjbxGmyiPZPo9E-uUbGozYZ4fYxzyyz8BPGQGSR75G6rGjdQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeeine
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:VYzOXiz6gF9y-xpMSp7vY27JPatx4WI1_NDtN2TIa97XHyKNKtgRWQ>
 <xmx:VYzOXu1knkq7JrMlTQPezlmC1PPpKuJ_6VM5OeJrjJ3zHeACjTbOAQ>
 <xmx:VYzOXhBTfelK_d_hVWUisDA-XZTd_wFDVYh5sXsrgohnm3gNTCTFDg>
 <xmx:VYzOXmhnDRCluHNwrNfNoH_BJ5KRI4DYceXup1CumSIaQYDlSqG3fQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E9F5F3061CCB;
 Wed, 27 May 2020 11:50:44 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 055/105] drm/vc4: hvs: Introduce a function to get the
 assigned FIFO
Date: Wed, 27 May 2020 17:48:25 +0200
Message-Id: <f1b1737fe0665e7191c3d2a3cd9bfafb831866be.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085046_502793_47144393 
X-CRM114-Status: GOOD (  10.68  )
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

At boot time, if we detect that a pixelvalve has been enabled, we need to
be able to retrieve the HVS channel it has been assigned to so that we can
disable that channel too. Let's create that function that returns the FIFO
or an error from a given output.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.h |  1 +-
 drivers/gpu/drm/vc4/vc4_hvs.c | 51 ++++++++++++++++++++++++++++++++++++-
 2 files changed, 52 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index d51b695732e0..99001f8783aa 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -880,6 +880,7 @@ void vc4_irq_reset(struct drm_device *dev);
 /* vc4_hvs.c */
 extern struct platform_driver vc4_hvs_driver;
 void vc4_hvs_stop_channel(struct drm_device *dev, unsigned int output);
+int vc4_hvs_get_fifo_from_output(struct drm_device *dev, unsigned int output);
 int vc4_hvs_atomic_check(struct drm_crtc *crtc, struct drm_crtc_state *state);
 void vc4_hvs_atomic_enable(struct drm_crtc *crtc, struct drm_crtc_state *old_state);
 void vc4_hvs_atomic_disable(struct drm_crtc *crtc, struct drm_crtc_state *old_state);
diff --git a/drivers/gpu/drm/vc4/vc4_hvs.c b/drivers/gpu/drm/vc4/vc4_hvs.c
index 1785c49534cf..56657959778f 100644
--- a/drivers/gpu/drm/vc4/vc4_hvs.c
+++ b/drivers/gpu/drm/vc4/vc4_hvs.c
@@ -19,6 +19,7 @@
  * each CRTC.
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/component.h>
 #include <linux/platform_device.h>
@@ -196,6 +197,56 @@ static void vc4_hvs_update_gamma_lut(struct drm_crtc *crtc)
 	vc4_hvs_lut_load(crtc);
 }
 
+int vc4_hvs_get_fifo_from_output(struct drm_device *dev, unsigned int output)
+{
+	struct vc4_dev *vc4 = to_vc4_dev(dev);
+	u32 reg;
+	int ret;
+
+	switch (output) {
+	case 0:
+		return 0;
+
+	case 1:
+		return 1;
+
+	case 2:
+		reg = HVS_READ(SCALER_DISPECTRL);
+		ret = FIELD_GET(SCALER_DISPECTRL_DSP2_MUX_MASK, reg);
+		if (ret == 0)
+			return 2;
+
+		return 0;
+
+	case 3:
+		reg = HVS_READ(SCALER_DISPCTRL);
+		ret = FIELD_GET(SCALER_DISPCTRL_DSP3_MUX_MASK, reg);
+		if (ret == 3)
+			return -EPIPE;
+
+		return ret;
+
+	case 4:
+		reg = HVS_READ(SCALER_DISPEOLN);
+		ret = FIELD_GET(SCALER_DISPEOLN_DSP4_MUX_MASK, reg);
+		if (ret == 3)
+			return -EPIPE;
+
+		return ret;
+
+	case 5:
+		reg = HVS_READ(SCALER_DISPDITHER);
+		ret = FIELD_GET(SCALER_DISPDITHER_DSP5_MUX_MASK, reg);
+		if (ret == 3)
+			return -EPIPE;
+
+		return ret;
+
+	default:
+		return -EPIPE;
+	}
+}
+
 static int vc4_hvs_init_channel(struct vc4_dev *vc4, struct drm_crtc *crtc,
 				struct drm_display_mode *mode, bool oneshot)
 {
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
