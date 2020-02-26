Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A876416F9D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 09:41:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wv31KqF0M5rdolG6I5cB9I/LD8Ct5VcdyUuiT1KVUs8=; b=FdG8Ce1GldyUkM
	jtewtzXrz8VHYzD2yOVq/1lXVeEd+wlIf7JxTuY4y/J7vOm2XruNGyEfcmbsMEqWOTAX2tXG6cvwX
	4i4CU6TJCTRKw/UjrYrEOdNBJGrexlV1MtbXBqqg6zWTyb4PogyyCNfZd0XsROhiC8tFLiliI2D5I
	vZinY9t4m1QvemhE0pQqSnQoFybD4+yuofp2qR8drdc44spa6ohO2b0gYW52dH3S13BsPHVSVpp69
	B3kpzIdExmTtlPXZsgOWk9LU7pCo223rfD4zIJwyqvSpNFt57hFrXmpCkBNzi+BtfnnN/jynWDAZc
	DorgiWwA12T4YEbHU20w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6sFl-0003le-U8; Wed, 26 Feb 2020 08:41:13 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6sF7-0003aQ-O1
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 08:40:37 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01Q8crEg027973; Wed, 26 Feb 2020 09:40:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=UTNAbP13GzjPHqEdVThO2cR89yJ3a5MfyLKzDHxgcvU=;
 b=fqUdeqGfpujOuJ5oG07BCO06VytcD3iFDMOqKGVbRyskAC6UTHv1Mx2mpZXQc6FLnEjT
 xxyqXNo5Y0LOEEwoFK6JQSAxwP1rKDyBjcQibV86Ehx5riqHYdBxFNql1gl9aXBu1Crd
 5QXCQPvLQHzcjxEVvL0NS2CWK/9GjG6eFuxaz8l+rvl0QMpuRfg9syvyDI/LN3vqICLR
 ZlM5teH5joaqQsi8fQHqQTSeWrEGq8nmAJwWXQB9x+orAh064a/dV1AZ6Qn2a6LTg8oY
 XaOckX9s+fH7yV/SMNC8TE3GozA8gsl1HG3emwfXeEnZ92vcL4TxV7WkONl7GGy+EISA ZA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2ydcpgagsv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 26 Feb 2020 09:40:23 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 33994100038;
 Wed, 26 Feb 2020 09:40:19 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 26AB02AC906;
 Wed, 26 Feb 2020 09:40:19 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 26 Feb 2020 09:40:18 +0100
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/4] mmc: mmci_sdmmc: fix DMA API warning overlapping mappings
Date: Wed, 26 Feb 2020 09:40:12 +0100
Message-ID: <20200226084014.5242-3-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226084014.5242-1-ludovic.barre@st.com>
References: <20200226084014.5242-1-ludovic.barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-26_02:2020-02-25,
 2020-02-26 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_004034_084196_2DEC54AE 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

Turning on CONFIG_DMA_API_DEBUG_SG results in the following warning:
WARNING: CPU: 1 PID: 20 at kernel/dma/debug.c:500 add_dma_entry+0x16c/0x17c
DMA-API: exceeded 7 overlapping mappings of cacheline 0x031d2645
Modules linked in:
CPU: 1 PID: 20 Comm: kworker/1:1 Not tainted 5.5.0-rc2-00021-gdeda30999c2b-dirty #49
Hardware name: STM32 (Device Tree Support)
Workqueue: events_freezable mmc_rescan
[<c03138c0>] (unwind_backtrace) from [<c030d760>] (show_stack+0x10/0x14)
[<c030d760>] (show_stack) from [<c0f2eb28>] (dump_stack+0xc0/0xd4)
[<c0f2eb28>] (dump_stack) from [<c034a14c>] (__warn+0xd0/0xf8)
[<c034a14c>] (__warn) from [<c034a530>] (warn_slowpath_fmt+0x94/0xb8)
[<c034a530>] (warn_slowpath_fmt) from [<c03bca0c>] (add_dma_entry+0x16c/0x17c)
[<c03bca0c>] (add_dma_entry) from [<c03bdf54>] (debug_dma_map_sg+0xe4/0x3d4)
[<c03bdf54>] (debug_dma_map_sg) from [<c0d09244>] (sdmmc_idma_prep_data+0x94/0xf8)
[<c0d09244>] (sdmmc_idma_prep_data) from [<c0d05a2c>] (mmci_prep_data+0x2c/0xb0)
[<c0d05a2c>] (mmci_prep_data) from [<c0d073ec>] (mmci_start_data+0x134/0x2f0)
[<c0d073ec>] (mmci_start_data) from [<c0d078d0>] (mmci_request+0xe8/0x154)
[<c0d078d0>] (mmci_request) from [<c0cecb44>] (mmc_start_request+0x94/0xbc)

DMA api debug brings to light leaking dma-mappings, dma_map_sg and
dma_unmap_sg are not correctly balanced.

If a request is prepared, the dma_map/unmap are done in asynchronous
call pre_req (prep_data) and post_req (unprep_data). In this case
the dma-mapping is right balanced.

But if the request was not prepared, the data->host_cookie is
define to zero and the dma_map/unmap must be done in the request.
The dma_map is called by mmci_dma_start (prep_data), but there is
no dma_unmap in this case.

This patch adds dma_unmap_sg when the dma is finalized and
the data cookie is zero (request not prepared).

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci_stm32_sdmmc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mmc/host/mmci_stm32_sdmmc.c b/drivers/mmc/host/mmci_stm32_sdmmc.c
index 56d9ad7f523e..7b781c897346 100644
--- a/drivers/mmc/host/mmci_stm32_sdmmc.c
+++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
@@ -190,6 +190,9 @@ static int sdmmc_idma_start(struct mmci_host *host, unsigned int *datactrl)
 static void sdmmc_idma_finalize(struct mmci_host *host, struct mmc_data *data)
 {
 	writel_relaxed(0, host->base + MMCI_STM32_IDMACTRLR);
+
+	if (!data->host_cookie)
+		sdmmc_idma_unprep_data(host, data, 0);
 }
 
 static void mmci_sdmmc_set_clkreg(struct mmci_host *host, unsigned int desired)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
