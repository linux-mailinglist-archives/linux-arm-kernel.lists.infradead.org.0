Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D709F1228B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 11:31:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3kzKY+j5JwqZXs4RkPQXjj5FfuGAZfuV0hATsN9eoAY=; b=oTZbOdjwz35Ubp
	wGQ9/GgBra5oiCwBMlw+mVIYC/mLuoOawmKuQ4C9/Wo6qfTaOk1B+i2m2IfWQRNd4/2p/dh3u3/Hg
	CuNH/234U374amu2sHEk8g7YJXa/5jCplNepFy98UHjajPYluPi+RiYAY11q8pINiR0l7KRRu4Jnt
	+F0JWh7BZjvKMB2idXONerEmbXYcDpzaDB7Vsx9SchnlE7cCi1qsYogpLIYN7K7QSxF0coNV4tO/o
	ayi8/xAi6gt+mB1UulNC3ByB4sZRmeEglgyGHNOrxMUFoNtTzsCvf99FJsmvHCHW1t9yJYbSAdpIO
	mQoCAWDPZQL6IVdHVCvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihA84-0002jw-RU; Tue, 17 Dec 2019 10:31:00 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihA7w-0002io-MH
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 10:30:54 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBHAUm5u050488;
 Tue, 17 Dec 2019 04:30:48 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576578648;
 bh=wn9on6RN9KiGYb9rI8S4DAOXkDSo3d7fRdwU9g+FaTA=;
 h=From:To:CC:Subject:Date;
 b=x7sLPKbcxzPWH+usRT26UK5EUqUbEGPxt5+9yxa99u7YYP70x3Y4QNNcE1GJD+YCL
 WVcIaapLCfoK9Fb3JddvNT5XPQp2PipwghNDWKL3WjlEPZobdQ660nVyVqoF8D6+lJ
 xZk6P9Eq3j53FrOcvN8hpRxjeCMZJwO84tdq4Kc0=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBHAUmVR114748
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 17 Dec 2019 04:30:48 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 17
 Dec 2019 04:30:48 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 17 Dec 2019 04:30:48 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBHAUjHU114386;
 Tue, 17 Dec 2019 04:30:45 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <jic23@kernel.org>
Subject: [PATCH v2] iio: adc: at91-sama5d2_adc: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Tue, 17 Dec 2019 12:31:00 +0200
Message-ID: <20191217103100.21737-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_023052_772109_74C25267 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-iio@vger.kernel.org, ludovic.desroches@microchip.com,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, eugen.hristev@microchip.com,
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
- Subject prefix is corrected to "iio: adc: at91-sama5d2_adc:"

Regards,
Peter

 drivers/iio/adc/at91-sama5d2_adc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
index e1850f3d5cf3..a5c7771227d5 100644
--- a/drivers/iio/adc/at91-sama5d2_adc.c
+++ b/drivers/iio/adc/at91-sama5d2_adc.c
@@ -1444,10 +1444,10 @@ static void at91_adc_dma_init(struct platform_device *pdev)
 	if (st->dma_st.dma_chan)
 		return;
 
-	st->dma_st.dma_chan = dma_request_slave_channel(&pdev->dev, "rx");
-
-	if (!st->dma_st.dma_chan)  {
+	st->dma_st.dma_chan = dma_request_chan(&pdev->dev, "rx");
+	if (IS_ERR(st->dma_st.dma_chan))  {
 		dev_info(&pdev->dev, "can't get DMA channel\n");
+		st->dma_st.dma_chan = NULL;
 		goto dma_exit;
 	}
 
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
