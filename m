Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DA58B4D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 12:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HvFFolbNlKtXuGLK45qpMFIdoTPpxpF3g+mJaeDF8fU=; b=BSMbuwmV0gCmUp
	VRdWN46T7X2xLZurmZ+p+fIbpK6yiquHzRPUqCvfz2QcYv+vHRJFa+wvqAQBrPAIQyXYO42rdDGfo
	lG+Uufh/u+BtMHjx1ba280lRxFKWLXGMKmWld7PO+FMPBwpKJ5aVc/Y9hoJOv5nDa/DQrVgQO6KQf
	TwMWVjntd4uLFgDSuekhxNlWZFK7KxtiLT5KUxgKqP6srBQI3/Orwu2RA5AkHySwCHv+aYz8m9FEo
	ynwOEw4jMgZNlDjjlps11T234XfdrabzZW5wkDfdKS07O8ImZVOVKOTNupiK8zcApjH+5omTx+lKT
	U2tHVRJAlsCNEMmBhUQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxTbw-0005HE-Ia; Tue, 13 Aug 2019 10:01:00 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxTbN-00050a-Tt
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 10:00:28 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7D9vGSu021985; Tue, 13 Aug 2019 12:00:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=2uKKbFJKscqHVCHY/2LHwDoDqydmbQGEHRL9iiPEBik=;
 b=Ai0kT7WQTsS3/nNz2ame0/8WTkd6eqeLHTYu4tscMkH1RunFR4AehzYZ8KdcVKj9leR0
 SuR5ou4Yeg4AbTGxa0ZxIyFL0nV3quI2YzXWx2qxwCsJ83SZwC27RpTOOmsijmTXbpsC
 azUQSgE2q04hUQUAQ5JFw/wpTJ1uEic8phrsAuhHTf6mGAz4t09fxUKHlSET84fMk+FY
 ZCWyC4XQ0mrAOEIDEFr42k1Ybnh7ll0sRoX0Ggck7INfNWuw15wuB5B7cn8LdOdh2MvV
 MP8J4BZt5JNWVTF410qenRniT7CinRwEUij0hHy4H7VJ/puJwDnp21ezCwbnHUtC+wYM Yg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2u9kpuqddx-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 13 Aug 2019 12:00:19 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0C1DA34;
 Tue, 13 Aug 2019 10:00:18 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id F22472CC9CF;
 Tue, 13 Aug 2019 12:00:17 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 13 Aug
 2019 12:00:17 +0200
Received: from lmecxl0923.lme.st.com (10.48.0.237) by webmail-ga.st.com
 (10.75.90.48) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 13 Aug
 2019 12:00:15 +0200
