Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E28D40D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4PwhYt5r05qTO58RqeHpUgaAaKto3Xb6meKj3MN6RQ=; b=e2cZBRuy4l2N0r
	nTipBReuGYkHUXtdfLfUWL8R7pnS0eoDzIo1N8pKb20q9OGLqUSYWRWupJevH8P+cixdf4t7EY1/C
	90xIuIM2Ar9ui7WiKa/3EGVEw4rDLQh5rswQmhav2S3Zp0G1pyy2oE87v+clxpEEmM0LYwp4u0TBe
	t/3aUGwSIezfmR/1TxwaC/gkM2BZYdvOSauY3JFpLEt7WfKmQ5zx7pHKNv+Lcq/V2FmkWkS3tpb77
	fg0yVBYqkrXzAsSk+ft+PllGNPGqkgZ16yijzIShnpa+drjqUm1u4UCWFwn/bo856EqBnZd3BT8gi
	bW9gajfj2SQiYImp52vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIumD-0006od-O9; Fri, 11 Oct 2019 13:16:13 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuld-0006Me-1a
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 13:15:38 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9BD6ljb021876; Fri, 11 Oct 2019 15:15:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=PQgs8CoqvM995ovl1uQ7tJ5NlLE2fITGlZC6osBYYt8=;
 b=vDXfFgVo1O2lnmvawKkSumMa9e+ROwcNsmkLeb1Z+o/dVjBSjFPMT/uAYYzUblXiRBvk
 2mA896h+9ObTJywMzlzAKMKYr4TAWnOtJElFTLQz2wCsVpDW4mqxfPOJq6wqwRiU1EA5
 lXk0ZWrNBdOU1x+GQJi44utEkdnyC6rE5EAGgM4zl+0EkXD/fmS2WXausslvklcjxt7M
 tbpMqYblYChW3lu/Om8OlO5YRNurZk2CLGmRGFkcegx9P0JeqE8hffUWbJFH44zm+84A
 WZoePXBNsJXXYmo8s2pSKmE4Uu48GdDjviIKhmT7cGeuJp+e+EpnvRYGELg9JfnWIVES oQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegxw9yan-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 15:15:32 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2A32C10002A;
 Fri, 11 Oct 2019 15:15:32 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1AEF72BEC72;
 Fri, 11 Oct 2019 15:15:32 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 11 Oct
 2019 15:15:32 +0200
Received: from lmecxl0923.lme.st.com (10.48.0.237) by webmail-ga.st.com
 (10.75.90.48) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 11 Oct
 2019 15:15:31 +0200
From: Ludovic Barre <ludovic.Barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/2] mmc: mmci: add unstuck feature
Date: Fri, 11 Oct 2019 15:15:02 +0200
Message-ID: <20191011131502.29579-3-ludovic.Barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011131502.29579-1-ludovic.Barre@st.com>
References: <20191011131502.29579-1-ludovic.Barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.237]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-11_08:2019-10-10,2019-10-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_061537_404588_4A00A86E 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On busy_timeout feature if busy is too long on R1B command
a datatimeout occurs and a specific actions is needed to clear
the DPSM bit:
-reset the controller to clear the DPSM bit.
-restore registers: clk, pwr, datactrl.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci.c | 23 +++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
index 40e72c30ea84..dafba4e0afc5 100644
--- a/drivers/mmc/host/mmci.c
+++ b/drivers/mmc/host/mmci.c
@@ -1320,7 +1320,7 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
 		cmd->error = -EILSEQ;
 	} else if (host->variant->busy_timeout && busy_resp &&
 		   status & MCI_DATATIMEOUT) {
-		cmd->error = -ETIMEDOUT;
+		cmd->error = -EDEADLK;
 	} else {
 		cmd->resp[0] = readl(base + MMCIRESPONSE0);
 		cmd->resp[1] = readl(base + MMCIRESPONSE1);
@@ -1332,7 +1332,6 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
 		if (host->data) {
 			/* Terminate the DMA transfer */
 			mmci_dma_error(host);
-
 			mmci_stop_data(host);
 			if (host->variant->cmdreg_stop && cmd->error) {
 				mmci_stop_command(host);
@@ -1787,6 +1786,25 @@ static int mmci_sig_volt_switch(struct mmc_host *mmc, struct mmc_ios *ios)
 	return ret;
 }
 
+static void mmci_hw_unstuck(struct mmc_host *mmc)
+{
+	struct mmci_host *host = mmc_priv(mmc);
+	unsigned long flags;
+
+	if (host->rst) {
+		reset_control_assert(host->rst);
+		udelay(2);
+		reset_control_deassert(host->rst);
+	}
+
+	spin_lock_irqsave(&host->lock, flags);
+	writel(host->clk_reg, host->base + MMCICLOCK);
+	writel(host->pwr_reg, host->base + MMCIPOWER);
+	writel(MCI_IRQENABLE | host->variant->start_err,
+	       host->base + MMCIMASK0);
+	spin_unlock_irqrestore(&host->lock, flags);
+}
+
 static struct mmc_host_ops mmci_ops = {
 	.request	= mmci_request,
 	.pre_req	= mmci_pre_request,
@@ -1795,6 +1813,7 @@ static struct mmc_host_ops mmci_ops = {
 	.get_ro		= mmc_gpio_get_ro,
 	.get_cd		= mmci_get_cd,
 	.start_signal_voltage_switch = mmci_sig_volt_switch,
+	.hw_unstuck	= mmci_hw_unstuck,
 };
 
 static int mmci_of_parse(struct device_node *np, struct mmc_host *mmc)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
