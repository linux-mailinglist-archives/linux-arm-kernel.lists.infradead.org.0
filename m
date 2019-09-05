Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE00AA300
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 14:22:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e6J1kdQBTHjkTUvZf51p0SFDIehAsz5095qWl5IWG1k=; b=MnzTCi1S7SBOyB
	nZ9N/cUfM4YdEGvkquF590agDgEJT4vLWEzu9z3BaqPw3zDMPQaLagkK9YGG6Om0v5qDqWc8SZNf9
	oIbhUbVtyWjJRxU5VoItnlTAekohj2hWX/+8VHk6FX1RGhX8IeCGMUcEnIhPlEr+9dz7JeOpEa/Lt
	6W4jlQyDqUx/J+8jIbVvCMnmbdAq7P/v/vEh1srX5GQT88ZClQgiphUGQQNIFNZDHSBVY1efsBUur
	BQdIPVufkxW1LWdDYzAdzgSugahpIbtvqNsJ2VBmGym1Z7PticWafMoORHtkCYOz1fFGxulQu9cTs
	QVf11ZAgfR2D+FumlLvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qmc-0008HQ-SD; Thu, 05 Sep 2019 12:22:39 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qm4-00080A-Ix
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 12:22:06 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x85CLTKk016715; Thu, 5 Sep 2019 14:21:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=0ND6yWcbICCLXkEHKUCkaFeaadKXcm5KDuBVNmBow4U=;
 b=toHTMERg4rxITNeAJ0ekGoWn5LtPOceKW4tljc0yNy/2PmGuaikiMEytUod6/cgbCf43
 TBuL2+F5KON7KRvlaeGs0a1LzqCH71koRCGsXLd2CvAoqQi4bYCKi3ZOwprJQfe9wPOG
 UYa14z2D3uoBwQoTznyRJhgWxT1iLpghuTB/x9/nV8/HsYNN9JaMnttfhye1p9Ui8yc9
 xTJIS/7TbLiqOdIFjVmL/kiZhveVLmyioPgNnGF6gdlEJytG4YaLzlVaceoCpRQuWRvZ
 HhdGAByDDOs29bRZckuKxMW3oW51mx3x/CnGldg2RhIrcDRr3LLIfVFld3veU0aFcEJE lg== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2uqec385ep-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 05 Sep 2019 14:21:59 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 957AD22;
 Thu,  5 Sep 2019 12:21:56 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id F1AE42CBDA0;
 Thu,  5 Sep 2019 14:21:55 +0200 (CEST)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 5 Sep 2019
 14:21:55 +0200
Received: from lmecxl0923.lme.st.com (10.48.0.237) by Webmail-ga.st.com
 (10.75.90.48) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 5 Sep 2019
 14:21:54 +0200
From: Ludovic Barre <ludovic.Barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH V6 3/3] mmc: mmci: sdmmc: add busy_complete callback
Date: Thu, 5 Sep 2019 14:21:12 +0200
Message-ID: <20190905122112.29672-4-ludovic.Barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190905122112.29672-1-ludovic.Barre@st.com>
References: <20190905122112.29672-1-ludovic.Barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.237]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-05_04:2019-09-04,2019-09-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_052204_959656_5A4D6A40 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

From: Ludovic Barre <ludovic.barre@st.com>

This patch adds a specific busy_complete callback for sdmmc variant.

sdmmc has 2 status flags:
-busyd0: This is a hardware status flag (inverted value of d0 line).
it does not generate an interrupt.
-busyd0end: This indicates only end of busy following a CMD response.
On busy to Not busy changes, an interrupt is generated (if unmask)
and BUSYD0END status flag is set. Status flag is cleared by writing
corresponding interrupt clear bit in MMCICLEAR.

The legacy busy completion monitors step by step the busy progression
start/in-progress/end. On sdmmc variant, the monitoring of busy steps
is difficult and not adapted (the software can miss a step and locks
the monitoring), the sdmmc has just need to wait the busyd0end bit
without monitoring all the changes.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci.c             |  3 +++
 drivers/mmc/host/mmci.h             |  1 +
 drivers/mmc/host/mmci_stm32_sdmmc.c | 38 +++++++++++++++++++++++++++++
 3 files changed, 42 insertions(+)

diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
index e20164f4354d..a666d826dbbd 100644
--- a/drivers/mmc/host/mmci.c
+++ b/drivers/mmc/host/mmci.c
@@ -260,6 +260,9 @@ static struct variant_data variant_stm32_sdmmc = {
 	.datalength_bits	= 25,
 	.datactrl_blocksz	= 14,
 	.stm32_idmabsize_mask	= GENMASK(12, 5),
+	.busy_timeout		= true,
+	.busy_detect_flag	= MCI_STM32_BUSYD0,
+	.busy_detect_mask	= MCI_STM32_BUSYD0ENDMASK,
 	.init			= sdmmc_variant_init,
 };
 
diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
index 733f9a035b06..841c5281beb5 100644
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
index 8e83ae6920ae..bb5499cc9e81 100644
--- a/drivers/mmc/host/mmci_stm32_sdmmc.c
+++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
@@ -282,6 +282,43 @@ static u32 sdmmc_get_dctrl_cfg(struct mmci_host *host)
 	return datactrl;
 }
 
+bool sdmmc_busy_complete(struct mmci_host *host, u32 status, u32 err_msk)
+{
+	void __iomem *base = host->base;
+	u32 busy_d0, busy_d0end, mask;
+
+	mask = readl_relaxed(base + MMCIMASK0);
+	busy_d0end = readl_relaxed(base + MMCISTATUS) & MCI_STM32_BUSYD0END;
+	busy_d0 = readl_relaxed(base + MMCISTATUS) & MCI_STM32_BUSYD0;
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
+	writel_relaxed(mask & ~host->variant->busy_detect_mask,
+		       base + MMCIMASK0);
+	writel_relaxed(host->variant->busy_detect_mask, base + MMCICLEAR);
+	host->busy_status = 0;
+
+	return true;
+}
+
 static struct mmci_host_ops sdmmc_variant_ops = {
 	.validate_data = sdmmc_idma_validate_data,
 	.prep_data = sdmmc_idma_prep_data,
@@ -292,6 +329,7 @@ static struct mmci_host_ops sdmmc_variant_ops = {
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
