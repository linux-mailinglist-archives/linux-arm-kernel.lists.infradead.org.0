Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1731F6909
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UET4JTi28V/YqZfauhEGmcYHQ2We8oqFOR0bHUhTgGM=; b=m98r7piWrgp1Sk
	Wb47AOG8gRzIe4668RChLyV0gNp6UkTJg7ht89uC5dvnySBtOEOAbWZbFqU98s1d85QaBBi5YyK15
	Q3NlJNMT5iTEcH4XMgeG+6xBSzOYmdlj3Nxmosvr5gHghgTTtBrWSZhOQrLKKOUcpkdu2W4o/QAda
	zyMCHErfs6rhN3Mw95GcIRw2wpWyGKlEHjUdz2BXc/WFySFwPzh7i4KXxTxFU2LIGVJgf2NwjoFHE
	AiBC6OT7SzZUc/4jjT2op93NWVAIO/3UKwBXkrYexcHtP2lxTCH488IJerZmUwa3zQS4eW6BVRT5e
	YVI56DRoOFrz00Safkhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNGY-00057X-6k; Thu, 11 Jun 2020 13:29:10 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNGR-000578-27
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 13:29:05 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05BDNNup014789; Thu, 11 Jun 2020 15:28:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=XL9z7/V+U5HkKeCU7/wVDcDZ122tdikkkBnJhib8NcA=;
 b=KtRUV29zz7edVwBG9SxLneT9I1w3neuWasapJHAnklsh3/HW/669sT+tG7cANv17zqXB
 MH+C/GXnJM73SVT8kfe2PGBy5+kNmrvUQyxUXVYibmnhFS2zPcfj4po/VSfNHUvIWlLc
 O5F6JwUdpMo2UYvwt9hEId2B6mFPmwq70iMijmRwYcpRGqGKgOux6RJPdhR0X3BCH+wZ
 wn6ky1hEVNi8Ds2niTQyz9gBWxR4rNCLiyp8nFBSuMzypiDVS4KTo5m7XxHLpiGODWb3
 LLflgi5PkKAP0tECF+bitleKiWtj9dJiwcZJChTvhb43CW87rNTJFPQSdpo6kH+8WiiA Dg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31jppp0cf8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 11 Jun 2020 15:28:54 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0100E10002A;
 Thu, 11 Jun 2020 15:28:53 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E1F542A48CC;
 Thu, 11 Jun 2020 15:28:52 +0200 (CEST)
Received: from localhost (10.75.127.50) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 11 Jun 2020 15:28:52 +0200
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] mmc: mmci: add sdio datactrl mask for sdmmc revisions
Date: Thu, 11 Jun 2020 15:28:39 +0200
Message-ID: <20200611132839.4515-1-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG5NODE2.st.com (10.75.127.14) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-11_14:2020-06-11,
 2020-06-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_062903_545453_BEE1BE33 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This patch adds datactrl_mask_sdio for sdmmc revisions.
sdmmc revisions used same bit of previous ST variant.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
index a69d6a0c2e15..b5a41a7ce165 100644
--- a/drivers/mmc/host/mmci.c
+++ b/drivers/mmc/host/mmci.c
@@ -267,6 +267,7 @@ static struct variant_data variant_stm32_sdmmc = {
 	.datalength_bits	= 25,
 	.datactrl_blocksz	= 14,
 	.datactrl_any_blocksz	= true,
+	.datactrl_mask_sdio	= MCI_DPSM_ST_SDIOEN,
 	.stm32_idmabsize_mask	= GENMASK(12, 5),
 	.busy_timeout		= true,
 	.busy_detect		= true,
@@ -292,6 +293,7 @@ static struct variant_data variant_stm32_sdmmcv2 = {
 	.datalength_bits	= 25,
 	.datactrl_blocksz	= 14,
 	.datactrl_any_blocksz	= true,
+	.datactrl_mask_sdio	= MCI_DPSM_ST_SDIOEN,
 	.stm32_idmabsize_mask	= GENMASK(16, 5),
 	.dma_lli		= true,
 	.busy_timeout		= true,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
