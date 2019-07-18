Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B34A76CAD0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 10:20:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ipvfKb2N1uM6Fe6wYoeTFe9t24gL22B71j9rj80Z0sU=; b=Hqu
	Q0smOTJ/plj4mluUp7gOVlOZFi3/A3ejb5ZSTaXcrF+TQrZZ8BSigQp9XXHdvP2IssLARhnVCs2uo
	Bp75YgNXNy35andTg1FB6BvbDs6pd7yPYMTHLTY7ShPgRNMl6u7nmPcOsGTcm+BIiHGUE9LQ40hSk
	TgCqb90ryQkYiErev2SCrbmowpWoJ6YOMrYVSiP5qko2SbB+vW0OI/A8b3HozYJyfX2UY/PHvfJfh
	Z6UjtHzyZ2oiCIA6NNUkCKlHVhxPdBdtGEd07/fCD5VdHsXE6reqyQw6XEZ7DZocYjXfXvBUdYBLe
	tccqSe7fTHJwdFTQMxhp6+PSUElod1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho1e4-0007mJ-8V; Thu, 18 Jul 2019 08:20:08 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho1dl-0007lW-Ly
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 08:19:51 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id ED4171A0029;
 Thu, 18 Jul 2019 10:19:44 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DFA341A00AB;
 Thu, 18 Jul 2019 10:19:44 +0200 (CEST)
Received: from fsr-ub1864-103.ea.freescale.net
 (fsr-ub1864-103.ea.freescale.net [10.171.82.17])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 5F81C205C7;
 Thu, 18 Jul 2019 10:19:44 +0200 (CEST)
From: Daniel Baluta <daniel.baluta@nxp.com>
To: shawnguo@kernel.org,
	o.rempel@pengutronix.de
Subject: [PATCH] firmware: imx: Add DSP IPC protocol interface
Date: Thu, 18 Jul 2019 11:19:43 +0300
Message-Id: <20190718081943.10272-1-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_011949_994375_C1E14E54 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: aisheng.dong@nxp.com, ulf.hansson@linaro.org, anson.huang@nxp.com,
 Daniel Baluta <daniel.baluta@nxp.com>, shengjiu.wang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some of i.MX8 processors (e.g i.MX8QM, i.MX8QXP) contain
the Tensilica HiFi4 DSP for advanced pre- and post-audio
processing.

The communication between Host CPU and DSP firmware is
taking place using a shared memory area for message passing
and a dedicated Messaging Unit for notifications.

DSP IPC protocol offers a doorbell interface using
imx-mailbox API.

We use 4 MU channels (2 x TXDB, 2 x RXDB) to implement a
request-reply protocol.

Connection 0 (txdb0, rxdb0):
        - Host writes messasge to shared memory [SHMEM]
	- Host sends a request [MU]
	- DSP handles request [SHMEM]
	- DSP sends reply [MU]

Connection 1 (txdb1, rxdb1):
	- DSP writes a message to shared memory [SHMEM]
	- DSP sends a request [MU]
	- Host handles request [SHMEM]
	- Host sends reply [MU]

The protocol interface will be used by a Host client to
communicate with the DSP. First client will be the i.MX8
part from Sound Open Firmware infrastructure.

The protocol offers the following interface:

On Tx:
   - imx_dsp_ring_doorbell, will be called to notify the DSP
   that it needs to handle a request.

On Rx:
   - clients need to provide two callbacks:
	.handle_reply
	.handle_request
  - the callbacks will be used by the protocol on
    notification arrival from DSP.

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
Changes since v2:
	- remove DSP IPC own DT node as per Rob comments
	- make dsp responsability to add MU nodes
	- already got a Reviewed-by from Oleksij but won't add it
	here since he might have some comments about new changes.
	- drop dt-bindings patch since the DSP IPC no longer have
	an associated DT node

 drivers/firmware/imx/Kconfig     |  11 +++
 drivers/firmware/imx/Makefile    |   1 +
 drivers/firmware/imx/imx-dsp.c   | 138 +++++++++++++++++++++++++++++++
 include/linux/firmware/imx/dsp.h |  67 +++++++++++++++
 4 files changed, 217 insertions(+)
 create mode 100644 drivers/firmware/imx/imx-dsp.c
 create mode 100644 include/linux/firmware/imx/dsp.h

