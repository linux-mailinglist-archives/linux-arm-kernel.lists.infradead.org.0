Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CDA1E4933
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:04:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zoIelbmJ1zgPQ1tX/eeE/9XO2BDTyB0lyH3Tf9hg5w4=; b=piL4Q5EPDGU/B7
	F8XAx74y6vVeNndeqCa6I/w7x/8jpbj1hUCORYzS8xLi2v/Ukv/FkILCXdP/n+b3lvVFUAffKokoq
	y7qiIVzWnnePMCGe+0g2GHEgN7Tu3OirQ5qoeuYhCmWWfOILSgtUygAe5EzizA9wmSdbD8aasvMAm
	afMFN0Btw7h5hLWRs4DcN3hJ5XQugI0TasgWCBzheUa90ntAzr7Ggrci5w25F7eCY6yJ9ysulbplh
	rUmFzZ+aIhqsSipXdclO99GlY5TjcFM6tyIUnpmYCLI2+V/3/fCfut8GDHziPHV6rE0Y/xEiHtJDS
	yDmxwyuJoymmrk1ZxYtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyXq-0007Dw-B8; Wed, 27 May 2020 16:04:42 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJJ-0006CN-4M; Wed, 27 May 2020 15:49:50 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 85757582018;
 Wed, 27 May 2020 11:49:40 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:49:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=XORez4C02a/ZY
 ymkxmrQKFXwT1S3DwIs6qaJy6E64lg=; b=Hr41QUceBxKy+LkabHwK9nwQ14tW0
 1kxMoalxGe7+v3rNvpL7EUJAMXv4kS7vyyoDGzocDuWujaZm/oo2pg8BZMCNL+4h
 sbRvmGjYQH839A95zKGVqox737XJfgfkNuEctyxBEFvuIDw43ieWTAhtpadU0Rnj
 cyp8+ly41a9xiYaE/Bwsn1uAW1Shh5CuBhXQHLkoigGle83kYZkWETLFsGwKZFcK
 tQ8Osk9GCl5ZerZQgNaqzsvNtE9yTW+l09ChBE5oo43JU/eeSXYw7vzqho1MDfXK
 +28ksDHKGhERyjskWh9XtmZQ1K1k6srKIEgA3JyxslIeMYksM+ilW9CoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=XORez4C02a/ZYymkxmrQKFXwT1S3DwIs6qaJy6E64lg=; b=jyJY+6YG
 aamvxDXrlfInqYi6RKao9rrASWkZqo8QNaOV0/HJf1GDxmWg9BYDve36PQPaS+Ii
 kCqauQ6D3jbljbzZPkuCbMAGpl14yQbvzfJM7qH8w5EdDkY/rixIGAfdeZxC0BrS
 YrsJ8cRQjXL26tWI/5C+z+3UaxSYkEbUN+9LscGFxtaTjJmnWGBYE1vgUO0+ixw8
 0ADrxp9UI2Wc88k8eYjDHIt4tGFxXb9EB4S9eEGClHxii8vgyjy+TovnySsVU2m3
 jmZm3E/g+9DmA+B99GwV/2Nm9JZzEsA/6soPRFJvMJZhdpq9hR2GCIrGlVsIhIrV
 /L34r5NSjkfzUA==
X-ME-Sender: <xms:FIzOXntBoInmfxySUtOOqvavS9S-IpHe5v_qKncEooJSnGBls3gabA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeehne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:FIzOXod_auMYYm27WILMpAWgPASu4us44rnRz8MbMl_DudeyMtgvQA>
 <xmx:FIzOXqzuvxza-NPQ9YcTsTNqwLL3Q_LvRE-v1dm7M7VjpxbhZINotg>
 <xmx:FIzOXmOTmiFKbTIoc_Ntn4m-ICDKNXgdLZhiPTRMBgTiDstwQc_xOg>
 <xmx:FIzOXoP5nu7WPLVDPmQ9kxLHTzgi1NacEueAMSLEA4cxD13LG0hn-A>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 26D213061CB6;
 Wed, 27 May 2020 11:49:40 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 015/105] drm/vc4: hvs: Boost the core clock during modeset
Date: Wed, 27 May 2020 17:47:45 +0200
Message-Id: <1aaadf9a5176591c891622cb00b0c50f42e569dc.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084941_315072_3C798599 
X-CRM114-Status: UNSURE (   9.48  )
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

In order to prevent timeouts and stalls in the pipeline, the core clock
needs to be maxed at 500MHz during a modeset on the BCM2711.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.h |  2 ++
 drivers/gpu/drm/vc4/vc4_hvs.c |  9 +++++++++
 drivers/gpu/drm/vc4/vc4_kms.c |  7 +++++++
 3 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 1e226454c9a6..9b57ea2ba93f 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -323,6 +323,8 @@ struct vc4_hvs {
 	void __iomem *regs;
 	u32 __iomem *dlist;
 
+	struct clk *core_clk;
+
 	/* Memory manager for CRTCs to allocate space in the display
 	 * list.  Units are dwords.
 	 */
diff --git a/drivers/gpu/drm/vc4/vc4_hvs.c b/drivers/gpu/drm/vc4/vc4_hvs.c
index 0fe4758de03a..f4942667355b 100644
--- a/drivers/gpu/drm/vc4/vc4_hvs.c
+++ b/drivers/gpu/drm/vc4/vc4_hvs.c
@@ -19,6 +19,7 @@
  * each CRTC.
  */
 
+#include <linux/clk.h>
 #include <linux/component.h>
 #include <linux/platform_device.h>
 
@@ -241,6 +242,14 @@ static int vc4_hvs_bind(struct device *dev, struct device *master, void *data)
 	hvs->regset.regs = hvs_regs;
 	hvs->regset.nregs = ARRAY_SIZE(hvs_regs);
 
+	if (hvs->hvs5) {
+		hvs->core_clk = devm_clk_get(&pdev->dev, NULL);
+		if (IS_ERR(hvs->core_clk)) {
+			dev_err(&pdev->dev, "Couldn't get core clock\n");
+			return PTR_ERR(hvs->core_clk);
+		}
+	}
+
 	if (!hvs->hvs5)
 		hvs->dlist = hvs->regs + SCALER_DLIST_START;
 	else
diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
index 9417e45d981f..29b75b60d858 100644
--- a/drivers/gpu/drm/vc4/vc4_kms.c
+++ b/drivers/gpu/drm/vc4/vc4_kms.c
@@ -11,6 +11,8 @@
  * crtc, HDMI encoder).
  */
 
+#include <linux/clk.h>
+
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
@@ -149,6 +151,7 @@ vc4_atomic_complete_commit(struct drm_atomic_state *state)
 {
 	struct drm_device *dev = state->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
+	struct vc4_hvs *hvs = vc4->hvs;
 	struct vc4_crtc *vc4_crtc;
 	int i;
 
@@ -160,6 +163,8 @@ vc4_atomic_complete_commit(struct drm_atomic_state *state)
 		vc4_hvs_mask_underrun(dev, vc4_crtc->channel);
 	}
 
+	clk_set_rate(hvs->core_clk, 500000000);
+
 	drm_atomic_helper_wait_for_fences(dev, state, false);
 
 	drm_atomic_helper_wait_for_dependencies(state);
@@ -182,6 +187,8 @@ vc4_atomic_complete_commit(struct drm_atomic_state *state)
 
 	drm_atomic_helper_commit_cleanup_done(state);
 
+	clk_set_rate(hvs->core_clk, 200000000);
+
 	drm_atomic_state_put(state);
 
 	up(&vc4->async_modeset);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
