Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 729C81323EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 11:40:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M//KcaE799o9PGq7EpiXQH5vzmDSWC/Cq9hh9eN5HCM=; b=Jb3/T41436YjTK
	HHgsHmE30yq2SHYTm5hqpLYNlTy4EUZvqbAx8HZh4pXY6hskFRrLCg4PPtIoyrI/qlOxiG1d4TWdH
	WgmoZaFUsnvQgvKNcbKLbOZxQtYdAucEdEA/GrZ+evriYymT2Ne+dPioorFq1/8H6mJflOyEbT5mK
	tUtQcKEGR2NhhnZcgevV6fcV9XWOpHURxW/QcpTk47JTkkK2nTgWja4+u1JjFKESZfNphpugRkQSs
	Mfh95ZMGWRMSRxF7U74bOBVqpSNXR2zrrxS/f2flXPdVSxs78NKwLfGUj+rGmoySZqQBjaTBLFQt2
	TEavEDY4mCuY/ewbvmmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomHt-0008Di-5N; Tue, 07 Jan 2020 10:40:37 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomHZ-00086S-GW; Tue, 07 Jan 2020 10:40:24 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 007AeDDY083271;
 Tue, 7 Jan 2020 04:40:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578393613;
 bh=zvIW8/BtCQ5x8IHunoGoJlqB0iUARRig1KyivGH+pl8=;
 h=From:To:CC:Subject:Date;
 b=sgrUNFm+HFtu/0WLloZ6J1rLTAV5L3JDioCr933elKSaMrlRtRKw+7c5XjElhOn45
 DAD2DoaZ8bbnE32ekkkGGnnU3G6O1SC8Y7g07OXg/any2ItmU99pjFqjNHSR8eR+al
 mY8GFQsCbvzQE5NYFxcWrV4VEJxK23NQ3Kw+m55Y=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 007AeDEC012098
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 7 Jan 2020 04:40:13 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 7 Jan
 2020 04:40:12 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 7 Jan 2020 04:40:12 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 007Ae96n032006;
 Tue, 7 Jan 2020 04:40:09 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <ulf.hansson@linaro.org>, <f.fainelli@gmail.com>, <rjui@broadcom.com>,
 <sbranden@broadcom.com>, <nsaenzjulienne@suse.de>
Subject: [PATCH v2] mmc: bcm2835: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Tue, 7 Jan 2020 12:40:40 +0200
Message-ID: <20200107104040.14500-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_024017_652903_36DBAF45 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, vkoul@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
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
- jump to err: instead of returning in case of EPROBE_DEFER

Regards,
Peter

 drivers/mmc/host/bcm2835.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/bcm2835.c b/drivers/mmc/host/bcm2835.c
index 99f61fd2a658..c3d949847cbd 100644
--- a/drivers/mmc/host/bcm2835.c
+++ b/drivers/mmc/host/bcm2835.c
@@ -1393,7 +1393,17 @@ static int bcm2835_probe(struct platform_device *pdev)
 	host->dma_chan = NULL;
 	host->dma_desc = NULL;
 
-	host->dma_chan_rxtx = dma_request_slave_channel(dev, "rx-tx");
+	host->dma_chan_rxtx = dma_request_chan(dev, "rx-tx");
+	if (IS_ERR(host->dma_chan_rxtx)) {
+		ret = PTR_ERR(host->dma_chan_rxtx);
+		host->dma_chan_rxtx = NULL;
+
+		if (ret == -EPROBE_DEFER)
+			goto err;
+
+		/* Ignore errors to fall back to PIO mode */
+	}
+
 
 	clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(clk)) {
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
