Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E22CF691
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 11:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uu4Hjs8tgcFEmbsqj9TWyDXDPYNjdh9NunwNiYanD6Y=; b=Oih5/R0WYPVUA1
	/znwd/NmOwwfjq22nHLfNNUpcMoMbX2XqBBlPEwJRiCkNK708Izh/jzSXLQBT0CY077s+ob8oGkH0
	mHK+K25lEG03aZ4nl5DeAVQ7QdrWSZN5JUnYWpHm7BL4ben/aogMNFqYf5KmzcXG/6yTjQh42oNke
	Ro0nGxLqTvG3svEErnkHXpl1LBJG9itOmp/3J+qfeZL3Gl45jsLczYCf84+r+4ukZUt2H4fKiMlrw
	cvdA5JfMd3+K1hh+n0bBsPtKTE8n7dUFFh1l8QRAYQ+iE19N7NQUd4fecueMOfBCpriTl2gXYuH1X
	EveLwLO0C1DpXOekcGvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHmEf-0004lO-8e; Tue, 08 Oct 2019 09:56:53 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHmED-0004bB-V0
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 09:56:27 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x989pXUL018224; Tue, 8 Oct 2019 11:56:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=CAE+x4ROHtH2W/0IjwRDmEfAmHj2rmaoB6ZpgHgK3XI=;
 b=bVnGzIF/uQfIYTK+en4KOARWeqsejRM9mD8B5+Du7GU3cW1MxLIdf22c+OOE5BB8ygxw
 JJtvwi13zSOCwb/4/wy+NlFYbAY+KFSeJ0kRymv3cg7eyOaQiJho/x1vlnRs49phuPi5
 twIacmsq6VlLHhRHnTWC31TYe9nwMiaJobqxmoXUY2SoQHlbTTkV6/9eZC34uQ9dp12G
 k+mAN2jtnBfqug/kb7J55zkwYfIjcnfvoendZIUiQSVeOrCkxI8hLF05amkJx2XnRop8
 H702YjTxo0on2bwqSrkHZu8L15sXqEkqmIIyDn+GQnlj/F4R6lrX4C+kE/F336/blBX+ Aw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vej2p7k5h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 08 Oct 2019 11:56:20 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 25A15100039;
 Tue,  8 Oct 2019 11:56:20 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 169FB2B40AD;
 Tue,  8 Oct 2019 11:56:20 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 8 Oct 2019
 11:56:20 +0200
Received: from lmecxl0923.lme.st.com (10.48.0.237) by webmail-ga.st.com
 (10.75.90.48) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 8 Oct 2019
 11:56:19 +0200
