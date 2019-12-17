Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE631225E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 08:52:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rzo54SAAl2I28DSa8sckeAMh6p43DcnJmembJrdOBYw=; b=OkRHZs488hIwxc
	ko1OlsGPTHv8hN4wKRH+GACq7nZmrrOrgG+I2XPWI2x9gxeYhs1qDvTu5L2ltdOWYcaN8FIXBUZna
	AbyPpkEwyT6/N88mFMrhYQ458/WPC12IuKw5sHNU1sBCwTRYvYC+gfGjWvoBvuayCmJTiYUsI0TDf
	AQ1Gq4jx00tMiZB3U50jTTzpl4MH7ZxzLKjvcTv1NYJduzEYalRi4mAmzHHHD7fDX3kaq0Wr7clOq
	jXJWdDEOMJKd1e+xrwTHccLkDQcE8nTUNqiAKiMtOe5pnJODyxeFiTGAmOAY3Kx/5PraEB4geHbrr
	4sAwdzvpWwvPhlJGM48Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7eZ-0007Li-8v; Tue, 17 Dec 2019 07:52:23 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7eM-0007LD-FX
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 07:52:11 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBH7q8a8082887;
 Tue, 17 Dec 2019 01:52:08 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576569128;
 bh=JVOtlzp4SCMmIRdgV0Dwkwtw1zBJBOLFQP857cg/zhQ=;
 h=From:To:CC:Subject:Date;
 b=DQagl2Z9mA1II7/LrIfOiy+kvnFSvq3LR3YTlC9lD84Uor6OTYU0zqJ5QNAkjXRS5
 IqFGPMfHchR75vQ7BqWh0VTz+v6B76K3TtXcE1DJupzGuHCBVn16BaYcag7sw8h2k5
 rGBNOjHJ1PoW29Y8SrgJfYWZE47i88SCielTyrJY=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBH7q8jP049798
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 17 Dec 2019 01:52:08 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 17
 Dec 2019 01:52:08 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 17 Dec 2019 01:52:08 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBH7q5MV115230;
 Tue, 17 Dec 2019 01:52:06 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <jic23@kernel.org>, <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH] iio: adc: stm32-dfsdm: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Tue, 17 Dec 2019 09:52:21 +0200
Message-ID: <20191217075221.23895-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_235210_561136_E5923799 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-iio@vger.kernel.org, vkoul@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
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
 drivers/iio/adc/stm32-dfsdm-adc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
index e493242c266e..3aac1a21f9d0 100644
--- a/drivers/iio/adc/stm32-dfsdm-adc.c
+++ b/drivers/iio/adc/stm32-dfsdm-adc.c
@@ -1383,9 +1383,9 @@ static int stm32_dfsdm_dma_request(struct iio_dev *indio_dev)
 {
 	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
 
-	adc->dma_chan = dma_request_slave_channel(&indio_dev->dev, "rx");
-	if (!adc->dma_chan)
-		return -EINVAL;
+	adc->dma_chan = dma_request_chan(&indio_dev->dev, "rx");
+	if (IS_ERR(adc->dma_chan))
+		return PTR_ERR(adc->dma_chan);
 
 	adc->rx_buf = dma_alloc_coherent(adc->dma_chan->device->dev,
 					 DFSDM_DMA_BUFFER_SIZE,
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
