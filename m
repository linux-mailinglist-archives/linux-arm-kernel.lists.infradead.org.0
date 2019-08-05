Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E393381623
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=12D1rSGOza2t6NkA8wZ/O7HQhoSoxw4U03IN176DkLQ=; b=JMprVbjolfqSlr
	6OhUqmJQmNGy5h5MveffWQfhqVxrRJv4ucMLlqBfAw961oTlSi2CnKShS0DO0+aGp88MyBK3gdT8u
	ZtN+uvm+N8TtHWpb9EmTt6x61XvfulM4fGzmInrqzHmQtObNG66SZKWW5R6GiddemjKZD0eCKueOW
	MrK4r7X4IyW7qvUwOpTDHgwm0N7jKcpMg9pYGndcosoBqjW3xWl5fqH9TeyD+0mone1Yl1XDHbRkL
	+Ck6wjtP+g2iP9gvxy5glPDmEtf+ILCSGfpy+DxQKboVFetxGg4KAYfjefci0kC1rTR087OdY9zSG
	VuT18Qf1e7RE8XV7N3Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZkY-0003Aj-4U; Mon, 05 Aug 2019 09:57:54 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZjl-0002cq-Dv
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 09:57:08 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x758asfg025755; Mon, 5 Aug 2019 11:57:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=wuSEYQ/MVeznlvXAHY047ivvLEOAFrfYgBPlSUOUncM=;
 b=ZRBcDBjIaGGzGjohNTqHqzM/OUpHtM0lRm08NzQKbw6+2MLPHNjhtXags1ddVKLqEL8+
 x40xlsCPSN1gU9Ew5+3NKTtdlYQ+iwmpb35YkRdgxWy8o5B8ijABbh3PwuET4RwumaPT
 RzDRVpZbJIS5K8ti/OFW1D3Bwwjw9u2MMgY493MMGDG9rtaVUGtU6bYE92IMCfP0kv1v
 YxAx48ki7Pa4r0PTNfv2QpQWoD2zz0qKoWHAvv7rHF+UR3BQLolmMlZZAQj5IhqqEFC4
 7luvxL/9CkJ4yhmJva+y0XhhIdCBFoZUeI9x8ArtQlH9AGnF6fTjsXAebaFwia4zxrV2 IQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2u515mamub-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 05 Aug 2019 11:57:00 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C4F2C41;
 Mon,  5 Aug 2019 09:56:59 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B65AD3023C2;
 Mon,  5 Aug 2019 11:56:59 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 5 Aug 2019
 11:56:59 +0200
Received: from lmecxl0923.lme.st.com (10.48.0.237) by webmail-ga.st.com
 (10.75.90.48) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 5 Aug 2019
 11:56:59 +0200
From: Ludovic Barre <ludovic.Barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH V4 1/3] mmc: mmci: add hardware busy timeout feature
Date: Mon, 5 Aug 2019 11:56:24 +0200
Message-ID: <20190805095626.25998-2-ludovic.Barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805095626.25998-1-ludovic.Barre@st.com>
References: <20190805095626.25998-1-ludovic.Barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.237]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-05_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_025705_763595_7D7225CB 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

In some variants, the data timer starts and decrements
when the DPSM enters in Wait_R or Busy state
(while data transfer or MMC_RSP_BUSY), and generates a
data timeout error if the counter reach 0.

-Define max_busy_timeout (in ms) according to clock.
-Set data timer register if the command has rsp_busy flag.
 If busy_timeout is not defined by framework, the busy
 length after Data Burst is defined as 1 second
 (refer: 4.6.2.2 Write of sd specification part1 v6-0).
-Add MCI_DATATIMEOUT error management in mmci_cmd_irq.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci.c | 37 ++++++++++++++++++++++++++++++++-----
 drivers/mmc/host/mmci.h |  3 +++
 2 files changed, 35 insertions(+), 5 deletions(-)

diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
index 4c35e7609c89..e79c9148af84 100644
--- a/drivers/mmc/host/mmci.c
+++ b/drivers/mmc/host/mmci.c
@@ -1078,6 +1078,7 @@ static void
 mmci_start_command(struct mmci_host *host, struct mmc_command *cmd, u32 c)
 {
 	void __iomem *base = host->base;
+	unsigned long long clks = 0;
 
 	dev_dbg(mmc_dev(host->mmc), "op %02x arg %08x flags %08x\n",
 	    cmd->opcode, cmd->arg, cmd->flags);
@@ -1100,6 +1101,19 @@ mmci_start_command(struct mmci_host *host, struct mmc_command *cmd, u32 c)
 		else
 			c |= host->variant->cmdreg_srsp;
 	}
