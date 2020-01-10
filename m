Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE60136EB8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 14:51:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npZxZrZGVx2ThgNuh7nAJPbcVdBaUBRpvLQYMIvNrrw=; b=liyGUpzHMlyaEr
	l1ooFwHdP9MhoP7oxKUcukpPehKHH77J9dQ2Q6LMG652x54tj3vIpsTtzbRLju1RcFARp5r+IuNA7
	82WUvqc9Y25uciaF2XZfxnffmN9zHez8lUq/ut2ste0lvNCvRY5rwkG1Sf/tJHEV3PKhXKOzf35L0
	VZNzk3OdFvmapNiqig+9KlUlWOu2/02TSYnXru1O3WXkQTSkhc63HW/40mqGefRX7j8SW2aCyq4DZ
	G5FTah8VVeq8z9S2GEQOido3ZwWjRveiZDPXZIljxFeSdq+XOp5HVvPnUAJZpOuWpijPXOyYUyZuB
	+twH3PrKyPYMTMmCIMzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipuhM-0007I7-Se; Fri, 10 Jan 2020 13:51:36 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipuf4-0004ID-CA
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 13:49:16 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00ADm1BY013173; Fri, 10 Jan 2020 14:49:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=slh9uLVxUa7U1qbsl69WC6M3Rvwhufaw4vC6oHhqkqU=;
 b=tip56F+ntuXoBdF3642H+lUog+cMa6vUfkAq33mJdEO5dVfrGpB2A7N0RpKpWxeXjfN+
 uZz541jtSG/6fAFASzKCQcWD1bp/e6jjFB5vpiCbxz5W1qUID0JuGdFiBHW6YxQC9ZlV
 OtuwmIDFQnLSuRO8EBw+ASYPttckCrGIFhcBA2/rrcwWUBWQENw7Ck+5T1Nx+th4SgN5
 HpZD59HZPix5BjnMPfKARJ4A282sZ23ScjR6BswnSTtewQ6TFgcPlvY4OyqoGNIHOOqZ
 Hk1+29A3vg6pTxAoBSHYExh40zuJUvvooPdIkARpeYBA57vyhaMkZ4MQnvt2bFy+M2Tt xg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xepyt8w10-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2020 14:49:09 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7A1E5100039;
 Fri, 10 Jan 2020 14:49:05 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6CA4D2BC7D1;
 Fri, 10 Jan 2020 14:49:05 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 10 Jan 2020 14:49:04 +0100
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 8/9] mmc: mmci: sdmmc: add voltage switch functions
Date: Fri, 10 Jan 2020 14:48:22 +0100
Message-ID: <20200110134823.14882-9-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110134823.14882-1-ludovic.barre@st.com>
References: <20200110134823.14882-1-ludovic.barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG3NODE3.st.com (10.75.127.9) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-10_01:2020-01-10,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_054914_738293_44B4C37A 
X-CRM114-Status: GOOD (  17.64  )
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

To prepare the voltage switch procedure, the VSWITCHEN bit must be
set before sending the cmd11.
To confirm completion of voltage switch, the VSWEND flag must be
checked.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci.h             |  4 +++
 drivers/mmc/host/mmci_stm32_sdmmc.c | 40 ++++++++++++++++++++++++++++-
 2 files changed, 43 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
index c04a144259a2..3634f98ad2d8 100644
--- a/drivers/mmc/host/mmci.h
+++ b/drivers/mmc/host/mmci.h
@@ -165,6 +165,7 @@
 /* Extended status bits for the STM32 variants */
 #define MCI_STM32_BUSYD0	BIT(20)
 #define MCI_STM32_BUSYD0END	BIT(21)
+#define MCI_STM32_VSWEND	BIT(25)
 
 #define MMCICLEAR		0x038
 #define MCI_CMDCRCFAILCLR	(1 << 0)
@@ -182,6 +183,9 @@
 #define MCI_ST_SDIOITC		(1 << 22)
 #define MCI_ST_CEATAENDC	(1 << 23)
 #define MCI_ST_BUSYENDC		(1 << 24)
+/* Extended clear bits for the STM32 variants */
+#define MCI_STM32_VSWENDC	BIT(25)
+#define MCI_STM32_CKSTOPC	BIT(26)
 
 #define MMCIMASK0		0x03c
 #define MCI_CMDCRCFAILMASK	(1 << 0)
diff --git a/drivers/mmc/host/mmci_stm32_sdmmc.c b/drivers/mmc/host/mmci_stm32_sdmmc.c
index 10059fa19f4a..9f43cf947c5f 100644
--- a/drivers/mmc/host/mmci_stm32_sdmmc.c
+++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
@@ -263,7 +263,9 @@ static void mmci_sdmmc_set_pwrreg(struct mmci_host *host, unsigned int pwr)
 	struct mmc_ios ios = host->mmc->ios;
 	struct sdmmc_dlyb *dlyb = host->variant_priv;
 
-	pwr = host->pwr_reg_add;
+	/* adds OF options and preserves voltage switch bits */
+	pwr = host->pwr_reg_add |
+		(host->pwr_reg & (MCI_STM32_VSWITCHEN | MCI_STM32_VSWITCH));
 
 	sdmmc_dlyb_input_ck(dlyb);
 
@@ -454,6 +456,40 @@ static int sdmmc_execute_tuning(struct mmc_host *mmc, u32 opcode)
 	return sdmmc_dlyb_phase_tuning(host, opcode);
 }
 
+static void sdmmc_prep_vswitch(struct mmci_host *host)
+{
+	/* clear the voltage switch completion flag */
+	writel_relaxed(MCI_STM32_VSWENDC, host->base + MMCICLEAR);
+	/* enable Voltage switch procedure */
+	mmci_write_pwrreg(host, host->pwr_reg | MCI_STM32_VSWITCHEN);
+}
+
+static int sdmmc_vswitch(struct mmci_host *host, struct mmc_ios *ios)
+{
+	unsigned long flags;
+	u32 status;
+	int ret = 0;
+
+	if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_180) {
+		spin_lock_irqsave(&host->lock, flags);
+		mmci_write_pwrreg(host, host->pwr_reg | MCI_STM32_VSWITCH);
+		spin_unlock_irqrestore(&host->lock, flags);
+
+		/* wait voltage switch completion while 10ms */
+		ret = readl_relaxed_poll_timeout(host->base + MMCISTATUS,
+						 status,
+						 (status & MCI_STM32_VSWEND),
+						 10, 10000);
+
+		writel_relaxed(MCI_STM32_VSWENDC | MCI_STM32_CKSTOPC,
+			       host->base + MMCICLEAR);
+		mmci_write_pwrreg(host, host->pwr_reg &
+				  ~(MCI_STM32_VSWITCHEN | MCI_STM32_VSWITCH));
+	}
+
+	return ret;
+}
+
 static struct mmci_host_ops sdmmc_variant_ops = {
 	.validate_data = sdmmc_idma_validate_data,
 	.prep_data = sdmmc_idma_prep_data,
@@ -465,6 +501,8 @@ static struct mmci_host_ops sdmmc_variant_ops = {
 	.set_clkreg = mmci_sdmmc_set_clkreg,
 	.set_pwrreg = mmci_sdmmc_set_pwrreg,
 	.busy_complete = sdmmc_busy_complete,
+	.prep_volt_switch = sdmmc_prep_vswitch,
+	.volt_switch = sdmmc_vswitch,
 };
 
 void sdmmc_variant_init(struct mmci_host *host)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
