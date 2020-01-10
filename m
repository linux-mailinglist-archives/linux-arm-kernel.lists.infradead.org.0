Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CED13681D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 08:16:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RnbEqxGidKukyOLErMv6ZLQW4Og8cbdtAQsd5I9M+kg=; b=hmGyQs5DCPr9Bv
	eApW0OubTX57rvu2sG34CMWb7lpTi3+YBIF/t4u+m921NXyKIZLDBMd7I2JMWXQsBvKQFVE4/a2V+
	H+LzhemzLaFCMOG6ySWi0gd6mtY3tCogHZJWcOJRFAZg98uR2uob97DsdS8pWw74DiTBz6CZUUxO7
	YAvyn5IY06WfyeuysCji8qpttwzihE4VCsgwaHehLMF/Po9nvZ+qr4BDuafm3Zp1B8FihilmZdJ48
	imjgwFIokHUw9p4aqpb5tLFMK6bLSMZ2YKsb+Mv2zVUZWVEEca3If1EpCpk25NC286tyR4L5FAzrs
	CQLFl3H93kJQXGcMsLjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipoX3-0003eY-Jx; Fri, 10 Jan 2020 07:16:33 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipoWu-0003bf-Kp
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 07:16:26 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00A7GJU9065583;
 Fri, 10 Jan 2020 01:16:19 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578640580;
 bh=UWIUrIeOJUT2Q2yeIt+pWgbb4LHnPensbV2MqiTfZMM=;
 h=From:To:CC:Subject:Date;
 b=bQlZmhQrmViX1z/HFnsdkM7/zZcRGYkXRK4dkI5OmO0/buvnyELkrVZeY56xAr/cB
 XeJHWR3iaZu08h6lDbCaAtNdupAO4mj6VchnKXlxwxdCtLlU2/l1HDX0RWDjTCcwMF
 hQMzBpHqxXjRG5Z8ZeuYJqM6JNyX3g/RxtA6iFxo=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00A7GJsq048158;
 Fri, 10 Jan 2020 01:16:19 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 10
 Jan 2020 01:16:18 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 10 Jan 2020 01:16:18 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00A7GG4A041868;
 Fri, 10 Jan 2020 01:16:16 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <mchehab@kernel.org>, <hyun.kwon@xilinx.com>,
 <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v2] media: xilinx: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Fri, 10 Jan 2020 09:16:48 +0200
Message-ID: <20200110071648.15690-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_231624_766435_D036F3EB 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: vkoul@kernel.org, michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dma_request_slave_channel() is a wrapper on top of dma_request_chan()
eating up the error code.

By using dma_request_chan() directly the driver can support deferred
probing against DMA.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
Hi,

Changes since v1:
- Fix cleanup path when DMA request failed as suggested by Laurent
- Print error only in case when the error is not EPROBE_DEFER

Regards,
Peter

 drivers/media/platform/xilinx/xilinx-dma.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/xilinx/xilinx-dma.c b/drivers/media/platform/xilinx/xilinx-dma.c
index b211380a11f2..3bb54a4db6a4 100644
--- a/drivers/media/platform/xilinx/xilinx-dma.c
+++ b/drivers/media/platform/xilinx/xilinx-dma.c
@@ -725,10 +725,11 @@ int xvip_dma_init(struct xvip_composite_device *xdev, struct xvip_dma *dma,
 
 	/* ... and the DMA channel. */
 	snprintf(name, sizeof(name), "port%u", port);
-	dma->dma = dma_request_slave_channel(dma->xdev->dev, name);
-	if (dma->dma == NULL) {
-		dev_err(dma->xdev->dev, "no VDMA channel found\n");
-		ret = -ENODEV;
+	dma->dma = dma_request_chan(dma->xdev->dev, name);
+	if (IS_ERR(dma->dma)) {
+		ret = PTR_ERR(dma->dma);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dma->xdev->dev, "no VDMA channel found\n");
 		goto error;
 	}
 
@@ -752,7 +753,7 @@ void xvip_dma_cleanup(struct xvip_dma *dma)
 	if (video_is_registered(&dma->video))
 		video_unregister_device(&dma->video);
 
-	if (dma->dma)
+	if (!IS_ERR_OR_NULL(dma->dma))
 		dma_release_channel(dma->dma);
 
 	media_entity_cleanup(&dma->video.entity);
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
