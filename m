Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9615B6ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 10:35:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00UTMdUe/PO9YdGlQcCwIk/NWfRQTGhR4oEluHracDc=; b=ebbz5F3RDpwjvx
	cPxOHEV3KioVIxxMYx14knjRM+hoMceaDcg7mc5YIZpBlgcbUezcIG8w2Vu7z7m56myjFefWiFbO6
	C6HnovF4xyoySlwZIMMsJh2dNOxuxRciJqscOSkEdPXQ5g20Ak0A55cQenNv0KcAbvSD7CDUjrxto
	QkpsCGAIpS6Wr9/DqR5Auth+u3TegxFIVWN3Y0Wrvm8mYYK4YDD+zxhS1U2RdLPcHwyJhkW8NnYyp
	IWOZgg5W0L3IjKjYco9KCoq13oO5EXe7/cnB+a9VRMzpB+Ryq4qm8/ZMdzWkUa9nsk5FK4amUcNR5
	DMxuame3ylSJ6eN+xhUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhrmH-0003Hv-Hk; Mon, 01 Jul 2019 08:35:09 +0000
Received: from mail-ve1eur03on0616.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::616]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhrlG-0002tN-P4
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 08:34:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TVfHzYw90nQRQ4kjiqlChElVHMRk9dcUE9isAukUzmY=;
 b=NIVVnrbhbuSYc9LglZElkkd/5UGHpqFkHUKn343XPh80eYbhIDnTx3Q193YTIkCE8s8Cd+bcxGYTVra1xqooZvkJBsmMkq2XUoJ84xwi2cBu3ZZYRtXWxBaReWV+Px6T/PAcUQYDlNE/YyAm2r8skqOoNNRxn3DV53Fs4WxXhPs=
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com (52.133.46.11) by
 AM0PR0402MB3441.eurprd04.prod.outlook.com (52.133.45.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Mon, 1 Jul 2019 08:34:03 +0000
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::dd66:8e13:93f0:65eb]) by AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::dd66:8e13:93f0:65eb%7]) with mapi id 15.20.2032.019; Mon, 1 Jul 2019
 08:34:03 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: "ohad@wizery.com" <ohad@wizery.com>, "bjorn.andersson@linaro.org"
 <bjorn.andersson@linaro.org>, "linux-remoteproc@vger.kernel.org"
 <linux-remoteproc@vger.kernel.org>
Subject: [RFC 2/2] rpmsg: imx: add the initial imx rpmsg support
Thread-Topic: [RFC 2/2] rpmsg: imx: add the initial imx rpmsg support
Thread-Index: AQHVL+e8AnKkQffEIE+CgEkyNPFBIQ==
Date: Mon, 1 Jul 2019 08:34:03 +0000
Message-ID: <1561968784-1124-3-git-send-email-hongxing.zhu@nxp.com>
References: <1561968784-1124-1-git-send-email-hongxing.zhu@nxp.com>
In-Reply-To: <1561968784-1124-1-git-send-email-hongxing.zhu@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0004.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::16) To AM0PR0402MB3570.eurprd04.prod.outlook.com
 (2603:10a6:208:1c::11)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hongxing.zhu@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68ed5ff8-b86e-4f91-323c-08d6fdfedf1f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR0402MB3441; 
