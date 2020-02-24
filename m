Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2137716A219
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:24:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9vr6PyDWKeHQNB/Fzs7EORyAlpjVvlWygv55ttsl7EA=; b=S4IGdDLW5vQCzb
	epghZXMSA2PbYox4lhzglsMvXNRU36hAkeLtx0vI44T19sTDNhF+9lr/+1pNeIvNlGEdMXdnEItv1
	/uPFcWipGheKrrhIufNXcqeqZB10n/FYWr8cK3Hc0ngpmAfXbYKwT1yLmzVC1p2VUAtMt4N7K+/YU
	AZbFUjdG0yoVR4izuxYw5/zFJNcD29YoqWzSKCMoGzjIV3tDwNac75GNFV87JLgzHq5qpNau6cxxi
	aVR7BDwKjQdshETNaZKE9S1pnBniNWSllkdco8AioBk/2YpmhJjOO3rLKek/IJMLrIKfKVfvTe/uy
	Zdl3imE15far4NqrusgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69yd-0007qy-Uw; Mon, 24 Feb 2020 09:24:35 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kX-000236-CO; Mon, 24 Feb 2020 09:10:05 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id F19D7611;
 Mon, 24 Feb 2020 04:09:58 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=pVBdHYzoEytbH
 Osb+ROaBrrAL8taGqRvbB9q3A5cw6w=; b=BnWnNR/rVPMtNEsG0BMMxGlVnqoSD
 LBZZ2WkoW6lQUAzGE8Nwr33xcA/+OCqfEE2RynmasFXpjc09S1T/mV26eZ/eM6HB
 KRiZYe+Da9pIqsT6JVD4AhSO7k/qx+poPIcN9nLUDDsVn6TpY2Qp5Furva1sGTU4
 HNhaXpQ3elJ3JtdBBRV1QBqwfl8LJuHmBRsSnk18+r45MwLhoDk70yHWa0VzbRoS
 QBAPC+hj+KqehcYiSZLCYyxmsT8AlvvoBN+q8lqttrZbKyqeBNkqoOjW4t6CeTjT
 0d94Ukee7030M4mip+XuwCfk+SEJrfljfMHJvLwJbuMU+z6zp8eXv05zA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=pVBdHYzoEytbHOsb+ROaBrrAL8taGqRvbB9q3A5cw6w=; b=BjNBRMzZ
 ExJZLLPnvT/8mCgGtC4AXHcB8/PC6lsdlMsRLvcItVZsa65rgJQeernsCX/gkefG
 24pzhV5L1iA14R1FH5PwK/JsOnyfxFqROFZh0fcc/kUor1HBH5IV+rdMTA32Xh1u
 vwVkqV7u1W4rpFrvVKgSVYU9NZ5MAUfhAnq2DvjbAEIYXYNyraCvB5icDDSIpmAa
 EbSzAP3/AyEluGbzeBn5UlZynJp36jH5z93u89/DMjmTeCNn/Ci+5cRvCfgIyxlN
 c9Way+pWiU52ReGRy43QaWm0QsF90/f47le8QXc9Jndp3TOpSpA13HqEzeVIFqhq
 QxFgpxtAL4XPzQ==
X-ME-Sender: <xms:5pJTXtJcmm2JpxfHKaCeIdvK-jkjyFcj-MLtGxy8yN04OsulWjsSlw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepfeelnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:5pJTXjfYY5qNIxnfL1izaj9_fKcOrRqgtu_XqVVeDJvQxPpfdt1n1g>
 <xmx:5pJTXtNpC7iKTJFliW1OpWIik3NaVYVEiQ19lS0cC5Keer0JAVGazQ>
 <xmx:5pJTXtLVI_p2wkoZgZOHwmgryKg_3VL26DagHFlyfpVW36kaekLVJQ>
 <xmx:5pJTXn1pLUhJIqJluk8qVvlwWoH_tPvxk7c4ab9dbwgQysYpqLqR_qf61FU>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3BEBC3280060;
 Mon, 24 Feb 2020 04:09:58 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 48/89] drm/vc4: crtc: Move the cob allocation outside of bind
Date: Mon, 24 Feb 2020 10:06:50 +0100
Message-Id: <01ce49d16657b6ec1fc674d9a31d4b357a9474cc.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011002_522686_3FAAF104 
X-CRM114-Status: GOOD (  13.47  )
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

The COB allocation depends on the HVS channel used for a given
pixelvalve.

