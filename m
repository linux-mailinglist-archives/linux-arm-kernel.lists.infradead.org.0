Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5719E13245B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 11:59:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=43gIkex7Ca3YevPyiDsV2aAU2sekiza00oN51kJLJnE=; b=uC4p3PdZkFiWwB
	R6j3a4pu8pjAENbnHNiVFAVS7woj1eauv4gMPc8mR0wGzQf/pFjv/u7u2ebJ5R8yn744bTKgMReSK
	PHgwQHg4/c2XJlUonte9PHQo+D7ZLjo6iyNgiSrV9IqVCHkMH2jtRLuQ7M+BEZPlWom8lN/qHRUlp
	VLbe4SMHHJC4BXw3ZELavkWHKjUIiDBhiZe+2quIgy7CxB/CsX7j5kSgce4o9FiGZV8AJtcwiLClR
	2L3IGOV8nL3NYrHAgnvyAxTzAOg+24mbnZh7QkXcrbHdq7nyQagR1sJW6fD9ydiGNsjSd1R2omGMG
	s+zelX6ecBnwtAQvV/xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomaP-0007q5-1S; Tue, 07 Jan 2020 10:59:45 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomaE-0007pT-2i
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 10:59:35 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 007AxVUx059569;
 Tue, 7 Jan 2020 04:59:31 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578394771;
 bh=D7FXGxYVTAceLEBGDbCBjzOcuiBKOxf2M1bFoAUt/NE=;
 h=From:To:CC:Subject:Date;
 b=O6Et+GzsFIiL8cw6eGlrabPSKqFVATT2H4cd3hUkaMmPEUtKpPfMKJFD5ZtWRZGx0
 rz4k6ts+3nixhIrxoeL/4Vet36n+ON69/0fX5DQ4rR3RGj9wGuSqnmqY69+Ez77LHG
 whNlFgnP4hqfmfae4oxvfaCFS76MUUddmEOsCw8U=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 007AxVbB040093
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 7 Jan 2020 04:59:31 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 7 Jan
 2020 04:59:31 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 7 Jan 2020 04:59:31 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 007AxSIe111229;
 Tue, 7 Jan 2020 04:59:29 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <fabrice.gasnier@st.com>, <lee.jones@linaro.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH v2] mfd: stm32-timers: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Tue, 7 Jan 2020 12:59:59 +0200
Message-ID: <20200107105959.18920-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_025934_204703_3D9646E5 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
Cc: vkoul@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
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
- Fall back to PIO mode only in case of ENODEV and report all other errors

Regards,
Peter

 drivers/mfd/stm32-timers.c | 32 +++++++++++++++++++++++---------
 1 file changed, 23 insertions(+), 9 deletions(-)

diff --git a/drivers/mfd/stm32-timers.c b/drivers/mfd/stm32-timers.c
index efcd4b980c94..add603359124 100644
--- a/drivers/mfd/stm32-timers.c
+++ b/drivers/mfd/stm32-timers.c
@@ -167,10 +167,11 @@ static void stm32_timers_get_arr_size(struct stm32_timers *ddata)
 	regmap_write(ddata->regmap, TIM_ARR, 0x0);
 }
 
-static void stm32_timers_dma_probe(struct device *dev,
+static int stm32_timers_dma_probe(struct device *dev,
 				   struct stm32_timers *ddata)
 {
 	int i;
+	int ret = 0;
 	char name[4];
 
 	init_completion(&ddata->dma.completion);
@@ -179,14 +180,23 @@ static void stm32_timers_dma_probe(struct device *dev,
 	/* Optional DMA support: get valid DMA channel(s) or NULL */
 	for (i = STM32_TIMERS_DMA_CH1; i <= STM32_TIMERS_DMA_CH4; i++) {
 		snprintf(name, ARRAY_SIZE(name), "ch%1d", i + 1);
-		ddata->dma.chans[i] = dma_request_slave_channel(dev, name);
+		ddata->dma.chans[i] = dma_request_chan(dev, name);
 	}
-	ddata->dma.chans[STM32_TIMERS_DMA_UP] =
-		dma_request_slave_channel(dev, "up");
-	ddata->dma.chans[STM32_TIMERS_DMA_TRIG] =
-		dma_request_slave_channel(dev, "trig");
-	ddata->dma.chans[STM32_TIMERS_DMA_COM] =
-		dma_request_slave_channel(dev, "com");
+	ddata->dma.chans[STM32_TIMERS_DMA_UP] = dma_request_chan(dev, "up");
+	ddata->dma.chans[STM32_TIMERS_DMA_TRIG] = dma_request_chan(dev, "trig");
+	ddata->dma.chans[STM32_TIMERS_DMA_COM] = dma_request_chan(dev, "com");
+
+	for (i = STM32_TIMERS_DMA_CH1; i < STM32_TIMERS_MAX_DMAS; i++) {
+		if (IS_ERR(ddata->dma.chans[i])) {
+			/* Save the first error code to return */
+			if (PTR_ERR(ddata->dma.chans[i]) != -ENODEV && !ret)
+				ret = PTR_ERR(ddata->dma.chans[i]);
+
+			ddata->dma.chans[i] = NULL;
+		}
+	}
+
+	return ret;
 }
 
 static void stm32_timers_dma_remove(struct device *dev,
@@ -230,7 +240,11 @@ static int stm32_timers_probe(struct platform_device *pdev)
 
 	stm32_timers_get_arr_size(ddata);
 
-	stm32_timers_dma_probe(dev, ddata);
+	ret = stm32_timers_dma_probe(dev, ddata);
+	if (ret) {
+		stm32_timers_dma_remove(dev, ddata);
+		return ret;
+	}
 
 	platform_set_drvdata(pdev, ddata);
 
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