x-ms-traffictypediagnostic: AM0PR0402MB3441:
x-microsoft-antispam-prvs: <AM0PR0402MB3441E61C37E5BBC94A20424B8CF90@AM0PR0402MB3441.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:454;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(376002)(396003)(39860400002)(346002)(199004)(189003)(2501003)(14444005)(50226002)(11346002)(36756003)(446003)(2616005)(478600001)(5660300002)(256004)(66066001)(486006)(7736002)(68736007)(476003)(2201001)(305945005)(30864003)(86362001)(64756008)(66946007)(73956011)(66556008)(66446008)(2906002)(99286004)(76176011)(6512007)(3846002)(6486002)(8676002)(102836004)(53936002)(6506007)(14454004)(316002)(71200400001)(6436002)(386003)(110136005)(25786009)(4326008)(26005)(66476007)(71190400001)(52116002)(53946003)(54906003)(6116002)(8936002)(81166006)(81156014)(186003)(2004002)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3441;
 H:AM0PR0402MB3570.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QscSMXIbxO7xnkrjg5svAwGf905DPNoIRfSvUv6Yhyfc34nWXG+OGlHQR9yvqOWj7Sdw+JUbYPoiRH66ssSq87MauIgTzB+peRMmlYAIp7aTrcczT1gt6rtivHRYW7Ni+10W28cHp+a6pzBZL1kZomgWWOiz8qbhYtjvRr928cAUdS2L69/0L5uoOjBcwkd+3f6b+haBaPDWvs01LnXVtQUfXaLlA+ewBNhYr/FOSeaZNmvOgk2qv/UvdGfBY1yTZmAddH7vofDXImnmmJGTJzeSwNhmGRzt274/ufvrlzVG6bVGrwBHWmGFDwGE9hHJq2VlN9m+maIu7Fo11HIz2356nomttJ0l8XrnMlmFlgR1kOo62AKmsn3ztYaSWnRiiwUhx6aad5M6Byv2t0fcFM7iHkf6XP/B9tCSE9rbMiY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68ed5ff8-b86e-4f91-323c-08d6fdfedf1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 08:34:03.2044 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hongxing.zhu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3441
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_013407_005410_54CFAB77 
X-CRM114-Status: GOOD (  23.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:616 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Zhu <hongxing.zhu@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Based on "virtio_rpmsg_bus" driver, This patch-set is used to set up
the communication mechanism between A core and M core on i.MX AMP SOCs.

Add the initial imx rpmsg support glue driver and one pingpong demo,
demonstrated the data transactions between A core and remote M core.
Distributed framework is used in IMX RPMSG implementation, refer to the
following requirements:
  - The CAN functions contained in M core and RTOS should be ready and
    complete functional in 50ms after AMP system is turned on.
  - Partition reset. System wouldn't be stalled by the exceptions (e.x
    the reset triggered by the system hang) occurred at the other side.
    And the RPMSG mechanism should be recovered automactilly after the
    partition reset is completed.
In this scenario, the M core and RTOS would be kicked off by bootloader
firstly, then A core and Linux would be loaded later. Both M core/RTOS
and A core/Linux are running independly.

One physical memory region used to store the vring is mandatory required
to pre-reserved and well-knowned by both A core and M core

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
---
 drivers/rpmsg/Kconfig              |  24 ++
 drivers/rpmsg/Makefile             |   2 +
 drivers/rpmsg/imx_rpmsg.c          | 542 +++++++++++++++++++++++++++++++++++++
 drivers/rpmsg/imx_rpmsg_pingpong.c | 100 +++++++
 include/linux/imx_rpmsg.h          |  43 +++
 5 files changed, 711 insertions(+)
 create mode 100644 drivers/rpmsg/imx_rpmsg.c
 create mode 100644 drivers/rpmsg/imx_rpmsg_pingpong.c
 create mode 100644 include/linux/imx_rpmsg.h

diff --git a/drivers/rpmsg/Kconfig b/drivers/rpmsg/Kconfig
index d0322b4..636460e 100644
--- a/drivers/rpmsg/Kconfig
+++ b/drivers/rpmsg/Kconfig
@@ -55,4 +55,28 @@ config RPMSG_VIRTIO
 	select RPMSG
 	select VIRTIO
 
+config HAVE_IMX_RPMSG
+	bool "IMX RPMSG driver on the AMP SOCs"
+	default y
+	depends on IMX_MBOX
+	select RPMSG_VIRTIO
+	help
+	  Say y here to enable support for the iMX Rpmsg Driver	providing
+	  communication channels to remote processors in iMX asymmetric
+	  multiprocessing (AMP) platforms.
+
+	  Especially, it is mandatory required when the partition reset is
+	  required on some iMX AMP platforms.
+
+config IMX_RPMSG_PINGPONG
+	tristate "IMX RPMSG pingpong driver -- loadable modules only"
+	default m
+	depends on HAVE_IMX_RPMSG && m
+	help
+	  One 32bit unsigned int data transactions demoe between the A core
+	  and the remote M core on the iMX AMP platforms.
+
+	  Only the module mode is supported here, the demo would be kicked off
+	  immediately when this module is insmoded.
+
 endmenu
diff --git a/drivers/rpmsg/Makefile b/drivers/rpmsg/Makefile
index 9aa8595..9c6fce5 100644
--- a/drivers/rpmsg/Makefile
+++ b/drivers/rpmsg/Makefile
@@ -6,3 +6,5 @@ obj-$(CONFIG_RPMSG_QCOM_GLINK_NATIVE) += qcom_glink_native.o
 obj-$(CONFIG_RPMSG_QCOM_GLINK_SMEM) += qcom_glink_smem.o
 obj-$(CONFIG_RPMSG_QCOM_SMD)	+= qcom_smd.o
 obj-$(CONFIG_RPMSG_VIRTIO)	+= virtio_rpmsg_bus.o