From: Ludovic Barre <ludovic.Barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH V7 1/3] mmc: mmci: add hardware busy timeout feature
Date: Tue, 8 Oct 2019 11:56:02 +0200
Message-ID: <20191008095604.20675-2-ludovic.Barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191008095604.20675-1-ludovic.Barre@st.com>
References: <20191008095604.20675-1-ludovic.Barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.237]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-08_03:2019-10-07,2019-10-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_025626_355066_6958EDDF 
X-CRM114-Status: GOOD (  20.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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

In the stm32_sdmmc variant, the datatimer is active not only during
data transfers with the DPSM, but also while waiting for the busyend
IRQs from commands having the MMC_RSP_BUSY flag set. This leads to an
incorrect IRQ being raised to signal MCI_DATATIMEOUT error, which
simply breaks the behaviour.

Address this by updating the datatimer value before sending a command
having the MMC_RSP_BUSY flag set. To inform the mmc core about the
maximum supported busy timeout, which also depends on the current
clock rate, set ->max_busy_timeout (in ms).

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci.c | 42 ++++++++++++++++++++++++++++++++++++-----
 drivers/mmc/host/mmci.h |  3 +++
 2 files changed, 40 insertions(+), 5 deletions(-)

diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
index e14003e52058..ed0b40287dea 100644
--- a/drivers/mmc/host/mmci.c
+++ b/drivers/mmc/host/mmci.c
@@ -1075,6 +1075,7 @@ static void
 mmci_start_command(struct mmci_host *host, struct mmc_command *cmd, u32 c)
 {
 	void __iomem *base = host->base;
+	unsigned long long clks;
 
 	dev_dbg(mmc_dev(host->mmc), "op %02x arg %08x flags %08x\n",
 	    cmd->opcode, cmd->arg, cmd->flags);
@@ -1097,6 +1098,16 @@ mmci_start_command(struct mmci_host *host, struct mmc_command *cmd, u32 c)
 		else
 			c |= host->variant->cmdreg_srsp;
 	}
+
+	if (host->variant->busy_timeout && cmd->flags & MMC_RSP_BUSY) {
+		if (!cmd->busy_timeout)
+			cmd->busy_timeout = 10 * MSEC_PER_SEC;
+
+		clks = (unsigned long long)cmd->busy_timeout * host->cclk;
+		do_div(clks, MSEC_PER_SEC);
+		writel_relaxed(clks, host->base + MMCIDATATIMER);
+	}
+
 	if (/*interrupt*/0)
 		c |= MCI_CPSM_INTERRUPT;
 
@@ -1201,6 +1212,7 @@ static void
 mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
 	     unsigned int status)
 {
+	u32 err_msk = MCI_CMDCRCFAIL | MCI_CMDTIMEOUT;
 	void __iomem *base = host->base;
 	bool sbc, busy_resp;
 
@@ -1215,8 +1227,11 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
 	 * handling. Note that we tag on any latent IRQs postponed
 	 * due to waiting for busy status.
 	 */
-	if (!((status|host->busy_status) &
-	      (MCI_CMDCRCFAIL|MCI_CMDTIMEOUT|MCI_CMDSENT|MCI_CMDRESPEND)))
+	if (host->variant->busy_timeout && busy_resp)
+		err_msk |= MCI_DATATIMEOUT;
+
+	if (!((status | host->busy_status) &
+	      (err_msk | MCI_CMDSENT | MCI_CMDRESPEND)))
 		return;
 
 	/* Handle busy detection on DAT0 if the variant supports it. */
@@ -1235,8 +1250,7 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
 		 * while, to allow it to be set, but tests indicates that it
 		 * isn't needed.
 		 */
-		if (!host->busy_status &&
-		    !(status & (MCI_CMDCRCFAIL|MCI_CMDTIMEOUT)) &&
+		if (!host->busy_status && !(status & err_msk) &&
 		    (readl(base + MMCISTATUS) & host->variant->busy_detect_flag)) {
 
 			writel(readl(base + MMCIMASK0) |
@@ -1290,6 +1304,9 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
 		cmd->error = -ETIMEDOUT;
 	} else if (status & MCI_CMDCRCFAIL && cmd->flags & MMC_RSP_CRC) {
 		cmd->error = -EILSEQ;
+	} else if (host->variant->busy_timeout && busy_resp &&
+		   status & MCI_DATATIMEOUT) {
+		cmd->error = -ETIMEDOUT;
 	} else {
 		cmd->resp[0] = readl(base + MMCIRESPONSE0);
 		cmd->resp[1] = readl(base + MMCIRESPONSE1);
@@ -1583,6 +1600,20 @@ static void mmci_request(struct mmc_host *mmc, struct mmc_request *mrq)
 	spin_unlock_irqrestore(&host->lock, flags);
 }
 
+static void mmci_set_max_busy_timeout(struct mmc_host *mmc)
+{
+	struct mmci_host *host = mmc_priv(mmc);
+	u32 max_busy_timeout = 0;
+
+	if (!host->variant->busy_detect)
+		return;
+
+	if (host->variant->busy_timeout && mmc->actual_clock)
+		max_busy_timeout = ~0UL / (mmc->actual_clock / MSEC_PER_SEC);
+
+	mmc->max_busy_timeout = max_busy_timeout;
+}
+
 static void mmci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
 {
 	struct mmci_host *host = mmc_priv(mmc);
@@ -1687,6 +1718,8 @@ static void mmci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
 	else
 		mmci_set_clkreg(host, ios->clock);
 
+	mmci_set_max_busy_timeout(mmc);
+
 	if (host->ops && host->ops->set_pwrreg)
 		host->ops->set_pwrreg(host, pwr);
 	else
@@ -1957,7 +1990,6 @@ static int mmci_probe(struct amba_device *dev,
 			mmci_write_datactrlreg(host,
 					       host->variant->busy_dpsm_flag);
 		mmc->caps |= MMC_CAP_WAIT_WHILE_BUSY;
-		mmc->max_busy_timeout = 0;
 	}
 
 	/* Prepare a CMD12 - needed to clear the DPSM on some variants. */
diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
index 833236ecb31e..d8b7f6774e8f 100644
--- a/drivers/mmc/host/mmci.h
+++ b/drivers/mmc/host/mmci.h
@@ -287,6 +287,8 @@ struct mmci_host;
  * @signal_direction: input/out direction of bus signals can be indicated
  * @pwrreg_clkgate: MMCIPOWER register must be used to gate the clock
  * @busy_detect: true if the variant supports busy detection on DAT0.
+ * @busy_timeout: true if the variant starts data timer when the DPSM
+ *		  enter in Wait_R or Busy state.
  * @busy_dpsm_flag: bitmask enabling busy detection in the DPSM
  * @busy_detect_flag: bitmask identifying the bit in the MMCISTATUS register
  *		      indicating that the card is busy
@@ -333,6 +335,7 @@ struct variant_data {
 	u8			signal_direction:1;
 	u8			pwrreg_clkgate:1;
 	u8			busy_detect:1;
+	u8			busy_timeout:1;
 	u32			busy_dpsm_flag;
 	u32			busy_detect_flag;
 	u32			busy_detect_mask;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
