Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF32557E01
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 10:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/q6F+Rko8xhfPdOphB2LcqgC09//VOu+lQxQY0N5Eos=; b=rTyyzgOKVKb1gF
	sKTFTNH2V6AcKDIU0vnbShB/8DK5HS0MTUcP6TwfURN3cscCk3fdyAUPNrWiWYZi17FcbcvlOYJhG
	6fUsS46SrDPxGaINztSNkwuMd33z2uH3zygAKhfXmZZXEnYOZ6FsSUDP6SQZ0THjdZarKrWNRXtdX
	ZsizELJ2mJnDsotMBxvIQQMszKjc4ei2m27xApTL7cTmHX/IWXhYr32wrpi7sOXBjjrHn4+s8dHdp
	EOtQ3wpbnxzgLY1KuyHw3ot0BK8hjeIc+rNz8na/dfazFODuxucRYRN7PeW73Q8LISvOdbAJFVFQO
	jCezMOh7IE39Si3jlLPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgPWm-0004KU-Pz; Thu, 27 Jun 2019 08:13:08 +0000
Received: from mail-eopbgr60083.outbound.protection.outlook.com ([40.107.6.83]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgPW5-0003xj-Pw
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 08:12:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PCRdjCcIWaqAzo4AG385nDP9nPkFHnwY2N7r/L9eS08=;
 b=Kilx/2E5QUsjuGuXrIgX90sAFwclt/WgOIuvvr9IqAp0NwxSLTbi+Ts7KDOmiAHwKmDUNBLJZhNzTAzAMG94pkIUZZjOq2w5s0CsKILr9YLNQOKBnE/MKIRV1CnDOWmMk89nOzjvoLoNFsY1bZtkNIKUnL0fMHl+tSoRX9TvJFQ=
Received: from AM6PR04MB5207.eurprd04.prod.outlook.com (20.177.35.159) by
 AM6PR04MB4453.eurprd04.prod.outlook.com (20.176.242.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.17; Thu, 27 Jun 2019 08:12:19 +0000
Received: from AM6PR04MB5207.eurprd04.prod.outlook.com
 ([fe80::9c87:7753:43b9:6d4a]) by AM6PR04MB5207.eurprd04.prod.outlook.com
 ([fe80::9c87:7753:43b9:6d4a%4]) with mapi id 15.20.2008.014; Thu, 27 Jun 2019
 08:12:19 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "o.rempel@pengutronix.de" <o.rempel@pengutronix.de>
Subject: [PATCH v2 1/2] firmware: imx: Add DSP IPC protocol interface
Thread-Topic: [PATCH v2 1/2] firmware: imx: Add DSP IPC protocol interface
Thread-Index: AQHVLMAKsAQXFVfM80aDHo0cs/xXGA==
Date: Thu, 27 Jun 2019 08:12:19 +0000
Message-ID: <20190627081205.22065-2-daniel.baluta@nxp.com>
References: <20190627081205.22065-1-daniel.baluta@nxp.com>
In-Reply-To: <20190627081205.22065-1-daniel.baluta@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0802CA0020.eurprd08.prod.outlook.com
 (2603:10a6:800:aa::30) To AM6PR04MB5207.eurprd04.prod.outlook.com
 (2603:10a6:20b:e::31)
x-mailer: git-send-email 2.17.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 51a89c88-0759-47b4-fb4f-08d6fad72ca1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB4453; 
x-ms-traffictypediagnostic: AM6PR04MB4453:
x-microsoft-antispam-prvs: <AM6PR04MB4453894FC3B0CC34DE085EDFF9FD0@AM6PR04MB4453.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:534;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(39860400002)(136003)(366004)(199004)(189003)(2501003)(81156014)(25786009)(68736007)(14444005)(256004)(186003)(14454004)(26005)(66066001)(476003)(99286004)(50226002)(6506007)(4326008)(8936002)(8676002)(81166006)(386003)(44832011)(102836004)(52116002)(305945005)(486006)(76176011)(446003)(3846002)(71190400001)(54906003)(71200400001)(7736002)(11346002)(6436002)(2616005)(478600001)(86362001)(316002)(53936002)(36756003)(5660300002)(1076003)(110136005)(66556008)(66476007)(64756008)(66946007)(73956011)(6486002)(2906002)(6116002)(66446008)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4453;
 H:AM6PR04MB5207.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 51cfBY+WhhcA/10ILDBEBFERCPxaFY7MbyF1OKFJp+yJKEQ5xpUVb/o+yKwNY+YdmxzjHyLV/h6Jsgr9QjnZU3KgCu8gbzDNS7Hq99QTpr7sz+utCeCkiuxRyxoKX1Yzy0Ksx558ukcHSUqrDKFDvDgLxDOwaBkU627J8vItZPcITSi1MG1Yy7UFPPup5Ac++ptdhvUtF/GuYLLkM01fahgRpq6TgZJZSUrxKzeOmaM/L/rAljoRoVp+tQ01gxVCRuKiUxD4gfVLaFvt5ZxzRVpqQzN4z84iWthNgnp5rR8mr81HMOyf7Hkn+UwtifXnuz0K94iPXYWZAjo1CurY8w2ykz1eUkfzHp/2IKoL+Y7auDHAzCN+MYsDpvLV5jh7chCqmcyRVL+JpnSCAl8kypphy9OXFGQ8+I8/p+qgA9w=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51a89c88-0759-47b4-fb4f-08d6fad72ca1
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 08:12:19.6727 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: daniel.baluta@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4453
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_011225_871437_9CDC5A1A 
X-CRM114-Status: GOOD (  22.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
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

DSP IPC protocol driver offers a doorbell interface using
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

The protocol driver will be used by a Host client to
communicate with the DSP. First client will be the i.MX8
part from Sound Open Firmware infrastructure.

The protocol drivers offers the following interface:

On Tx:
   - imx_dsp_ring_doorbell, will be called to notify the DSP
   that it needs to handle a request.

On Rx:
   - clients need to provide two callbacks:
	.handle_reply
	.handle_request
  - the callbacks will be used by the protocol driver on
    notification arrival from DSP.

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 drivers/firmware/imx/Kconfig     |  11 +++
 drivers/firmware/imx/Makefile    |   1 +
 drivers/firmware/imx/imx-dsp.c   | 142 +++++++++++++++++++++++++++++++
 include/linux/firmware/imx/dsp.h |  67 +++++++++++++++
 4 files changed, 221 insertions(+)
 create mode 100644 drivers/firmware/imx/imx-dsp.c
 create mode 100644 include/linux/firmware/imx/dsp.h

diff --git a/drivers/firmware/imx/Kconfig b/drivers/firmware/imx/Kconfig
index 42b566f8903f..ddb241708c31 100644
--- a/drivers/firmware/imx/Kconfig
+++ b/drivers/firmware/imx/Kconfig
@@ -1,4 +1,15 @@
 # SPDX-License-Identifier: GPL-2.0-only
+config IMX_DSP
+	bool "IMX DSP Protocol driver"
+	depends on IMX_MBOX
+	help
+	  This enables DSP IPC protocol between host CPU (Linux)
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
index 000000000000..c4d34a2fbff3
--- /dev/null
+++ b/drivers/firmware/imx/imx-dsp.c
@@ -0,0 +1,142 @@
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
+static const struct of_device_id imx_dsp_match[] = {
+	{ .compatible = "fsl,imx8qxp-dsp", },
+	{ /* Sentinel */ }
+};
+
+static struct platform_driver imx_dsp_driver = {
+	.driver = {
+		.name = "imx-dsp",
+		.of_match_table = imx_dsp_match,
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
