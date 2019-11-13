Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D5FFAD61
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 10:43:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wPO/1lAIK48liBSgJpKGVlfVyl4WPqOHixJtMUFKp3o=; b=Ho4hlaH+t2xKll
	yOhraadG9rIlFGq0a/ViA444g6r9nl+qyMCAOvs5SKZoySERMRBM82OLFKO2kOYHJwVkH4VJp5g5Y
	aLHuiq1wLmGaSHdjqUhyRaU8HU+ytMmh2XukbuZiHHfyDDPRvWexAqttwJJkvhR+5T7Qb0p8OtUik
	peb970Seg9C4MbgGDp91xFccfrUUpKJBks5vZknwfwazK+F8vGtQp4m4kzbPkS6A+ly89zfgMJOMx
	Wadvfvgq9aPSt0h+yKQ4S98QJW8P+DCTIlbYL1fGx0Z0LcIscn7ikXE+SOPo8rBQYQVUP5OQZFgTT
	UiYJseihG5+E2aHjWK1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpBn-0000m8-PD; Wed, 13 Nov 2019 09:43:51 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpAQ-00088z-P1
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 09:42:28 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAD9gCs1063831;
 Wed, 13 Nov 2019 03:42:12 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573638132;
 bh=OqtLYKj0zrMlp4PwJ4rkxdZq/2B0NiRl7pWO/Td8PyY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Ge+o5HHx1Y1Be2oLJo64/pQEj5SZaaBFIX1VoXVqyXsNyKr+cmPf14R6wM9ehwq5K
 OWFWKMCLBuZTTtLEwJ2LEE0pCamNy8ETqVZjz8ALnSZNNTcDOxC6MT9FC1riN1P1+B
 wYEZ3E/e9L1unOA0MK/zIvjJjt8ZuOUzdabSBFlg=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAD9gCQA002445
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 13 Nov 2019 03:42:12 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 13
 Nov 2019 03:41:54 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 13 Nov 2019 03:41:54 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAD9feM6072663;
 Wed, 13 Nov 2019 03:42:08 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <broonie@kernel.org>, <radu_nicolae.pirea@upb.ro>, <shawnguo@kernel.org>, 
 <s.hauer@pengutronix.de>, <linus.walleij@linaro.org>,
 <agross@kernel.org>, <bjorn.andersson@linaro.org>, <andi@etezian.org>,
 <ldewangan@nvidia.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
Subject: [PATCH 6/9] spi: qup: Use dma_request_chan() directly for channel
 request
Date: Wed, 13 Nov 2019 11:42:53 +0200
Message-ID: <20191113094256.1108-7-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191113094256.1108-1-peter.ujfalusi@ti.com>
References: <20191113094256.1108-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_014226_927684_1A725007 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, krzk@kernel.org, linux-spi@vger.kernel.org,
 vkoul@kernel.org, kgene@kernel.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dma_request_slave_channel_reason() is:
#define dma_request_slave_channel_reason(dev, name) \
	dma_request_chan(dev, name)

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/spi/spi-qup.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-qup.c b/drivers/spi/spi-qup.c
index 2f559e531100..dd3434a407ea 100644
--- a/drivers/spi/spi-qup.c
+++ b/drivers/spi/spi-qup.c
@@ -932,11 +932,11 @@ static int spi_qup_init_dma(struct spi_master *master, resource_size_t base)
 	int ret;
 
 	/* allocate dma resources, if available */
-	master->dma_rx = dma_request_slave_channel_reason(dev, "rx");
+	master->dma_rx = dma_request_chan(dev, "rx");
 	if (IS_ERR(master->dma_rx))
 		return PTR_ERR(master->dma_rx);
 
-	master->dma_tx = dma_request_slave_channel_reason(dev, "tx");
+	master->dma_tx = dma_request_chan(dev, "tx");
 	if (IS_ERR(master->dma_tx)) {
 		ret = PTR_ERR(master->dma_tx);
 		goto err_tx;
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
