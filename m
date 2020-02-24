Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8E116A26F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:37:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0rz/MtzkttIgCbIVvvRDjnjeEFajFDDDgXgJdDzmMr0=; b=FtcP19CrxcJg1Z
	35jtRE6NET5ZIXMJzL1BBuM3f8toyvc26Udsx8eJ9HAy7xlCexDe6dD79JNosUbSKLjpoOpmSPlHB
	/5PkrX2HSEhs92X6lJ55tY19ebyy1QRIVM3s+Z8qRA7nPH5EHpqp2XwtSwGU6W1YeIFd/hAzmS9Sb
	zVqxQuCuhcz6vEYdMG/FaGhmQGDW7XIzGuptLhb7iYLwbHPmY6XeRUYpzoY3Hv+RW7L75PN/aPM0Q
	pZB4hd0y46plAPmgD7Fcwdj15WjHdScpD4RPJLwk6x6xQuCxgvDoywt8szX9rVhEI9GbHkSfEzPpP
	CeLfUJhqQq4vsVJY6+gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6AAl-00060s-1z; Mon, 24 Feb 2020 09:37:07 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69lI-0003pl-JK; Mon, 24 Feb 2020 09:10:51 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 878C160C;
 Mon, 24 Feb 2020 04:10:46 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Ff3uGUcGXy4TD
 fBH2MRflci1U8oWaQz52lbUwl02l9U=; b=BNwCM3Aq0Y49bTHPqxVM1RsW8FT2o
 kNjo16S3ZDPUXJb7WO7kuXqJsGQyRwsVI0825YZh/MuMFySajdM4FD0ML5N/+nl4
 z39yug1SICr1TemgcPxTIYTSYYxQqXoWVFfsaq1xkQmnT4uiuQMYrUnwojTfPpfc
 AWKWJNjTLtIF1HMEyJ2wc2XtHPOjA55x6EtfO4Z+TwhrlJNkPzdnjqfREdSbNHO9
 HpvKV+1CAZ9jAqlOuMOWRJiZLOEvRduxbCyDT8KJOSN52npmLp9YmL6BZH5VkLFj
 QCC+2tA2Dc3hCw72Al+yfFmLNm2rQkaZ488VCnqjrb+1h41WwHd6iNlGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Ff3uGUcGXy4TDfBH2MRflci1U8oWaQz52lbUwl02l9U=; b=GFxVExl7
 z7YaPf5tJTDNA7y7Z175WVqCb8HRBUNutDGm5wnIpBY0YOjr2WXlkVNLN1R7/pQq
 8YIM0G94yJcy2O+v8v+hoVIThWSlx10cz5MJOFG2Hma2/bCYTD4CWYGYWjWwxMYf
 EKJAaB5kX42SyLlmhmUJAagFTQ6d91+G4JxOvzWjhpEwKh+tfn4jGh5z9vm4SOno
 V5IwKl2RhyLHQ9SVYaAP6xhwYdBcq72Qc+zEvf4JHylyHrNP18FxwpF2sLZnY6rC
 I78n8yp3o02GnqCTKE2wJybyKqmfAA8UyBLvEd+yMOjs/+Lb3ZlDL59UFMYcLGxn
 WMpxAAQWnSO/0A==
X-ME-Sender: <xms:FpNTXn4QbAwAHtXHIrASL_Oz-lZaEgvOsKWAERp568c9eVgyzlnCsg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepudeknecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:FpNTXuZVw5rdV8AppwcWYCjSg9UlOqegBkYAhxH4P_TNwaHuF-6Hog>
 <xmx:FpNTXnHFeL1kq7czW0bYo5XrpZVjiJAyTKLIh7_zyDlX-C6N4iNEKw>
 <xmx:FpNTXqKpVHW7g6Aqw8GNXKn1opT5XJJV06AxWttOng5Jgw1sDSCOHA>
 <xmx:FpNTXhi1BGPxNidcbz8MTe1aFRxzR8Bt3BL4lUHwElEeDuqX-Zo1OdgMgnI>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id CAB163060F09;
 Mon, 24 Feb 2020 04:10:45 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 81/89] drm/vc4: hdmi: Add an audio support flag
Date: Mon, 24 Feb 2020 10:07:23 +0100
Message-Id: <16464cc202d1867843f68f4c2746d5a1b2facecd.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011048_834576_BC95FA64 
X-CRM114-Status: GOOD (  10.58  )
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

The BCM2711 audio support doesn't work yet, so let's add a boolean to
indicate whether or not it's supported, and only register a sound card if
that boolean is set.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 4 ++++
 drivers/gpu/drm/vc4/vc4_hdmi.h | 3 +++
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 25fbe2fb72fb..a98661c12c24 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -930,6 +930,9 @@ static int vc4_hdmi_audio_init(struct vc4_hdmi *vc4_hdmi)
 	const __be32 *addr;
 	int ret;
 
+	if (!vc4_hdmi->variant->audio_available)
+		return 0;
+
 	if (!of_find_property(dev->of_node, "dmas", NULL)) {
 		dev_warn(dev,
 			 "'dmas' DT property is missing, no HDMI audio\n");
@@ -1429,6 +1432,7 @@ static int vc4_hdmi_dev_remove(struct platform_device *pdev)
 }
 
 struct vc4_hdmi_variant bcm2835_variant = {
+	.audio_available	= true,
 	.registers		= vc4_hdmi_fields,
 	.num_registers		= ARRAY_SIZE(vc4_hdmi_fields),
 
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index 4d3117de383a..f41116507156 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -32,6 +32,9 @@ struct vc4_hdmi_variant {
 	 */
 	unsigned int id;
 
+	/* Set to true when the audio support is available */
+	bool audio_available;
+
 	/* List of the registers available on that variant */
 	const struct vc4_hdmi_register *registers;
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
