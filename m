Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A87136EB3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 14:50:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1DtLsvS3zQ+ItVHcrnnbKUs/L9JSI3vttx+t9vRvl8=; b=GdVQSqWac1/vAz
	b9p7b9ePJ6WY8WAbUyNUS+au04iKVfBHXvPdfYCudaNQ8djzBTnmlUsekLUIC4KMsAuOZBSb4OB6v
	Nmlrauyvbcx9Io/o3QNIxaoJbY+kW12IrRptP2UVvUBOUnETcHebGxI19tDvmmR051SQ53ajQ+Hx0
	hYMKD31lcJAgUZlaGSgzaLD73Lv2KRerGtsnNf4if3VK0mkUXjWdXtsAQ8zsLZ9Q6duXLxHfIgktc
	xRWDgvwpFe9A/BN1zow01Ru5wPnpDv4IuSNb4OlJUJm9g3TN9kM9r7rmlRVbefUumIWNcdcnlyylI
	126JnFhtqgvWBdkEOK0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipugA-0004zt-RX; Fri, 10 Jan 2020 13:50:22 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipuev-0004CS-Qm
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 13:49:07 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00ADlv31031935; Fri, 10 Jan 2020 14:48:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=zSO43Ydnuqcl10iVBmC1jcT/MTvx9uPvlQZoKvLctkI=;
 b=JEFAcO6OGct43SX5Pw46F5W4y2yGMOKP8ZBlS0ZskIrzi30Jjc1WnkUFrp+n6JkNZCbP
 sgU9VUWuLNkz+Ong1hJoqwmMacftQCSBJpBAfW1bz5hU3UeU4BantS8eMHrpyi9pAu8u
 MhoAINkMx1RytmgHAU4yiHCuyuJE9gviFdkaEicZ51x+9zW3UIcRvxZzmrw5CIU40NaJ
 qflVGmAimTINYa9UyoHq8qu098T7tKxj3f4JO6ZrgY3YsuhDAiNVzepZgHcsBHgiXakk
 GoZXi+EMNjnsrGDr0kmrDW/Ig4ZKCiL/egsTNGB3bxqAUKzWAIPyYGclGX/Uf7GWDY/A Hg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakur7dt9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2020 14:48:59 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1631810002A;
 Fri, 10 Jan 2020 14:48:59 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0271A2BC7C9;
 Fri, 10 Jan 2020 14:48:59 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 10 Jan 2020 14:48:58 +0100
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/9] mmc: mmci: sdmmc: rename sdmmc_priv struct to sdmmc_idma
Date: Fri, 10 Jan 2020 14:48:16 +0100
Message-ID: <20200110134823.14882-3-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110134823.14882-1-ludovic.barre@st.com>
References: <20200110134823.14882-1-ludovic.barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-10_01:2020-01-10,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_054906_186316_EBD83090 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This patch renames sdmmc_priv struct to sdmmc_idma
which is assigned to host->dma_priv.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci_stm32_sdmmc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mmc/host/mmci_stm32_sdmmc.c b/drivers/mmc/host/mmci_stm32_sdmmc.c
index 6ccfbbc82c77..df08f6662431 100644
--- a/drivers/mmc/host/mmci_stm32_sdmmc.c
+++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
@@ -20,7 +20,7 @@ struct sdmmc_lli_desc {
 	u32 idmasize;
 };
 
-struct sdmmc_priv {
+struct sdmmc_idma {
 	dma_addr_t sg_dma;
 	void *sg_cpu;
 };
@@ -92,7 +92,7 @@ static void sdmmc_idma_unprep_data(struct mmci_host *host,
 
 static int sdmmc_idma_setup(struct mmci_host *host)
 {
-	struct sdmmc_priv *idma;
+	struct sdmmc_idma *idma;
 
 	idma = devm_kzalloc(mmc_dev(host->mmc), sizeof(*idma), GFP_KERNEL);
 	if (!idma)
@@ -123,7 +123,7 @@ static int sdmmc_idma_setup(struct mmci_host *host)
 static int sdmmc_idma_start(struct mmci_host *host, unsigned int *datactrl)
 
 {
-	struct sdmmc_priv *idma = host->dma_priv;
+	struct sdmmc_idma *idma = host->dma_priv;
 	struct sdmmc_lli_desc *desc = (struct sdmmc_lli_desc *)idma->sg_cpu;
 	struct mmc_data *data = host->data;
 	struct scatterlist *sg;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
