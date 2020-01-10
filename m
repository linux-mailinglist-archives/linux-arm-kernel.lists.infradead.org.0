Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83428136EB7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 14:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAGzwVi4YCm0uGvGtNJzGdwkj0ag7bu9FNF6nHZGpck=; b=MpO5kBMBWDd7Go
	PWbD6wpMkvypOOzZQTNqa9vPxNDUPK0F53+A7ICqZeBHTY/OhCbTobdOnVMztBJP/P7cnDmx1+8Lo
	X8tQhbDFsc3DCYfg5Sjt7YrlBxcTWDcYrSWekTGqlVFgMimV9kqz+SL4jioaQ5fL1mXsxrZh0I54d
	LRmpwKAnxfZCpibYfA6Hx757i6TWYdXHktW5OrA/reECd3qUhmvzxfbRdCKtKfOHO0vpfXvKri0KN
	2qz/oghfe0uB2/z18ndLpD8DZkUQsNIzqfO9BifSCqw6XX9PzEHAj8Aup0jI2SXvUZ7TM+QiM7Sri
	5jYNrozwr/yDgBbQ6cyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipugz-0006uM-MO; Fri, 10 Jan 2020 13:51:13 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipuex-0004Ek-RG
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 13:49:09 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00ADlx48013148; Fri, 10 Jan 2020 14:49:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=jylU7FoT+8vq4ShVG0cv762qm/YKM/4499aDPkVYi+w=;
 b=bCQGPrkJtmc2Ng3g642xzxAk26v6YfRaiKp9grAUwFrjcM4II3g8RyjbSxFUBzEAorBn
 qs7yEaq51xp4LS6d5OlVimvOjC1UNzxNZya8powVN3gdvtjmHdS7nSKy2MMMCcBxSmiy
 cjVw/O9V1ZUilLul1q/7G8rLzwRhmhN6/pIXwNxBPeee6f2pptvhZ4/GrZ1cfr6xMufe
 BlTUqBlRsFI+pNT7McG5yY6g3ogMMgxb5rIc//CrX2/Ej7cPRqtMNCrx+yp6rs92k+zd
 KkQXMsyr/tN2IEYEZ7cEQp0im+rB0YF47TBJ+3ipDnwDwFBtbvMVPuIO3FxZSV8PbCgK Kg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xepyt8w0k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2020 14:49:03 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 503EF10002A;
 Fri, 10 Jan 2020 14:49:03 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 423C22BC7D1;
 Fri, 10 Jan 2020 14:49:03 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 10 Jan 2020 14:49:02 +0100
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 6/9] mmc: mmci: sdmmc: add execute tuning with delay block
Date: Fri, 10 Jan 2020 14:48:20 +0100
Message-ID: <20200110134823.14882-7-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110134823.14882-1-ludovic.barre@st.com>
References: <20200110134823.14882-1-ludovic.barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-10_01:2020-01-10,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_054908_195624_7A496105 
X-CRM114-Status: GOOD (  19.69  )
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

The hardware delay block is used to align the sampling clock on
the data received by SDMMC. It is mandatory for SDMMC to
support the SDR104 mode. The delay block is used to generate
an output clock which is dephased from the input clock.
The phase of the output clock must be programmed by the execute
tuning interface.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci_stm32_sdmmc.c | 147 ++++++++++++++++++++++++++++
 1 file changed, 147 insertions(+)

diff --git a/drivers/mmc/host/mmci_stm32_sdmmc.c b/drivers/mmc/host/mmci_stm32_sdmmc.c
index df08f6662431..10059fa19f4a 100644
--- a/drivers/mmc/host/mmci_stm32_sdmmc.c
+++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
@@ -3,10 +3,13 @@
  * Copyright (C) STMicroelectronics 2018 - All Rights Reserved
  * Author: Ludovic.barre@st.com for STMicroelectronics.
  */
+#include <linux/bitfield.h>
 #include <linux/delay.h>
 #include <linux/dma-mapping.h>
+#include <linux/iopoll.h>
 #include <linux/mmc/host.h>
 #include <linux/mmc/card.h>
+#include <linux/of_address.h>
 #include <linux/reset.h>
 #include <linux/scatterlist.h>
 #include "mmci.h"
@@ -14,6 +17,20 @@
 #define SDMMC_LLI_BUF_LEN	PAGE_SIZE
 #define SDMMC_IDMA_BURST	BIT(MMCI_STM32_IDMABNDT_SHIFT)
 
