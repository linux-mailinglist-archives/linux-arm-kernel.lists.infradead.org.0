Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BCC1B7B03
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3anfldSKq4VrMsT2LAKNHGjsEZl0IKjx7SQHk3wKVDc=; b=R2N6XMKvZqWtOr
	mqnHDNBrLpf1aCB/eHJCsIBx9N4tq4o06HzEp6zCpHdLddfHYSHkJ55kutZv0c6JL5no1vYTp5x32
	8rTKjWDdehcWM/u9m37KmFMfb1K/B4shggeWXze49+85VfgrWwn7WdQ97adz12pGWtXX8N5yPsZbB
	QM8/wJLd8mF2GiOpyZsr6KvIB5SdNYIofTjw4ZEmZkuiVJV0PLC6wE1MRkE2qiWYAX/FTGiupS5Bz
	0GS9IPoUd7M7HMHkCipPc32nkA8rI7jv/PMhU3uajO/hK2aiaeQN2PwpzrpAozV+3qeaMew/6aVNE
	zzOw4kZEXqaVZPHVhvSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0mj-0000pz-CH; Fri, 24 Apr 2020 16:02:37 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0OD-0000Pa-5I; Fri, 24 Apr 2020 15:37:21 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 9327710AA;
 Fri, 24 Apr 2020 11:37:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:37:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=v0wT99TRG4A07
 CiLRgiNJop5CNO/2rg6M7E82BWYHLU=; b=YKrze/7plwHLwACpj24dyp2L9+FfA
 PBIkH+/g60+68fh4KNV5CXnxb3lJQJ6ReZcnlcozbPBcXH8CE4Rd3/ghdGEqcTCh
 YCWSXIpbMUl9xrluRAm5iJapg0aVv7RydHL6p3w2TY0ggbKlkMEN4B7su+Ct1Y1R
 2Surnu/J20oKt9UEPgyFH0P2jqEYcnRQUJxOtvsq63rns/XcYoBxI5SPS71Wkvfc
 anjD0ifw+8rbrqqlvTnVyk1VQTUfh+mNTfeYjIhj418q90wMxcCYjOJF2cG2Zsmk
 yBmxUt+sB8fi753Wdtln7Jc07uq0ac0YUKEuh62hA/i/j+eY1+qH+RuBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=v0wT99TRG4A07CiLRgiNJop5CNO/2rg6M7E82BWYHLU=; b=Pn9zzOM6
 iBvBLlsXaxT7ZCQMMMB8tF4yJ7txV0YT71fbyKVC+Di04LfNQOdnjkXGLw0ZP7H/
 0sUmmkib0ca0gf7GkXbtBs8B7c/w6fEMoHm2hjRWkEEpAD1Hij80NemBB3RVwU06
 Oahp2y40zPs0FwpSbnz0FASI8oLC8F2hJEFtIPfwi7nuC3UZPzcPbS/p1/H0RV3M
 9gS1EtpVYcDzI7xvw0CV3xDbXNMH/dYBNr/OPQ78cg/C5V5s70Tv+KSGwD2UTpKN
 uKeqgvcFvj68QObnHvVutnu212var7nHhU/tFy9hLSAiGuv9Q3raMa0RvdNyourR
 b89BLF5u0fxR9Q==
X-ME-Sender: <xms:qgejXvNFYpmqDlm6gH4L1BGeRe4gQd4HEUWHELwWPManjWIPkCOOrw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeejtdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:qgejXuMP2XCDuNAxgGBjcnUlQdmOiULAfm5mYngk5eTr1CTq-jZB3w>
 <xmx:qgejXpSioFEa9WjTEIdXBV3FD6C09EiAQ79FBBNgQlyYQmDouJhuqA>
 <xmx:qgejXoA65VpA33Rg1XLvlFxRPaGnd39C1w8VnSX6Q-fQWkhZFu1OXA>
 <xmx:qgejXpLzQ35NbXvkoRWqkqu3Hy84VAerf56va_oNJ_9j6JhvssddbKLDmc8>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id CCFD23280063;
 Fri, 24 Apr 2020 11:37:13 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 80/91] drm/vc4: hdmi: Move CEC init to its own function
