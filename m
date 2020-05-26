Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D0A1E260A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 17:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Ode5wJtgxezVxVBewqy7YDeQVQ9UFLhZ6v2TEUBrBI=; b=KJUK5JgRkCDWxm
	b4mLOtCMtXIyIxfnHndDKH9z2QQiEeSTGSXTA/cx0yooaUTxRqtI9f/ffYV/EQcOB/oPu6gXywa4Q
	7lvGh5TdbDDXLAqSUgjMCXC6uZWVtbtltpCFdgi7R+s9Kv6FIA4V81BFWGmZLDqxtFIw5xA6PFAo2
	YVb+CEPdwZoS+q5vwtaJDgrnJbAf/HDKl10PB022Rct+OdRKZ1TZ4Orw8MXAzQL5zPe7RimCQZZHQ
	q3r91qANLbs6bedEJPGKjwIEQpaGi5WRu9oMzt/DPetMRuoffPrfonMOQKVxRGMCvXvfz18BPPzUg
	XbrxNDIuKczf0w7a4EfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdbrq-0006fl-PW; Tue, 26 May 2020 15:51:50 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdbrM-0006U4-Vm
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 15:51:22 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04QFoWYl020753; Tue, 26 May 2020 17:51:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=+vt4wjn/3vceANeKrjrxUTiqAmA4dZtw1P85a9Xcyh0=;
 b=KK19vmH2WM0rXEUIpXEvfQFH0XT6Z+aqHO5LHrkuXMiLXQm1tp4UmeVf8PKAVJcsbXFD
 JXclkLlr92tANo9hlNYDRliAHRO3eedcELlTA3D6JkVoaGKG6GSrA4oZ5632cYjlVk5x
 G+/vjGAUe03PcNjHUoyFT8WXlWbn5aM08o0/P2yhsFbQ8Xgt3FB9t/5Wbn3wWvq74Qnt
 tH3gJSIi1sOWcHPCsIWA3fk1U6MNGGcQ1oeosEeBHj4XsS8+517pOWF5ACSx5ALPFWTg
 8MG5oEqm6mxersBmHV2gcj76J0LG2x562pYQ9JMyJqzfJLHo+NSVG5y3qd3W4ZPMOrkR mw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316skw8px6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 26 May 2020 17:51:14 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 263EA10002A;
 Tue, 26 May 2020 17:51:14 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0DA712C4B37;
 Tue, 26 May 2020 17:51:14 +0200 (CEST)
Received: from localhost (10.75.127.49) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 26 May 2020 17:51:13 +0200
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/2] mmc: mmci_sdmmc: fix DMA API warning max segment size
Date: Tue, 26 May 2020 17:51:03 +0200
Message-ID: <20200526155103.12514-3-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200526155103.12514-1-ludovic.barre@st.com>
References: <20200526155103.12514-1-ludovic.barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG8NODE3.st.com (10.75.127.24) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-26_02:2020-05-26,
 2020-05-26 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_085121_305045_3A8ECD39 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 srinivas.kandagatla@linaro.org, Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Turning on CONFIG_DMA_API_DEBUG_SG results in the following warning:
WARNING: CPU: 1 PID: 85 at kernel/dma/debug.c:1302 debug_dma_map_sg+0x2a0/0x3cc
mmci-pl18x 58005000.sdmmc: DMA-API: mapping sg segment longer than device claims to support [len=126976] [max=65536]

dma api debug checks and compares the segment size to
dma_get_max_seg_size (dev->dma_parms->max_segment_size),
the sdmmc variant has an internal DMA and should define
its max_segment_size constraint to avoid this warning.

This Patch defines the dev->dma_parms->max_segment_size
with the constraint already set for mmc core
(host->mmc->max_seg_size).

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci_stm32_sdmmc.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/mmc/host/mmci_stm32_sdmmc.c b/drivers/mmc/host/mmci_stm32_sdmmc.c
index 2965b1c062e1..51db30acf4dc 100644
--- a/drivers/mmc/host/mmci_stm32_sdmmc.c
+++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
@@ -119,20 +119,19 @@ static void sdmmc_idma_unprep_data(struct mmci_host *host,
 static int sdmmc_idma_setup(struct mmci_host *host)
 {
 	struct sdmmc_idma *idma;
+	struct device *dev = mmc_dev(host->mmc);
 
-	idma = devm_kzalloc(mmc_dev(host->mmc), sizeof(*idma), GFP_KERNEL);
+	idma = devm_kzalloc(dev, sizeof(*idma), GFP_KERNEL);
 	if (!idma)
 		return -ENOMEM;
 
 	host->dma_priv = idma;
 
 	if (host->variant->dma_lli) {
-		idma->sg_cpu = dmam_alloc_coherent(mmc_dev(host->mmc),
-						   SDMMC_LLI_BUF_LEN,
+		idma->sg_cpu = dmam_alloc_coherent(dev, SDMMC_LLI_BUF_LEN,
 						   &idma->sg_dma, GFP_KERNEL);
 		if (!idma->sg_cpu) {
-			dev_err(mmc_dev(host->mmc),
-				"Failed to alloc IDMA descriptor\n");
+			dev_err(dev, "Failed to alloc IDMA descriptor\n");
 			return -ENOMEM;
 		}
 		host->mmc->max_segs = SDMMC_LLI_BUF_LEN /
@@ -143,7 +142,7 @@ static int sdmmc_idma_setup(struct mmci_host *host)
 		host->mmc->max_seg_size = host->mmc->max_req_size;
 	}
 
-	return 0;
+	return dma_set_max_seg_size(dev, host->mmc->max_seg_size);
 }
 
 static int sdmmc_idma_start(struct mmci_host *host, unsigned int *datactrl)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
