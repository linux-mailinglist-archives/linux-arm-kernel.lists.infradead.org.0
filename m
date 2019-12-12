Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C6411CEFD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 14:58:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTE+82OVNwowHNKtX17Tj/0rvsFzAwNU6VCR2AMPlpA=; b=EVCjBaxWUVqAoX
	PKH8OKdADurYvt5khqmOgWiSLnjQw7oYNnhikF9lkenFETlF6H4zHxpAqf8fCVE6nw+U/WcdG/+vp
	34R6ukJoPlUDdpqgSdbtSF+KYpiroX5w21yIxIBFeAFRD5kzgYezM3JRs3gbNRlDfMc3OtFCnffqt
	lyTL25heoEXSHVxU6xxoTrRWg/enFmzV9CADlIvp30dVjJ58E1KwZMGfpzo/afcy2W7ePvu5dO8+7
	EkwCKZ5jGNNZwTSi2OWto2liENiUK7NDEI66l0DnrKPQLMLqQfs0Ik8HlsqqPJe3fPYYfPNenvV2k
	IUwTgnD5ngToIpi4HYcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifOyg-0006Uh-UW; Thu, 12 Dec 2019 13:58:02 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifOx0-0004m0-39; Thu, 12 Dec 2019 13:56:19 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBCDuGqo009067;
 Thu, 12 Dec 2019 07:56:16 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576158976;
 bh=GufpDqc/JsjNnk5yJpyjIjNCslz2RxoV+SAcmiZ8xk8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Nz6TLqNez/VlFzVcmNAVmLTW+ivYsv/Hnj3n02im4EkIY3qdHIbhPWbNfp77t4onc
 nvjel4ZQAzU15S50IvRb0YyiWzLLU12uNlbRzATwx3XJR7NYh16KY/DMfS63M05i82
 TeM1akRUu76tlP4PvOR/ARz4t4F3VF8Znw5rA+Ys=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBCDuFKS019946
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Dec 2019 07:56:16 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Dec 2019 07:56:15 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Dec 2019 07:56:15 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBCDtdqY048444;
 Thu, 12 Dec 2019 07:56:11 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <broonie@kernel.org>, <nsaenzjulienne@suse.de>, <f.fainelli@gmail.com>,
 <rjui@broadcom.com>, <sbranden@broadcom.com>, <shawnguo@kernel.org>,
 <s.hauer@pengutronix.de>, <baohua@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 8/9] spi: stm32-qspi: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Thu, 12 Dec 2019 15:55:49 +0200
Message-ID: <20191212135550.4634-9-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191212135550.4634-1-peter.ujfalusi@ti.com>
References: <20191212135550.4634-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_055618_231520_00355723 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, vkoul@kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
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
 drivers/spi/spi-stm32-qspi.c | 30 ++++++++++++++++++++++++------
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/spi/spi-stm32-qspi.c b/drivers/spi/spi-stm32-qspi.c
index 4e726929bb4f..4ef569b47aa6 100644
--- a/drivers/spi/spi-stm32-qspi.c
+++ b/drivers/spi/spi-stm32-qspi.c
@@ -470,10 +470,11 @@ static int stm32_qspi_setup(struct spi_device *spi)
 	return 0;
 }
 
-static void stm32_qspi_dma_setup(struct stm32_qspi *qspi)
+static int stm32_qspi_dma_setup(struct stm32_qspi *qspi)
 {
 	struct dma_slave_config dma_cfg;
 	struct device *dev = qspi->dev;
+	int ret = 0;
 
 	memset(&dma_cfg, 0, sizeof(dma_cfg));
 
@@ -484,8 +485,13 @@ static void stm32_qspi_dma_setup(struct stm32_qspi *qspi)
 	dma_cfg.src_maxburst = 4;
 	dma_cfg.dst_maxburst = 4;
 
-	qspi->dma_chrx = dma_request_slave_channel(dev, "rx");
-	if (qspi->dma_chrx) {
+	qspi->dma_chrx = dma_request_chan(dev, "rx");
+	if (IS_ERR(qspi->dma_chrx)) {
+		ret = PTR_ERR(qspi->dma_chrx);
+		qspi->dma_chrx = NULL;
+		if (ret == -EPROBE_DEFER)
+			goto out;
+	} else {
 		if (dmaengine_slave_config(qspi->dma_chrx, &dma_cfg)) {
 			dev_err(dev, "dma rx config failed\n");
 			dma_release_channel(qspi->dma_chrx);
@@ -493,8 +499,11 @@ static void stm32_qspi_dma_setup(struct stm32_qspi *qspi)
 		}
 	}
 
-	qspi->dma_chtx = dma_request_slave_channel(dev, "tx");
-	if (qspi->dma_chtx) {
+	qspi->dma_chtx = dma_request_chan(dev, "tx");
+	if (IS_ERR(qspi->dma_chtx)) {
+		ret = PTR_ERR(qspi->dma_chtx);
+		qspi->dma_chtx = NULL;
+	} else {
 		if (dmaengine_slave_config(qspi->dma_chtx, &dma_cfg)) {
 			dev_err(dev, "dma tx config failed\n");
 			dma_release_channel(qspi->dma_chtx);
@@ -502,7 +511,13 @@ static void stm32_qspi_dma_setup(struct stm32_qspi *qspi)
 		}
 	}
 
+out:
 	init_completion(&qspi->dma_completion);
+
+	if (ret != -EPROBE_DEFER)
+		ret = 0;
+
+	return ret;
 }
 
 static void stm32_qspi_dma_free(struct stm32_qspi *qspi)
@@ -608,7 +623,10 @@ static int stm32_qspi_probe(struct platform_device *pdev)
 
 	qspi->dev = dev;
 	platform_set_drvdata(pdev, qspi);
-	stm32_qspi_dma_setup(qspi);
+	ret = stm32_qspi_dma_setup(qspi);
+	if (ret)
+		goto err;
+
 	mutex_init(&qspi->lock);
 
 	ctrl->mode_bits = SPI_RX_DUAL | SPI_RX_QUAD
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
