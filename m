Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0205CF697
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 11:57:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sEDxsVlz28v7nBO2J1PGPrUva652YJE6cMKNLiEW6gw=; b=mlDsGmWSR3vwyk
	tkQ0X6jTph1brUK7725atkBQMHIftC5tOftw688y4U/YcNftvvcT09kvTMK+hPY+tQbubiJUw3lJR
	QdPUU9i1cvODd2wlDNAE0OVFxcKZvYh67gWLfYOwNYIs2RYQIoo+mFsFP5RwKFD8Uf9G3Q7VFB6fV
	TxBGBTReYp4UhQRf4VMfzQyIG3m1A+Kq7TFeEnbWVKbdAloa/5HLum1bCt1v74osMKCGCxgVEiPdz
	+eAmhwY27n+d7wLpF+dNaAULyHCT7dCQT6+IiYmpYa4BVmQg8WXb2F+PWCiaHpT2qp6avX2gk5dVL
	3jprOK3A1mM+tuJlT3gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHmF9-0005I7-4k; Tue, 08 Oct 2019 09:57:23 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHmEG-0004c8-DG
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 09:56:30 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x989oqB2017657; Tue, 8 Oct 2019 11:56:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=D1YTtXGlnn9n+wzMgmKua3M6JR/Hf72FY8yVMBQwtWI=;
 b=wWOV9dlnI7b6wCn4MtpVrTkngtTOGrtkV+7uI304jlygQIo0HZnhy2bmoAAC+rDCaAOi
 RnoFi1Z75OPIfdl+J8qwKHXWSMnZHf8SqCECwbDvUITf/bKCNqd+FbnegDoUij9cu4B6
 mf6CJGoLaAA+NqUenNV4QQ/ej5Rd7kkFKW28/ii4HX8tXKcGeBVOiAe1A3UPxT8TjUip
 VwqaGi56ABUH2z47yR/yB+efUHuIo4B/x5iHd5tH9ImE0rBKhbu3pDIywgE/KquKomIk
 1EYE4wuVA1MK4iOKRGcFxngbXaM6sGAdE8K7L9+SKbm2Ewf5EDLYNtZKM6pjqy7n/IBh Ag== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegn0qfsd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 08 Oct 2019 11:56:23 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 992D310002A;
 Tue,  8 Oct 2019 11:56:22 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8E79A2B40AF;
 Tue,  8 Oct 2019 11:56:22 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 8 Oct 2019
 11:56:22 +0200
Received: from lmecxl0923.lme.st.com (10.48.0.237) by webmail-ga.st.com
 (10.75.90.48) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 8 Oct 2019
 11:56:21 +0200