+
+	if (host->variant->busy_timeout && !cmd->data) {
+		if (cmd->flags & MMC_RSP_BUSY) {
+			if (!cmd->busy_timeout)
+				cmd->busy_timeout = 1000;
+
+			clks = (unsigned long long)cmd->busy_timeout;
+			clks *=	host->cclk;
+			do_div(clks, MSEC_PER_SEC);
+		}
+		writel_relaxed(clks, host->base + MMCIDATATIMER);
+	}
+
 	if (/*interrupt*/0)
 		c |= MCI_CPSM_INTERRUPT;
 
@@ -1206,6 +1220,7 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
 {
 	void __iomem *base = host->base;
 	bool sbc, busy_resp;
+	u32 err_msk;
 
 	if (!cmd)
 		return;
@@ -1218,8 +1233,12 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
 	 * handling. Note that we tag on any latent IRQs postponed
 	 * due to waiting for busy status.
 	 */
-	if (!((status|host->busy_status) &
-	      (MCI_CMDCRCFAIL|MCI_CMDTIMEOUT|MCI_CMDSENT|MCI_CMDRESPEND)))
+	err_msk = MCI_CMDCRCFAIL | MCI_CMDTIMEOUT;
+	if (host->variant->busy_timeout && busy_resp)
+		err_msk |= MCI_DATATIMEOUT;
+
+	if (!((status | host->busy_status) &
+	      (err_msk | MCI_CMDSENT | MCI_CMDRESPEND)))
 		return;
 
 	/* Handle busy detection on DAT0 if the variant supports it. */
@@ -1238,8 +1257,7 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
 		 * while, to allow it to be set, but tests indicates that it
 		 * isn't needed.
 		 */
-		if (!host->busy_status &&
-		    !(status & (MCI_CMDCRCFAIL|MCI_CMDTIMEOUT)) &&
+		if (!host->busy_status && !(status & err_msk) &&
 		    (readl(base + MMCISTATUS) & host->variant->busy_detect_flag)) {
 
 			writel(readl(base + MMCIMASK0) |
@@ -1293,6 +1311,9 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
 		cmd->error = -ETIMEDOUT;
 	} else if (status & MCI_CMDCRCFAIL && cmd->flags & MMC_RSP_CRC) {
 		cmd->error = -EILSEQ;
+	} else if (host->variant->busy_timeout && busy_resp &&
+		   status & MCI_DATATIMEOUT) {
+		cmd->error = -ETIMEDOUT;
 	} else {
 		cmd->resp[0] = readl(base + MMCIRESPONSE0);
 		cmd->resp[1] = readl(base + MMCIRESPONSE1);
@@ -1951,6 +1972,8 @@ static int mmci_probe(struct amba_device *dev,
 	 * Enable busy detection.
 	 */
 	if (variant->busy_detect) {
+		u32 max_busy_timeout = 0;
+
 		mmci_ops.card_busy = mmci_card_busy;
 		/*
 		 * Not all variants have a flag to enable busy detection
@@ -1960,7 +1983,11 @@ static int mmci_probe(struct amba_device *dev,
 			mmci_write_datactrlreg(host,
 					       host->variant->busy_dpsm_flag);
 		mmc->caps |= MMC_CAP_WAIT_WHILE_BUSY;
-		mmc->max_busy_timeout = 0;
+
+		if (variant->busy_timeout)
+			max_busy_timeout = ~0UL / (mmc->f_max / MSEC_PER_SEC);
+
+		mmc->max_busy_timeout = max_busy_timeout;
 	}
 
 	/* Prepare a CMD12 - needed to clear the DPSM on some variants. */
diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
index 4f071bd34e59..8f86130af566 100644
--- a/drivers/mmc/host/mmci.h
+++ b/drivers/mmc/host/mmci.h
@@ -290,6 +290,8 @@ struct mmci_host;
  * @signal_direction: input/out direction of bus signals can be indicated
  * @pwrreg_clkgate: MMCIPOWER register must be used to gate the clock
  * @busy_detect: true if the variant supports busy detection on DAT0.
+ * @busy_timeout: true if the variant starts data timer when the DPSM
+ *		  enter in Wait_R or Busy state.
  * @busy_dpsm_flag: bitmask enabling busy detection in the DPSM
  * @busy_detect_flag: bitmask identifying the bit in the MMCISTATUS register
  *		      indicating that the card is busy
@@ -336,6 +338,7 @@ struct variant_data {
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
