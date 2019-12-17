Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD08612293F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 11:52:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hjWuyw+f7ZMCEb7I+i7LYVaPZ/su92MhGs+8vl79spo=; b=ZAXmjHMLwYPcvT
	m0xW66Ug1hoI0Mj8zj+FEz+M4HM+gHsX4fvcOtsIY5mJaHMJmsB8oVtOszn9u6uGPTd3Rt52XUTa1
	bSEnHXw5waWYWY2j8aU9CYFgepv5rWsQLED4fR4RQdiKxAIXc9vyook1GuQhbczxwqZCt9pOS+5Yh
	6/7rdjYhiq1N9g/u31UHyb65P3SI34Afm3t9og0SyEgpa2F5h5H/PxTK/pZQUBVEYLmT0AEp2i9P8
	gXt8/nqVjjtOJJfZRrGtjPQ+QsDbQprdtQUdGsUv1QJARHdYzFXdhHqY3eACMcooW0J3PFtxEOD56
	pqhK//JxzKqBwO5D/kNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihAT2-0002p4-0o; Tue, 17 Dec 2019 10:52:40 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihASt-0002oT-En
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 10:52:32 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBHAqSQ7021780;
 Tue, 17 Dec 2019 04:52:28 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576579948;
 bh=MnppYqWFagjABTCEaRtDQDACXWEBFJi+7m0e6X3GYEg=;
 h=From:To:CC:Subject:Date;
 b=Shbo92/qOmBGGLk11XqpYELmm0D1uRJRMJ9jCixaDdvt/SF+hVm12KhOJNKX0pUvP
 Uti6aZhRY8dfh0OpBi4Bzib0b6MVhex7jbCc+HdJB69nu4BcnwpgJQ5w+JPnrN6fBO
 d6hlpBLbcLhP20nUW4n9vMEfpK5HiZN+oKDIqAjQ=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBHAqSPP068295
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 17 Dec 2019 04:52:28 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 17
 Dec 2019 04:52:28 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 17 Dec 2019 04:52:28 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBHAqP6G047872;
 Tue, 17 Dec 2019 04:52:26 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <fabrice.gasnier@st.com>, <lee.jones@linaro.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH] mfd: stm32-timers: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Tue, 17 Dec 2019 12:52:40 +0200
Message-ID: <20191217105240.25648-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_025231_577148_6D3533C6 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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
 drivers/mfd/stm32-timers.c | 31 ++++++++++++++++++++++---------
 1 file changed, 22 insertions(+), 9 deletions(-)

diff --git a/drivers/mfd/stm32-timers.c b/drivers/mfd/stm32-timers.c
index efcd4b980c94..34747e8a4a40 100644
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
@@ -179,14 +180,22 @@ static void stm32_timers_dma_probe(struct device *dev,
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
+			if (PTR_ERR(ddata->dma.chans[i]) == -EPROBE_DEFER)
+				ret = -EPROBE_DEFER;
+
+			ddata->dma.chans[i] = NULL;
+		}
+	}
+
+	return ret;
 }
 
 static void stm32_timers_dma_remove(struct device *dev,
@@ -230,7 +239,11 @@ static int stm32_timers_probe(struct platform_device *pdev)
 
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
