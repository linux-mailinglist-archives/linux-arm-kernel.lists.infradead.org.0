Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E848311507
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:11:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RLNyZ8Qd73kCfnvkdkpo6oxPSkvji2SQD9C1qXbXE0U=; b=Va/+OK2Tgj5F0J
	O083LjldIRnYb//PJ1uO3dmaXn8u3C0W3FPnQNVuGP7IibfFJZPgZnhrssZTFoYgxRhAfLNW0lB0Q
	z7lfCZx0AXjpzHLWOWR7hQ+E/7FGLCc5i5+sPCtCjwk8gn4496Mod3Zlri0xMo9P6CtXVbrAHZG1B
	3Tvw34MLThE1J9NFdo+dgAvzp3BMJ48/Lxsm/sgRiyJVSpw6wKVFKVgCaBs3AW1hk3M9gKoUWrxzO
	pF22YynOZcRzSDNk/D6B6eLkBTGESyUP6PuNEjrjsISCiAmtv7eu8pJEsI0hG3/iiYLQQVc/P75MT
	w4SQKEDezoV+zm1V66Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6oU-0003U2-6l; Thu, 02 May 2019 08:11:30 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6nT-0002Rd-1P
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:10:39 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4285vWv006113; Thu, 2 May 2019 10:10:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=w83s0OVGK5oM3b3TzKRrTWaOEglCDSnrL6bdw9C2/w0=;
 b=Bwzq+0lQS/yHCd8BQ2BXnPd5mzMB6mGuVpoiJsmaOlqKoSVJ+yxZO5l4xnOAfytJ2XkR
 qDDARUeXPhZpE3LLsSDlU+oGHuJehZ9EwjKBNg0/Twg4q0PbkS2KJfDBsGWnPi8bmU3X
 lGCEZ+Ijc4Tg8lvRBfwRJI1XmYPBuxqWCfLoU52NEcQ0aVIhUN/QLLi5x71VebXASliC
 rifd7WAPKhoRFoUN1pDv7wxbLeRF0EYXA5Ugmzy5s0dzrOHYDoPWwx6coMc+x82Mum5P
 htgqZcwjEgVGVGMaE2NboBPMzbQ4oDKA8ldzrAaSMlGX8Th3bII7Awm+szQUwnie6CyJ Mg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2s6xgcq49q-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 02 May 2019 10:10:21 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8E41943;
 Thu,  2 May 2019 08:10:20 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 60A83F43;
 Thu,  2 May 2019 08:10:20 +0000 (GMT)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 2 May 2019
 10:10:20 +0200
Received: from localhost (10.129.4.86) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.361.1;
 Thu, 2 May 2019 10:10:19 +0200
