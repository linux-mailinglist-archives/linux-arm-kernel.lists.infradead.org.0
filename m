Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 457CF14B183
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 10:09:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ur9HBMcZXRuigf3aB92VZgHUCwI9q0GeDqcK9IoygY4=; b=fS8Ow+LaOqqTpL
	TxK2oG3SlM5iN5BRqhU7Mn9AGB49D0N4IiGagP+K7KGEIa91c5K6Ozab3J67QB3QztK/S8HN4sbdc
	gWTbRHm2QOX++Gy56epnclt4TNY3jrGjwjF8A1t9qGzLrnbK5YCcKQkBDhXxjkiP4ImWWkTxC6E5u
	XQ0kwroUhzbePujGNQ3MDMz5CyKFNs6m7nGL4Fk70WsS0jJwVggpegUrLDsvooNwuqLyMSyIXbQ8e
	N7Og7No60XXecCrpghsDPQ1sX7g1BLFThKSf11Q/aiZsQyOoVo4zD3ells3wsC86hdkTA4w+ES8O5
	RhB6hXH7sxkHF9XlQJCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwMs8-0003eA-FS; Tue, 28 Jan 2020 09:09:24 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwMpk-00015x-Dz
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 09:07:00 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00S93bVh014413; Tue, 28 Jan 2020 10:06:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=1xJlCzc7tviB9Z4P2IWtyyQ33TkrXRbDCDdaIxI2D64=;
 b=a5ue5qnl6GRcDtqnP22SVjq2bnZW/hithJ/z/ndfuTOqVrJ0xjMRWHGxZOty27OTHfy3
 4ucXBR46wUt3fNV2B7dLl1Q82Pneh7ekWWciiGzJbl3rJtpg9vCk5fo6lxjql4vs+9RI
 4OEHBpDfChUy7xUJ8N6uHsLDbrLpd0//gtjyhJgxTRXEjUgPwo/7EgG/BA3+EvE0EF+t
 4N7+7Nl4UBGFlYSGmubvQzpr2HqqWduZ3wTmzJsLIuH72ZVglV14dyJY7B5l7MObCAln
 aEVcRo5jIsULjnmtAze7vmnTSGTrWMSKBvGJbKt5/w3yvJr+RUzUjsSJb1aLauy6/KMC Sg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrbpaw4t8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 10:06:52 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3282B100057;
 Tue, 28 Jan 2020 10:06:48 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 241D5212A3A;
 Tue, 28 Jan 2020 10:06:48 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 28 Jan 2020 10:06:47 +0100
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH V2 8/9] mmc: mmci: sdmmc: add voltage switch functions
Date: Tue, 28 Jan 2020 10:06:35 +0100
Message-ID: <20200128090636.13689-9-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200128090636.13689-1-ludovic.barre@st.com>
References: <20200128090636.13689-1-ludovic.barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_02:2020-01-24,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_010656_793233_DD92564C 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

To prepare the voltage switch procedure, the VSWITCHEN bit must be
set before sending the cmd11.
To confirm completion of voltage switch, the VSWEND flag must be
checked.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci.h             |  4 +++
 drivers/mmc/host/mmci_stm32_sdmmc.c | 43 +++++++++++++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
index c3bc0a38d4cb..e1a9b96a3396 100644
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
index fa875febcc85..f76e82f8f12f 100644
--- a/drivers/mmc/host/mmci_stm32_sdmmc.c
+++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
@@ -32,6 +32,7 @@
 #define DLYB_CFGR_UNIT_MAX	127
 
 #define DLYB_LNG_TIMEOUT_US	1000
+#define SDMMC_VSWEND_TIMEOUT_US 10000
 
 struct sdmmc_lli_desc {
 	u32 idmalar;
@@ -265,6 +266,7 @@ static void mmci_sdmmc_set_pwrreg(struct mmci_host *host, unsigned int pwr)
 	struct mmc_ios ios = host->mmc->ios;
 	struct sdmmc_dlyb *dlyb = host->variant_priv;
 
+	/* adds OF options */
 	pwr = host->pwr_reg_add;
 
 	sdmmc_dlyb_input_ck(dlyb);
@@ -291,6 +293,10 @@ static void mmci_sdmmc_set_pwrreg(struct mmci_host *host, unsigned int pwr)
 		writel(MCI_IRQENABLE | host->variant->start_err,
 		       host->base + MMCIMASK0);
 
+		/* preserves voltage switch bits */
+		pwr |= host->pwr_reg & (MCI_STM32_VSWITCHEN |
+					MCI_STM32_VSWITCH);
+
 		/*
 		 * After a power-cycle state, we must set the SDMMC in
 		 * Power-off. The SDMMC_D[7:0], SDMMC_CMD and SDMMC_CK are
@@ -456,6 +462,41 @@ static int sdmmc_execute_tuning(struct mmc_host *mmc, u32 opcode)
 	return sdmmc_dlyb_phase_tuning(host, opcode);
 }
 
+static void sdmmc_pre_sig_volt_vswitch(struct mmci_host *host)
+{
+	/* clear the voltage switch completion flag */
+	writel_relaxed(MCI_STM32_VSWENDC, host->base + MMCICLEAR);
+	/* enable Voltage switch procedure */
+	mmci_write_pwrreg(host, host->pwr_reg | MCI_STM32_VSWITCHEN);
+}
+
+static int sdmmc_post_sig_volt_switch(struct mmci_host *host,
+				      struct mmc_ios *ios)
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
+						 10, SDMMC_VSWEND_TIMEOUT_US);
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
@@ -467,6 +508,8 @@ static struct mmci_host_ops sdmmc_variant_ops = {
 	.set_clkreg = mmci_sdmmc_set_clkreg,
 	.set_pwrreg = mmci_sdmmc_set_pwrreg,
 	.busy_complete = sdmmc_busy_complete,
+	.pre_sig_volt_switch = sdmmc_pre_sig_volt_vswitch,
+	.post_sig_volt_switch = sdmmc_post_sig_volt_switch,
 };
 
 void sdmmc_variant_init(struct mmci_host *host)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