+obj-$(CONFIG_HAVE_IMX_RPMSG)	+= imx_rpmsg.o
+obj-$(CONFIG_IMX_RPMSG_PINGPONG)	+= imx_rpmsg_pingpong.o
diff --git a/drivers/rpmsg/imx_rpmsg.c b/drivers/rpmsg/imx_rpmsg.c
new file mode 100644
index 0000000..58888d1
--- /dev/null
+++ b/drivers/rpmsg/imx_rpmsg.c
@@ -0,0 +1,542 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 NXP
+ */
+
+#include <linux/circ_buf.h>
+#include <linux/err.h>
+#include <linux/init.h>
+#include <linux/mailbox_client.h>
+#include <linux/module.h>
+#include <linux/notifier.h>
+#include <linux/of_device.h>
+#include <linux/of_reserved_mem.h>
+#include <linux/platform_device.h>
+#include <linux/virtio_config.h>
+#include <linux/virtio_ids.h>
+#include <linux/virtio_ring.h>
+#include <linux/imx_rpmsg.h>
+#include "rpmsg_internal.h"
+
+enum imx_rpmsg_variants {
+	IMX8MQ,
+	IMX8QXP,
+};
+
+struct imx_virdev {
+	struct virtio_device vdev;
+	unsigned int vring[2];
+	struct virtqueue *vq[2];
+	int base_vq_id;
+	int num_of_vqs;
+	struct imx_rpmsg_vproc *rpdev;
+};
+
+struct imx_rpmsg_vproc {
+	struct mbox_client cl;
+	struct mbox_client cl_rxdb;
+	struct mbox_chan *tx_ch;
+	struct mbox_chan *rx_ch;
+	struct mbox_chan *rxdb_ch;
+	enum imx_rpmsg_variants variant;
+	int vdev_nums;
+	int first_notify;
+	u32 flags;
+#define MAX_VDEV_NUMS  8
+	struct imx_virdev *ivdev[MAX_VDEV_NUMS];
+	struct delayed_work rpmsg_work;
+	struct circ_buf rx_buffer;
+	spinlock_t mu_lock;
+	struct notifier_block proc_nb;
+	struct platform_device *pdev;
+};
+
+#define RPMSG_NUM_BUFS		(512)
+#define RPMSG_BUF_SIZE		(512)
+#define RPMSG_BUFS_SPACE	(RPMSG_NUM_BUFS * RPMSG_BUF_SIZE)
+#define RPMSG_VRING_ALIGN	(4096)
+#define RPMSG_RING_SIZE	((DIV_ROUND_UP(vring_size(RPMSG_NUM_BUFS / 2, \
+				RPMSG_VRING_ALIGN), PAGE_SIZE)) * PAGE_SIZE)
+
+#define to_imx_virdev(vd) container_of(vd, struct imx_virdev, vdev)
+
+/*
+ * 1: indicated that remote processor is ready from re-initialization.
+ * Clear this bit after the RPMSG restore is finished at master side.
+ */
+#define REMOTE_IS_READY			BIT(0)
+/* 1: Use reserved memory region as DMA pool */
+#define SPECIFIC_DMA_POOL		BIT(1)
+
+struct imx_rpmsg_vq_info {
+	__u16 num;	/* number of entries in the virtio_ring */
+	__u16 vq_id;	/* a globaly unique index of this virtqueue */
+	void *addr;	/* address where we mapped the virtio ring */
+	struct imx_rpmsg_vproc *rpdev;
+};
+
+static u64 imx_rpmsg_get_features(struct virtio_device *vdev)
+{
+	/* VIRTIO_RPMSG_F_NS has been made private */
+	return 1 << 0;
+}
+
+static int imx_rpmsg_finalize_features(struct virtio_device *vdev)
+{
+	/* Give virtio_ring a chance to accept features */
+	vring_transport_features(vdev);
+	return 0;
+}
+
+/* kick the remote processor, and let it know which virtqueue to poke at */
+static bool imx_rpmsg_notify(struct virtqueue *vq)
+{
+	int ret;
+	unsigned long flags;
+	unsigned int mu_rpmsg = 0;
+	struct imx_rpmsg_vq_info *rpvq = vq->priv;
+	struct imx_rpmsg_vproc *rpdev = rpvq->rpdev;
+
+	mu_rpmsg = rpvq->vq_id << 16;
+	spin_lock_irqsave(&rpdev->mu_lock, flags);
+	/*
+	 * Send the index of the triggered virtqueue as the mu payload.
+	 * Use the timeout MU send message here.
+	 * Since that M4 core may not be loaded, and the first MSG may
+	 * not be handled by M4 when multi-vdev is enabled.
+	 * To make sure that the message wound't be discarded when M4
+	 * is running normally or in the suspend mode. Only use
+	 * the timeout mechanism by the first notify when the vdev is
+	 * registered.
+	 * ~14ms is required by M4 ready to process the MU message from
+	 * cold boot. Set the wait time 20ms here.
+	 */
+	if (unlikely(rpdev->first_notify > 0)) {
+		rpdev->first_notify--;
+		rpdev->cl.tx_tout = 20;
+		ret = mbox_send_message(rpdev->tx_ch, &mu_rpmsg);
+		if (ret < 0)
+			return false;
+	} else {
+		rpdev->cl.tx_tout = 0;
+		ret = mbox_send_message(rpdev->tx_ch, &mu_rpmsg);
+		if (ret < 0)
+			return false;
+	}
+	spin_unlock_irqrestore(&rpdev->mu_lock, flags);
+
+	return true;
+}
+
+static struct virtqueue *rp_find_vq(struct virtio_device *vdev,
+				    unsigned int index,
+				    void (*callback)(struct virtqueue *vq),
+				    const char *name,
+				    bool ctx)
+{
+	struct imx_virdev *virdev = to_imx_virdev(vdev);
+	struct imx_rpmsg_vproc *rpdev = virdev->rpdev;
+	struct platform_device *pdev = rpdev->pdev;
+	struct device *dev = &pdev->dev;
+	struct imx_rpmsg_vq_info *rpvq;
+	struct virtqueue *vq;
+	int err;
+
+	rpvq = kmalloc(sizeof(*rpvq), GFP_KERNEL);
+	if (!rpvq)
+		return ERR_PTR(-ENOMEM);
+
+	/* ioremap'ing normal memory, so we cast away sparse's complaints */
+	rpvq->addr = (__force void *) ioremap_nocache(virdev->vring[index],
+							RPMSG_RING_SIZE);
+	if (!rpvq->addr) {
+		err = -ENOMEM;
+		goto free_rpvq;
+	}
+
+	memset_io(rpvq->addr, 0, RPMSG_RING_SIZE);
+
+	dev_dbg(dev, "vring%d: phys 0x%x, virt 0x%p\n",
+			index, virdev->vring[index], rpvq->addr);
+
+	vq = vring_new_virtqueue(index, RPMSG_NUM_BUFS / 2, RPMSG_VRING_ALIGN,
+			vdev, true, ctx,
+			rpvq->addr,
+			imx_rpmsg_notify, callback,
+			name);
+	if (!vq) {
+		dev_err(dev, "vring_new_virtqueue failed\n");
+		err = -ENOMEM;
+		goto unmap_vring;
+	}
+
+	virdev->vq[index] = vq;
+	vq->priv = rpvq;
+	/* system-wide unique id for this virtqueue */
+	rpvq->vq_id = virdev->base_vq_id + index;
+	rpvq->rpdev = rpdev;
+
+	return vq;
+
+unmap_vring:
+	/* iounmap normal memory, so make sparse happy */
+	iounmap((__force void __iomem *) rpvq->addr);
+free_rpvq:
+	kfree(rpvq);
+	return ERR_PTR(err);
+}
+
+static void imx_rpmsg_del_vqs(struct virtio_device *vdev)
+{
+	struct virtqueue *vq, *n;
+
+	list_for_each_entry_safe(vq, n, &vdev->vqs, list) {
+		struct imx_rpmsg_vq_info *rpvq = vq->priv;
+
+		iounmap(rpvq->addr);
+		vring_del_virtqueue(vq);
+		kfree(rpvq);
+	}
+}
+
+static int imx_rpmsg_find_vqs(struct virtio_device *vdev, unsigned int nvqs,
+		       struct virtqueue *vqs[],
+		       vq_callback_t *callbacks[],
+		       const char * const names[],
+		       const bool *ctx,
+		       struct irq_affinity *desc)
+{
+	struct imx_virdev *virdev = to_imx_virdev(vdev);
+	int i, err;
+
+	/* we maintain two virtqueues per remote processor (for RX and TX) */
+	if (nvqs != 2)
+		return -EINVAL;
+
+	for (i = 0; i < nvqs; ++i) {
+		vqs[i] = rp_find_vq(vdev, i, callbacks[i], names[i],
+				ctx ? ctx[i] : false);
+		if (IS_ERR(vqs[i])) {
+			err = PTR_ERR(vqs[i]);
+			goto error;
+		}
+	}
+
+	virdev->num_of_vqs = nvqs;
+	return 0;
+
+error:
+	imx_rpmsg_del_vqs(vdev);
+	return err;
+}
+
+static void imx_rpmsg_reset(struct virtio_device *vdev)
+{
+	dev_dbg(&vdev->dev, "reset !\n");
+}
+
+static u8 imx_rpmsg_get_status(struct virtio_device *vdev)
+{
+	return 0;
+}
+
+static void imx_rpmsg_set_status(struct virtio_device *vdev, u8 status)
+{
+	dev_dbg(&vdev->dev, "%s new status: %d\n", __func__, status);
+}
+
+static void imx_rpmsg_vproc_release(struct device *dev)
+{
+	/* this handler is provided so driver core doesn't yell at us */
+}
+
+static struct virtio_config_ops imx_rpmsg_config_ops = {
+	.get_features	= imx_rpmsg_get_features,
+	.finalize_features = imx_rpmsg_finalize_features,
+	.find_vqs	= imx_rpmsg_find_vqs,
+	.del_vqs	= imx_rpmsg_del_vqs,
+	.reset		= imx_rpmsg_reset,
+	.set_status	= imx_rpmsg_set_status,
+	.get_status	= imx_rpmsg_get_status,
+};
+
+static const struct of_device_id imx_rpmsg_dt_ids[] = {
+	{ .compatible = "fsl,imx8mq-rpmsg", .data = (void *)IMX8MQ, },
+	{ .compatible = "fsl,imx8qxp-rpmsg", .data = (void *)IMX8QXP, },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, imx_rpmsg_dt_ids);
+
+static int set_vring_phy_buf(struct platform_device *pdev,
+		       struct imx_rpmsg_vproc *rpdev, int vdev_nums)
+{
+	struct resource *res;
+	resource_size_t size;
+	unsigned int start, end;
+	int i, ret = 0;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (res) {
+		size = resource_size(res);
+		start = res->start;
+		end = res->start + size;
+		for (i = 0; i < vdev_nums; i++) {
+			rpdev->ivdev[i] = kzalloc(sizeof(struct imx_virdev),
+							GFP_KERNEL);
+			if (!rpdev->ivdev[i])
+				return -ENOMEM;
+
+			rpdev->ivdev[i]->vring[0] = start;
+			rpdev->ivdev[i]->vring[1] = start + 0x8000;
+			start += 0x10000;
+			if (start > end) {
+				dev_err(&pdev->dev,
+					"Too small memory size %x!\n",
+					(u32)size);
+				ret = -EINVAL;
+				break;
+			}
+		}
+	} else {
+		return -ENOMEM;
+	}
+
+	return ret;
+}
+
+static void rpmsg_work_handler(struct work_struct *work)
+{
+	u32 message;
+	unsigned long flags;
+	struct imx_virdev *virdev;
+	struct delayed_work *dwork = to_delayed_work(work);
+	struct imx_rpmsg_vproc *rpdev = container_of(dwork,
+			struct imx_rpmsg_vproc, rpmsg_work);
+	struct circ_buf *cb = &rpdev->rx_buffer;
+	struct platform_device *pdev = rpdev->pdev;
+	struct device *dev = &pdev->dev;
+
+	spin_lock_irqsave(&rpdev->mu_lock, flags);
+	/* handle all incoming mu message */
+	while (CIRC_CNT(cb->head, cb->tail, PAGE_SIZE)) {
+		spin_unlock_irqrestore(&rpdev->mu_lock, flags);
+		message = (u32) cb->buf[cb->tail];
+		virdev = rpdev->ivdev[(message >> 16) / 2];
+
+		dev_dbg(dev, "%s msg: 0x%x\n", __func__, message);
+		message = message >> 16;
+		message -= virdev->base_vq_id;
+
+		/*
+		 * Currently both PENDING_MSG and explicit-virtqueue-index
+		 * messaging are supported.
+		 * Whatever approach is taken, at this point message contains
+		 * the index of the vring which was just triggered.
+		 */
+		if (message  < virdev->num_of_vqs)
+			vring_interrupt(message, virdev->vq[message]);
+		spin_lock_irqsave(&rpdev->mu_lock, flags);
+		cb->tail = CIRC_ADD(cb->tail, PAGE_SIZE, 4);
+	}
+	spin_unlock_irqrestore(&rpdev->mu_lock, flags);
+}
+
+static int imx_rpmsg_partition_notify(struct notifier_block *nb,
+				      unsigned long event, void *group)
+{
+	/* Reserved for the partition reset. */
+	return 0;
+}
+
+static void imx_rpmsg_rxdb_callback(struct mbox_client *c, void *msg)
+{
+	unsigned long flags;
+	struct imx_rpmsg_vproc *rpdev = container_of(c,
+			struct imx_rpmsg_vproc, cl);
+
+	spin_lock_irqsave(&rpdev->mu_lock, flags);
+	rpdev->flags |= REMOTE_IS_READY;
+	spin_unlock_irqrestore(&rpdev->mu_lock, flags);
+}
+
+static int imx_rpmsg_rxdb_channel_init(struct imx_rpmsg_vproc *rpdev)
+{
+	struct platform_device *pdev = rpdev->pdev;
+	struct device *dev = &pdev->dev;
+	struct mbox_client *cl;
+	int ret = 0;
+
+	cl = &rpdev->cl_rxdb;
+	cl->dev = dev;
+	cl->rx_callback = imx_rpmsg_rxdb_callback;
+
+	/*
+	 * RX door bell is used to receive the ready signal from remote
+	 * after the partition reset of A core.
+	 */
+	rpdev->rxdb_ch = mbox_request_channel_byname(cl, "rxdb");
+	if (IS_ERR(rpdev->rxdb_ch)) {
+		ret = PTR_ERR(rpdev->rxdb_ch);
+		dev_err(cl->dev, "failed to request mbox chan rxdb, ret %d\n",
+			ret);
+		return ret;
+	}
+
+	return ret;
+}
+
+static void imx_rpmsg_rx_callback(struct mbox_client *c, void *msg)
+{
+	int buf_space;
+	unsigned long flags;
+	u32 *data = msg;
+	struct imx_rpmsg_vproc *rpdev = container_of(c,
+			struct imx_rpmsg_vproc, cl);
+	struct circ_buf *cb = &rpdev->rx_buffer;
+
+	spin_lock_irqsave(&rpdev->mu_lock, flags);
+	buf_space = CIRC_SPACE(cb->head, cb->tail, PAGE_SIZE);
+	spin_unlock_irqrestore(&rpdev->mu_lock, flags);
+	if (unlikely(!buf_space)) {
+		dev_err(c->dev, "RPMSG RX overflow!\n");
+		return;
+	}
+	spin_lock_irqsave(&rpdev->mu_lock, flags);
+	cb->buf[cb->head] = *data;
+	cb->head = CIRC_ADD(cb->head, PAGE_SIZE, 4);
+	spin_unlock_irqrestore(&rpdev->mu_lock, flags);
+
+	schedule_delayed_work(&(rpdev->rpmsg_work), 0);
+}
+
+static int imx_rpmsg_probe(struct platform_device *pdev)
+{
+	int j, ret = 0;
+	char *buf;
+	struct device *dev = &pdev->dev;
+	struct device_node *np = pdev->dev.of_node;
+	struct imx_rpmsg_vproc *rpdev;
+	struct mbox_client *cl;
+
+	buf = devm_kzalloc(dev, PAGE_SIZE, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	rpdev = devm_kzalloc(dev, sizeof(*rpdev), GFP_KERNEL);
+	if (!rpdev)
+		return -ENOMEM;
+
+	rpdev->proc_nb.notifier_call = imx_rpmsg_partition_notify;
+	rpdev->variant = (enum imx_rpmsg_variants)of_device_get_match_data(dev);
+	rpdev->rx_buffer.buf = buf;
+	rpdev->rx_buffer.head = 0;
+	rpdev->rx_buffer.tail = 0;
+
+	cl = &rpdev->cl;
+	cl->dev = dev;
+	cl->tx_block = false;
+	cl->tx_tout = 20;
+	cl->knows_txdone = false;
+	cl->rx_callback = imx_rpmsg_rx_callback;
+
+	rpdev->tx_ch = mbox_request_channel_byname(cl, "tx");
+	if (IS_ERR(rpdev->tx_ch)) {
+		ret = PTR_ERR(rpdev->tx_ch);
+		goto err_chl;
+	}
+	rpdev->rx_ch = mbox_request_channel_byname(cl, "rx");
+	if (IS_ERR(rpdev->rx_ch)) {
+		ret = PTR_ERR(rpdev->rx_ch);
+		goto err_chl;
+	}
+
+	spin_lock_init(&rpdev->mu_lock);
+	INIT_DELAYED_WORK(&(rpdev->rpmsg_work), rpmsg_work_handler);
+	ret = of_property_read_u32(np, "vdev-nums", &rpdev->vdev_nums);
+	if (ret)
+		rpdev->vdev_nums = 1;
+	if (rpdev->vdev_nums > MAX_VDEV_NUMS) {
+		dev_err(dev, "vdev-nums exceed the max %d\n", MAX_VDEV_NUMS);
+		ret = -EINVAL;
+		goto err_chl;
+	}
+	rpdev->first_notify = rpdev->vdev_nums;
+
+	ret = set_vring_phy_buf(pdev, rpdev, rpdev->vdev_nums);
+	if (ret) {
+		dev_err(dev, "No vring buffer.\n");
+		ret = -ENOMEM;
+		goto err_chl;
+	}
+	if (of_reserved_mem_device_init(dev)) {
+		dev_dbg(dev, "dev doesn't have specific DMA pool.\n");
+		rpdev->flags &= (~SPECIFIC_DMA_POOL);
+	} else {
+		rpdev->flags |= SPECIFIC_DMA_POOL;
+	}
+
+	for (j = 0; j < rpdev->vdev_nums; j++) {
+		dev_dbg(dev, "%s rpdev vdev%d: vring0 0x%x, vring1 0x%x\n",
+			 __func__, rpdev->vdev_nums,
+			 rpdev->ivdev[j]->vring[0],
+			 rpdev->ivdev[j]->vring[1]);
+		rpdev->ivdev[j]->vdev.id.device = VIRTIO_ID_RPMSG;
+		rpdev->ivdev[j]->vdev.config = &imx_rpmsg_config_ops;
+		rpdev->pdev = pdev;
+		rpdev->ivdev[j]->vdev.dev.parent = &pdev->dev;
+		rpdev->ivdev[j]->vdev.dev.release = imx_rpmsg_vproc_release;
+		rpdev->ivdev[j]->base_vq_id = j * 2;
+		rpdev->ivdev[j]->rpdev = rpdev;
+
+		ret = register_virtio_device(&rpdev->ivdev[j]->vdev);
+		if (ret) {
+			dev_err(dev, "%s failed to register rpdev: %d\n",
+					__func__, ret);
+			goto err_out;
+		}
+	}
+	/* Initialize the RX doorbell channel. */
+	ret = imx_rpmsg_rxdb_channel_init(rpdev);
+	if (ret)
+		goto err_out;
+
+	return ret;
+
+err_out:
+	if (rpdev->flags & SPECIFIC_DMA_POOL)
+		of_reserved_mem_device_release(dev);
+err_chl:
+	if (!IS_ERR(rpdev->rxdb_ch))
+		mbox_free_channel(rpdev->rxdb_ch);
+	if (!IS_ERR(rpdev->tx_ch))
+		mbox_free_channel(rpdev->tx_ch);
+	if (!IS_ERR(rpdev->rx_ch))
+		mbox_free_channel(rpdev->rx_ch);
+	return ret;
+}
+
+static struct platform_driver imx_rpmsg_driver = {
+	.driver = {
+		   .owner = THIS_MODULE,
+		   .name = "imx-rpmsg",
+		   .of_match_table = imx_rpmsg_dt_ids,
+		   },
+	.probe = imx_rpmsg_probe,
+};
+
+static int __init imx_rpmsg_init(void)
+{
+	int ret;
+
+	ret = platform_driver_register(&imx_rpmsg_driver);
+	if (ret)
+		pr_err("Unable to initialize rpmsg driver\n");
+	else
+		pr_info("imx rpmsg driver is registered.\n");
+
+	return ret;
+}
+
+MODULE_DESCRIPTION("iMX remote processor messaging virtio device");
+MODULE_LICENSE("GPL v2");
+arch_initcall(imx_rpmsg_init);
diff --git a/drivers/rpmsg/imx_rpmsg_pingpong.c b/drivers/rpmsg/imx_rpmsg_pingpong.c
new file mode 100644
index 0000000..b028914
--- /dev/null
+++ b/drivers/rpmsg/imx_rpmsg_pingpong.c
@@ -0,0 +1,100 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 NXP
+ */
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/virtio.h>
+#include <linux/rpmsg.h>
+
+#define MSG		"hello world!"
+static unsigned int rpmsg_pingpong;
+
+static int rpmsg_pingpong_cb(struct rpmsg_device *rpdev, void *data, int len,
+						void *priv, u32 src)
+{
+	int err;
+
+	/* reply */
+	rpmsg_pingpong = *(unsigned int *)data;
+	pr_info("get %d (src: 0x%x)\n", rpmsg_pingpong, src);
+
+	/* pingpongs should not live forever */
+	if (rpmsg_pingpong > 100) {
+		dev_info(&rpdev->dev, "goodbye!\n");
+		return 0;
+	}
+	rpmsg_pingpong++;
+	err = rpmsg_sendto(rpdev->ept, (void *)(&rpmsg_pingpong), 4, src);
+
+	if (err)
+		dev_err(&rpdev->dev, "rpmsg_send failed: %d\n", err);
+
+	return err;
+}
+
+static int rpmsg_pingpong_probe(struct rpmsg_device *rpdev)
+{
+	int err;
+
+	dev_info(&rpdev->dev, "new channel: 0x%x -> 0x%x!\n",
+			rpdev->src, rpdev->dst);
+
+	/*
+	 * send a message to our remote processor, and tell remote
+	 * processor about this channel
+	 */
+	err = rpmsg_send(rpdev->ept, MSG, strlen(MSG));
+	if (err) {
+		dev_err(&rpdev->dev, "rpmsg_send failed: %d\n", err);
+		return err;
+	}
+
+	rpmsg_pingpong = 0;
+	err = rpmsg_sendto(rpdev->ept, (void *)(&rpmsg_pingpong),
+			   4, rpdev->dst);
+	if (err) {
+		dev_err(&rpdev->dev, "rpmsg_send failed: %d\n", err);
+		return err;
+	}
+
+	return 0;
+}
+
+static void rpmsg_pingpong_remove(struct rpmsg_device *rpdev)
+{
+	dev_info(&rpdev->dev, "rpmsg pingpong driver is removed\n");
+}
+
+static struct rpmsg_device_id rpmsg_driver_pingpong_id_table[] = {
+	{ .name	= "rpmsg-openamp-demo-channel" },
+	{ .name	= "rpmsg-openamp-demo-channel-1" },
+	{ },
+};
+MODULE_DEVICE_TABLE(rpmsg, rpmsg_driver_pingpong_id_table);
+
+static struct rpmsg_driver rpmsg_pingpong_driver = {
+	.drv.name	= KBUILD_MODNAME,
+	.drv.owner	= THIS_MODULE,
+	.id_table	= rpmsg_driver_pingpong_id_table,
+	.probe		= rpmsg_pingpong_probe,
+	.callback	= rpmsg_pingpong_cb,
+	.remove		= rpmsg_pingpong_remove,
+};
+
+static int __init init(void)
+{
+	return register_rpmsg_driver(&rpmsg_pingpong_driver);
+}
+
+static void __exit fini(void)
+{
+	unregister_rpmsg_driver(&rpmsg_pingpong_driver);
+}
+module_init(init);
+module_exit(fini);
+
+MODULE_AUTHOR("Freescale Semiconductor, Inc.");
+MODULE_DESCRIPTION("iMX virtio remote processor messaging pingpong driver");
+MODULE_LICENSE("GPL v2");
diff --git a/include/linux/imx_rpmsg.h b/include/linux/imx_rpmsg.h
new file mode 100644
index 0000000..e0d5e97
--- /dev/null
+++ b/include/linux/imx_rpmsg.h
@@ -0,0 +1,43 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 NXP.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+/*
+ * @file linux/imx_rpmsg.h
+ *
+ * @brief Global header file for iMX RPMSG
+ *
+ * @ingroup RPMSG
+ */
+#ifndef __LINUX_IMX_RPMSG_H__
+#define __LINUX_IMX_RPMSG_H__
+
+/* Category define */
+#define IMX_RMPSG_LIFECYCLE	1
+#define IMX_RPMSG_PMIC		2
+#define IMX_RPMSG_AUDIO		3
+#define IMX_RPMSG_KEY		4
+#define IMX_RPMSG_GPIO		5
+#define IMX_RPMSG_RTC		6
+#define IMX_RPMSG_SENSOR	7
+/* rpmsg version */
+#define IMX_RMPSG_MAJOR		1
+#define IMX_RMPSG_MINOR		0
+
+#define CIRC_ADD(idx, size, value)	(((idx) + (value)) & ((size) - 1))
+
+struct imx_rpmsg_head {
+	u8 cate;
+	u8 major;
+	u8 minor;
+	u8 type;
+	u8 cmd;
+	u8 reserved[5];
+} __packed;
+
+#endif /* __LINUX_IMX_RPMSG_H__ */
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