+#define DLYB_CR			0x0
+#define DLYB_CR_DEN		BIT(0)
+#define DLYB_CR_SEN		BIT(1)
+
+#define DLYB_CFGR		0x4
+#define DLYB_CFGR_SEL_MASK	GENMASK(3, 0)
+#define DLYB_CFGR_UNIT_MASK	GENMASK(14, 8)
+#define DLYB_CFGR_LNG_MASK	GENMASK(27, 16)
+#define DLYB_CFGR_LNGF		BIT(31)
+
+#define DLYB_NB_DELAY		11
+#define DLYB_CFGR_SEL_MAX	(DLYB_NB_DELAY + 1)
+#define DLYB_CFGR_UNIT_MAX	127
+
 struct sdmmc_lli_desc {
 	u32 idmalar;
 	u32 idmabase;
@@ -25,6 +42,12 @@ struct sdmmc_idma {
 	void *sg_cpu;
 };
 
+struct sdmmc_dlyb {
+	void __iomem *base;
+	u32 unit;
+	u32 max;
+};
+
 static int sdmmc_idma_validate_data(struct mmci_host *host,
 				    struct mmc_data *data)
 {
@@ -226,12 +249,24 @@ static void mmci_sdmmc_set_clkreg(struct mmci_host *host, unsigned int desired)
 	mmci_write_clkreg(host, clk);
 }
 
+static void sdmmc_dlyb_input_ck(struct sdmmc_dlyb *dlyb)
+{
+	if (!dlyb || !dlyb->base)
+		return;
+
+	/* Output clock = Input clock */
+	writel_relaxed(0, dlyb->base + DLYB_CR);
+}
+
 static void mmci_sdmmc_set_pwrreg(struct mmci_host *host, unsigned int pwr)
 {
 	struct mmc_ios ios = host->mmc->ios;
+	struct sdmmc_dlyb *dlyb = host->variant_priv;
 
 	pwr = host->pwr_reg_add;
 
+	sdmmc_dlyb_input_ck(dlyb);
+
 	if (ios.power_mode == MMC_POWER_OFF) {
 		/* Only a reset could power-off sdmmc */
 		reset_control_assert(host->rst);
@@ -323,6 +358,102 @@ static bool sdmmc_busy_complete(struct mmci_host *host, u32 status, u32 err_msk)
 	return true;
 }
 
+static void sdmmc_dlyb_set_cfgr(struct sdmmc_dlyb *dlyb,
+				int unit, int phase, bool sampler)
+{
+	u32 cfgr;
+
+	writel_relaxed(DLYB_CR_SEN | DLYB_CR_DEN, dlyb->base + DLYB_CR);
+
+	cfgr = FIELD_PREP(DLYB_CFGR_UNIT_MASK, unit) |
+	       FIELD_PREP(DLYB_CFGR_SEL_MASK, phase);
+	writel_relaxed(cfgr, dlyb->base + DLYB_CFGR);
+
+	if (!sampler)
+		writel_relaxed(DLYB_CR_DEN, dlyb->base + DLYB_CR);
+}
+
+static int sdmmc_dlyb_lng_tuning(struct mmci_host *host)
+{
+	struct sdmmc_dlyb *dlyb = host->variant_priv;
+	u32 cfgr;
+	int i, lng, ret;
+
+	for (i = 0; i <= DLYB_CFGR_UNIT_MAX; i++) {
+		sdmmc_dlyb_set_cfgr(dlyb, i, DLYB_CFGR_SEL_MAX, true);
+
+		ret = readl_relaxed_poll_timeout(dlyb->base + DLYB_CFGR, cfgr,
+						 (cfgr & DLYB_CFGR_LNGF),
+						 1, 1000);
+		if (ret) {
+			dev_warn(mmc_dev(host->mmc),
+				 "delay line cfg timeout unit:%d cfgr:%d\n",
+				 i, cfgr);
+			continue;
+		}
+
+		lng = FIELD_GET(DLYB_CFGR_LNG_MASK, cfgr);
+		if (lng < BIT(DLYB_NB_DELAY) && lng > 0)
+			break;
+	}
+
+	if (i > DLYB_CFGR_UNIT_MAX)
+		return -EINVAL;
+
+	dlyb->unit = i;
+	dlyb->max = __fls(lng);
+
+	return 0;
+}
+
+static int sdmmc_dlyb_phase_tuning(struct mmci_host *host, u32 opcode)
+{
+	struct sdmmc_dlyb *dlyb = host->variant_priv;
+	int cur_len = 0, max_len = 0, end_of_len = 0;
+	int phase;
+
+	for (phase = 0; phase <= dlyb->max; phase++) {
+		sdmmc_dlyb_set_cfgr(dlyb, dlyb->unit, phase, false);
+
+		if (mmc_send_tuning(host->mmc, opcode, NULL)) {
+			cur_len = 0;
+		} else {
+			cur_len++;
+			if (cur_len > max_len) {
+				max_len = cur_len;
+				end_of_len = phase;
+			}
+		}
+	}
+
+	if (!max_len) {
+		dev_err(mmc_dev(host->mmc), "no tuning point found\n");
+		return -EINVAL;
+	}
+
+	phase = end_of_len - max_len / 2;
+	sdmmc_dlyb_set_cfgr(dlyb, dlyb->unit, phase, false);
+
+	dev_dbg(mmc_dev(host->mmc), "unit:%d max_dly:%d phase:%d\n",
+		dlyb->unit, dlyb->max, phase);
+
+	return 0;
+}
+
+static int sdmmc_execute_tuning(struct mmc_host *mmc, u32 opcode)
+{
+	struct mmci_host *host = mmc_priv(mmc);
+	struct sdmmc_dlyb *dlyb = host->variant_priv;
+
+	if (!dlyb || !dlyb->base)
+		return -EINVAL;
+
+	if (sdmmc_dlyb_lng_tuning(host))
+		return -EINVAL;
+
+	return sdmmc_dlyb_phase_tuning(host, opcode);
+}
+
 static struct mmci_host_ops sdmmc_variant_ops = {
 	.validate_data = sdmmc_idma_validate_data,
 	.prep_data = sdmmc_idma_prep_data,
@@ -338,5 +469,21 @@ static struct mmci_host_ops sdmmc_variant_ops = {
 
 void sdmmc_variant_init(struct mmci_host *host)
 {
+	struct device_node *np = host->mmc->parent->of_node;
+	void __iomem *base_dlyb;
+	struct sdmmc_dlyb *dlyb;
+
 	host->ops = &sdmmc_variant_ops;
+
+	base_dlyb = devm_of_iomap(mmc_dev(host->mmc), np, 1, NULL);
+	if (IS_ERR(base_dlyb))
+		return;
+
+	dlyb = devm_kzalloc(mmc_dev(host->mmc), sizeof(*dlyb), GFP_KERNEL);
+	if (!dlyb)
+		return;
+
+	dlyb->base = base_dlyb;
+	host->variant_priv = dlyb;
+	host->mmc_ops->execute_tuning = sdmmc_execute_tuning;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