From: Ludovic Barre <ludovic.Barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH V7 3/3] mmc: mmci: sdmmc: add busy_complete callback
Date: Tue, 8 Oct 2019 11:56:04 +0200
Message-ID: <20191008095604.20675-4-ludovic.Barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191008095604.20675-1-ludovic.Barre@st.com>
References: <20191008095604.20675-1-ludovic.Barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.237]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-08_03:2019-10-07,2019-10-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_025628_735421_31D04A18 
X-CRM114-Status: GOOD (  19.78  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

From: Ludovic Barre <ludovic.barre@st.com>

This patch adds a specific busy_complete callback for sdmmc variant.

sdmmc has 2 status flags:
-busyd0: This is a hardware status flag (inverted value of d0 line).
it does not generate an interrupt.
-busyd0end: This indicates only end of busy following a CMD response.
On busy to Not busy changes, an interrupt is generated (if unmask)
and BUSYD0END status flag is set. Status flag is cleared by writing
corresponding interrupt clear bit in MMCICLEAR.

The legacy busy completion has no dedicated interrupt for the end
of busy, so it's must monitor step by step the busy progression.
On sdmmc variant, this procedure is not needed, it's just need
to wait the busyd0end interrupt.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci.c             |  4 +++
 drivers/mmc/host/mmci.h             |  1 +
 drivers/mmc/host/mmci_stm32_sdmmc.c | 42 +++++++++++++++++++++++++++++
 3 files changed, 47 insertions(+)

diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
index 5e53f9b6d82a..40e72c30ea84 100644
--- a/drivers/mmc/host/mmci.c
+++ b/drivers/mmc/host/mmci.c
@@ -262,6 +262,10 @@ static struct variant_data variant_stm32_sdmmc = {
 	.datalength_bits	= 25,
 	.datactrl_blocksz	= 14,
 	.stm32_idmabsize_mask	= GENMASK(12, 5),
+	.busy_timeout		= true,
+	.busy_detect		= true,
+	.busy_detect_flag	= MCI_STM32_BUSYD0,
+	.busy_detect_mask	= MCI_STM32_BUSYD0ENDMASK,
 	.init			= sdmmc_variant_init,
 };
 
diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
index 2a0b98f98c36..158e1231aa23 100644
--- a/drivers/mmc/host/mmci.h
+++ b/drivers/mmc/host/mmci.h
@@ -164,6 +164,7 @@
 #define MCI_ST_CARDBUSY		(1 << 24)
 /* Extended status bits for the STM32 variants */
 #define MCI_STM32_BUSYD0	BIT(20)
+#define MCI_STM32_BUSYD0END	BIT(21)
 
 #define MMCICLEAR		0x038
 #define MCI_CMDCRCFAILCLR	(1 << 0)
diff --git a/drivers/mmc/host/mmci_stm32_sdmmc.c b/drivers/mmc/host/mmci_stm32_sdmmc.c
index 8e83ae6920ae..1de855d29ad4 100644
--- a/drivers/mmc/host/mmci_stm32_sdmmc.c
+++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
@@ -282,6 +282,47 @@ static u32 sdmmc_get_dctrl_cfg(struct mmci_host *host)
 	return datactrl;
 }
 
+static bool sdmmc_busy_complete(struct mmci_host *host, u32 status, u32 err_msk)
+{
+	void __iomem *base = host->base;
+	u32 busy_d0, busy_d0end, mask, sdmmc_status;
+
+	mask = readl_relaxed(base + MMCIMASK0);
+	sdmmc_status = readl_relaxed(base + MMCISTATUS);
+	busy_d0end = sdmmc_status & MCI_STM32_BUSYD0END;
+	busy_d0 = sdmmc_status & MCI_STM32_BUSYD0;
+
+	/* complete if there is an error or busy_d0end */
+	if ((status & err_msk) || busy_d0end)
+		goto complete;
+
+	/*
+	 * On response the busy signaling is reflected in the BUSYD0 flag.
+	 * if busy_d0 is in-progress we must activate busyd0end interrupt
+	 * to wait this completion. Else this request has no busy step.
+	 */
+	if (busy_d0) {
+		if (!host->busy_status) {
+			writel_relaxed(mask | host->variant->busy_detect_mask,
+				       base + MMCIMASK0);
+			host->busy_status = status &
+				(MCI_CMDSENT | MCI_CMDRESPEND);
+		}
+		return false;
+	}
+
+complete:
+	if (host->busy_status) {
+		writel_relaxed(mask & ~host->variant->busy_detect_mask,
+			       base + MMCIMASK0);
+		writel_relaxed(host->variant->busy_detect_mask,
+			       base + MMCICLEAR);
+		host->busy_status = 0;
+	}
+
+	return true;
+}
+
 static struct mmci_host_ops sdmmc_variant_ops = {
 	.validate_data = sdmmc_idma_validate_data,
 	.prep_data = sdmmc_idma_prep_data,
@@ -292,6 +333,7 @@ static struct mmci_host_ops sdmmc_variant_ops = {
 	.dma_finalize = sdmmc_idma_finalize,
 	.set_clkreg = mmci_sdmmc_set_clkreg,
 	.set_pwrreg = mmci_sdmmc_set_pwrreg,
+	.busy_complete = sdmmc_busy_complete,
 };
 
 void sdmmc_variant_init(struct mmci_host *host)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
