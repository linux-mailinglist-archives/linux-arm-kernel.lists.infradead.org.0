Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A6416A270
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:37:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WsK5/sJkr2U2ZRg3+OTGXjW4/bZ/FY51UoPmgE0PbU=; b=mZrDMFuHzZl4ib
	+ppTVYwilIP+dNqcPviibbszIC7ejzw5Nc/9Alpj2gKZGrmktjrqyOzGhDuGgk3gTosA9va6+dIJw
	T0sFeCJCSpWk44216+5zUO0ac7xbcYg+NeF9Zj/aWeE1biXRDsGMN0Bl2sBKBeZHNSlhTspvvbRst
	/tD4WPvpu9430dwDpng7roWhi6SPE7qw/bvNgIqS+VQAQV0aDMCi0uVyuSQ21mES3xiSk+/Z0/za1
	i2OmlPIyc8yKlimg8CyKsiyryl/+2uqlcPJA+WdE8h3tBeRWyP5Z7CCnEOJ4fXRgeU2cHahYaTzV4
	HQm/5zUpXNXQRPyRKKtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6AB1-0006EZ-S8; Mon, 24 Feb 2020 09:37:23 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69lJ-0003qW-9v; Mon, 24 Feb 2020 09:10:52 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id E4D44637;
 Mon, 24 Feb 2020 04:10:47 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=ePSwFAV7DRtlr
 76mxS9zFF6e55K7eAc8K3mofqokv7o=; b=TDJptg4xq2c0LjIhAcLhpV9oMW2I0
 vgyQocboU1qqOMCESoKYuvQybeVxJjWB2S/Oe0K5LtuH2KB+lt5MJUQidpaAt+Sr
 Ti7M38tl0dRufUt+whQ+k4RWr/kUEVSeweD/C9hxp8y99VOBBe4JK+FIrOcYIqZd
 0LtC69pZjTBGmF96KB3WuYy2CxbpA9xLmYTpbjuf3jpalX4yw/cbCH0oXoOHbkJp
 YDf9o4h7nmz3XtxoJIeIaCCcMFNPbcwtgVSo4qREHZTKuVYrIsnGGdgHtMLm0WEU
 OpL3q55DIfvNyaHYXDBl1dpj9rzptovRZQMHQGwPGbqIyHeMx9pTCyHXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=ePSwFAV7DRtlr76mxS9zFF6e55K7eAc8K3mofqokv7o=; b=fTHAN0Yh
 xTfRd0Oz42BU8G3EH6F4Ta9KnZ73aGuEaY+d/aVzsVKAxWttQY4QTDokE0qjFbkp
 oB1drXf5pEY7DOKn4CWyFDCcjA5Ihsz/+zjAfk+GKP80n8RhjL4IZlGqkxWqK7nn
 N5kkVMyksec8Jo7uk1uLUzmPqlcsJVG1TbP+Vfb98Qss8kKUmmCUEMFFSpdCf2b1
 Z9m3NGq+94M7wLozPM+uTrPQ0AOBiM3yn5LVOQziLUHF0h7MAAAI8J9A5faJ6NIp
 xemn2oja4UNfQUI6/OXmnzapm57mowsBap5tX8RczRbNaz3AwCOrBtJk+9/ktD82
 ah/TDng8gaja/Q==
X-ME-Sender: <xms:F5NTXkIfGvbustICxS6ZsYcQ5MxyZsEr645F3xaIB1w0pQh_LYcVdg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepudeknecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:F5NTXqI6oCbVPb21dORPilu-mUx9PFsMTT16RFvt2odW8Pg8i8Xbrg>
 <xmx:F5NTXiV5hyRnhmwVuSPaVPZfIKeM-GI0OfWUzOSdiLaTN0Ja20YSxg>
 <xmx:F5NTXsgbfDDc5f_tljAcfnvVt2VDsOhhaBRr1ZRE683w7K-s_uCMng>
 <xmx:F5NTXpNHgi7ggZER5lzLlgMdUgx_APHdRDYJ3h2It2tGL8N2p30ZZ926wUg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 357AA328005E;
 Mon, 24 Feb 2020 04:10:47 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 82/89] drm/vc4: hdmi: Move CEC init to its own function
Date: Mon, 24 Feb 2020 10:07:24 +0100
Message-Id: <57e5450645ea8cba8bf862bed89f9d053eb50fa7.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011049_465768_8CDB89A8 
X-CRM114-Status: GOOD (  13.22  )
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

The CEC init code was put directly into the bind function, which was quite
inconsistent with how the audio support was done, and would prevent us from
further changes to skip that initialisation entirely.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 102 +++++++++++++++++++++-------------
 1 file changed, 64 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index a98661c12c24..f7fd1914aec7 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -1163,6 +1163,64 @@ static const struct cec_adap_ops vc4_hdmi_cec_adap_ops = {
 	.adap_log_addr = vc4_hdmi_cec_adap_log_addr,
 	.adap_transmit = vc4_hdmi_cec_adap_transmit,
 };