While the channel allocation was entirely static in vc4, vc5 changes
that and at bind time, a pixelvalve can be assigned to multiple
HVS channels.

Let's prepare that rework by allocating the COB when it's actually
needed.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 39 +++++++++++++++++------------------
 drivers/gpu/drm/vc4/vc4_drv.h  |  2 +--
 2 files changed, 20 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 53ce2bbb10b5..6f797218f0c9 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -65,6 +65,23 @@ static const struct debugfs_reg32 crtc_regs[] = {
 	VC4_REG32(PV_HACT_ACT),
 };
 
+static unsigned int
+vc4_crtc_get_cob_allocation(struct vc4_crtc *vc4_crtc, unsigned int channel)
+{
+	struct drm_device *drm = vc4_crtc->base.dev;
+	struct vc4_dev *vc4 = to_vc4_dev(drm);
+
+	u32 dispbase = HVS_READ(SCALER_DISPBASEX(channel));
+	/* Top/base are supposed to be 4-pixel aligned, but the
+	 * Raspberry Pi firmware fills the low bits (which are
+	 * presumably ignored).
+	 */
+	u32 top = VC4_GET_FIELD(dispbase, SCALER_DISPBASEX_TOP) & ~3;
+	u32 base = VC4_GET_FIELD(dispbase, SCALER_DISPBASEX_BASE) & ~3;
+
+	return top - base + 4;
+}
+
 bool vc4_crtc_get_scanoutpos(struct drm_device *dev, unsigned int crtc_id,
 			     bool in_vblank_irq, int *vpos, int *hpos,
 			     ktime_t *stime, ktime_t *etime,
@@ -73,6 +90,7 @@ bool vc4_crtc_get_scanoutpos(struct drm_device *dev, unsigned int crtc_id,
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
 	struct drm_crtc *crtc = drm_crtc_from_index(dev, crtc_id);
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
+	unsigned int cob_size;
 	u32 val;
 	int fifo_lines;
 	int vblank_lines;
@@ -108,8 +126,9 @@ bool vc4_crtc_get_scanoutpos(struct drm_device *dev, unsigned int crtc_id,
 			*hpos += mode->crtc_htotal / 2;
 	}
 
+	cob_size = vc4_crtc_get_cob_allocation(vc4_crtc, vc4_crtc->channel);
 	/* This is the offset we need for translating hvs -> pv scanout pos. */
-	fifo_lines = vc4_crtc->cob_size / mode->crtc_hdisplay;
+	fifo_lines = cob_size / mode->crtc_hdisplay;
 
 	if (fifo_lines > 0)
 		ret = true;
@@ -1103,22 +1122,6 @@ static void vc4_set_crtc_possible_masks(struct drm_device *drm,
 	}
 }
 
-static void
-vc4_crtc_get_cob_allocation(struct vc4_crtc *vc4_crtc)
-{
-	struct drm_device *drm = vc4_crtc->base.dev;
-	struct vc4_dev *vc4 = to_vc4_dev(drm);
-	u32 dispbase = HVS_READ(SCALER_DISPBASEX(vc4_crtc->channel));
-	/* Top/base are supposed to be 4-pixel aligned, but the
-	 * Raspberry Pi firmware fills the low bits (which are
-	 * presumably ignored).
-	 */
-	u32 top = VC4_GET_FIELD(dispbase, SCALER_DISPBASEX_TOP) & ~3;
-	u32 base = VC4_GET_FIELD(dispbase, SCALER_DISPBASEX_BASE) & ~3;
-
-	vc4_crtc->cob_size = top - base + 4;
-}
-
 static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 {
 	struct platform_device *pdev = to_platform_device(dev);
@@ -1173,8 +1176,6 @@ static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 	 */
 	drm_crtc_enable_color_mgmt(crtc, 0, true, crtc->gamma_size);
 
-	vc4_crtc_get_cob_allocation(vc4_crtc);
-
 	CRTC_WRITE(PV_INTEN, 0);
 	CRTC_WRITE(PV_INTSTAT, PV_INT_VFP_START);
 	ret = devm_request_irq(dev, platform_get_irq(pdev, 0),
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 0bf14c1dfe39..7457cd50dcee 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -473,8 +473,6 @@ struct vc4_crtc {
 	u8 lut_r[256];
 	u8 lut_g[256];
 	u8 lut_b[256];
-	/* Size in pixels of the COB memory allocated to this CRTC. */
-	u32 cob_size;
 
 	struct drm_pending_vblank_event *event;
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
