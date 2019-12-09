Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D50116A08
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:47:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RlR9zsjzJrR+UawnGK3AHBB/XEFZ5jCyhH/TKgZlnEU=; b=H6RJw4MSK4lcvJ
	wq4OO7J0ct4EHTMjoL9rILJ3Fd+H/VDsGMyqN9sY2MR2AcXPd4CcYZeN/h+1ZCUBb91W2HpsC2kXr
	5wipC0Z2Oy0gZxQDoiWW8Q+9UwLwMalR+ZpkRyVqsuqFh9mCnADhgYnoTt/suPglVAsVjVYU3IyEL
	sTc9YrKY1jbqD08ECT/wR4N03bXq+19YPGVwWKhINDo3mhf7Ps/sbo1CchvpP3ECfqw5kpal+fNo6
	/Sk3c3qtd80mCvZ5Cpl1+Aq1c4fXAXaF1ZKeUfX7GBU4mxc8/Kw4FtEh+pOcpPPlY/uufqpuWIPxz
	c1ycc5agU1Bj4kHSAPIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFde-0000p6-Un; Mon, 09 Dec 2019 09:47:35 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFaT-0005Pe-LB
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:44:27 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xB99iBrQ053647;
 Mon, 9 Dec 2019 03:44:11 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1575884651;
 bh=CA9qd2mH8A8rPUZmTFY3DdK2ce3EqgwBnZUFVCUt+D0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=WmIJSvxRBNjhlnaWBArWh9Poi74S5Af5BX0RFGq9pRjpaKbQOTNyKtiYlKP8lZC0L
 TBDjG5BdzEy4T7g0pckLTTrKgsfna3kjR4tHSAHlpPx9V2AqcPsPOs55dKRgYc5C0O
 RD9I1zDmyUQ8CycreqjiGyFYtRranvMtOQva9PmQ=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xB99iB40042554
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 9 Dec 2019 03:44:11 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 9 Dec
 2019 03:44:10 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 9 Dec 2019 03:44:10 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xB99hOWr080263;
 Mon, 9 Dec 2019 03:44:06 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH v7 10/12] dmaengine: ti: k3-udma: Add glue layer for non
 DMAengine users