+
+static int vc4_hdmi_cec_init(struct vc4_hdmi *vc4_hdmi)
+{
+	int ret;
+
+	vc4_hdmi->cec_adap = cec_allocate_adapter(&vc4_hdmi_cec_adap_ops,
+					      vc4, "vc4",
+					      CEC_CAP_DEFAULTS |
+					      CEC_CAP_CONNECTOR_INFO, 1);
+	ret = PTR_ERR_OR_ZERO(vc4_hdmi->cec_adap);
+	if (ret < 0)
+		return ret;
+
+	cec_fill_conn_info_from_drm(&conn_info, hdmi->connector);
+	cec_s_conn_info(hdmi->cec_adap, &conn_info);
+
+	HDMI_WRITE(HDMI_CPU_MASK_SET, 0xffffffff);
+	value = HDMI_READ(HDMI_CEC_CNTRL_1);
+	value &= ~VC4_HDMI_CEC_DIV_CLK_CNT_MASK;
+	/*
+	 * Set the logical address to Unregistered and set the clock
+	 * divider: the hsm_clock rate and this divider setting will
+	 * give a 40 kHz CEC clock.
+	 */
+	value |= VC4_HDMI_CEC_ADDR_MASK |
+		 (4091 << VC4_HDMI_CEC_DIV_CLK_CNT_SHIFT);
+	HDMI_WRITE(HDMI_CEC_CNTRL_1, value);
+	ret = devm_request_threaded_irq(dev, platform_get_irq(pdev, 0),
+					vc4_cec_irq_handler,
+					vc4_cec_irq_handler_thread, 0,
+					"vc4 hdmi cec", vc4_hdmi);
+	if (ret)
+		goto err_delete_cec_adap;
+
+	ret = cec_register_adapter(vc4_hdmi->cec_adap, vc4_hdmi);
+	if (ret < 0)
+		goto err_delete_cec_adap;
+
+	return 0;
+
+err_delete_cec_adap:
+	cec_delete_adapter(vc4_hdmi->cec_adap);
+
+	return ret;
+}
+
+static void vc4_hdmi_cec_exit(struct vc4_hdmi *vc4_hdmi)
+{
+	cec_unregister_adapter(vc4_hdmi->cec_adap);
+}
+#else
+static int vc4_hdmi_cec_init(struct vc4_hdmi *vc4_hdmi)
+{
+	return 0;
+}
+
+static void vc4_hdmi_cec_exit(struct vc4_hdmi *vc4_hdmi) {};
+
 #endif
 
 static int vc4_hdmi_build_regset(struct vc4_hdmi *vc4_hdmi,
@@ -1330,43 +1388,13 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		goto err_destroy_encoder;
 
-#ifdef CONFIG_DRM_VC4_HDMI_CEC
-	vc4_hdmi->cec_adap = cec_allocate_adapter(&vc4_hdmi_cec_adap_ops,
-					      vc4, "vc4",
-					      CEC_CAP_DEFAULTS |
-					      CEC_CAP_CONNECTOR_INFO, 1);
-	ret = PTR_ERR_OR_ZERO(vc4_hdmi->cec_adap);
-	if (ret < 0)
-		goto err_destroy_conn;
-
-	cec_fill_conn_info_from_drm(&conn_info, hdmi->connector);
-	cec_s_conn_info(hdmi->cec_adap, &conn_info);
-
-	HDMI_WRITE(HDMI_CPU_MASK_SET, 0xffffffff);
-	value = HDMI_READ(HDMI_CEC_CNTRL_1);
-	value &= ~VC4_HDMI_CEC_DIV_CLK_CNT_MASK;
-	/*
-	 * Set the logical address to Unregistered and set the clock
-	 * divider: the hsm_clock rate and this divider setting will
-	 * give a 40 kHz CEC clock.
-	 */
-	value |= VC4_HDMI_CEC_ADDR_MASK |
-		 (4091 << VC4_HDMI_CEC_DIV_CLK_CNT_SHIFT);
-	HDMI_WRITE(HDMI_CEC_CNTRL_1, value);
-	ret = devm_request_threaded_irq(dev, platform_get_irq(pdev, 0),
-					vc4_cec_irq_handler,
-					vc4_cec_irq_handler_thread, 0,
-					"vc4 hdmi cec", vc4_hdmi);
+	ret = vc4_hdmi_cec_init(vc4_hdmi);
 	if (ret)
-		goto err_delete_cec_adap;
-	ret = cec_register_adapter(vc4_hdmi->cec_adap, vc4_hdmi);
-	if (ret < 0)
-		goto err_delete_cec_adap;
-#endif
+		goto err_destroy_conn;
 
 	ret = vc4_hdmi_audio_init(vc4_hdmi);
 	if (ret)
-		goto err_destroy_encoder;
+		goto err_free_cec;
 
 	vc4_debugfs_add_file(drm,
 			     variant->id ? "hdmi1_regs" : "hdmi_regs",
@@ -1375,12 +1403,10 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 
 	return 0;
 
-#ifdef CONFIG_DRM_VC4_HDMI_CEC
-err_delete_cec_adap:
-	cec_delete_adapter(vc4_hdmi->cec_adap);
+err_free_cec:
+	vc4_hdmi_cec_exit(vc4_hdmi);
 err_destroy_conn:
 	vc4_hdmi_connector_destroy(&vc4_hdmi->connector);
-#endif
 err_destroy_encoder:
 	vc4_hdmi_encoder_destroy(encoder);
 err_unprepare_hsm:
@@ -1405,7 +1431,7 @@ static void vc4_hdmi_unbind(struct device *dev, struct device *master,
 	kfree(vc4_hdmi->hdmi_regset.regs);
 	kfree(vc4_hdmi->hd_regset.regs);
 
-	cec_unregister_adapter(vc4_hdmi->cec_adap);
+	vc4_hdmi_cec_exit(vc4_hdmi);
 	vc4_hdmi_connector_destroy(&vc4_hdmi->connector);
 	vc4_hdmi_encoder_destroy(&vc4_hdmi->encoder.base.base);
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
