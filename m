Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CA4122A01
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 12:29:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QEJbc3MJ9LXS4UzCk1msN6R4z5T2XyceRB0XgH3pWPQ=; b=lBumUeKr2Hhy4Z
	Y6Tf116EdikEl6ng5GeBZCCWNvgBFOY8l2BGCo5uj9aUGaaa8k9ocXYNNpk13xSXfDWBndX4wcsbp
	YY9MLjxj1ZJhkbMIPEQ2Beo3f4tqxr07Y63tnBGI6gwuxkKInEBe/K1M3CVYr78tNcX56zNm7MEe2
	zRRisJ/XwElcGsrioEpSXQZQx/Nwnm3fELCQHsW8+sf3yXVmXUAG9/3th9psIic4P/VNjlICvGLkp
	3GDq6Wp9Q7jOUXO6BJjmUUyQqOJDgkl5Yse/SXfieHifdOEEEcTBZAw4fJefzxvEwTxUOPK9mo7fc
	lp6GUhi1cCX87I46UxJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihB2k-0002V3-HE; Tue, 17 Dec 2019 11:29:34 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihB2a-0002UZ-19
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 11:29:25 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBHBTMbJ034984;
 Tue, 17 Dec 2019 05:29:22 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576582162;
 bh=YMjqbdZ7feS6rSPFo/YDw8Ybu6WZRw8uBRkH3/RHM08=;
 h=From:To:CC:Subject:Date;
 b=DiNootKCbH0XSHisoQzvEs/p+jaIWIoGKDMPTkc1Pt7lWdor5D9/7fIFkk+KF6LnF
 4abtsPjN4mmFT4i/SJ12YmPB8S9sTIux6hEzfFWEOsaN5Lvqn4b5bo1B31LCKnITup
 gf7rMBc0sFfiPeat2+AAd3fFJeLrt6CDhFRX0LLY=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBHBTMWv020496
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 17 Dec 2019 05:29:22 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 17
 Dec 2019 05:29:21 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 17 Dec 2019 05:29:21 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBHBTIsx087111;
 Tue, 17 Dec 2019 05:29:19 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <ulf.hansson@linaro.org>, <afaerber@suse.de>
Subject: [PATCH] mmc: owl-mmc: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Tue, 17 Dec 2019 13:29:34 +0200
Message-ID: <20191217112934.31535-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_032924_110923_92D3CCEB 
X-CRM114-Status: GOOD (  12.66  )
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
Cc: vkoul@kernel.org, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, manivannan.sadhasivam@linaro.org
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
 drivers/mmc/host/owl-mmc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mmc/host/owl-mmc.c b/drivers/mmc/host/owl-mmc.c
index 771e3d00f1bb..01ffe51f413d 100644
--- a/drivers/mmc/host/owl-mmc.c
+++ b/drivers/mmc/host/owl-mmc.c
@@ -616,10 +616,10 @@ static int owl_mmc_probe(struct platform_device *pdev)
 
 	pdev->dev.coherent_dma_mask = DMA_BIT_MASK(32);
 	pdev->dev.dma_mask = &pdev->dev.coherent_dma_mask;
-	owl_host->dma = dma_request_slave_channel(&pdev->dev, "mmc");
-	if (!owl_host->dma) {
+	owl_host->dma = dma_request_chan(&pdev->dev, "mmc");
+	if (IS_ERR(owl_host->dma)) {
 		dev_err(owl_host->dev, "Failed to get external DMA channel.\n");
-		ret = -ENXIO;
+		ret = PTR_ERR(owl_host->dma);
 		goto err_free_host;
 	}
 
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
