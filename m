Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E14501E47F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:46:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQ0LFGnWXejP1OKMab7GbA/M7ZMcqxaRU4hNU4nVxto=; b=NbGuQPOK8ykXJR
	4zOJtgCNVvP1+YDwqJXMa8G3AcjK7mkedwSPz5WcvRKt2Oq8qyAp52bdn1R2JzkPv/I9xWWEcT+o+
	1P0oVN4JVV/+vGS9u1L0DzSbAqx2Qgkz43UOLqqDx5M10hHwhVsw8+CqjPB2YDvSztqbkf3Lvii3l
	+8RQtsZg3J5neJ/Jfm/Ij94vW/yfJRhrbKRIVnN7fw7fbjEgWcqvpeHsDtpXnQ2e/VVJ4LdJW0PBI
	SQZ4Vq+qFAOXcEBuLOrBE6vV67qBj5M3KVNaaeUxxrE9Kmyk0YrzFMStuOBksFSVi70fo+lpV7suD
	qBTSUJKGaeHEYWME4L5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyG7-0003RT-Kf; Wed, 27 May 2020 15:46:23 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyFO-000385-Hi; Wed, 27 May 2020 15:45:40 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 81BE05C0220;
 Wed, 27 May 2020 11:45:31 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:45:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=boMgmra7WOWY+
 GlhAM0YnfrTd/Pn6DIw794uUlk43Ho=; b=ttA60JMA/fKXcDYfIddBdTXP31g3u
 ku0HVrrXHgHsp+BZ76zihniJctwItF+ucgnsFBdFyaJC+sydFqaQACjdOYrUW40E
 +JnQr7xN6vWV1e4I91TNsOK4NZRBK/VRWbdpHtq33jjlf3rGF36/4g5w5Z/VEA8Y
 jAxRh1ANk9WO1DwBjDfAB2hkj0ig6LsJOFvBn8udqre+Wdmh3fg+wch+xxG+6hRC
 8T5tW9jIfITAnKFBewIfnDOsyS44DbMemZajrX46shFcmy71Ykt4XKHLeHvQnFtz
 ClDmB8lsuOBsNJSOrI1vbPyK5ZMHGWu2kWFVkLKbjl+8JQ/kayFZq5Rng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=boMgmra7WOWY+GlhAM0YnfrTd/Pn6DIw794uUlk43Ho=; b=iPohzrkJ
 1sqFyhCxxissmlQAAbXK8ZofMHS4lKWW6gvRXdMaFMAuyOhIRfAVHg1CzF7GwUAC
 SvHirGCgNu3rKn/SrV7ztoTketH0SlNaxPrkNGaTjj9LlzwG/yywHig9WMlFbcCb
 uOxM7m0e4l1ZwHa4q2l9JAI0g/x7KsU8U7DI2OZ3xM6++8OZCeyVM9VO6Py4DQqL
 HNr+9iHHVj1nmGL3jjuS9Vsrf1QFbCLsfLfOg5k9F/987zhQtrLI7SDSS+EIabw2
 6jkm410tmot72DWCvAZXxAst/mVLEDyZFOcF7ffLL6h4DIW9WcoqexsUIvle1+vy
 7n/sr3AjoB6+AQ==
X-ME-Sender: <xms:G4vOXv36PFRg8Htj3NDqGLhiaa2YeOC-LOSdpG1X20zdjRbyREJj3A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:G4vOXuFHqLaWFk2lKB6yzLqpEiUuSsxFYvSmST0UFli_fk9ElxI2Ug>
 <xmx:G4vOXv4YB0-FWrPGY0TfMmHhxiUQRYLz1q9uKCj85quPAQ0pyOdwcw>
 <xmx:G4vOXk1EhZkUVi39yPRKGPAjlHyZJuvw8aSpSPp9Yhbo201AtGObvg>
 <xmx:G4vOXvMTcGwTIn3UvA5lkRVP6-CPzL2ZXFxoqhnFQnPUAnVcSLdzyg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 367E130618B7;
 Wed, 27 May 2020 11:45:31 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 03/25] firmware: rpi: Only create clocks device if we don't
 have a node for it
Date: Wed, 27 May 2020 17:44:59 +0200
Message-Id: <f0b979221dedec7db9cab201388bf44c0d987a3d.1590594293.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084538_729126_88F65BD2 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
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
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The firmware clocks driver was previously probed through a platform_device
created by the firmware driver.

Since we will now have a node for that clocks driver, we need to create the
device only in the case where there's no node for it already.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/firmware/raspberrypi.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberrypi.c
index ef8098856a47..b25901a77c09 100644
--- a/drivers/firmware/raspberrypi.c
+++ b/drivers/firmware/raspberrypi.c
@@ -208,6 +208,20 @@ rpi_register_hwmon_driver(struct device *dev, struct rpi_firmware *fw)
 
 static void rpi_register_clk_driver(struct device *dev)
 {
+	struct device_node *firmware;
+
+	/*
+	 * Earlier DTs don't have a node for the firmware clocks but
+	 * rely on us creating a platform device by hand. If we do
+	 * have a node for the firmware clocks, just bail out here.
+	 */
+	firmware = of_get_compatible_child(dev->of_node,
+					   "raspberrypi,firmware-clocks");
+	if (firmware) {
+		of_node_put(firmware);
+		return;
+	}
+
 	rpi_clk = platform_device_register_data(dev, "raspberrypi-clk",
 						-1, NULL, 0);
 }
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