From: Ludovic Barre <ludovic.Barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH V5 2/3] mmc: mmci: add busy_complete callback
Date: Tue, 13 Aug 2019 11:59:50 +0200
Message-ID: <20190813095951.26275-3-ludovic.Barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190813095951.26275-1-ludovic.Barre@st.com>
References: <20190813095951.26275-1-ludovic.Barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.237]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-13_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_030026_334722_8C249854 
X-CRM114-Status: GOOD (  24.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This patch adds busy_completion callback at mmci_host_ops
to allow to define a specific busy completion by variant.

The legacy code corresponding to busy completion used
by ux500 variants is moved to ux500_busy_complete function.

The busy_detect boolean property is replaced by
busy_complete callback definition.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci.c | 140 +++++++++++++++++++++-------------------
 drivers/mmc/host/mmci.h |   3 +-
 2 files changed, 75 insertions(+), 68 deletions(-)

diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
index c50586540765..9eac3f482119 100644
--- a/drivers/mmc/host/mmci.c
+++ b/drivers/mmc/host/mmci.c
@@ -44,6 +44,7 @@
 #define DRIVER_NAME "mmci-pl18x"
 
 static void mmci_variant_init(struct mmci_host *host);
+static void ux500_variant_init(struct mmci_host *host);
 static void ux500v2_variant_init(struct mmci_host *host);
 
 static unsigned int fmax = 515633;
@@ -175,7 +176,6 @@ static struct variant_data variant_ux500 = {
 	.f_max			= 100000000,
 	.signal_direction	= true,
 	.pwrreg_clkgate		= true,
-	.busy_detect		= true,
 	.busy_dpsm_flag		= MCI_DPSM_ST_BUSYMODE,
 	.busy_detect_flag	= MCI_ST_CARDBUSY,
 	.busy_detect_mask	= MCI_ST_BUSYENDMASK,
@@ -184,7 +184,7 @@ static struct variant_data variant_ux500 = {
 	.irq_pio_mask		= MCI_IRQ_PIO_MASK,
 	.start_err		= MCI_STARTBITERR,
 	.opendrain		= MCI_OD,
-	.init			= mmci_variant_init,
+	.init			= ux500_variant_init,
 };
 
 static struct variant_data variant_ux500v2 = {
@@ -208,7 +208,6 @@ static struct variant_data variant_ux500v2 = {
 	.f_max			= 100000000,
 	.signal_direction	= true,
 	.pwrreg_clkgate		= true,
-	.busy_detect		= true,
 	.busy_dpsm_flag		= MCI_DPSM_ST_BUSYMODE,
 	.busy_detect_flag	= MCI_ST_CARDBUSY,
 	.busy_detect_mask	= MCI_ST_BUSYENDMASK,
@@ -610,6 +609,67 @@ static u32 ux500v2_get_dctrl_cfg(struct mmci_host *host)
 	return MCI_DPSM_ENABLE | (host->data->blksz << 16);
 }
 
+static bool ux500_busy_complete(struct mmci_host *host, u32 status, u32 err_msk)
+{
+	void __iomem *base = host->base;
+
+	/*
+	 * Before unmasking for the busy end IRQ, confirm that the
+	 * command was sent successfully. To keep track of having a
+	 * command in-progress, waiting for busy signaling to end,
+	 * store the status in host->busy_status.
+	 *
+	 * Note that, the card may need a couple of clock cycles before
+	 * it starts signaling busy on DAT0, hence re-read the
+	 * MMCISTATUS register here, to allow the busy bit to be set.
+	 * Potentially we may even need to poll the register for a
+	 * while, to allow it to be set, but tests indicates that it
+	 * isn't needed.
+	 */
+	if (!host->busy_status && !(status & err_msk) &&
+	    (readl(base + MMCISTATUS) & host->variant->busy_detect_flag)) {
+		writel(readl(base + MMCIMASK0) |
+		       host->variant->busy_detect_mask,
+		       base + MMCIMASK0);
+
+		host->busy_status = status & (MCI_CMDSENT | MCI_CMDRESPEND);
+		return false;
+	}
+
+	/*
+	 * If there is a command in-progress that has been successfully
+	 * sent, then bail out if busy status is set and wait for the
+	 * busy end IRQ.
+	 *
+	 * Note that, the HW triggers an IRQ on both edges while
+	 * monitoring DAT0 for busy completion, but there is only one
+	 * status bit in MMCISTATUS for the busy state. Therefore
+	 * both the start and the end interrupts needs to be cleared,
+	 * one after the other. So, clear the busy start IRQ here.
+	 */
+	if (host->busy_status &&
+	    (status & host->variant->busy_detect_flag)) {
+		writel(host->variant->busy_detect_mask, base + MMCICLEAR);
+		return false;
+	}
+
+	/*
+	 * If there is a command in-progress that has been successfully
+	 * sent and the busy bit isn't set, it means we have received
+	 * the busy end IRQ. Clear and mask the IRQ, then continue to
+	 * process the command.
+	 */
+	if (host->busy_status) {
+		writel(host->variant->busy_detect_mask, base + MMCICLEAR);
+
+		writel(readl(base + MMCIMASK0) &
+		       ~host->variant->busy_detect_mask, base + MMCIMASK0);
+		host->busy_status = 0;
+	}
+
+	return true;
+}
+
 /*
  * All the DMA operation mode stuff goes inside this ifdef.
  * This assumes that you have a generic DMA device interface,
@@ -953,9 +1013,16 @@ void mmci_variant_init(struct mmci_host *host)
 	host->ops = &mmci_variant_ops;
 }
 
+void ux500_variant_init(struct mmci_host *host)
+{
+	host->ops = &mmci_variant_ops;
+	host->ops->busy_complete = ux500_busy_complete;
+}
+
 void ux500v2_variant_init(struct mmci_host *host)
 {
 	host->ops = &mmci_variant_ops;
+	host->ops->busy_complete = ux500_busy_complete;
 	host->ops->get_datactrl_cfg = ux500v2_get_dctrl_cfg;
 }
 
@@ -1239,68 +1306,9 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
 		return;
 
 	/* Handle busy detection on DAT0 if the variant supports it. */
-	if (busy_resp && host->variant->busy_detect) {
-
-		/*
-		 * Before unmasking for the busy end IRQ, confirm that the
-		 * command was sent successfully. To keep track of having a
-		 * command in-progress, waiting for busy signaling to end,
-		 * store the status in host->busy_status.
-		 *
-		 * Note that, the card may need a couple of clock cycles before
-		 * it starts signaling busy on DAT0, hence re-read the
-		 * MMCISTATUS register here, to allow the busy bit to be set.
-		 * Potentially we may even need to poll the register for a
-		 * while, to allow it to be set, but tests indicates that it
-		 * isn't needed.
-		 */
-		if (!host->busy_status && !(status & err_msk) &&
-		    (readl(base + MMCISTATUS) & host->variant->busy_detect_flag)) {
-
-			writel(readl(base + MMCIMASK0) |
-			       host->variant->busy_detect_mask,
-			       base + MMCIMASK0);
-
-			host->busy_status =
-				status & (MCI_CMDSENT|MCI_CMDRESPEND);
-			return;
-		}
-
-		/*
-		 * If there is a command in-progress that has been successfully
-		 * sent, then bail out if busy status is set and wait for the
-		 * busy end IRQ.
-		 *
-		 * Note that, the HW triggers an IRQ on both edges while
-		 * monitoring DAT0 for busy completion, but there is only one
-		 * status bit in MMCISTATUS for the busy state. Therefore
-		 * both the start and the end interrupts needs to be cleared,
-		 * one after the other. So, clear the busy start IRQ here.
-		 */
-		if (host->busy_status &&
-		    (status & host->variant->busy_detect_flag)) {
-			writel(host->variant->busy_detect_mask,
-			       host->base + MMCICLEAR);
+	if (busy_resp && host->ops->busy_complete)
+		if (!host->ops->busy_complete(host, status, err_msk))
 			return;
-		}
-
-		/*
-		 * If there is a command in-progress that has been successfully
-		 * sent and the busy bit isn't set, it means we have received
-		 * the busy end IRQ. Clear and mask the IRQ, then continue to
-		 * process the command.
-		 */
-		if (host->busy_status) {
-
-			writel(host->variant->busy_detect_mask,
-			       host->base + MMCICLEAR);
-
-			writel(readl(base + MMCIMASK0) &
-			       ~host->variant->busy_detect_mask,
-			       base + MMCIMASK0);
-			host->busy_status = 0;
-		}
-	}
 
 	host->cmd = NULL;
 
@@ -1541,7 +1549,7 @@ static irqreturn_t mmci_irq(int irq, void *dev_id)
 		 * clear the corresponding IRQ.
 		 */
 		status &= readl(host->base + MMCIMASK0);
-		if (host->variant->busy_detect)
+		if (host->ops->busy_complete)
 			writel(status & ~host->variant->busy_detect_mask,
 			       host->base + MMCICLEAR);
 		else
@@ -1968,7 +1976,7 @@ static int mmci_probe(struct amba_device *dev,
 	/*
 	 * Enable busy detection.
 	 */
-	if (variant->busy_detect) {
+	if (host->ops->busy_complete) {
 		u32 max_busy_timeout = 0;
 
 		mmci_ops.card_busy = mmci_card_busy;
diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
index d8b7f6774e8f..733f9a035b06 100644
--- a/drivers/mmc/host/mmci.h
+++ b/drivers/mmc/host/mmci.h
@@ -286,7 +286,6 @@ struct mmci_host;
  * @f_max: maximum clk frequency supported by the controller.
  * @signal_direction: input/out direction of bus signals can be indicated
  * @pwrreg_clkgate: MMCIPOWER register must be used to gate the clock
- * @busy_detect: true if the variant supports busy detection on DAT0.
  * @busy_timeout: true if the variant starts data timer when the DPSM
  *		  enter in Wait_R or Busy state.
  * @busy_dpsm_flag: bitmask enabling busy detection in the DPSM
@@ -334,7 +333,6 @@ struct variant_data {
 	u32			f_max;
 	u8			signal_direction:1;
 	u8			pwrreg_clkgate:1;
-	u8			busy_detect:1;
 	u8			busy_timeout:1;
 	u32			busy_dpsm_flag;
 	u32			busy_detect_flag;
@@ -369,6 +367,7 @@ struct mmci_host_ops {
 	void (*dma_error)(struct mmci_host *host);
 	void (*set_clkreg)(struct mmci_host *host, unsigned int desired);
 	void (*set_pwrreg)(struct mmci_host *host, unsigned int pwr);
+	bool (*busy_complete)(struct mmci_host *host, u32 status, u32 err_msk);
 };
 
 struct mmci_host {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
