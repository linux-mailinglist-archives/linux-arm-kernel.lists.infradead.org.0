Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3145A1E4A2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:30:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xozk02RyczBvUGbYAqkeuA38U8Zl4qM2HcieND+kh+k=; b=l1x90CSvUn6L7A
	L+P+Hgk4ok9a4t1no5WKMknxJQ/suXI9W/QsdJ7vs0Y5fFPyj1SD3x6R6NwhwTeD0r27esMQlTRCA
	m9FD0tHqmI2i0JGFVz/wFK7iN2KhzrC4J4NTvkYfUNadCHB0iVclgB77UqPnHgxbn/OaVN6oMk5ui
	4qVW/ObX7J8G44E9CkneCZ44YNkssnJVccd31NtA53874AXq2B+SkgKGSZxNP+jV5wnMU3MJz5Jlu
	bCkxF3L6VvISijb5sp3TWSH5KyRNPUTm76pb0e48ttIMqV7bbW7tpmAYe9PNsi6BGJAkvS9voVWU5
	PCIEoY1LjJneXzcLehEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdywn-00053o-EZ; Wed, 27 May 2020 16:30:29 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyLA-0001j8-Nv; Wed, 27 May 2020 15:51:41 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 131B2581514;
 Wed, 27 May 2020 11:51:36 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:51:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=G7atmPA7eX8En
 DxiMYNRcBaB/TV7dfsNzYMcQXosr6Q=; b=YOmGWhizQbR3FyRe8QzBGNpNklQS2
 Zqavm22mpR9iN80mzBk6gMI4znsV9Ye9+GGgcu3aFlroxEc1XVAcTAdBHrwXC7qi
 jcknFjzSJmtCbWNBKTkI6e4tXb/ovenpmOsb4NvVPN9A8Q+PiEPFp1qEMZcGIQbk
 R9xXngYFPmGmxBsSU3mG8rcs2fQwUKahffwej5+PjZVFmitqkEQHIcU/S9spSv+k
 wKj9p1PICjmyGHGwhomwNBqVCMcaTGoVJhGwr7MCXdErwf674oH3o7Hvm0uu3/bT
 NVWcNSLvJ+UEaJPMI4VEkgLc54jMxekXr89U9li/UNbLlDf9unKJPM2HA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=G7atmPA7eX8EnDxiMYNRcBaB/TV7dfsNzYMcQXosr6Q=; b=Gpp6s1SF
 U58FsU/krF2Fqnx20uqepleXvZW0CSUF4N31fVuihW3Gu2a25xQAJiF5t0uu1WDw
 YWZY1VoDirFSwFXfxTTUErxVMb3PCMcOWHQUNa1d6J4B/2Q1nnEO2M0O4+OXWLLS
 047FNwxIjm1TLuDSu53qwbOjGQ4Tlcs1IVHNc2VhYtTLxmSGF71uWkJYUcM1maCI
 tjCSY+PLZjjGxQSOMhimkCIQSr9Xs10NsvalHQn9n00zby8jQK0L/mSXP3hvCscx
 GOO07UAl+CAUkObpy0qBUivlU3CwB0Y12pyyzcK75LJCfo7ldGULGAz63gj2D1ES
 E9niaMBK0Hk1rw==
X-ME-Sender: <xms:h4zOXr6c9Q-0-O0Bo4yzzJACxJ5azm2BnDXDaQLlZkSyM_ZtdkJ9zg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepieefne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:h4zOXg6NhAHYD_Mz0zbMrRLwKuoqS7rWXpfBWRrIxdFmrYSf2Mc76Q>
 <xmx:h4zOXif7cuBNtJ7e012tt7XyR6vyfXLnvODeAAno27EvmECKOzDbdw>
 <xmx:h4zOXsJlcX0hde2dGO6zcwTpJG7pxsqfSlV5AHiB4hixs2KC0uSEdQ>
 <xmx:iIzOXsp2g4gUrgJhKNMbs2SwdT-DT2jp6tARLqs-d5DY-gqM-iTHTw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A76C83280069;
 Wed, 27 May 2020 11:51:35 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 088/105] drm/vc4: hdmi: Add CEC support flag
Date: Wed, 27 May 2020 17:48:58 +0200
Message-Id: <954a94de6ea75165ef0c44ef0298bfa960601885.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085137_220744_771F0F0E 
X-CRM114-Status: GOOD (  10.46  )
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

Similarly to the audio support, CEC support is not there yet for the
BCM2711, so let's skip entirely the CEC initialization through a variant
flag.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 4 ++++
 drivers/gpu/drm/vc4/vc4_hdmi.h | 3 +++
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 7eb3cee25001..27cfcf38edb4 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -1178,6 +1178,9 @@ static int vc4_hdmi_cec_init(struct vc4_hdmi *vc4_hdmi)
 	u32 value;
 	int ret;
 
+	if (!vc4_hdmi->variant->cec_available)
+		return 0;
+
 	vc4_hdmi->cec_adap = cec_allocate_adapter(&vc4_hdmi_cec_adap_ops,
 						  vc4_hdmi, "vc4",
 						  CEC_CAP_DEFAULTS |
@@ -1457,6 +1460,7 @@ static int vc4_hdmi_dev_remove(struct platform_device *pdev)
 static const struct vc4_hdmi_variant bcm2835_variant = {
 	.encoder_type		= VC4_ENCODER_TYPE_HDMI0,
 	.debugfs_name		= "hdmi_regs",
+	.cec_available		= true,
 	.registers		= vc4_hdmi_fields,
 	.num_registers		= ARRAY_SIZE(vc4_hdmi_fields),
 
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index 22100820c81b..20e0f5498f1e 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -33,6 +33,9 @@ struct vc4_hdmi_variant {
 	/* Filename to expose the registers in debugfs */
 	const char *debugfs_name;
 
+	/* Set to true when the CEC support is available */
+	bool cec_available;
+
 	/* List of the registers available on that variant */
 	const struct vc4_hdmi_register *registers;
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