diff --git a/drivers/firmware/imx/Kconfig b/drivers/firmware/imx/Kconfig
index 42b566f8903f..0dbee32da4c6 100644
--- a/drivers/firmware/imx/Kconfig
+++ b/drivers/firmware/imx/Kconfig
@@ -1,4 +1,15 @@
 # SPDX-License-Identifier: GPL-2.0-only
+config IMX_DSP
+	bool "IMX DSP Protocol driver"
+	depends on IMX_MBOX
+	help
+	  This enables DSP IPC protocol between host AP (Linux)
+	  and the firmware running on DSP.
+	  DSP exists on some i.MX8 processors (e.g i.MX8QM, i.MX8QXP).
+
+	  It acts like a doorbell. Client might use shared memory to
+	  exchange information with DSP side.
+
 config IMX_SCU
 	bool "IMX SCU Protocol driver"
 	depends on IMX_MBOX
diff --git a/drivers/firmware/imx/Makefile b/drivers/firmware/imx/Makefile
index 802c4ad8e8f9..08bc9ddfbdfb 100644
--- a/drivers/firmware/imx/Makefile
+++ b/drivers/firmware/imx/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_IMX_DSP)		+= imx-dsp.o
 obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o imx-scu-irq.o
 obj-$(CONFIG_IMX_SCU_PD)	+= scu-pd.o