From: Fabien Dessenne <fabien.dessenne@st.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, <devicetree@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-remoteproc@vger.kernel.org>
Subject: [PATCH v3 3/8] remoteproc: stm32: add an ST stm32_rproc driver
Date: Thu, 2 May 2019 10:10:01 +0200
Message-ID: <1556784606-3016-4-git-send-email-fabien.dessenne@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556784606-3016-1-git-send-email-fabien.dessenne@st.com>
References: <1556784606-3016-1-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.129.4.86]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-02_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_011027_519649_E0EBB64E 
X-CRM114-Status: GOOD (  25.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Ludovic
 Barre <ludovic.barre@st.com>, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Loic Pallardy <loic.pallardy@st.com>, Fabien Dessenne <fabien.dessenne@st.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch introduces a new remoteproc driver to control Cortex-M4
co-processor of the STM32 family.
It provides with the following features:
- start and stop
- dedicated co-processor memory regions registration
- coredump and recovery

Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
Signed-off-by: Loic Pallardy <loic.pallardy@st.com>
Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
---
 drivers/remoteproc/Kconfig       |  15 +
 drivers/remoteproc/Makefile      |   1 +
 drivers/remoteproc/stm32_rproc.c | 628 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 644 insertions(+)
 create mode 100644 drivers/remoteproc/stm32_rproc.c

diff --git a/drivers/remoteproc/Kconfig b/drivers/remoteproc/Kconfig
index f0abd26..0fba05a 100644
--- a/drivers/remoteproc/Kconfig
+++ b/drivers/remoteproc/Kconfig
@@ -197,6 +197,21 @@ config ST_REMOTEPROC
 config ST_SLIM_REMOTEPROC
 	tristate
 
+config STM32_RPROC
+	tristate "STM32 remoteproc support"
+	depends on ARCH_STM32
+	depends on REMOTEPROC
+	select MAILBOX
+	help
+	  Say y here to support STM32 MCU processors via the
+	  remote processor framework.
+
+	  You want to say y here in order to enable AMP
+	  use-cases to run on your platform (dedicated firmware could be
+	  offloaded to remote MCU processors using this framework).
+
+	  This can be either built-in or a loadable module.
+
 endif # REMOTEPROC
 
 endmenu
diff --git a/drivers/remoteproc/Makefile b/drivers/remoteproc/Makefile
index ce5d061..00f09e6 100644
--- a/drivers/remoteproc/Makefile
+++ b/drivers/remoteproc/Makefile
@@ -26,3 +26,4 @@ qcom_wcnss_pil-y			+= qcom_wcnss.o
 qcom_wcnss_pil-y			+= qcom_wcnss_iris.o
 obj-$(CONFIG_ST_REMOTEPROC)		+= st_remoteproc.o
 obj-$(CONFIG_ST_SLIM_REMOTEPROC)	+= st_slim_rproc.o
+obj-$(CONFIG_STM32_RPROC)		+= stm32_rproc.o
diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
new file mode 100644
index 0000000..bfe4e0a
--- /dev/null
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -0,0 +1,628 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) STMicroelectronics 2018 - All Rights Reserved
+ * Authors: Ludovic Barre <ludovic.barre@st.com> for STMicroelectronics.
+ *          Fabien Dessenne <fabien.dessenne@st.com> for STMicroelectronics.
+ */
+
+#include <linux/arm-smccc.h>
+#include <linux/dma-mapping.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/mailbox_client.h>
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/of_reserved_mem.h>
+#include <linux/regmap.h>
+#include <linux/remoteproc.h>
+#include <linux/reset.h>
+
+#include "remoteproc_internal.h"
+
+#define HOLD_BOOT		0
+#define RELEASE_BOOT		1
+
+#define MBOX_NB_VQ		2
+#define MBOX_NB_MBX		3
+
+#define STM32_SMC_RCC		0x82001000
+#define STM32_SMC_REG_WRITE	0x1
+
+#define STM32_MBX_VQ0		"vq0"
+#define STM32_MBX_VQ1		"vq1"
+#define STM32_MBX_SHUTDOWN	"shutdown"
+
+struct stm32_syscon {
+	struct regmap *map;
+	u32 reg;
+	u32 mask;
+};
+
+struct stm32_rproc_mem {
+	char name[20];
+	void __iomem *cpu_addr;
+	phys_addr_t bus_addr;
+	u32 dev_addr;
+	size_t size;
+};
+
+struct stm32_rproc_mem_ranges {
+	u32 dev_addr;
+	u32 bus_addr;
+	u32 size;
+};
+
+struct stm32_mbox {
+	const unsigned char name[10];
+	struct mbox_chan *chan;
+	struct mbox_client client;
+	int vq_id;
+};
+
+struct stm32_rproc {
+	struct reset_control *rst;
+	struct stm32_syscon hold_boot;
+	struct stm32_syscon pdds;
+	u32 nb_rmems;
+	struct stm32_rproc_mem *rmems;
+	struct stm32_mbox mb[MBOX_NB_MBX];
+	bool secured_soc;
+};
+
+static int stm32_rproc_pa_to_da(struct rproc *rproc, phys_addr_t pa, u64 *da)
+{
+	unsigned int i;
+	struct stm32_rproc *ddata = rproc->priv;
+	struct stm32_rproc_mem *p_mem;
+
+	for (i = 0; i < ddata->nb_rmems; i++) {
+		p_mem = &ddata->rmems[i];
+
+		if (pa < p_mem->bus_addr ||
+		    pa >= p_mem->bus_addr + p_mem->size)
+			continue;
+		*da = pa - p_mem->bus_addr + p_mem->dev_addr;
+		dev_dbg(rproc->dev.parent, "pa %#x to da %llx\n", pa, *da);
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
+static int stm32_rproc_mem_alloc(struct rproc *rproc,
+				 struct rproc_mem_entry *mem)
+{
+	struct device *dev = rproc->dev.parent;
+	void *va;
+
+	dev_dbg(dev, "map memory: %pa+%zx\n", &mem->dma, mem->len);
+	va = ioremap_wc(mem->dma, mem->len);
+	if (IS_ERR_OR_NULL(va)) {
+		dev_err(dev, "Unable to map memory region: %pa+%zx\n",
+			&mem->dma, mem->len);
+		return -ENOMEM;
+	}
+
+	/* Update memory entry va */
+	mem->va = va;
+
+	return 0;
+}
+
+static int stm32_rproc_mem_release(struct rproc *rproc,
+				   struct rproc_mem_entry *mem)
+{
+	dev_dbg(rproc->dev.parent, "unmap memory: %pa\n", &mem->dma);
+	iounmap(mem->va);
+
+	return 0;
+}
+
+static int stm32_rproc_of_memory_translations(struct rproc *rproc)
+{
+	struct device *parent, *dev = rproc->dev.parent;
+	struct stm32_rproc *ddata = rproc->priv;
+	struct device_node *np;
+	struct stm32_rproc_mem *p_mems;
+	struct stm32_rproc_mem_ranges *mem_range;
+	int cnt, array_size, i, ret = 0;
+
+	parent = dev->parent;
+	np = parent->of_node;
+
+	cnt = of_property_count_elems_of_size(np, "dma-ranges",
+					      sizeof(*mem_range));
+	if (cnt <= 0) {
+		dev_err(dev, "%s: dma-ranges property not defined\n", __func__);
+		return -EINVAL;
+	}
+
+	p_mems = devm_kcalloc(dev, cnt, sizeof(*p_mems), GFP_KERNEL);
+	if (!p_mems)
+		return -ENOMEM;
+	mem_range = kcalloc(cnt, sizeof(*mem_range), GFP_KERNEL);
+	if (!mem_range)
+		return -ENOMEM;
+
+	array_size = cnt * sizeof(struct stm32_rproc_mem_ranges) / sizeof(u32);
+
+	ret = of_property_read_u32_array(np, "dma-ranges",
+					 (u32 *)mem_range, array_size);
+	if (ret) {
+		dev_err(dev, "error while get dma-ranges property: %x\n", ret);
+		goto free_mem;
+	}
+
+	for (i = 0; i < cnt; i++) {
+		p_mems[i].bus_addr = mem_range[i].bus_addr;
+		p_mems[i].dev_addr = mem_range[i].dev_addr;
+		p_mems[i].size     = mem_range[i].size;
+
+		dev_dbg(dev, "memory range[%i]: da %#x, pa %#x, size %#x:\n",
+			i, p_mems[i].dev_addr, p_mems[i].bus_addr,
+			p_mems[i].size);
+	}
+
+	ddata->rmems = p_mems;
+	ddata->nb_rmems = cnt;
+
+free_mem:
+	kfree(mem_range);
+	return ret;
+}
+
+static int stm32_rproc_mbox_idx(struct rproc *rproc, const unsigned char *name)
+{
+	struct stm32_rproc *ddata = rproc->priv;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(ddata->mb); i++) {
+		if (!strncmp(ddata->mb[i].name, name, strlen(name)))
+			return i;
+	}
+	dev_err(&rproc->dev, "mailbox %s not found\n", name);
+
+	return -EINVAL;
+}
+
+static int stm32_rproc_elf_load_rsc_table(struct rproc *rproc,
+					  const struct firmware *fw)
+{
+	if (rproc_elf_load_rsc_table(rproc, fw))
+		dev_warn(&rproc->dev, "no resource table found for this firmware\n");
+
+	return 0;
+}
+
+static int stm32_rproc_parse_fw(struct rproc *rproc, const struct firmware *fw)
+{
+	struct device *dev = rproc->dev.parent;
+	struct device_node *np = dev->of_node;
+	struct of_phandle_iterator it;
+	struct rproc_mem_entry *mem;
+	struct reserved_mem *rmem;
+	u64 da;
+	int index = 0;
+
+	/* Register associated reserved memory regions */
+	of_phandle_iterator_init(&it, np, "memory-region", NULL, 0);
+	while (of_phandle_iterator_next(&it) == 0) {
+		rmem = of_reserved_mem_lookup(it.node);
+		if (!rmem) {
+			dev_err(dev, "unable to acquire memory-region\n");
+			return -EINVAL;
+		}
+
+		if (stm32_rproc_pa_to_da(rproc, rmem->base, &da) < 0) {
+			dev_err(dev, "memory region not valid %pa\n",
+				&rmem->base);
+			return -EINVAL;
+		}
+
+		/*  No need to map vdev buffer */
+		if (strcmp(it.node->name, "vdev0buffer")) {
+			/* Register memory region */
+			mem = rproc_mem_entry_init(dev, NULL,
+						   (dma_addr_t)rmem->base,
+						   rmem->size, da,
+						   stm32_rproc_mem_alloc,
+						   stm32_rproc_mem_release,
+						   it.node->name);
+
+			if (mem)
+				rproc_coredump_add_segment(rproc, da,
+							   rmem->size);
+		} else {
+			/* Register reserved memory for vdev buffer alloc */
+			mem = rproc_of_resm_mem_entry_init(dev, index,
+							   rmem->size,
+							   rmem->base,
+							   it.node->name);
+		}
+
+		if (!mem)
+			return -ENOMEM;
+
+		rproc_add_carveout(rproc, mem);
+		index++;
+	}
+
+	return stm32_rproc_elf_load_rsc_table(rproc, fw);
+}
+
+static irqreturn_t stm32_rproc_wdg(int irq, void *data)
+{
+	struct rproc *rproc = data;
+
+	rproc_report_crash(rproc, RPROC_WATCHDOG);
+
+	return IRQ_HANDLED;
+}
+
+static void stm32_rproc_mb_callback(struct mbox_client *cl, void *data)
+{
+	struct rproc *rproc = dev_get_drvdata(cl->dev);
+	struct stm32_mbox *mb = container_of(cl, struct stm32_mbox, client);
+
+	if (rproc_vq_interrupt(rproc, mb->vq_id) == IRQ_NONE)
+		dev_dbg(&rproc->dev, "no message found in vq%d\n", mb->vq_id);
+}
+
+static void stm32_rproc_free_mbox(struct rproc *rproc)
+{
+	struct stm32_rproc *ddata = rproc->priv;
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(ddata->mb); i++) {
+		if (ddata->mb[i].chan)
+			mbox_free_channel(ddata->mb[i].chan);
+		ddata->mb[i].chan = NULL;
+	}
+}
+
+static const struct stm32_mbox stm32_rproc_mbox[MBOX_NB_MBX] = {
+	{
+		.name = STM32_MBX_VQ0,
+		.vq_id = 0,
+		.client = {
+			.rx_callback = stm32_rproc_mb_callback,
+			.tx_block = false,
+		},
+	},
+	{
+		.name = STM32_MBX_VQ1,
+		.vq_id = 1,
+		.client = {
+			.rx_callback = stm32_rproc_mb_callback,
+			.tx_block = false,
+		},
+	},
+	{
+		.name = STM32_MBX_SHUTDOWN,
+		.vq_id = -1,
+		.client = {
+			.tx_block = true,
+			.tx_done = NULL,
+			.tx_tout = 500, /* 500 ms time out */
+		},
+	}
+};
+
+static void stm32_rproc_request_mbox(struct rproc *rproc)
+{
+	struct stm32_rproc *ddata = rproc->priv;
+	struct device *dev = &rproc->dev;
+	unsigned int i;
+	const unsigned char *name;
+	struct mbox_client *cl;
+
+	/* Initialise mailbox structure table */
+	memcpy(ddata->mb, stm32_rproc_mbox, sizeof(stm32_rproc_mbox));
+
+	for (i = 0; i < MBOX_NB_MBX; i++) {
+		name = ddata->mb[i].name;
+
+		cl = &ddata->mb[i].client;
+		cl->dev = dev->parent;
+
+		ddata->mb[i].chan = mbox_request_channel_byname(cl, name);
+		if (IS_ERR(ddata->mb[i].chan)) {
+			dev_warn(dev, "cannot get %s mbox\n", name);
+			ddata->mb[i].chan = NULL;
+		}
+	}
+}
+
+static int stm32_rproc_set_hold_boot(struct rproc *rproc, bool hold)
+{
+	struct stm32_rproc *ddata = rproc->priv;
+	struct stm32_syscon hold_boot = ddata->hold_boot;
+	struct arm_smccc_res smc_res;
+	int val, err;
+
+	val = hold ? HOLD_BOOT : RELEASE_BOOT;
+
+	if (ddata->secured_soc) {
+		arm_smccc_smc(STM32_SMC_RCC, STM32_SMC_REG_WRITE,
+			      hold_boot.reg, val, 0, 0, 0, 0, &smc_res);
+		err = smc_res.a0;
+	} else {
+		err = regmap_update_bits(hold_boot.map, hold_boot.reg,
+					 hold_boot.mask, val);
+	}
+
+	if (err)
+		dev_err(&rproc->dev, "failed to set hold boot\n");
+
+	return err;
+}
+
+static void stm32_rproc_add_coredump_trace(struct rproc *rproc)
+{
+	struct rproc_debug_trace *trace;
+	struct rproc_dump_segment *segment;
+	bool already_added;
+
+	list_for_each_entry(trace, &rproc->traces, node) {
+		already_added = false;
+
+		list_for_each_entry(segment, &rproc->dump_segments, node) {
+			if (segment->da == trace->trace_mem.da) {
+				already_added = true;
+				break;
+			}
+		}
+
+		if (!already_added)
+			rproc_coredump_add_segment(rproc, trace->trace_mem.da,
+						   trace->trace_mem.len);
+	}
+}
+
+static int stm32_rproc_start(struct rproc *rproc)
+{
+	int err;
+
+	stm32_rproc_add_coredump_trace(rproc);
+
+	err = stm32_rproc_set_hold_boot(rproc, false);
+	if (err)
+		return err;
+
+	return stm32_rproc_set_hold_boot(rproc, true);
+}
+
+static int stm32_rproc_stop(struct rproc *rproc)
+{
+	struct stm32_rproc *ddata = rproc->priv;
+	int err, dummy_data, idx;
+
+	/* request shutdown of the remote processor */
+	if (rproc->state != RPROC_OFFLINE) {
+		idx = stm32_rproc_mbox_idx(rproc, STM32_MBX_SHUTDOWN);
+		if (idx >= 0 && ddata->mb[idx].chan) {
+			/* a dummy data is sent to allow to block on transmit */
+			err = mbox_send_message(ddata->mb[idx].chan,
+						&dummy_data);
+			if (err < 0)
+				dev_warn(&rproc->dev, "warning: remote FW shutdown without ack\n");
+		}
+	}
+
+	err = stm32_rproc_set_hold_boot(rproc, true);
+	if (err)
+		return err;
+
+	err = reset_control_assert(ddata->rst);
+	if (err) {
+		dev_err(&rproc->dev, "failed to assert the reset\n");
+		return err;
+	}
+
+	/* to allow platform Standby power mode, set remote proc Deep Sleep */
+	if (ddata->pdds.map) {
+		err = regmap_update_bits(ddata->pdds.map, ddata->pdds.reg,
+					 ddata->pdds.mask, 1);
+		if (err) {
+			dev_err(&rproc->dev, "failed to set pdds\n");
+			return err;
+		}
+	}
+
+	return 0;
+}
+
+static void stm32_rproc_kick(struct rproc *rproc, int vqid)
+{
+	struct stm32_rproc *ddata = rproc->priv;
+	unsigned int i;
+	int err;
+
+	if (WARN_ON(vqid >= MBOX_NB_VQ))
+		return;
+
+	for (i = 0; i < MBOX_NB_MBX; i++) {
+		if (vqid != ddata->mb[i].vq_id)
+			continue;
+		if (!ddata->mb[i].chan)
+			return;
+		err = mbox_send_message(ddata->mb[i].chan, (void *)vqid);
+		if (err < 0)
+			dev_err(&rproc->dev, "%s: failed (%s, err:%d)\n",
+				__func__, ddata->mb[i].name, err);
+		return;
+	}
+}
+
+static struct rproc_ops st_rproc_ops = {
+	.start		= stm32_rproc_start,
+	.stop		= stm32_rproc_stop,
+	.kick		= stm32_rproc_kick,
+	.load		= rproc_elf_load_segments,
+	.parse_fw	= stm32_rproc_parse_fw,
+	.find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table,
+	.sanity_check	= rproc_elf_sanity_check,
+	.get_boot_addr	= rproc_elf_get_boot_addr,
+};
+
+static const struct of_device_id stm32_rproc_match[] = {
+	{ .compatible = "st,stm32mp1-m4" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, stm32_rproc_match);
+
+static int stm32_rproc_get_syscon(struct device_node *np, const char *prop,
+				  struct stm32_syscon *syscon)
+{
+	int err = 0;
+
+	syscon->map = syscon_regmap_lookup_by_phandle(np, prop);
+	if (IS_ERR(syscon->map)) {
+		err = PTR_ERR(syscon->map);
+		syscon->map = NULL;
+		goto out;
+	}
+
+	err = of_property_read_u32_index(np, prop, 1, &syscon->reg);
+	if (err)
+		goto out;
+
+	err = of_property_read_u32_index(np, prop, 2, &syscon->mask);
+
+out:
+	return err;
+}
+
+static int stm32_rproc_parse_dt(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct rproc *rproc = platform_get_drvdata(pdev);
+	struct stm32_rproc *ddata = rproc->priv;
+	struct stm32_syscon tz;
+	unsigned int tzen;
+	int err, irq;
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq > 0) {
+		err = devm_request_irq(dev, irq, stm32_rproc_wdg, 0,
+				       dev_name(dev), rproc);
+		if (err) {
+			dev_err(dev, "failed to request wdg irq\n");
+			return err;
+		}
+
+		dev_info(dev, "wdg irq registered\n");
+	}
+
+	ddata->rst = devm_reset_control_get_by_index(dev, 0);
+	if (IS_ERR(ddata->rst)) {
+		dev_err(dev, "failed to get mcu reset\n");
+		return PTR_ERR(ddata->rst);
+	}
+
+	/*
+	 * if platform is secured the hold boot bit must be written by
+	 * smc call and read normally.
+	 * if not secure the hold boot bit could be read/write normally
+	 */
+	err = stm32_rproc_get_syscon(np, "st,syscfg-tz", &tz);
+	if (err) {
+		dev_err(dev, "failed to get tz syscfg\n");
+		return err;
+	}
+
+	err = regmap_read(tz.map, tz.reg, &tzen);
+	if (err) {
+		dev_err(&rproc->dev, "failed to read tzen\n");
+		return err;
+	}
+	ddata->secured_soc = tzen & tz.mask;
+
+	err = stm32_rproc_get_syscon(np, "st,syscfg-holdboot",
+				     &ddata->hold_boot);
+	if (err) {
+		dev_err(dev, "failed to get hold boot\n");
+		return err;
+	}
+
+	err = stm32_rproc_get_syscon(np, "st,syscfg-pdds", &ddata->pdds);
+	if (err)
+		dev_warn(dev, "failed to get pdds\n");
+
+	rproc->auto_boot = of_property_read_bool(np, "st,auto_boot");
+
+	return stm32_rproc_of_memory_translations(rproc);
+}
+
+static int stm32_rproc_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct stm32_rproc *ddata;
+	struct device_node *np = dev->of_node;
+	struct rproc *rproc;
+	int ret;
+
+	ret = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(32));
+	if (ret)
+		return ret;
+
+	rproc = rproc_alloc(dev, np->name, &st_rproc_ops, NULL, sizeof(*ddata));
+	if (!rproc)
+		return -ENOMEM;
+
+	rproc->has_iommu = false;
+	ddata = rproc->priv;
+
+	platform_set_drvdata(pdev, rproc);
+
+	ret = stm32_rproc_parse_dt(pdev);
+	if (ret)
+		goto free_rproc;
+
+	stm32_rproc_request_mbox(rproc);
+
+	ret = rproc_add(rproc);
+	if (ret)
+		goto free_mb;
+
+	return 0;
+
+free_mb:
+	stm32_rproc_free_mbox(rproc);
+free_rproc:
+	rproc_free(rproc);
+	return ret;
+}
+
+static int stm32_rproc_remove(struct platform_device *pdev)
+{
+	struct rproc *rproc = platform_get_drvdata(pdev);
+
+	if (atomic_read(&rproc->power) > 0)
+		rproc_shutdown(rproc);
+
+	rproc_del(rproc);
+	stm32_rproc_free_mbox(rproc);
+	rproc_free(rproc);
+
+	return 0;
+}
+
+static struct platform_driver stm32_rproc_driver = {
+	.probe = stm32_rproc_probe,
+	.remove = stm32_rproc_remove,
+	.driver = {
+		.name = "stm32-rproc",
+		.of_match_table = of_match_ptr(stm32_rproc_match),
+	},
+};
+module_platform_driver(stm32_rproc_driver);
+
+MODULE_DESCRIPTION("STM32 Remote Processor Control Driver");
+MODULE_AUTHOR("Ludovic Barre <ludovic.barre@st.com>");
+MODULE_AUTHOR("Fabien Dessenne <fabien.dessenne@st.com>");
+MODULE_LICENSE("GPL v2");
+
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