Date: Fri, 24 Apr 2020 17:35:01 +0200
Message-Id: <8485077451e339cbb491746ae98980f76eedc754.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083717_583008_E41B00E3 
X-CRM114-Status: GOOD (  12.65  )
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

The CEC init code was put directly into the bind function, which was quite
inconsistent with how the audio support was done, and would prevent us from
further changes to skip that initialisation entirely.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 108 +++++++++++++++++++++-------------
 1 file changed, 67 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index aae5b10a2d11..1c612db1d22c 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -1172,6 +1172,67 @@ static const struct cec_adap_ops vc4_hdmi_cec_adap_ops = {
 	.adap_log_addr = vc4_hdmi_cec_adap_log_addr,
 	.adap_transmit = vc4_hdmi_cec_adap_transmit,
 };
+
+static int vc4_hdmi_cec_init(struct vc4_hdmi *vc4_hdmi)
+{
+	struct cec_connector_info conn_info;
+	struct platform_device *pdev = vc4_hdmi->pdev;
+	u32 value;
+	int ret;
+
+	vc4_hdmi->cec_adap = cec_allocate_adapter(&vc4_hdmi_cec_adap_ops,
+						  vc4_hdmi, "vc4",
+						  CEC_CAP_DEFAULTS |
+						  CEC_CAP_CONNECTOR_INFO, 1);
+	ret = PTR_ERR_OR_ZERO(vc4_hdmi->cec_adap);
+	if (ret < 0)
+		return ret;
+
+	cec_fill_conn_info_from_drm(&conn_info, &vc4_hdmi->connector);
+	cec_s_conn_info(vc4_hdmi->cec_adap, &conn_info);
+
+	HDMI_WRITE(HDMI_CEC_CPU_MASK_SET, 0xffffffff);
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
+	ret = devm_request_threaded_irq(&pdev->dev, platform_get_irq(pdev, 0),
+					vc4_cec_irq_handler,
+					vc4_cec_irq_handler_thread, 0,
+					"vc4 hdmi cec", vc4_hdmi);
+	if (ret)
+		goto err_delete_cec_adap;
+
+	ret = cec_register_adapter(vc4_hdmi->cec_adap, &pdev->dev);
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
@@ -1249,9 +1310,6 @@ static int vc4_hdmi_init_resources(struct vc4_hdmi *vc4_hdmi)
 
 static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 {
-#ifdef CONFIG_DRM_VC4_HDMI_CEC
-	struct cec_connector_info conn_info;
-#endif
 	struct platform_device *pdev = to_platform_device(dev);
 	struct drm_device *drm = dev_get_drvdata(master);
 	const struct vc4_hdmi_variant *variant;
@@ -1339,43 +1397,13 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		goto err_destroy_encoder;
 
-#ifdef CONFIG_DRM_VC4_HDMI_CEC
-	vc4_hdmi->cec_adap = cec_allocate_adapter(&vc4_hdmi_cec_adap_ops,
-						  vc4_hdmi, "vc4",
-						  CEC_CAP_DEFAULTS |
-						  CEC_CAP_CONNECTOR_INFO, 1);
-	ret = PTR_ERR_OR_ZERO(vc4_hdmi->cec_adap);
-	if (ret < 0)
-		goto err_destroy_conn;
-
-	cec_fill_conn_info_from_drm(&conn_info, &vc4_hdmi->connector);
-	cec_s_conn_info(vc4_hdmi->cec_adap, &conn_info);
-
-	HDMI_WRITE(HDMI_CEC_CPU_MASK_SET, 0xffffffff);
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
-	ret = cec_register_adapter(vc4_hdmi->cec_adap, dev);
-	if (ret < 0)
-		goto err_delete_cec_adap;
-#endif
+		goto err_destroy_conn;
 
 	ret = vc4_hdmi_audio_init(vc4_hdmi);
 	if (ret)
-		goto err_destroy_encoder;
+		goto err_free_cec;
 
 	vc4_debugfs_add_file(drm, variant->debugfs_name,
 			     vc4_hdmi_debugfs_regs,
@@ -1383,12 +1411,10 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 
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
@@ -1413,7 +1439,7 @@ static void vc4_hdmi_unbind(struct device *dev, struct device *master,
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