Date: Mon, 9 Dec 2019 11:43:30 +0200
Message-ID: <20191209094332.4047-11-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209094332.4047-1-peter.ujfalusi@ti.com>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_014418_186350_958A7263 
X-CRM114-Status: GOOD (  26.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, vigneshr@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Grygorii Strashko <grygorii.strashko@ti.com>

Certain users can not use right now the DMAengine API due to missing
features in the core. Prime example is Networking.

These users can use the glue layer interface to avoid misuse of DMAengine
API and when the core gains the needed features they can be converted to
use generic API.

The most prominent features the glue layer clients are depending on:

- most PSI-L native peripheral use extra rflow ranges on a receive channel
   and depending on the peripheral's configuration packets from a single
   free descriptor ring is going to be received to different receive ring
  - it is also possible to have different free descriptor rings per rflow
    and an rflow can also support 4 additional free descriptor ring based
    on the size of the incoming packet
- out of order completion of descriptors on a channel
 - when we have several queues to handle different priority packets the
   descriptors will be completed 'out-of-order'
- the notion of prep_slave_sg is not matching with what the streaming type
   of operation is demanding for networking
- Streaming type of operation
 - Ability to fill the free descriptor ring with descriptors in
   anticipation of incoming traffic and when a packet arrives UDMAP will
   form a packet and gives it to the client driver
 - the descriptors are not backed with exact size data buffers as we don't
   know the size of the packet we will receive, but as a generic pool of
   buffers to be used by the receive channel
- NAPI type of operation (polling instead of interrupt driven transfer)
 - without this we can not sustain gigabit speeds and we need to support NAPI
 - not to limit this to networking, but other high performance operations

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/dma/ti/Kconfig           |    8 +
 drivers/dma/ti/Makefile          |    1 +
 drivers/dma/ti/k3-udma-glue.c    | 1198 ++++++++++++++++++++++++++++++
 drivers/dma/ti/k3-udma-private.c |  133 ++++
 drivers/dma/ti/k3-udma.c         |   63 +-
 drivers/dma/ti/k3-udma.h         |   31 +
 include/linux/dma/k3-udma-glue.h |  134 ++++
 7 files changed, 1567 insertions(+), 1 deletion(-)
 create mode 100644 drivers/dma/ti/k3-udma-glue.c
 create mode 100644 drivers/dma/ti/k3-udma-private.c
 create mode 100644 include/linux/dma/k3-udma-glue.h

diff --git a/drivers/dma/ti/Kconfig b/drivers/dma/ti/Kconfig
index dfd98f775128..987339e6f517 100644
--- a/drivers/dma/ti/Kconfig
+++ b/drivers/dma/ti/Kconfig
@@ -47,6 +47,14 @@ config TI_K3_UDMA
 	  Enable support for the TI UDMA (Unified DMA) controller. This
 	  DMA engine is used in AM65x and j721e.
 
+config TI_K3_UDMA_GLUE_LAYER
+	tristate "Texas Instruments UDMA Glue layer for non DMAengine users"
+	depends on ARCH_K3 || COMPILE_TEST
+	depends on TI_K3_UDMA
+	help
+	  Say y here to support the K3 NAVSS DMA glue interface
+	  If unsure, say N.
+
 config TI_K3_PSIL
 	bool
 
diff --git a/drivers/dma/ti/Makefile b/drivers/dma/ti/Makefile
index 9d787f009195..9a29a107e374 100644
--- a/drivers/dma/ti/Makefile
+++ b/drivers/dma/ti/Makefile
@@ -3,5 +3,6 @@ obj-$(CONFIG_TI_CPPI41) += cppi41.o
 obj-$(CONFIG_TI_EDMA) += edma.o
 obj-$(CONFIG_DMA_OMAP) += omap-dma.o
 obj-$(CONFIG_TI_K3_UDMA) += k3-udma.o
+obj-$(CONFIG_TI_K3_UDMA_GLUE_LAYER) += k3-udma-glue.o
 obj-$(CONFIG_TI_K3_PSIL) += k3-psil.o k3-psil-am654.o k3-psil-j721e.o
 obj-$(CONFIG_TI_DMA_CROSSBAR) += dma-crossbar.o
diff --git a/drivers/dma/ti/k3-udma-glue.c b/drivers/dma/ti/k3-udma-glue.c
new file mode 100644
index 000000000000..85e455e15f10
--- /dev/null
+++ b/drivers/dma/ti/k3-udma-glue.c
@@ -0,0 +1,1198 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * K3 NAVSS DMA glue interface
+ *
+ * Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com
+ *
+ */
+
+#include <linux/atomic.h>
+#include <linux/delay.h>
+#include <linux/dma-mapping.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/soc/ti/k3-ringacc.h>
+#include <linux/dma/ti-cppi5.h>
+#include <linux/dma/k3-udma-glue.h>
+
+#include "k3-udma.h"
+#include "k3-psil-priv.h"
+
+struct k3_udma_glue_common {
+	struct device *dev;
+	struct udma_dev *udmax;
+	const struct udma_tisci_rm *tisci_rm;
+	struct k3_ringacc *ringacc;
+	u32 src_thread;
+	u32 dst_thread;
+
+	u32  hdesc_size;
+	bool epib;
+	u32  psdata_size;
+	u32  swdata_size;
+};
+
+struct k3_udma_glue_tx_channel {
+	struct k3_udma_glue_common common;
+
+	struct udma_tchan *udma_tchanx;
+	int udma_tchan_id;
+
+	struct k3_ring *ringtx;
+	struct k3_ring *ringtxcq;
+
+	bool psil_paired;
+
+	int virq;
+
+	atomic_t free_pkts;
+	bool tx_pause_on_err;
+	bool tx_filt_einfo;
+	bool tx_filt_pswords;
+	bool tx_supr_tdpkt;
+};
+
+struct k3_udma_glue_rx_flow {
+	struct udma_rflow *udma_rflow;
+	int udma_rflow_id;
+	struct k3_ring *ringrx;
+	struct k3_ring *ringrxfdq;
+
+	int virq;
+};
+
+struct k3_udma_glue_rx_channel {
+	struct k3_udma_glue_common common;
+
+	struct udma_rchan *udma_rchanx;
+	int udma_rchan_id;
+	bool remote;
+
+	bool psil_paired;
+
+	u32  swdata_size;
+	int  flow_id_base;
+
+	struct k3_udma_glue_rx_flow *flows;
+	u32 flow_num;
+	u32 flows_ready;
+};
+
+#define K3_UDMAX_TDOWN_TIMEOUT_US 1000
+
+static int of_k3_udma_glue_parse(struct device_node *udmax_np,
+				 struct k3_udma_glue_common *common)
+{
+	common->ringacc = of_k3_ringacc_get_by_phandle(udmax_np,
+						       "ti,ringacc");
+	if (IS_ERR(common->ringacc))
+		return PTR_ERR(common->ringacc);
+
+	common->udmax = of_xudma_dev_get(udmax_np, NULL);
+	if (IS_ERR(common->udmax))
+		return PTR_ERR(common->udmax);
+
+	common->tisci_rm = xudma_dev_get_tisci_rm(common->udmax);
+
+	return 0;
+}
+
+static int of_k3_udma_glue_parse_chn(struct device_node *chn_np,
+		const char *name, struct k3_udma_glue_common *common,
+		bool tx_chn)
+{
+	struct psil_endpoint_config *ep_config;
+	struct of_phandle_args dma_spec;
+	u32 thread_id;
+	int ret = 0;
+	int index;
+
+	if (unlikely(!name))
+		return -EINVAL;
+
+	index = of_property_match_string(chn_np, "dma-names", name);
+	if (index < 0)
+		return index;
+
+	if (of_parse_phandle_with_args(chn_np, "dmas", "#dma-cells", index,
+				       &dma_spec))
+		return -ENOENT;
+
+	thread_id = dma_spec.args[0];
+
+	if (tx_chn && !(thread_id & K3_PSIL_DST_THREAD_ID_OFFSET)) {
+		ret = -EINVAL;
+		goto out_put_spec;
+	}
+
+	if (!tx_chn && (thread_id & K3_PSIL_DST_THREAD_ID_OFFSET)) {
+		ret = -EINVAL;
+		goto out_put_spec;
+	}
+
+	/* get psil endpoint config */
+	ep_config = psil_get_ep_config(thread_id);
+	if (IS_ERR(ep_config)) {
+		dev_err(common->dev,
+			"No configuration for psi-l thread 0x%04x\n",
+			thread_id);
+		ret = PTR_ERR(ep_config);
+		goto out_put_spec;
+	}
+
+	common->epib = ep_config->needs_epib;
+	common->psdata_size = ep_config->psd_size;
+
+	if (tx_chn)
+		common->dst_thread = thread_id;
+	else
+		common->src_thread = thread_id;
+
+	ret = of_k3_udma_glue_parse(dma_spec.np, common);
+
+out_put_spec:
+	of_node_put(dma_spec.np);
+	return ret;
+};
+
+static void k3_udma_glue_dump_tx_chn(struct k3_udma_glue_tx_channel *tx_chn)
+{
+	struct device *dev = tx_chn->common.dev;
+
+	dev_dbg(dev, "dump_tx_chn:\n"
+		"udma_tchan_id: %d\n"
+		"src_thread: %08x\n"
+		"dst_thread: %08x\n",
+		tx_chn->udma_tchan_id,
+		tx_chn->common.src_thread,
+		tx_chn->common.dst_thread);
+}
+
+static void k3_udma_glue_dump_tx_rt_chn(struct k3_udma_glue_tx_channel *chn,
+					char *mark)
+{
+	struct device *dev = chn->common.dev;
+
+	dev_dbg(dev, "=== dump ===> %s\n", mark);
+	dev_dbg(dev, "0x%08X: %08X\n", UDMA_TCHAN_RT_CTL_REG,
+		xudma_tchanrt_read(chn->udma_tchanx, UDMA_TCHAN_RT_CTL_REG));
+	dev_dbg(dev, "0x%08X: %08X\n", UDMA_TCHAN_RT_PEER_RT_EN_REG,
+		xudma_tchanrt_read(chn->udma_tchanx,
+				   UDMA_TCHAN_RT_PEER_RT_EN_REG));
+	dev_dbg(dev, "0x%08X: %08X\n", UDMA_TCHAN_RT_PCNT_REG,
+		xudma_tchanrt_read(chn->udma_tchanx, UDMA_TCHAN_RT_PCNT_REG));
+	dev_dbg(dev, "0x%08X: %08X\n", UDMA_TCHAN_RT_BCNT_REG,
+		xudma_tchanrt_read(chn->udma_tchanx, UDMA_TCHAN_RT_BCNT_REG));
+	dev_dbg(dev, "0x%08X: %08X\n", UDMA_TCHAN_RT_SBCNT_REG,
+		xudma_tchanrt_read(chn->udma_tchanx, UDMA_TCHAN_RT_SBCNT_REG));
+}
+
+static int k3_udma_glue_cfg_tx_chn(struct k3_udma_glue_tx_channel *tx_chn)
+{
+	const struct udma_tisci_rm *tisci_rm = tx_chn->common.tisci_rm;
+	struct ti_sci_msg_rm_udmap_tx_ch_cfg req;
+
+	memset(&req, 0, sizeof(req));
+
+	req.valid_params = TI_SCI_MSG_VALUE_RM_UDMAP_CH_PAUSE_ON_ERR_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_FILT_EINFO_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_FILT_PSWORDS_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_CH_CHAN_TYPE_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_SUPR_TDPKT_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_CH_FETCH_SIZE_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_CH_CQ_QNUM_VALID;
+	req.nav_id = tisci_rm->tisci_dev_id;
+	req.index = tx_chn->udma_tchan_id;
+	if (tx_chn->tx_pause_on_err)
+		req.tx_pause_on_err = 1;
+	if (tx_chn->tx_filt_einfo)
+		req.tx_filt_einfo = 1;
+	if (tx_chn->tx_filt_pswords)
+		req.tx_filt_pswords = 1;
+	req.tx_chan_type = TI_SCI_RM_UDMAP_CHAN_TYPE_PKT_PBRR;
+	if (tx_chn->tx_supr_tdpkt)
+		req.tx_supr_tdpkt = 1;
+	req.tx_fetch_size = tx_chn->common.hdesc_size >> 2;
+	req.txcq_qnum = k3_ringacc_get_ring_id(tx_chn->ringtxcq);
+
+	return tisci_rm->tisci_udmap_ops->tx_ch_cfg(tisci_rm->tisci, &req);
+}
+
+struct k3_udma_glue_tx_channel *k3_udma_glue_request_tx_chn(struct device *dev,
+		const char *name, struct k3_udma_glue_tx_channel_cfg *cfg)
+{
+	struct k3_udma_glue_tx_channel *tx_chn;
+	int ret;
+
+	tx_chn = devm_kzalloc(dev, sizeof(*tx_chn), GFP_KERNEL);
+	if (!tx_chn)
+		return ERR_PTR(-ENOMEM);
+
+	tx_chn->common.dev = dev;
+	tx_chn->common.swdata_size = cfg->swdata_size;
+	tx_chn->tx_pause_on_err = cfg->tx_pause_on_err;
+	tx_chn->tx_filt_einfo = cfg->tx_filt_einfo;
+	tx_chn->tx_filt_pswords = cfg->tx_filt_pswords;
+	tx_chn->tx_supr_tdpkt = cfg->tx_supr_tdpkt;
+
+	/* parse of udmap channel */
+	ret = of_k3_udma_glue_parse_chn(dev->of_node, name,
+					&tx_chn->common, true);
+	if (ret)
+		goto err;
+
+	tx_chn->common.hdesc_size = cppi5_hdesc_calc_size(tx_chn->common.epib,
+						tx_chn->common.psdata_size,
+						tx_chn->common.swdata_size);
+
+	/* request and cfg UDMAP TX channel */
+	tx_chn->udma_tchanx = xudma_tchan_get(tx_chn->common.udmax, -1);
+	if (IS_ERR(tx_chn->udma_tchanx)) {
+		ret = PTR_ERR(tx_chn->udma_tchanx);
+		dev_err(dev, "UDMAX tchanx get err %d\n", ret);
+		goto err;
+	}
+	tx_chn->udma_tchan_id = xudma_tchan_get_id(tx_chn->udma_tchanx);
+
+	atomic_set(&tx_chn->free_pkts, cfg->txcq_cfg.size);
+
+	/* request and cfg rings */
+	tx_chn->ringtx = k3_ringacc_request_ring(tx_chn->common.ringacc,
+						 tx_chn->udma_tchan_id, 0);
+	if (!tx_chn->ringtx) {
+		ret = -ENODEV;
+		dev_err(dev, "Failed to get TX ring %u\n",
+			tx_chn->udma_tchan_id);
+		goto err;
+	}
+
+	tx_chn->ringtxcq = k3_ringacc_request_ring(tx_chn->common.ringacc,
+						   -1, 0);
+	if (!tx_chn->ringtxcq) {
+		ret = -ENODEV;
+		dev_err(dev, "Failed to get TXCQ ring\n");
+		goto err;
+	}
+
+	ret = k3_ringacc_ring_cfg(tx_chn->ringtx, &cfg->tx_cfg);
+	if (ret) {
+		dev_err(dev, "Failed to cfg ringtx %d\n", ret);
+		goto err;
+	}
+
+	ret = k3_ringacc_ring_cfg(tx_chn->ringtxcq, &cfg->txcq_cfg);
+	if (ret) {
+		dev_err(dev, "Failed to cfg ringtx %d\n", ret);
+		goto err;
+	}
+
+	/* request and cfg psi-l */
+	tx_chn->common.src_thread =
+			xudma_dev_get_psil_base(tx_chn->common.udmax) +
+			tx_chn->udma_tchan_id;
+
+	ret = k3_udma_glue_cfg_tx_chn(tx_chn);
+	if (ret) {
+		dev_err(dev, "Failed to cfg tchan %d\n", ret);
+		goto err;
+	}
+
+	ret = xudma_navss_psil_pair(tx_chn->common.udmax,
+				    tx_chn->common.src_thread,
+				    tx_chn->common.dst_thread);
+	if (ret) {
+		dev_err(dev, "PSI-L request err %d\n", ret);
+		goto err;
+	}
+
+	tx_chn->psil_paired = true;
+
+	/* reset TX RT registers */
+	k3_udma_glue_disable_tx_chn(tx_chn);
+
+	k3_udma_glue_dump_tx_chn(tx_chn);
+
+	return tx_chn;
+
+err:
+	k3_udma_glue_release_tx_chn(tx_chn);
+	return ERR_PTR(ret);
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_request_tx_chn);
+
+void k3_udma_glue_release_tx_chn(struct k3_udma_glue_tx_channel *tx_chn)
+{
+	if (tx_chn->psil_paired) {
+		xudma_navss_psil_unpair(tx_chn->common.udmax,
+					tx_chn->common.src_thread,
+					tx_chn->common.dst_thread);
+		tx_chn->psil_paired = false;
+	}
+
+	if (!IS_ERR_OR_NULL(tx_chn->udma_tchanx))
+		xudma_tchan_put(tx_chn->common.udmax,
+				tx_chn->udma_tchanx);
+
+	if (tx_chn->ringtxcq)
+		k3_ringacc_ring_free(tx_chn->ringtxcq);
+
+	if (tx_chn->ringtx)
+		k3_ringacc_ring_free(tx_chn->ringtx);
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_release_tx_chn);
+
+int k3_udma_glue_push_tx_chn(struct k3_udma_glue_tx_channel *tx_chn,
+			     struct cppi5_host_desc_t *desc_tx,
+			     dma_addr_t desc_dma)
+{
+	u32 ringtxcq_id;
+
+	if (!atomic_add_unless(&tx_chn->free_pkts, -1, 0))
+		return -ENOMEM;
+
+	ringtxcq_id = k3_ringacc_get_ring_id(tx_chn->ringtxcq);
+	cppi5_desc_set_retpolicy(&desc_tx->hdr, 0, ringtxcq_id);
+
+	return k3_ringacc_ring_push(tx_chn->ringtx, &desc_dma);
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_push_tx_chn);
+
+int k3_udma_glue_pop_tx_chn(struct k3_udma_glue_tx_channel *tx_chn,
+			    dma_addr_t *desc_dma)
+{
+	int ret;
+
+	ret = k3_ringacc_ring_pop(tx_chn->ringtxcq, desc_dma);
+	if (!ret)
+		atomic_inc(&tx_chn->free_pkts);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_pop_tx_chn);
+
+int k3_udma_glue_enable_tx_chn(struct k3_udma_glue_tx_channel *tx_chn)
+{
+	u32 txrt_ctl;
+
+	txrt_ctl = UDMA_PEER_RT_EN_ENABLE;
+	xudma_tchanrt_write(tx_chn->udma_tchanx,
+			    UDMA_TCHAN_RT_PEER_RT_EN_REG,
+			    txrt_ctl);
+
+	txrt_ctl = xudma_tchanrt_read(tx_chn->udma_tchanx,
+				      UDMA_TCHAN_RT_CTL_REG);
+	txrt_ctl |= UDMA_CHAN_RT_CTL_EN;
+	xudma_tchanrt_write(tx_chn->udma_tchanx, UDMA_TCHAN_RT_CTL_REG,
+			    txrt_ctl);
+
+	k3_udma_glue_dump_tx_rt_chn(tx_chn, "txchn en");
+	return 0;
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_enable_tx_chn);
+
+void k3_udma_glue_disable_tx_chn(struct k3_udma_glue_tx_channel *tx_chn)
+{
+	k3_udma_glue_dump_tx_rt_chn(tx_chn, "txchn dis1");
+
+	xudma_tchanrt_write(tx_chn->udma_tchanx, UDMA_TCHAN_RT_CTL_REG, 0);
+
+	xudma_tchanrt_write(tx_chn->udma_tchanx,
+			    UDMA_TCHAN_RT_PEER_RT_EN_REG, 0);
+	k3_udma_glue_dump_tx_rt_chn(tx_chn, "txchn dis2");
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_disable_tx_chn);
+
+void k3_udma_glue_tdown_tx_chn(struct k3_udma_glue_tx_channel *tx_chn,
+			       bool sync)
+{
+	int i = 0;
+	u32 val;
+
+	k3_udma_glue_dump_tx_rt_chn(tx_chn, "txchn tdown1");
+
+	xudma_tchanrt_write(tx_chn->udma_tchanx, UDMA_TCHAN_RT_CTL_REG,
+			    UDMA_CHAN_RT_CTL_EN | UDMA_CHAN_RT_CTL_TDOWN);
+
+	val = xudma_tchanrt_read(tx_chn->udma_tchanx, UDMA_TCHAN_RT_CTL_REG);
+
+	while (sync && (val & UDMA_CHAN_RT_CTL_EN)) {
+		val = xudma_tchanrt_read(tx_chn->udma_tchanx,
+					 UDMA_TCHAN_RT_CTL_REG);
+		udelay(1);
+		if (i > K3_UDMAX_TDOWN_TIMEOUT_US) {
+			dev_err(tx_chn->common.dev, "TX tdown timeout\n");
+			break;
+		}
+		i++;
+	}
+
+	val = xudma_tchanrt_read(tx_chn->udma_tchanx,
+				 UDMA_TCHAN_RT_PEER_RT_EN_REG);
+	if (sync && (val & UDMA_PEER_RT_EN_ENABLE))
+		dev_err(tx_chn->common.dev, "TX tdown peer not stopped\n");
+	k3_udma_glue_dump_tx_rt_chn(tx_chn, "txchn tdown2");
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_tdown_tx_chn);
+
+void k3_udma_glue_reset_tx_chn(struct k3_udma_glue_tx_channel *tx_chn,
+			       void *data,
+			       void (*cleanup)(void *data, dma_addr_t desc_dma))
+{
+	dma_addr_t desc_dma;
+	int occ_tx, i, ret;
+
+	/* reset TXCQ as it is not input for udma - expected to be empty */
+	if (tx_chn->ringtxcq)
+		k3_ringacc_ring_reset(tx_chn->ringtxcq);
+
+	/*
+	 * TXQ reset need to be special way as it is input for udma and its
+	 * state cached by udma, so:
+	 * 1) save TXQ occ
+	 * 2) clean up TXQ and call callback .cleanup() for each desc
+	 * 3) reset TXQ in a special way
+	 */
+	occ_tx = k3_ringacc_ring_get_occ(tx_chn->ringtx);
+	dev_dbg(tx_chn->common.dev, "TX reset occ_tx %u\n", occ_tx);
+
+	for (i = 0; i < occ_tx; i++) {
+		ret = k3_ringacc_ring_pop(tx_chn->ringtx, &desc_dma);
+		if (ret) {
+			dev_err(tx_chn->common.dev, "TX reset pop %d\n", ret);
+			break;
+		}
+		cleanup(data, desc_dma);
+	}
+
+	k3_ringacc_ring_reset_dma(tx_chn->ringtx, occ_tx);
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_reset_tx_chn);
+
+u32 k3_udma_glue_tx_get_hdesc_size(struct k3_udma_glue_tx_channel *tx_chn)
+{
+	return tx_chn->common.hdesc_size;
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_tx_get_hdesc_size);
+
+u32 k3_udma_glue_tx_get_txcq_id(struct k3_udma_glue_tx_channel *tx_chn)
+{
+	return k3_ringacc_get_ring_id(tx_chn->ringtxcq);
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_tx_get_txcq_id);
+
+int k3_udma_glue_tx_get_irq(struct k3_udma_glue_tx_channel *tx_chn)
+{
+	tx_chn->virq = k3_ringacc_get_ring_irq_num(tx_chn->ringtxcq);
+
+	return tx_chn->virq;
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_tx_get_irq);
+
+static int k3_udma_glue_cfg_rx_chn(struct k3_udma_glue_rx_channel *rx_chn)
+{
+	const struct udma_tisci_rm *tisci_rm = rx_chn->common.tisci_rm;
+	struct ti_sci_msg_rm_udmap_rx_ch_cfg req;
+	int ret;
+
+	memset(&req, 0, sizeof(req));
+
+	req.valid_params = TI_SCI_MSG_VALUE_RM_UDMAP_CH_FETCH_SIZE_VALID |
+			   TI_SCI_MSG_VALUE_RM_UDMAP_CH_CQ_QNUM_VALID |
+			   TI_SCI_MSG_VALUE_RM_UDMAP_CH_CHAN_TYPE_VALID |
+			   TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_FLOWID_START_VALID |
+			   TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_FLOWID_CNT_VALID;
+
+	req.nav_id = tisci_rm->tisci_dev_id;
+	req.index = rx_chn->udma_rchan_id;
+	req.rx_fetch_size = rx_chn->common.hdesc_size >> 2;
+	/*
+	 * TODO: we can't support rxcq_qnum/RCHAN[a]_RCQ cfg with current sysfw
+	 * and udmax impl, so just configure it to invalid value.
+	 * req.rxcq_qnum = k3_ringacc_get_ring_id(rx_chn->flows[0].ringrx);
+	 */
+	req.rxcq_qnum = 0xFFFF;
+	if (rx_chn->flow_num && rx_chn->flow_id_base != rx_chn->udma_rchan_id) {
+		/* Default flow + extra ones */
+		req.flowid_start = rx_chn->flow_id_base;
+		req.flowid_cnt = rx_chn->flow_num;
+	}
+	req.rx_chan_type = TI_SCI_RM_UDMAP_CHAN_TYPE_PKT_PBRR;
+
+	ret = tisci_rm->tisci_udmap_ops->rx_ch_cfg(tisci_rm->tisci, &req);
+	if (ret)
+		dev_err(rx_chn->common.dev, "rchan%d cfg failed %d\n",
+			rx_chn->udma_rchan_id, ret);
+
+	return ret;
+}
+
+static void k3_udma_glue_release_rx_flow(struct k3_udma_glue_rx_channel *rx_chn,
+					 u32 flow_num)
+{
+	struct k3_udma_glue_rx_flow *flow = &rx_chn->flows[flow_num];
+
+	if (IS_ERR_OR_NULL(flow->udma_rflow))
+		return;
+
+	if (flow->ringrxfdq)
+		k3_ringacc_ring_free(flow->ringrxfdq);
+
+	if (flow->ringrx)
+		k3_ringacc_ring_free(flow->ringrx);
+
+	xudma_rflow_put(rx_chn->common.udmax, flow->udma_rflow);
+	flow->udma_rflow = NULL;
+	rx_chn->flows_ready--;
+}
+
+static int k3_udma_glue_cfg_rx_flow(struct k3_udma_glue_rx_channel *rx_chn,
+				    u32 flow_idx,
+				    struct k3_udma_glue_rx_flow_cfg *flow_cfg)
+{
+	struct k3_udma_glue_rx_flow *flow = &rx_chn->flows[flow_idx];
+	const struct udma_tisci_rm *tisci_rm = rx_chn->common.tisci_rm;
+	struct device *dev = rx_chn->common.dev;
+	struct ti_sci_msg_rm_udmap_flow_cfg req;
+	int rx_ring_id;
+	int rx_ringfdq_id;
+	int ret = 0;
+
+	flow->udma_rflow = xudma_rflow_get(rx_chn->common.udmax,
+					   flow->udma_rflow_id);
+	if (IS_ERR(flow->udma_rflow)) {
+		ret = PTR_ERR(flow->udma_rflow);
+		dev_err(dev, "UDMAX rflow get err %d\n", ret);
+		goto err;
+	}
+
+	if (flow->udma_rflow_id != xudma_rflow_get_id(flow->udma_rflow)) {
+		xudma_rflow_put(rx_chn->common.udmax, flow->udma_rflow);
+		return -ENODEV;
+	}
+
+	/* request and cfg rings */
+	flow->ringrx = k3_ringacc_request_ring(rx_chn->common.ringacc,
+					       flow_cfg->ring_rxq_id, 0);
+	if (!flow->ringrx) {
+		ret = -ENODEV;
+		dev_err(dev, "Failed to get RX ring\n");
+		goto err;
+	}
+
+	flow->ringrxfdq = k3_ringacc_request_ring(rx_chn->common.ringacc,
+						  flow_cfg->ring_rxfdq0_id, 0);
+	if (!flow->ringrxfdq) {
+		ret = -ENODEV;
+		dev_err(dev, "Failed to get RXFDQ ring\n");
+		goto err;
+	}
+
+	ret = k3_ringacc_ring_cfg(flow->ringrx, &flow_cfg->rx_cfg);
+	if (ret) {
+		dev_err(dev, "Failed to cfg ringrx %d\n", ret);
+		goto err;
+	}
+
+	ret = k3_ringacc_ring_cfg(flow->ringrxfdq, &flow_cfg->rxfdq_cfg);
+	if (ret) {
+		dev_err(dev, "Failed to cfg ringrxfdq %d\n", ret);
+		goto err;
+	}
+
+	if (rx_chn->remote) {
+		rx_ring_id = TI_SCI_RESOURCE_NULL;
+		rx_ringfdq_id = TI_SCI_RESOURCE_NULL;
+	} else {
+		rx_ring_id = k3_ringacc_get_ring_id(flow->ringrx);
+		rx_ringfdq_id = k3_ringacc_get_ring_id(flow->ringrxfdq);
+	}
+
+	memset(&req, 0, sizeof(req));
+
+	req.valid_params =
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_EINFO_PRESENT_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_PSINFO_PRESENT_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_ERROR_HANDLING_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DESC_TYPE_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_QNUM_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_SRC_TAG_HI_SEL_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_SRC_TAG_LO_SEL_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_TAG_HI_SEL_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_TAG_LO_SEL_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ0_SZ0_QNUM_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ1_QNUM_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ2_QNUM_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ3_QNUM_VALID;
+	req.nav_id = tisci_rm->tisci_dev_id;
+	req.flow_index = flow->udma_rflow_id;
+	if (rx_chn->common.epib)
+		req.rx_einfo_present = 1;
+	if (rx_chn->common.psdata_size)
+		req.rx_psinfo_present = 1;
+	if (flow_cfg->rx_error_handling)
+		req.rx_error_handling = 1;
+	req.rx_desc_type = 0;
+	req.rx_dest_qnum = rx_ring_id;
+	req.rx_src_tag_hi_sel = 0;
+	req.rx_src_tag_lo_sel = flow_cfg->src_tag_lo_sel;
+	req.rx_dest_tag_hi_sel = 0;
+	req.rx_dest_tag_lo_sel = 0;
+	req.rx_fdq0_sz0_qnum = rx_ringfdq_id;
+	req.rx_fdq1_qnum = rx_ringfdq_id;
+	req.rx_fdq2_qnum = rx_ringfdq_id;
+	req.rx_fdq3_qnum = rx_ringfdq_id;
+
+	ret = tisci_rm->tisci_udmap_ops->rx_flow_cfg(tisci_rm->tisci, &req);
+	if (ret) {
+		dev_err(dev, "flow%d config failed: %d\n", flow->udma_rflow_id,
+			ret);
+		goto err;
+	}
+
+	rx_chn->flows_ready++;
+	dev_dbg(dev, "flow%d config done. ready:%d\n",
+		flow->udma_rflow_id, rx_chn->flows_ready);
+
+	return 0;
+err:
+	k3_udma_glue_release_rx_flow(rx_chn, flow_idx);
+	return ret;
+}
+
+static void k3_udma_glue_dump_rx_chn(struct k3_udma_glue_rx_channel *chn)
+{
+	struct device *dev = chn->common.dev;
+
+	dev_dbg(dev, "dump_rx_chn:\n"
+		"udma_rchan_id: %d\n"
+		"src_thread: %08x\n"
+		"dst_thread: %08x\n"
+		"epib: %d\n"
+		"hdesc_size: %u\n"
+		"psdata_size: %u\n"
+		"swdata_size: %u\n"
+		"flow_id_base: %d\n"
+		"flow_num: %d\n",
+		chn->udma_rchan_id,
+		chn->common.src_thread,
+		chn->common.dst_thread,
+		chn->common.epib,
+		chn->common.hdesc_size,
+		chn->common.psdata_size,
+		chn->common.swdata_size,
+		chn->flow_id_base,
+		chn->flow_num);
+}
+
+static void k3_udma_glue_dump_rx_rt_chn(struct k3_udma_glue_rx_channel *chn,
+					char *mark)
+{
+	struct device *dev = chn->common.dev;
+
+	dev_dbg(dev, "=== dump ===> %s\n", mark);
+
+	dev_dbg(dev, "0x%08X: %08X\n", UDMA_RCHAN_RT_CTL_REG,
+		xudma_rchanrt_read(chn->udma_rchanx, UDMA_RCHAN_RT_CTL_REG));
+	dev_dbg(dev, "0x%08X: %08X\n", UDMA_RCHAN_RT_PEER_RT_EN_REG,
+		xudma_rchanrt_read(chn->udma_rchanx,
+				   UDMA_RCHAN_RT_PEER_RT_EN_REG));
+	dev_dbg(dev, "0x%08X: %08X\n", UDMA_RCHAN_RT_PCNT_REG,
+		xudma_rchanrt_read(chn->udma_rchanx, UDMA_RCHAN_RT_PCNT_REG));
+	dev_dbg(dev, "0x%08X: %08X\n", UDMA_RCHAN_RT_BCNT_REG,
+		xudma_rchanrt_read(chn->udma_rchanx, UDMA_RCHAN_RT_BCNT_REG));
+	dev_dbg(dev, "0x%08X: %08X\n", UDMA_RCHAN_RT_SBCNT_REG,
+		xudma_rchanrt_read(chn->udma_rchanx, UDMA_RCHAN_RT_SBCNT_REG));
+}
+
+static int
+k3_udma_glue_allocate_rx_flows(struct k3_udma_glue_rx_channel *rx_chn,
+			       struct k3_udma_glue_rx_channel_cfg *cfg)
+{
+	int ret;
+
+	/* default rflow */
+	if (cfg->flow_id_use_rxchan_id)
+		return 0;
+
+	/* not a GP rflows */
+	if (rx_chn->flow_id_base != -1 &&
+	    !xudma_rflow_is_gp(rx_chn->common.udmax, rx_chn->flow_id_base))
+		return 0;
+
+	/* Allocate range of GP rflows */
+	ret = xudma_alloc_gp_rflow_range(rx_chn->common.udmax,
+					 rx_chn->flow_id_base,
+					 rx_chn->flow_num);
+	if (ret < 0) {
+		dev_err(rx_chn->common.dev, "UDMAX reserve_rflow %d cnt:%d err: %d\n",
+			rx_chn->flow_id_base, rx_chn->flow_num, ret);
+		return ret;
+	}
+	rx_chn->flow_id_base = ret;
+
+	return 0;
+}
+
+static struct k3_udma_glue_rx_channel *
+k3_udma_glue_request_rx_chn_priv(struct device *dev, const char *name,
+				 struct k3_udma_glue_rx_channel_cfg *cfg)
+{
+	struct k3_udma_glue_rx_channel *rx_chn;
+	int ret, i;
+
+	if (cfg->flow_id_num <= 0)
+		return ERR_PTR(-EINVAL);
+
+	if (cfg->flow_id_num != 1 &&
+	    (cfg->def_flow_cfg || cfg->flow_id_use_rxchan_id))
+		return ERR_PTR(-EINVAL);
+
+	rx_chn = devm_kzalloc(dev, sizeof(*rx_chn), GFP_KERNEL);
+	if (!rx_chn)
+		return ERR_PTR(-ENOMEM);
+
+	rx_chn->common.dev = dev;
+	rx_chn->common.swdata_size = cfg->swdata_size;
+	rx_chn->remote = false;
+
+	/* parse of udmap channel */
+	ret = of_k3_udma_glue_parse_chn(dev->of_node, name,
+					&rx_chn->common, false);
+	if (ret)
+		goto err;
+
+	rx_chn->common.hdesc_size = cppi5_hdesc_calc_size(rx_chn->common.epib,
+						rx_chn->common.psdata_size,
+						rx_chn->common.swdata_size);
+
+	/* request and cfg UDMAP RX channel */
+	rx_chn->udma_rchanx = xudma_rchan_get(rx_chn->common.udmax, -1);
+	if (IS_ERR(rx_chn->udma_rchanx)) {
+		ret = PTR_ERR(rx_chn->udma_rchanx);
+		dev_err(dev, "UDMAX rchanx get err %d\n", ret);
+		goto err;
+	}
+	rx_chn->udma_rchan_id = xudma_rchan_get_id(rx_chn->udma_rchanx);
+
+	rx_chn->flow_num = cfg->flow_id_num;
+	rx_chn->flow_id_base = cfg->flow_id_base;
+
+	/* Use RX channel id as flow id: target dev can't generate flow_id */
+	if (cfg->flow_id_use_rxchan_id)
+		rx_chn->flow_id_base = rx_chn->udma_rchan_id;
+
+	rx_chn->flows = devm_kcalloc(dev, rx_chn->flow_num,
+				     sizeof(*rx_chn->flows), GFP_KERNEL);
+	if (!rx_chn->flows) {
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	ret = k3_udma_glue_allocate_rx_flows(rx_chn, cfg);
+	if (ret)
+		goto err;
+
+	for (i = 0; i < rx_chn->flow_num; i++)
+		rx_chn->flows[i].udma_rflow_id = rx_chn->flow_id_base + i;
+
+	/* request and cfg psi-l */
+	rx_chn->common.dst_thread =
+			xudma_dev_get_psil_base(rx_chn->common.udmax) +
+			rx_chn->udma_rchan_id;
+
+	ret = k3_udma_glue_cfg_rx_chn(rx_chn);
+	if (ret) {
+		dev_err(dev, "Failed to cfg rchan %d\n", ret);
+		goto err;
+	}
+
+	/* init default RX flow only if flow_num = 1 */
+	if (cfg->def_flow_cfg) {
+		ret = k3_udma_glue_cfg_rx_flow(rx_chn, 0, cfg->def_flow_cfg);
+		if (ret)
+			goto err;
+	}
+
+	ret = xudma_navss_psil_pair(rx_chn->common.udmax,
+				    rx_chn->common.src_thread,
+				    rx_chn->common.dst_thread);
+	if (ret) {
+		dev_err(dev, "PSI-L request err %d\n", ret);
+		goto err;
+	}
+
+	rx_chn->psil_paired = true;
+
+	/* reset RX RT registers */
+	k3_udma_glue_disable_rx_chn(rx_chn);
+
+	k3_udma_glue_dump_rx_chn(rx_chn);
+
+	return rx_chn;
+
+err:
+	k3_udma_glue_release_rx_chn(rx_chn);
+	return ERR_PTR(ret);
+}
+
+static struct k3_udma_glue_rx_channel *
+k3_udma_glue_request_remote_rx_chn(struct device *dev, const char *name,
+				   struct k3_udma_glue_rx_channel_cfg *cfg)
+{
+	struct k3_udma_glue_rx_channel *rx_chn;
+	int ret, i;
+
+	if (cfg->flow_id_num <= 0 ||
+	    cfg->flow_id_use_rxchan_id ||
+	    cfg->def_flow_cfg ||
+	    cfg->flow_id_base < 0)
+		return ERR_PTR(-EINVAL);
+
+	/*
+	 * Remote RX channel is under control of Remote CPU core, so
+	 * Linux can only request and manipulate by dedicated RX flows
+	 */
+
+	rx_chn = devm_kzalloc(dev, sizeof(*rx_chn), GFP_KERNEL);
+	if (!rx_chn)
+		return ERR_PTR(-ENOMEM);
+
+	rx_chn->common.dev = dev;
+	rx_chn->common.swdata_size = cfg->swdata_size;
+	rx_chn->remote = true;
+	rx_chn->udma_rchan_id = -1;
+	rx_chn->flow_num = cfg->flow_id_num;
+	rx_chn->flow_id_base = cfg->flow_id_base;
+	rx_chn->psil_paired = false;
+
+	/* parse of udmap channel */
+	ret = of_k3_udma_glue_parse_chn(dev->of_node, name,
+					&rx_chn->common, false);
+	if (ret)
+		goto err;
+
+	rx_chn->common.hdesc_size = cppi5_hdesc_calc_size(rx_chn->common.epib,
+						rx_chn->common.psdata_size,
+						rx_chn->common.swdata_size);
+
+	rx_chn->flows = devm_kcalloc(dev, rx_chn->flow_num,
+				     sizeof(*rx_chn->flows), GFP_KERNEL);
+	if (!rx_chn->flows) {
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	ret = k3_udma_glue_allocate_rx_flows(rx_chn, cfg);
+	if (ret)
+		goto err;
+
+	for (i = 0; i < rx_chn->flow_num; i++)
+		rx_chn->flows[i].udma_rflow_id = rx_chn->flow_id_base + i;
+
+	k3_udma_glue_dump_rx_chn(rx_chn);
+
+	return rx_chn;
+
+err:
+	k3_udma_glue_release_rx_chn(rx_chn);
+	return ERR_PTR(ret);
+}
+
+struct k3_udma_glue_rx_channel *
+k3_udma_glue_request_rx_chn(struct device *dev, const char *name,
+			    struct k3_udma_glue_rx_channel_cfg *cfg)
+{
+	if (cfg->remote)
+		return k3_udma_glue_request_remote_rx_chn(dev, name, cfg);
+	else
+		return k3_udma_glue_request_rx_chn_priv(dev, name, cfg);
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_request_rx_chn);
+
+void k3_udma_glue_release_rx_chn(struct k3_udma_glue_rx_channel *rx_chn)
+{
+	int i;
+
+	if (IS_ERR_OR_NULL(rx_chn->common.udmax))
+		return;
+
+	if (rx_chn->psil_paired) {
+		xudma_navss_psil_unpair(rx_chn->common.udmax,
+					rx_chn->common.src_thread,
+					rx_chn->common.dst_thread);
+		rx_chn->psil_paired = false;
+	}
+
+	for (i = 0; i < rx_chn->flow_num; i++)
+		k3_udma_glue_release_rx_flow(rx_chn, i);
+
+	if (xudma_rflow_is_gp(rx_chn->common.udmax, rx_chn->flow_id_base))
+		xudma_free_gp_rflow_range(rx_chn->common.udmax,
+					  rx_chn->flow_id_base,
+					  rx_chn->flow_num);
+
+	if (!IS_ERR_OR_NULL(rx_chn->udma_rchanx))
+		xudma_rchan_put(rx_chn->common.udmax,
+				rx_chn->udma_rchanx);
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_release_rx_chn);
+
+int k3_udma_glue_rx_flow_init(struct k3_udma_glue_rx_channel *rx_chn,
+			      u32 flow_idx,
+			      struct k3_udma_glue_rx_flow_cfg *flow_cfg)
+{
+	if (flow_idx >= rx_chn->flow_num)
+		return -EINVAL;
+
+	return k3_udma_glue_cfg_rx_flow(rx_chn, flow_idx, flow_cfg);
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_rx_flow_init);
+
+u32 k3_udma_glue_rx_flow_get_fdq_id(struct k3_udma_glue_rx_channel *rx_chn,
+				    u32 flow_idx)
+{
+	struct k3_udma_glue_rx_flow *flow;
+
+	if (flow_idx >= rx_chn->flow_num)
+		return -EINVAL;
+
+	flow = &rx_chn->flows[flow_idx];
+
+	return k3_ringacc_get_ring_id(flow->ringrxfdq);
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_rx_flow_get_fdq_id);
+
+u32 k3_udma_glue_rx_get_flow_id_base(struct k3_udma_glue_rx_channel *rx_chn)
+{
+	return rx_chn->flow_id_base;
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_rx_get_flow_id_base);
+
+int k3_udma_glue_rx_flow_enable(struct k3_udma_glue_rx_channel *rx_chn,
+				u32 flow_idx)
+{
+	struct k3_udma_glue_rx_flow *flow = &rx_chn->flows[flow_idx];
+	const struct udma_tisci_rm *tisci_rm = rx_chn->common.tisci_rm;
+	struct device *dev = rx_chn->common.dev;
+	struct ti_sci_msg_rm_udmap_flow_cfg req;
+	int rx_ring_id;
+	int rx_ringfdq_id;
+	int ret = 0;
+
+	if (!rx_chn->remote)
+		return -EINVAL;
+
+	rx_ring_id = k3_ringacc_get_ring_id(flow->ringrx);
+	rx_ringfdq_id = k3_ringacc_get_ring_id(flow->ringrxfdq);
+
+	memset(&req, 0, sizeof(req));
+
+	req.valid_params =
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_QNUM_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ0_SZ0_QNUM_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ1_QNUM_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ2_QNUM_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ3_QNUM_VALID;
+	req.nav_id = tisci_rm->tisci_dev_id;
+	req.flow_index = flow->udma_rflow_id;
+	req.rx_dest_qnum = rx_ring_id;
+	req.rx_fdq0_sz0_qnum = rx_ringfdq_id;
+	req.rx_fdq1_qnum = rx_ringfdq_id;
+	req.rx_fdq2_qnum = rx_ringfdq_id;
+	req.rx_fdq3_qnum = rx_ringfdq_id;
+
+	ret = tisci_rm->tisci_udmap_ops->rx_flow_cfg(tisci_rm->tisci, &req);
+	if (ret) {
+		dev_err(dev, "flow%d enable failed: %d\n", flow->udma_rflow_id,
+			ret);
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_rx_flow_enable);
+
+int k3_udma_glue_rx_flow_disable(struct k3_udma_glue_rx_channel *rx_chn,
+				 u32 flow_idx)
+{
+	struct k3_udma_glue_rx_flow *flow = &rx_chn->flows[flow_idx];
+	const struct udma_tisci_rm *tisci_rm = rx_chn->common.tisci_rm;
+	struct device *dev = rx_chn->common.dev;
+	struct ti_sci_msg_rm_udmap_flow_cfg req;
+	int ret = 0;
+
+	if (!rx_chn->remote)
+		return -EINVAL;
+
+	memset(&req, 0, sizeof(req));
+	req.valid_params =
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_QNUM_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ0_SZ0_QNUM_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ1_QNUM_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ2_QNUM_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ3_QNUM_VALID;
+	req.nav_id = tisci_rm->tisci_dev_id;
+	req.flow_index = flow->udma_rflow_id;
+	req.rx_dest_qnum = TI_SCI_RESOURCE_NULL;
+	req.rx_fdq0_sz0_qnum = TI_SCI_RESOURCE_NULL;
+	req.rx_fdq1_qnum = TI_SCI_RESOURCE_NULL;
+	req.rx_fdq2_qnum = TI_SCI_RESOURCE_NULL;
+	req.rx_fdq3_qnum = TI_SCI_RESOURCE_NULL;
+
+	ret = tisci_rm->tisci_udmap_ops->rx_flow_cfg(tisci_rm->tisci, &req);
+	if (ret) {
+		dev_err(dev, "flow%d disable failed: %d\n", flow->udma_rflow_id,
+			ret);
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_rx_flow_disable);
+
+int k3_udma_glue_enable_rx_chn(struct k3_udma_glue_rx_channel *rx_chn)
+{
+	u32 rxrt_ctl;
+
+	if (rx_chn->remote)
+		return -EINVAL;
+
+	if (rx_chn->flows_ready < rx_chn->flow_num)
+		return -EINVAL;
+
+	rxrt_ctl = xudma_rchanrt_read(rx_chn->udma_rchanx,
+				      UDMA_RCHAN_RT_CTL_REG);
+	rxrt_ctl |= UDMA_CHAN_RT_CTL_EN;
+	xudma_rchanrt_write(rx_chn->udma_rchanx, UDMA_RCHAN_RT_CTL_REG,
+			    rxrt_ctl);
+
+	xudma_rchanrt_write(rx_chn->udma_rchanx,
+			    UDMA_RCHAN_RT_PEER_RT_EN_REG,
+			    UDMA_PEER_RT_EN_ENABLE);
+
+	k3_udma_glue_dump_rx_rt_chn(rx_chn, "rxrt en");
+	return 0;
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_enable_rx_chn);
+
+void k3_udma_glue_disable_rx_chn(struct k3_udma_glue_rx_channel *rx_chn)
+{
+	k3_udma_glue_dump_rx_rt_chn(rx_chn, "rxrt dis1");
+
+	xudma_rchanrt_write(rx_chn->udma_rchanx,
+			    UDMA_RCHAN_RT_PEER_RT_EN_REG,
+			    0);
+	xudma_rchanrt_write(rx_chn->udma_rchanx, UDMA_RCHAN_RT_CTL_REG, 0);
+
+	k3_udma_glue_dump_rx_rt_chn(rx_chn, "rxrt dis2");
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_disable_rx_chn);
+
+void k3_udma_glue_tdown_rx_chn(struct k3_udma_glue_rx_channel *rx_chn,
+			       bool sync)
+{
+	int i = 0;
+	u32 val;
+
+	if (rx_chn->remote)
+		return;
+
+	k3_udma_glue_dump_rx_rt_chn(rx_chn, "rxrt tdown1");
+
+	xudma_rchanrt_write(rx_chn->udma_rchanx, UDMA_RCHAN_RT_PEER_RT_EN_REG,
+			    UDMA_PEER_RT_EN_ENABLE | UDMA_PEER_RT_EN_TEARDOWN);
+
+	val = xudma_rchanrt_read(rx_chn->udma_rchanx, UDMA_RCHAN_RT_CTL_REG);
+
+	while (sync && (val & UDMA_CHAN_RT_CTL_EN)) {
+		val = xudma_rchanrt_read(rx_chn->udma_rchanx,
+					 UDMA_RCHAN_RT_CTL_REG);
+		udelay(1);
+		if (i > K3_UDMAX_TDOWN_TIMEOUT_US) {
+			dev_err(rx_chn->common.dev, "RX tdown timeout\n");
+			break;
+		}
+		i++;
+	}
+
+	val = xudma_rchanrt_read(rx_chn->udma_rchanx,
+				 UDMA_RCHAN_RT_PEER_RT_EN_REG);
+	if (sync && (val & UDMA_PEER_RT_EN_ENABLE))
+		dev_err(rx_chn->common.dev, "TX tdown peer not stopped\n");
+	k3_udma_glue_dump_rx_rt_chn(rx_chn, "rxrt tdown2");
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_tdown_rx_chn);
+
+void k3_udma_glue_reset_rx_chn(struct k3_udma_glue_rx_channel *rx_chn,
+		u32 flow_num, void *data,
+		void (*cleanup)(void *data, dma_addr_t desc_dma), bool skip_fdq)
+{
+	struct k3_udma_glue_rx_flow *flow = &rx_chn->flows[flow_num];
+	struct device *dev = rx_chn->common.dev;
+	dma_addr_t desc_dma;
+	int occ_rx, i, ret;
+
+	/* reset RXCQ as it is not input for udma - expected to be empty */
+	occ_rx = k3_ringacc_ring_get_occ(flow->ringrx);
+	dev_dbg(dev, "RX reset flow %u occ_rx %u\n", flow_num, occ_rx);
+	if (flow->ringrx)
+		k3_ringacc_ring_reset(flow->ringrx);
+
+	/* Skip RX FDQ in case one FDQ is used for the set of flows */
+	if (skip_fdq)
+		return;
+
+	/*
+	 * RX FDQ reset need to be special way as it is input for udma and its
+	 * state cached by udma, so:
+	 * 1) save RX FDQ occ
+	 * 2) clean up RX FDQ and call callback .cleanup() for each desc
+	 * 3) reset RX FDQ in a special way
+	 */
+	occ_rx = k3_ringacc_ring_get_occ(flow->ringrxfdq);
+	dev_dbg(dev, "RX reset flow %u occ_rx_fdq %u\n", flow_num, occ_rx);
+
+	for (i = 0; i < occ_rx; i++) {
+		ret = k3_ringacc_ring_pop(flow->ringrxfdq, &desc_dma);
+		if (ret) {
+			dev_err(dev, "RX reset pop %d\n", ret);
+			break;
+		}
+		cleanup(data, desc_dma);
+	}
+
+	k3_ringacc_ring_reset_dma(flow->ringrxfdq, occ_rx);
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_reset_rx_chn);
+
+int k3_udma_glue_push_rx_chn(struct k3_udma_glue_rx_channel *rx_chn,
+			     u32 flow_num, struct cppi5_host_desc_t *desc_rx,
+			     dma_addr_t desc_dma)
+{
+	struct k3_udma_glue_rx_flow *flow = &rx_chn->flows[flow_num];
+
+	return k3_ringacc_ring_push(flow->ringrxfdq, &desc_dma);
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_push_rx_chn);
+
+int k3_udma_glue_pop_rx_chn(struct k3_udma_glue_rx_channel *rx_chn,
+			    u32 flow_num, dma_addr_t *desc_dma)
+{
+	struct k3_udma_glue_rx_flow *flow = &rx_chn->flows[flow_num];
+
+	return k3_ringacc_ring_pop(flow->ringrx, desc_dma);
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_pop_rx_chn);
+
+int k3_udma_glue_rx_get_irq(struct k3_udma_glue_rx_channel *rx_chn,
+			    u32 flow_num)
+{
+	struct k3_udma_glue_rx_flow *flow;
+
+	flow = &rx_chn->flows[flow_num];
+
+	flow->virq = k3_ringacc_get_ring_irq_num(flow->ringrx);
+
+	return flow->virq;
+}
+EXPORT_SYMBOL_GPL(k3_udma_glue_rx_get_irq);
diff --git a/drivers/dma/ti/k3-udma-private.c b/drivers/dma/ti/k3-udma-private.c
new file mode 100644
index 000000000000..0b8f3dd6b146
--- /dev/null
+++ b/drivers/dma/ti/k3-udma-private.c
@@ -0,0 +1,133 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ *  Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com
+ *  Author: Peter Ujfalusi <peter.ujfalusi@ti.com>
+ */
+
+int xudma_navss_psil_pair(struct udma_dev *ud, u32 src_thread, u32 dst_thread)
+{
+	return navss_psil_pair(ud, src_thread, dst_thread);
+}
+EXPORT_SYMBOL(xudma_navss_psil_pair);
+
+int xudma_navss_psil_unpair(struct udma_dev *ud, u32 src_thread, u32 dst_thread)
+{
+	return navss_psil_unpair(ud, src_thread, dst_thread);
+}
+EXPORT_SYMBOL(xudma_navss_psil_unpair);
+
+struct udma_dev *of_xudma_dev_get(struct device_node *np, const char *property)
+{
+	struct device_node *udma_node = np;
+	struct platform_device *pdev;
+	struct udma_dev *ud;
+
+	if (property) {
+		udma_node = of_parse_phandle(np, property, 0);
+		if (!udma_node) {
+			pr_err("UDMA node is not found\n");
+			return ERR_PTR(-ENODEV);
+		}
+	}
+
+	pdev = of_find_device_by_node(udma_node);
+	if (!pdev) {
+		pr_debug("UDMA device not found\n");
+		return ERR_PTR(-EPROBE_DEFER);
+	}
+
+	if (np != udma_node)
+		of_node_put(udma_node);
+
+	ud = platform_get_drvdata(pdev);
+	if (!ud) {
+		pr_debug("UDMA has not been probed\n");
+		return ERR_PTR(-EPROBE_DEFER);
+	}
+
+	return ud;
+}
+EXPORT_SYMBOL(of_xudma_dev_get);
+
+u32 xudma_dev_get_psil_base(struct udma_dev *ud)
+{
+	return ud->psil_base;
+}
+EXPORT_SYMBOL(xudma_dev_get_psil_base);
+
+struct udma_tisci_rm *xudma_dev_get_tisci_rm(struct udma_dev *ud)
+{
+	return &ud->tisci_rm;
+}
+EXPORT_SYMBOL(xudma_dev_get_tisci_rm);
+
+int xudma_alloc_gp_rflow_range(struct udma_dev *ud, int from, int cnt)
+{
+	return __udma_alloc_gp_rflow_range(ud, from, cnt);
+}
+EXPORT_SYMBOL(xudma_alloc_gp_rflow_range);
+
+int xudma_free_gp_rflow_range(struct udma_dev *ud, int from, int cnt)
+{
+	return __udma_free_gp_rflow_range(ud, from, cnt);
+}
+EXPORT_SYMBOL(xudma_free_gp_rflow_range);
+
+bool xudma_rflow_is_gp(struct udma_dev *ud, int id)
+{
+	return !test_bit(id, ud->rflow_gp_map);
+}
+EXPORT_SYMBOL(xudma_rflow_is_gp);
+
+#define XUDMA_GET_PUT_RESOURCE(res)					\
+struct udma_##res *xudma_##res##_get(struct udma_dev *ud, int id)	\
+{									\
+	return __udma_reserve_##res(ud, false, id);			\
+}									\
+EXPORT_SYMBOL(xudma_##res##_get);					\
+									\
+void xudma_##res##_put(struct udma_dev *ud, struct udma_##res *p)	\
+{									\
+	clear_bit(p->id, ud->res##_map);				\
+}									\
+EXPORT_SYMBOL(xudma_##res##_put)
+XUDMA_GET_PUT_RESOURCE(tchan);
+XUDMA_GET_PUT_RESOURCE(rchan);
+
+struct udma_rflow *xudma_rflow_get(struct udma_dev *ud, int id)
+{
+	return __udma_get_rflow(ud, id);
+}
+EXPORT_SYMBOL(xudma_rflow_get);
+
+void xudma_rflow_put(struct udma_dev *ud, struct udma_rflow *p)
+{
+	__udma_put_rflow(ud, p);
+}
+EXPORT_SYMBOL(xudma_rflow_put);
+
+#define XUDMA_GET_RESOURCE_ID(res)					\
+int xudma_##res##_get_id(struct udma_##res *p)				\
+{									\
+	return p->id;							\
+}									\
+EXPORT_SYMBOL(xudma_##res##_get_id)
+XUDMA_GET_RESOURCE_ID(tchan);
+XUDMA_GET_RESOURCE_ID(rchan);
+XUDMA_GET_RESOURCE_ID(rflow);
+
+/* Exported register access functions */
+#define XUDMA_RT_IO_FUNCTIONS(res)					\
+u32 xudma_##res##rt_read(struct udma_##res *p, int reg)			\
+{									\
+	return udma_##res##rt_read(p, reg);				\
+}									\
+EXPORT_SYMBOL(xudma_##res##rt_read);					\
+									\
+void xudma_##res##rt_write(struct udma_##res *p, int reg, u32 val)	\
+{									\
+	udma_##res##rt_write(p, reg, val);				\
+}									\
+EXPORT_SYMBOL(xudma_##res##rt_write)
+XUDMA_RT_IO_FUNCTIONS(tchan);
+XUDMA_RT_IO_FUNCTIONS(rchan);
diff --git a/drivers/dma/ti/k3-udma.c b/drivers/dma/ti/k3-udma.c
index 53bc55d6a8a8..48933689f790 100644
--- a/drivers/dma/ti/k3-udma.c
+++ b/drivers/dma/ti/k3-udma.c
@@ -1089,6 +1089,64 @@ static irqreturn_t udma_udma_irq_handler(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
+/**
+ * __udma_alloc_gp_rflow_range - alloc range of GP RX flows
+ * @ud: UDMA device
+ * @from: Start the search from this flow id number
+ * @cnt: Number of consecutive flow ids to allocate
+ *
+ * Allocate range of RX flow ids for future use, those flows can be requested
+ * only using explicit flow id number. if @from is set to -1 it will try to find
+ * first free range. if @from is positive value it will force allocation only
+ * of the specified range of flows.
+ *
+ * Returns -ENOMEM if can't find free range.
+ * -EEXIST if requested range is busy.
+ * -EINVAL if wrong input values passed.
+ * Returns flow id on success.
+ */
+static int __udma_alloc_gp_rflow_range(struct udma_dev *ud, int from, int cnt)
+{
+	int start, tmp_from;
+	DECLARE_BITMAP(tmp, K3_UDMA_MAX_RFLOWS);
+
+	tmp_from = from;
+	if (tmp_from < 0)
+		tmp_from = ud->rchan_cnt;
+	/* default flows can't be allocated and accessible only by id */
+	if (tmp_from < ud->rchan_cnt)
+		return -EINVAL;
+
+	if (tmp_from + cnt > ud->rflow_cnt)
+		return -EINVAL;
+
+	bitmap_or(tmp, ud->rflow_gp_map, ud->rflow_gp_map_allocated,
+		  ud->rflow_cnt);
+
+	start = bitmap_find_next_zero_area(tmp,
+					   ud->rflow_cnt,
+					   tmp_from, cnt, 0);
+	if (start >= ud->rflow_cnt)
+		return -ENOMEM;
+
+	if (from >= 0 && start != from)
+		return -EEXIST;
+
+	bitmap_set(ud->rflow_gp_map_allocated, start, cnt);
+	return start;
+}
+
+static int __udma_free_gp_rflow_range(struct udma_dev *ud, int from, int cnt)
+{
+	if (from < ud->rchan_cnt)
+		return -EINVAL;
+	if (from + cnt > ud->rflow_cnt)
+		return -EINVAL;
+
+	bitmap_clear(ud->rflow_gp_map_allocated, from, cnt);
+	return 0;
+}
+
 static struct udma_rflow *__udma_get_rflow(struct udma_dev *ud, int id)
 {
 	/*
@@ -2961,7 +3019,7 @@ static struct udma_match_data am654_main_data = {
 
 static struct udma_match_data am654_mcu_data = {
 	.psil_base = 0x6000,
-	.enable_memcpy_support = false, /* MEM_TO_MEM is slow via MCU UDMA */
+	.enable_memcpy_support = true, /* TEST: DMA domains */
 	.statictr_z_mask = GENMASK(11, 0),
 	.rchan_oes_offset = 0x2000,
 	.tpl_levels = 2,
@@ -3383,6 +3441,9 @@ static struct platform_driver udma_driver = {
 
 module_platform_driver(udma_driver);
 
+/* Private interfaces to UDMA */
+#include "k3-udma-private.c"
+
 MODULE_ALIAS("platform:ti-udma");
 MODULE_DESCRIPTION("TI K3 DMA driver for CPPI 5.0 compliant devices");
 MODULE_AUTHOR("Peter Ujfalusi <peter.ujfalusi@ti.com>");
diff --git a/drivers/dma/ti/k3-udma.h b/drivers/dma/ti/k3-udma.h
index ff428f823e67..128d8744a435 100644
--- a/drivers/dma/ti/k3-udma.h
+++ b/drivers/dma/ti/k3-udma.h
@@ -117,4 +117,35 @@ struct udma_tisci_rm {
 	struct ti_sci_resource *rm_ranges[RM_RANGE_LAST];
 };
 
+/* Direct access to UDMA low lever resources for the glue layer */
+int xudma_navss_psil_pair(struct udma_dev *ud, u32 src_thread, u32 dst_thread);
+int xudma_navss_psil_unpair(struct udma_dev *ud, u32 src_thread,
+			    u32 dst_thread);
+
+struct udma_dev *of_xudma_dev_get(struct device_node *np, const char *property);
+void xudma_dev_put(struct udma_dev *ud);
+u32 xudma_dev_get_psil_base(struct udma_dev *ud);
+struct udma_tisci_rm *xudma_dev_get_tisci_rm(struct udma_dev *ud);
+
+int xudma_alloc_gp_rflow_range(struct udma_dev *ud, int from, int cnt);
+int xudma_free_gp_rflow_range(struct udma_dev *ud, int from, int cnt);
+
+struct udma_tchan *xudma_tchan_get(struct udma_dev *ud, int id);
+struct udma_rchan *xudma_rchan_get(struct udma_dev *ud, int id);
+struct udma_rflow *xudma_rflow_get(struct udma_dev *ud, int id);
+
+void xudma_tchan_put(struct udma_dev *ud, struct udma_tchan *p);
+void xudma_rchan_put(struct udma_dev *ud, struct udma_rchan *p);
+void xudma_rflow_put(struct udma_dev *ud, struct udma_rflow *p);
+
+int xudma_tchan_get_id(struct udma_tchan *p);
+int xudma_rchan_get_id(struct udma_rchan *p);
+int xudma_rflow_get_id(struct udma_rflow *p);
+
+u32 xudma_tchanrt_read(struct udma_tchan *tchan, int reg);
+void xudma_tchanrt_write(struct udma_tchan *tchan, int reg, u32 val);
+u32 xudma_rchanrt_read(struct udma_rchan *rchan, int reg);
+void xudma_rchanrt_write(struct udma_rchan *rchan, int reg, u32 val);
+bool xudma_rflow_is_gp(struct udma_dev *ud, int id);
+
 #endif /* K3_UDMA_H_ */
diff --git a/include/linux/dma/k3-udma-glue.h b/include/linux/dma/k3-udma-glue.h
new file mode 100644
index 000000000000..caadbab1632a
--- /dev/null
+++ b/include/linux/dma/k3-udma-glue.h
@@ -0,0 +1,134 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ *  Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com
+ */
+
+#ifndef K3_UDMA_GLUE_H_
+#define K3_UDMA_GLUE_H_
+
+#include <linux/types.h>
+#include <linux/soc/ti/k3-ringacc.h>
+#include <linux/dma/ti-cppi5.h>
+
+struct k3_udma_glue_tx_channel_cfg {
+	struct k3_ring_cfg tx_cfg;
+	struct k3_ring_cfg txcq_cfg;
+
+	bool tx_pause_on_err;
+	bool tx_filt_einfo;
+	bool tx_filt_pswords;
+	bool tx_supr_tdpkt;
+	u32  swdata_size;
+};
+
+struct k3_udma_glue_tx_channel;
+
+struct k3_udma_glue_tx_channel *k3_udma_glue_request_tx_chn(struct device *dev,
+		const char *name, struct k3_udma_glue_tx_channel_cfg *cfg);
+
+void k3_udma_glue_release_tx_chn(struct k3_udma_glue_tx_channel *tx_chn);
+int k3_udma_glue_push_tx_chn(struct k3_udma_glue_tx_channel *tx_chn,
+			     struct cppi5_host_desc_t *desc_tx,
+			     dma_addr_t desc_dma);
+int k3_udma_glue_pop_tx_chn(struct k3_udma_glue_tx_channel *tx_chn,
+			    dma_addr_t *desc_dma);
+int k3_udma_glue_enable_tx_chn(struct k3_udma_glue_tx_channel *tx_chn);
+void k3_udma_glue_disable_tx_chn(struct k3_udma_glue_tx_channel *tx_chn);
+void k3_udma_glue_tdown_tx_chn(struct k3_udma_glue_tx_channel *tx_chn,
+			       bool sync);
+void k3_udma_glue_reset_tx_chn(struct k3_udma_glue_tx_channel *tx_chn,
+		void *data, void (*cleanup)(void *data, dma_addr_t desc_dma));
+u32 k3_udma_glue_tx_get_hdesc_size(struct k3_udma_glue_tx_channel *tx_chn);
+u32 k3_udma_glue_tx_get_txcq_id(struct k3_udma_glue_tx_channel *tx_chn);
+int k3_udma_glue_tx_get_irq(struct k3_udma_glue_tx_channel *tx_chn);
+
+enum {
+	K3_UDMA_GLUE_SRC_TAG_LO_KEEP = 0,
+	K3_UDMA_GLUE_SRC_TAG_LO_USE_FLOW_REG = 1,
+	K3_UDMA_GLUE_SRC_TAG_LO_USE_REMOTE_FLOW_ID = 2,
+	K3_UDMA_GLUE_SRC_TAG_LO_USE_REMOTE_SRC_TAG = 4,
+};
+
+/**
+ * k3_udma_glue_rx_flow_cfg - UDMA RX flow cfg
+ *
+ * @rx_cfg:		RX ring configuration
+ * @rxfdq_cfg:		RX free Host PD ring configuration
+ * @ring_rxq_id:	RX ring id (or -1 for any)
+ * @ring_rxfdq0_id:	RX free Host PD ring (FDQ) if (or -1 for any)
+ * @rx_error_handling:	Rx Error Handling Mode (0 - drop, 1 - re-try)
+ * @src_tag_lo_sel:	Rx Source Tag Low Byte Selector in Host PD
+ */
+struct k3_udma_glue_rx_flow_cfg {
+	struct k3_ring_cfg rx_cfg;
+	struct k3_ring_cfg rxfdq_cfg;
+	int ring_rxq_id;
+	int ring_rxfdq0_id;
+	bool rx_error_handling;
+	int src_tag_lo_sel;
+};
+
+/**
+ * k3_udma_glue_rx_channel_cfg - UDMA RX channel cfg
+ *
+ * @psdata_size:	SW Data is present in Host PD of @swdata_size bytes
+ * @flow_id_base:	first flow_id used by channel.
+ *			if @flow_id_base = -1 - range of GP rflows will be
+ *			allocated dynamically.
+ * @flow_id_num:	number of RX flows used by channel
+ * @flow_id_use_rxchan_id:	use RX channel id as flow id,
+ *				used only if @flow_id_num = 1
+ * @remote		indication that RX channel is remote - some remote CPU
+ *			core owns and control the RX channel. Linux Host only
+ *			allowed to attach and configure RX Flow within RX
+ *			channel. if set - not RX channel operation will be
+ *			performed by K3 NAVSS DMA glue interface.
+ * @def_flow_cfg	default RX flow configuration,
+ *			used only if @flow_id_num = 1
+ */
+struct k3_udma_glue_rx_channel_cfg {
+	u32  swdata_size;
+	int  flow_id_base;
+	int  flow_id_num;
+	bool flow_id_use_rxchan_id;
+	bool remote;
+
+	struct k3_udma_glue_rx_flow_cfg *def_flow_cfg;
+};
+
+struct k3_udma_glue_rx_channel;
+
+struct k3_udma_glue_rx_channel *k3_udma_glue_request_rx_chn(
+		struct device *dev,
+		const char *name,
+		struct k3_udma_glue_rx_channel_cfg *cfg);
+
+void k3_udma_glue_release_rx_chn(struct k3_udma_glue_rx_channel *rx_chn);
+int k3_udma_glue_enable_rx_chn(struct k3_udma_glue_rx_channel *rx_chn);
+void k3_udma_glue_disable_rx_chn(struct k3_udma_glue_rx_channel *rx_chn);
+void k3_udma_glue_tdown_rx_chn(struct k3_udma_glue_rx_channel *rx_chn,
+			       bool sync);
+int k3_udma_glue_push_rx_chn(struct k3_udma_glue_rx_channel *rx_chn,
+		u32 flow_num, struct cppi5_host_desc_t *desc_tx,
+		dma_addr_t desc_dma);
+int k3_udma_glue_pop_rx_chn(struct k3_udma_glue_rx_channel *rx_chn,
+		u32 flow_num, dma_addr_t *desc_dma);
+int k3_udma_glue_rx_flow_init(struct k3_udma_glue_rx_channel *rx_chn,
+		u32 flow_idx, struct k3_udma_glue_rx_flow_cfg *flow_cfg);
+u32 k3_udma_glue_rx_flow_get_fdq_id(struct k3_udma_glue_rx_channel *rx_chn,
+				    u32 flow_idx);
+u32 k3_udma_glue_rx_get_flow_id_base(struct k3_udma_glue_rx_channel *rx_chn);
+int k3_udma_glue_rx_get_irq(struct k3_udma_glue_rx_channel *rx_chn,
+			    u32 flow_num);
+void k3_udma_glue_rx_put_irq(struct k3_udma_glue_rx_channel *rx_chn,
+			     u32 flow_num);
+void k3_udma_glue_reset_rx_chn(struct k3_udma_glue_rx_channel *rx_chn,
+		u32 flow_num, void *data,
+		void (*cleanup)(void *data, dma_addr_t desc_dma),
+		bool skip_fdq);
+int k3_udma_glue_rx_flow_enable(struct k3_udma_glue_rx_channel *rx_chn,
+				u32 flow_idx);
+int k3_udma_glue_rx_flow_disable(struct k3_udma_glue_rx_channel *rx_chn,
+				 u32 flow_idx);
+
+#endif /* K3_UDMA_GLUE_H_ */
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