diff --git a/drivers/firmware/imx/imx-dsp.c b/drivers/firmware/imx/imx-dsp.c
new file mode 100644
index 000000000000..b05bdb06662e
--- /dev/null
+++ b/drivers/firmware/imx/imx-dsp.c
@@ -0,0 +1,138 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2019 NXP
+ *  Author: Daniel Baluta <daniel.baluta@nxp.com>
+ *
+ * Implementation of the DSP IPC interface (host side)
+ */
+
+#include <linux/firmware/imx/dsp.h>
+#include <linux/kernel.h>
+#include <linux/mailbox_client.h>
+#include <linux/module.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+
+/*
+ * imx_dsp_ring_doorbell - triggers an interrupt on the other side (DSP)
+ *
+ * @dsp: DSP IPC handle
+ * @chan_idx: index of the channel where to trigger the interrupt
+ *
+ * Returns non-negative value for success, negative value for error
+ */
+int imx_dsp_ring_doorbell(struct imx_dsp_ipc *ipc, unsigned int idx)
+{
+	int ret;
+	struct imx_dsp_chan *dsp_chan;
+
+	if (idx >= DSP_MU_CHAN_NUM)
+		return -EINVAL;
+
+	dsp_chan = &ipc->chans[idx];
+	ret = mbox_send_message(dsp_chan->ch, NULL);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL(imx_dsp_ring_doorbell);
+
+/*
+ * imx_dsp_handle_rx - rx callback used by imx mailbox
+ *
+ * @c: mbox client
+ * @msg: message received
+ *
+ * Users of DSP IPC will need to privde handle_reply and handle_request
+ * callbacks.
+ */
+static void imx_dsp_handle_rx(struct mbox_client *c, void *msg)
+{
+	struct imx_dsp_chan *chan = container_of(c, struct imx_dsp_chan, cl);
+
+	if (chan->idx == 0) {
+		chan->ipc->ops->handle_reply(chan->ipc);
+	} else {
+		chan->ipc->ops->handle_request(chan->ipc);
+		imx_dsp_ring_doorbell(chan->ipc, 1);
+	}
+}
+
+static int imx_dsp_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct imx_dsp_ipc *dsp_ipc;
+	struct imx_dsp_chan *dsp_chan;
+	struct mbox_client *cl;
+	char *chan_name;
+	int ret;
+	int i, j;
+
+	device_set_of_node_from_dev(&pdev->dev, pdev->dev.parent);
+
+	dsp_ipc = devm_kzalloc(dev, sizeof(*dsp_ipc), GFP_KERNEL);
+	if (!dsp_ipc)
+		return -ENOMEM;
+
+	for (i = 0; i < DSP_MU_CHAN_NUM; i++) {
+		if (i < 2)
+			chan_name = kasprintf(GFP_KERNEL, "txdb%d", i);
+		else
+			chan_name = kasprintf(GFP_KERNEL, "rxdb%d", i - 2);
+
+		if (!chan_name)
+			return -ENOMEM;
+
+		dsp_chan = &dsp_ipc->chans[i];
+		cl = &dsp_chan->cl;
+		cl->dev = dev;
+		cl->tx_block = false;
+		cl->knows_txdone = true;
+		cl->rx_callback = imx_dsp_handle_rx;
+
+		dsp_chan->ipc = dsp_ipc;
+		dsp_chan->idx = i % 2;
+		dsp_chan->ch = mbox_request_channel_byname(cl, chan_name);
+		if (IS_ERR(dsp_chan->ch)) {
+			ret = PTR_ERR(dsp_chan->ch);
+			if (ret != -EPROBE_DEFER)
+				dev_err(dev, "Failed to request mbox chan %s ret %d\n",
+					chan_name, ret);
+			goto out;
+		}
+
+		dev_dbg(dev, "request mbox chan %s\n", chan_name);
+		/* chan_name is not used anymore by framework */
+		kfree(chan_name);
+	}
+
+	dsp_ipc->dev = dev;
+
+	dev_set_drvdata(dev, dsp_ipc);
+
+	dev_info(dev, "NXP i.MX DSP IPC initialized\n");
+
+	return devm_of_platform_populate(dev);
+out:
+	kfree(chan_name);
+	for (j = 0; j < i; j++) {
+		dsp_chan = &dsp_ipc->chans[j];
+		mbox_free_channel(dsp_chan->ch);
+	}
+
+	return ret;
+}
+
+static struct platform_driver imx_dsp_driver = {
+	.driver = {
+		.name = "imx-dsp",
+	},
+	.probe = imx_dsp_probe,
+};
+builtin_platform_driver(imx_dsp_driver);
+
+MODULE_AUTHOR("Daniel Baluta <daniel.baluta@nxp.com>");
+MODULE_DESCRIPTION("IMX DSP IPC protocol driver");
+MODULE_LICENSE("GPL v2");
diff --git a/include/linux/firmware/imx/dsp.h b/include/linux/firmware/imx/dsp.h
new file mode 100644
index 000000000000..7562099c9e46
--- /dev/null
+++ b/include/linux/firmware/imx/dsp.h
@@ -0,0 +1,67 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright 2019 NXP
+ *
+ * Header file for the DSP IPC implementation
+ */
+
+#ifndef _IMX_DSP_IPC_H
+#define _IMX_DSP_IPC_H
+
+#include <linux/device.h>
+#include <linux/types.h>
+#include <linux/mailbox_client.h>
+
+#define DSP_MU_CHAN_NUM		4
+
+struct imx_dsp_chan {
+	struct imx_dsp_ipc *ipc;
+	struct mbox_client cl;
+	struct mbox_chan *ch;
+	char *name;
+	int idx;
+};
+
+struct imx_dsp_ops {
+	void (*handle_reply)(struct imx_dsp_ipc *ipc);
+	void (*handle_request)(struct imx_dsp_ipc *ipc);
+};
+
+struct imx_dsp_ipc {
+	/* Host <-> DSP communication uses 2 txdb and 2 rxdb channels */
+	struct imx_dsp_chan chans[DSP_MU_CHAN_NUM];
+	struct device *dev;
+	struct imx_dsp_ops *ops;
+	void *private_data;
+};
+
+static inline void imx_dsp_set_data(struct imx_dsp_ipc *ipc, void *data)
+{
+	if (!ipc)
+		return;
+
+	ipc->private_data = data;
+}
+
+static inline void *imx_dsp_get_data(struct imx_dsp_ipc *ipc)
+{
+	if (!ipc)
+		return NULL;
+
+	return ipc->private_data;
+}
+
+#if IS_ENABLED(CONFIG_IMX_DSP)
+
+int imx_dsp_ring_doorbell(struct imx_dsp_ipc *dsp, unsigned int chan_idx);
+
+#else
+
+static inline int imx_dsp_ring_doorbell(struct imx_dsp_ipc *ipc,
+					unsigned int chan_idx)
+{
+	return -ENOTSUPP;
+}
+
+#endif
+#endif /* _IMX_DSP_IPC_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
