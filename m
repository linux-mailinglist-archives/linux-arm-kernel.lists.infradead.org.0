Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FE75F5CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 11:39:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J/zNRB+89qqOgdXGO66nM8RyeRq5muto8+D8uqqPCE0=; b=kPpybCK9yWsM/bjJBbYJzG2Vs
	7LhxqjSXiQyM6a3oTL78uTeaTQctUKE4upAfqykoblCR35w4Nh8vgIUz37sSXM/R3RluNP/o+ZxlV
	Hb1X+tKsKIWJsZHEUFQGOs0iGoB69ukj7RyFByyRQc2Asih7jJ2wyobKp32FZQDKyBiZNyfUddIfV
	jNe1MLxzn5BGk5hl5G67UQth9vua1YiJ2+X/6WwWUpcCI4wRY4qG3lEpxo55eCd8VZWdgWhyiRcCw
	tlI37nsA5Qu+u/WvxxkP9Ck23/MEFJmAUMrrgTGsh8XQQ+1LdCq46benvHPx59l7+X/pfkAcv7gAH
	c9Q5L0ASw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiyCs-0006v7-C8; Thu, 04 Jul 2019 09:39:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiyCa-0006uc-VD
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:38:56 +0000
Received: from soja.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:13da])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <o.rempel@pengutronix.de>)
 id 1hiyA8-0001a0-Jw; Thu, 04 Jul 2019 11:36:20 +0200
Subject: Re: [RFC 2/2] rpmsg: imx: add the initial imx rpmsg support
To: Richard Zhu <hongxing.zhu@nxp.com>, "ohad@wizery.com" <ohad@wizery.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>
References: <1561968784-1124-1-git-send-email-hongxing.zhu@nxp.com>
 <1561968784-1124-3-git-send-email-hongxing.zhu@nxp.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <3e0a061c-4f5e-ac32-031d-909a48644265@pengutronix.de>
Date: Thu, 4 Jul 2019 11:36:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <1561968784-1124-3-git-send-email-hongxing.zhu@nxp.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:13da
X-SA-Exim-Mail-From: o.rempel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_023853_351264_2EFE6221 
X-CRM114-Status: GOOD (  38.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: loic.pallardy@st.com, arnaud.pouliquen@st.com,
 Fabien DESSENNE <fabien.dessenne@st.com>, elder@linaro.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Richard,

On 01.07.19 10:34, Richard Zhu wrote:
> Based on "virtio_rpmsg_bus" driver, This patch-set is used to set up
> the communication mechanism between A core and M core on i.MX AMP SOCs.
> 
> Add the initial imx rpmsg support glue driver and one pingpong demo,
> demonstrated the data transactions between A core and remote M core.
> Distributed framework is used in IMX RPMSG implementation, refer to the
> following requirements:
>    - The CAN functions contained in M core and RTOS should be ready and
>      complete functional in 50ms after AMP system is turned on.
>    - Partition reset. System wouldn't be stalled by the exceptions (e.x
>      the reset triggered by the system hang) occurred at the other side.
>      And the RPMSG mechanism should be recovered automactilly after the
>      partition reset is completed.
> In this scenario, the M core and RTOS would be kicked off by bootloader
> firstly, then A core and Linux would be loaded later. Both M core/RTOS
> and A core/Linux are running independly.
> 
> One physical memory region used to store the vring is mandatory required
> to pre-reserved and well-knowned by both A core and M core

I don't see any thing imx specific in this patch. We already have remoteproc which would 
parse firmware header and create needed devices. This driver is only needed for the case 
where firmware was stared by the bootloader.

I personally would prefer to have generic driver or extend the remoteproc framework. So we 
can notify kernel about work already done by bootloader.

In general, some more issues should be solved:
- Handle or not touch idle clocks for different node used by M core and not main system.
- pin control
- regulators

ST devs already tried to solve this issues by creating "remoteproc: add system resource 
manager device" patch. I don't know what is current state of it (/me adding ST devs to CC).

Beside, I ported remoteproc to barebox. So same firmware used for remoteproc on linux
can be used by bootloader (barebox):
http://lists.infradead.org/pipermail/barebox/2019-June/038395.html

> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>   drivers/rpmsg/Kconfig              |  24 ++
>   drivers/rpmsg/Makefile             |   2 +
>   drivers/rpmsg/imx_rpmsg.c          | 542 +++++++++++++++++++++++++++++++++++++
>   drivers/rpmsg/imx_rpmsg_pingpong.c | 100 +++++++
>   include/linux/imx_rpmsg.h          |  43 +++
>   5 files changed, 711 insertions(+)
>   create mode 100644 drivers/rpmsg/imx_rpmsg.c
>   create mode 100644 drivers/rpmsg/imx_rpmsg_pingpong.c
>   create mode 100644 include/linux/imx_rpmsg.h
> 
> diff --git a/drivers/rpmsg/Kconfig b/drivers/rpmsg/Kconfig
> index d0322b4..636460e 100644
> --- a/drivers/rpmsg/Kconfig
> +++ b/drivers/rpmsg/Kconfig
> @@ -55,4 +55,28 @@ config RPMSG_VIRTIO
>   	select RPMSG
>   	select VIRTIO
>   
> +config HAVE_IMX_RPMSG
> +	bool "IMX RPMSG driver on the AMP SOCs"
> +	default y
> +	depends on IMX_MBOX
> +	select RPMSG_VIRTIO
> +	help
> +	  Say y here to enable support for the iMX Rpmsg Driver	providing
> +	  communication channels to remote processors in iMX asymmetric
> +	  multiprocessing (AMP) platforms.
> +
> +	  Especially, it is mandatory required when the partition reset is
> +	  required on some iMX AMP platforms.
> +
> +config IMX_RPMSG_PINGPONG
> +	tristate "IMX RPMSG pingpong driver -- loadable modules only"
> +	default m
> +	depends on HAVE_IMX_RPMSG && m
> +	help
> +	  One 32bit unsigned int data transactions demoe between the A core
> +	  and the remote M core on the iMX AMP platforms.
> +
> +	  Only the module mode is supported here, the demo would be kicked off
> +	  immediately when this module is insmoded.
> +
>   endmenu
> diff --git a/drivers/rpmsg/Makefile b/drivers/rpmsg/Makefile
> index 9aa8595..9c6fce5 100644
> --- a/drivers/rpmsg/Makefile
> +++ b/drivers/rpmsg/Makefile
> @@ -6,3 +6,5 @@ obj-$(CONFIG_RPMSG_QCOM_GLINK_NATIVE) += qcom_glink_native.o
>   obj-$(CONFIG_RPMSG_QCOM_GLINK_SMEM) += qcom_glink_smem.o
>   obj-$(CONFIG_RPMSG_QCOM_SMD)	+= qcom_smd.o
>   obj-$(CONFIG_RPMSG_VIRTIO)	+= virtio_rpmsg_bus.o
> +obj-$(CONFIG_HAVE_IMX_RPMSG)	+= imx_rpmsg.o
> +obj-$(CONFIG_IMX_RPMSG_PINGPONG)	+= imx_rpmsg_pingpong.o
> diff --git a/drivers/rpmsg/imx_rpmsg.c b/drivers/rpmsg/imx_rpmsg.c
> new file mode 100644
> index 0000000..58888d1
> --- /dev/null
> +++ b/drivers/rpmsg/imx_rpmsg.c
> @@ -0,0 +1,542 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019 NXP
> + */
> +
> +#include <linux/circ_buf.h>
> +#include <linux/err.h>
> +#include <linux/init.h>
> +#include <linux/mailbox_client.h>
> +#include <linux/module.h>
> +#include <linux/notifier.h>
> +#include <linux/of_device.h>
> +#include <linux/of_reserved_mem.h>
> +#include <linux/platform_device.h>
> +#include <linux/virtio_config.h>
> +#include <linux/virtio_ids.h>
> +#include <linux/virtio_ring.h>
> +#include <linux/imx_rpmsg.h>
> +#include "rpmsg_internal.h"
> +
> +enum imx_rpmsg_variants {
> +	IMX8MQ,
> +	IMX8QXP,
> +};
> +
> +struct imx_virdev {
> +	struct virtio_device vdev;
> +	unsigned int vring[2];
> +	struct virtqueue *vq[2];
> +	int base_vq_id;
> +	int num_of_vqs;
> +	struct imx_rpmsg_vproc *rpdev;
> +};
> +
> +struct imx_rpmsg_vproc {
> +	struct mbox_client cl;
> +	struct mbox_client cl_rxdb;
> +	struct mbox_chan *tx_ch;
> +	struct mbox_chan *rx_ch;
> +	struct mbox_chan *rxdb_ch;
> +	enum imx_rpmsg_variants variant;
> +	int vdev_nums;
> +	int first_notify;
> +	u32 flags;
> +#define MAX_VDEV_NUMS  8
> +	struct imx_virdev *ivdev[MAX_VDEV_NUMS];
> +	struct delayed_work rpmsg_work;
> +	struct circ_buf rx_buffer;
> +	spinlock_t mu_lock;
> +	struct notifier_block proc_nb;
> +	struct platform_device *pdev;
> +};
> +
> +#define RPMSG_NUM_BUFS		(512)
> +#define RPMSG_BUF_SIZE		(512)
> +#define RPMSG_BUFS_SPACE	(RPMSG_NUM_BUFS * RPMSG_BUF_SIZE)
> +#define RPMSG_VRING_ALIGN	(4096)
> +#define RPMSG_RING_SIZE	((DIV_ROUND_UP(vring_size(RPMSG_NUM_BUFS / 2, \
> +				RPMSG_VRING_ALIGN), PAGE_SIZE)) * PAGE_SIZE)
> +
> +#define to_imx_virdev(vd) container_of(vd, struct imx_virdev, vdev)
> +
> +/*
> + * 1: indicated that remote processor is ready from re-initialization.
> + * Clear this bit after the RPMSG restore is finished at master side.
> + */
> +#define REMOTE_IS_READY			BIT(0)
> +/* 1: Use reserved memory region as DMA pool */
> +#define SPECIFIC_DMA_POOL		BIT(1)
> +
> +struct imx_rpmsg_vq_info {
> +	__u16 num;	/* number of entries in the virtio_ring */
> +	__u16 vq_id;	/* a globaly unique index of this virtqueue */
> +	void *addr;	/* address where we mapped the virtio ring */
> +	struct imx_rpmsg_vproc *rpdev;
> +};
> +
> +static u64 imx_rpmsg_get_features(struct virtio_device *vdev)
> +{
> +	/* VIRTIO_RPMSG_F_NS has been made private */
> +	return 1 << 0;
> +}
> +
> +static int imx_rpmsg_finalize_features(struct virtio_device *vdev)
> +{
> +	/* Give virtio_ring a chance to accept features */
> +	vring_transport_features(vdev);
> +	return 0;
> +}
> +
> +/* kick the remote processor, and let it know which virtqueue to poke at */
> +static bool imx_rpmsg_notify(struct virtqueue *vq)
> +{
> +	int ret;
> +	unsigned long flags;
> +	unsigned int mu_rpmsg = 0;
> +	struct imx_rpmsg_vq_info *rpvq = vq->priv;
> +	struct imx_rpmsg_vproc *rpdev = rpvq->rpdev;
> +
> +	mu_rpmsg = rpvq->vq_id << 16;
> +	spin_lock_irqsave(&rpdev->mu_lock, flags);
> +	/*
> +	 * Send the index of the triggered virtqueue as the mu payload.
> +	 * Use the timeout MU send message here.
> +	 * Since that M4 core may not be loaded, and the first MSG may
> +	 * not be handled by M4 when multi-vdev is enabled.
> +	 * To make sure that the message wound't be discarded when M4
> +	 * is running normally or in the suspend mode. Only use
> +	 * the timeout mechanism by the first notify when the vdev is
> +	 * registered.
> +	 * ~14ms is required by M4 ready to process the MU message from
> +	 * cold boot. Set the wait time 20ms here.
> +	 */
> +	if (unlikely(rpdev->first_notify > 0)) {
> +		rpdev->first_notify--;
> +		rpdev->cl.tx_tout = 20;
> +		ret = mbox_send_message(rpdev->tx_ch, &mu_rpmsg);
> +		if (ret < 0)
> +			return false;
> +	} else {
> +		rpdev->cl.tx_tout = 0;
> +		ret = mbox_send_message(rpdev->tx_ch, &mu_rpmsg);
> +		if (ret < 0)
> +			return false;
> +	}
> +	spin_unlock_irqrestore(&rpdev->mu_lock, flags);
> +
> +	return true;
> +}
> +
> +static struct virtqueue *rp_find_vq(struct virtio_device *vdev,
> +				    unsigned int index,
> +				    void (*callback)(struct virtqueue *vq),
> +				    const char *name,
> +				    bool ctx)
> +{
> +	struct imx_virdev *virdev = to_imx_virdev(vdev);
> +	struct imx_rpmsg_vproc *rpdev = virdev->rpdev;
> +	struct platform_device *pdev = rpdev->pdev;
> +	struct device *dev = &pdev->dev;
> +	struct imx_rpmsg_vq_info *rpvq;
> +	struct virtqueue *vq;
> +	int err;
> +
> +	rpvq = kmalloc(sizeof(*rpvq), GFP_KERNEL);
> +	if (!rpvq)
> +		return ERR_PTR(-ENOMEM);
> +
> +	/* ioremap'ing normal memory, so we cast away sparse's complaints */
> +	rpvq->addr = (__force void *) ioremap_nocache(virdev->vring[index],
> +							RPMSG_RING_SIZE);
> +	if (!rpvq->addr) {
> +		err = -ENOMEM;
> +		goto free_rpvq;
> +	}
> +
> +	memset_io(rpvq->addr, 0, RPMSG_RING_SIZE);
> +
> +	dev_dbg(dev, "vring%d: phys 0x%x, virt 0x%p\n",
> +			index, virdev->vring[index], rpvq->addr);
> +
> +	vq = vring_new_virtqueue(index, RPMSG_NUM_BUFS / 2, RPMSG_VRING_ALIGN,
> +			vdev, true, ctx,
> +			rpvq->addr,
> +			imx_rpmsg_notify, callback,
> +			name);
> +	if (!vq) {
> +		dev_err(dev, "vring_new_virtqueue failed\n");
> +		err = -ENOMEM;
> +		goto unmap_vring;
> +	}
> +
> +	virdev->vq[index] = vq;
> +	vq->priv = rpvq;
> +	/* system-wide unique id for this virtqueue */
> +	rpvq->vq_id = virdev->base_vq_id + index;
> +	rpvq->rpdev = rpdev;
> +
> +	return vq;
> +
> +unmap_vring:
> +	/* iounmap normal memory, so make sparse happy */
> +	iounmap((__force void __iomem *) rpvq->addr);
> +free_rpvq:
> +	kfree(rpvq);
> +	return ERR_PTR(err);
> +}
> +
> +static void imx_rpmsg_del_vqs(struct virtio_device *vdev)
> +{
> +	struct virtqueue *vq, *n;
> +
> +	list_for_each_entry_safe(vq, n, &vdev->vqs, list) {
> +		struct imx_rpmsg_vq_info *rpvq = vq->priv;
> +
> +		iounmap(rpvq->addr);
> +		vring_del_virtqueue(vq);
> +		kfree(rpvq);
> +	}
> +}
> +
> +static int imx_rpmsg_find_vqs(struct virtio_device *vdev, unsigned int nvqs,
> +		       struct virtqueue *vqs[],
> +		       vq_callback_t *callbacks[],
> +		       const char * const names[],
> +		       const bool *ctx,
> +		       struct irq_affinity *desc)
> +{
> +	struct imx_virdev *virdev = to_imx_virdev(vdev);
> +	int i, err;
> +
> +	/* we maintain two virtqueues per remote processor (for RX and TX) */
> +	if (nvqs != 2)
> +		return -EINVAL;
> +
> +	for (i = 0; i < nvqs; ++i) {
> +		vqs[i] = rp_find_vq(vdev, i, callbacks[i], names[i],
> +				ctx ? ctx[i] : false);
> +		if (IS_ERR(vqs[i])) {
> +			err = PTR_ERR(vqs[i]);
> +			goto error;
> +		}
> +	}
> +
> +	virdev->num_of_vqs = nvqs;
> +	return 0;
> +
> +error:
> +	imx_rpmsg_del_vqs(vdev);
> +	return err;
> +}
> +
> +static void imx_rpmsg_reset(struct virtio_device *vdev)
> +{
> +	dev_dbg(&vdev->dev, "reset !\n");
> +}
> +
> +static u8 imx_rpmsg_get_status(struct virtio_device *vdev)
> +{
> +	return 0;
> +}
> +
> +static void imx_rpmsg_set_status(struct virtio_device *vdev, u8 status)
> +{
> +	dev_dbg(&vdev->dev, "%s new status: %d\n", __func__, status);
> +}
> +
> +static void imx_rpmsg_vproc_release(struct device *dev)
> +{
> +	/* this handler is provided so driver core doesn't yell at us */
> +}
> +
> +static struct virtio_config_ops imx_rpmsg_config_ops = {
> +	.get_features	= imx_rpmsg_get_features,
> +	.finalize_features = imx_rpmsg_finalize_features,
> +	.find_vqs	= imx_rpmsg_find_vqs,
> +	.del_vqs	= imx_rpmsg_del_vqs,
> +	.reset		= imx_rpmsg_reset,
> +	.set_status	= imx_rpmsg_set_status,
> +	.get_status	= imx_rpmsg_get_status,
> +};
> +
> +static const struct of_device_id imx_rpmsg_dt_ids[] = {
> +	{ .compatible = "fsl,imx8mq-rpmsg", .data = (void *)IMX8MQ, },
> +	{ .compatible = "fsl,imx8qxp-rpmsg", .data = (void *)IMX8QXP, },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, imx_rpmsg_dt_ids);
> +
> +static int set_vring_phy_buf(struct platform_device *pdev,
> +		       struct imx_rpmsg_vproc *rpdev, int vdev_nums)
> +{
> +	struct resource *res;
> +	resource_size_t size;
> +	unsigned int start, end;
> +	int i, ret = 0;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	if (res) {
> +		size = resource_size(res);
> +		start = res->start;
> +		end = res->start + size;
> +		for (i = 0; i < vdev_nums; i++) {
> +			rpdev->ivdev[i] = kzalloc(sizeof(struct imx_virdev),
> +							GFP_KERNEL);
> +			if (!rpdev->ivdev[i])
> +				return -ENOMEM;
> +
> +			rpdev->ivdev[i]->vring[0] = start;
> +			rpdev->ivdev[i]->vring[1] = start + 0x8000;
> +			start += 0x10000;
> +			if (start > end) {
> +				dev_err(&pdev->dev,
> +					"Too small memory size %x!\n",
> +					(u32)size);
> +				ret = -EINVAL;
> +				break;
> +			}
> +		}
> +	} else {
> +		return -ENOMEM;
> +	}
> +
> +	return ret;
> +}
> +
> +static void rpmsg_work_handler(struct work_struct *work)
> +{
> +	u32 message;
> +	unsigned long flags;
> +	struct imx_virdev *virdev;
> +	struct delayed_work *dwork = to_delayed_work(work);
> +	struct imx_rpmsg_vproc *rpdev = container_of(dwork,
> +			struct imx_rpmsg_vproc, rpmsg_work);
> +	struct circ_buf *cb = &rpdev->rx_buffer;
> +	struct platform_device *pdev = rpdev->pdev;
> +	struct device *dev = &pdev->dev;
> +
> +	spin_lock_irqsave(&rpdev->mu_lock, flags);
> +	/* handle all incoming mu message */
> +	while (CIRC_CNT(cb->head, cb->tail, PAGE_SIZE)) {
> +		spin_unlock_irqrestore(&rpdev->mu_lock, flags);
> +		message = (u32) cb->buf[cb->tail];
> +		virdev = rpdev->ivdev[(message >> 16) / 2];
> +
> +		dev_dbg(dev, "%s msg: 0x%x\n", __func__, message);
> +		message = message >> 16;
> +		message -= virdev->base_vq_id;
> +
> +		/*
> +		 * Currently both PENDING_MSG and explicit-virtqueue-index
> +		 * messaging are supported.
> +		 * Whatever approach is taken, at this point message contains
> +		 * the index of the vring which was just triggered.
> +		 */
> +		if (message  < virdev->num_of_vqs)
> +			vring_interrupt(message, virdev->vq[message]);
> +		spin_lock_irqsave(&rpdev->mu_lock, flags);
> +		cb->tail = CIRC_ADD(cb->tail, PAGE_SIZE, 4);
> +	}
> +	spin_unlock_irqrestore(&rpdev->mu_lock, flags);
> +}
> +
> +static int imx_rpmsg_partition_notify(struct notifier_block *nb,
> +				      unsigned long event, void *group)
> +{
> +	/* Reserved for the partition reset. */
> +	return 0;
> +}
> +
> +static void imx_rpmsg_rxdb_callback(struct mbox_client *c, void *msg)
> +{
> +	unsigned long flags;
> +	struct imx_rpmsg_vproc *rpdev = container_of(c,
> +			struct imx_rpmsg_vproc, cl);
> +
> +	spin_lock_irqsave(&rpdev->mu_lock, flags);
> +	rpdev->flags |= REMOTE_IS_READY;
> +	spin_unlock_irqrestore(&rpdev->mu_lock, flags);
> +}
> +
> +static int imx_rpmsg_rxdb_channel_init(struct imx_rpmsg_vproc *rpdev)
> +{
> +	struct platform_device *pdev = rpdev->pdev;
> +	struct device *dev = &pdev->dev;
> +	struct mbox_client *cl;
> +	int ret = 0;
> +
> +	cl = &rpdev->cl_rxdb;
> +	cl->dev = dev;
> +	cl->rx_callback = imx_rpmsg_rxdb_callback;
> +
> +	/*
> +	 * RX door bell is used to receive the ready signal from remote
> +	 * after the partition reset of A core.
> +	 */
> +	rpdev->rxdb_ch = mbox_request_channel_byname(cl, "rxdb");
> +	if (IS_ERR(rpdev->rxdb_ch)) {
> +		ret = PTR_ERR(rpdev->rxdb_ch);
> +		dev_err(cl->dev, "failed to request mbox chan rxdb, ret %d\n",
> +			ret);
> +		return ret;
> +	}
> +
> +	return ret;
> +}
> +
> +static void imx_rpmsg_rx_callback(struct mbox_client *c, void *msg)
> +{
> +	int buf_space;
> +	unsigned long flags;
> +	u32 *data = msg;
> +	struct imx_rpmsg_vproc *rpdev = container_of(c,
> +			struct imx_rpmsg_vproc, cl);
> +	struct circ_buf *cb = &rpdev->rx_buffer;
> +
> +	spin_lock_irqsave(&rpdev->mu_lock, flags);
> +	buf_space = CIRC_SPACE(cb->head, cb->tail, PAGE_SIZE);
> +	spin_unlock_irqrestore(&rpdev->mu_lock, flags);
> +	if (unlikely(!buf_space)) {
> +		dev_err(c->dev, "RPMSG RX overflow!\n");
> +		return;
> +	}
> +	spin_lock_irqsave(&rpdev->mu_lock, flags);
> +	cb->buf[cb->head] = *data;
> +	cb->head = CIRC_ADD(cb->head, PAGE_SIZE, 4);
> +	spin_unlock_irqrestore(&rpdev->mu_lock, flags);
> +
> +	schedule_delayed_work(&(rpdev->rpmsg_work), 0);
> +}
> +
> +static int imx_rpmsg_probe(struct platform_device *pdev)
> +{
> +	int j, ret = 0;
> +	char *buf;
> +	struct device *dev = &pdev->dev;
> +	struct device_node *np = pdev->dev.of_node;
> +	struct imx_rpmsg_vproc *rpdev;
> +	struct mbox_client *cl;
> +
> +	buf = devm_kzalloc(dev, PAGE_SIZE, GFP_KERNEL);
> +	if (!buf)
> +		return -ENOMEM;
> +
> +	rpdev = devm_kzalloc(dev, sizeof(*rpdev), GFP_KERNEL);
> +	if (!rpdev)
> +		return -ENOMEM;
> +
> +	rpdev->proc_nb.notifier_call = imx_rpmsg_partition_notify;
> +	rpdev->variant = (enum imx_rpmsg_variants)of_device_get_match_data(dev);
> +	rpdev->rx_buffer.buf = buf;
> +	rpdev->rx_buffer.head = 0;
> +	rpdev->rx_buffer.tail = 0;
> +
> +	cl = &rpdev->cl;
> +	cl->dev = dev;
> +	cl->tx_block = false;
> +	cl->tx_tout = 20;
> +	cl->knows_txdone = false;
> +	cl->rx_callback = imx_rpmsg_rx_callback;
> +
> +	rpdev->tx_ch = mbox_request_channel_byname(cl, "tx");
> +	if (IS_ERR(rpdev->tx_ch)) {
> +		ret = PTR_ERR(rpdev->tx_ch);
> +		goto err_chl;
> +	}
> +	rpdev->rx_ch = mbox_request_channel_byname(cl, "rx");
> +	if (IS_ERR(rpdev->rx_ch)) {
> +		ret = PTR_ERR(rpdev->rx_ch);
> +		goto err_chl;
> +	}
> +
> +	spin_lock_init(&rpdev->mu_lock);
> +	INIT_DELAYED_WORK(&(rpdev->rpmsg_work), rpmsg_work_handler);
> +	ret = of_property_read_u32(np, "vdev-nums", &rpdev->vdev_nums);
> +	if (ret)
> +		rpdev->vdev_nums = 1;
> +	if (rpdev->vdev_nums > MAX_VDEV_NUMS) {
> +		dev_err(dev, "vdev-nums exceed the max %d\n", MAX_VDEV_NUMS);
> +		ret = -EINVAL;
> +		goto err_chl;
> +	}
> +	rpdev->first_notify = rpdev->vdev_nums;
> +
> +	ret = set_vring_phy_buf(pdev, rpdev, rpdev->vdev_nums);
> +	if (ret) {
> +		dev_err(dev, "No vring buffer.\n");
> +		ret = -ENOMEM;
> +		goto err_chl;
> +	}
> +	if (of_reserved_mem_device_init(dev)) {
> +		dev_dbg(dev, "dev doesn't have specific DMA pool.\n");
> +		rpdev->flags &= (~SPECIFIC_DMA_POOL);
> +	} else {
> +		rpdev->flags |= SPECIFIC_DMA_POOL;
> +	}
> +
> +	for (j = 0; j < rpdev->vdev_nums; j++) {
> +		dev_dbg(dev, "%s rpdev vdev%d: vring0 0x%x, vring1 0x%x\n",
> +			 __func__, rpdev->vdev_nums,
> +			 rpdev->ivdev[j]->vring[0],
> +			 rpdev->ivdev[j]->vring[1]);
> +		rpdev->ivdev[j]->vdev.id.device = VIRTIO_ID_RPMSG;
> +		rpdev->ivdev[j]->vdev.config = &imx_rpmsg_config_ops;
> +		rpdev->pdev = pdev;
> +		rpdev->ivdev[j]->vdev.dev.parent = &pdev->dev;
> +		rpdev->ivdev[j]->vdev.dev.release = imx_rpmsg_vproc_release;
> +		rpdev->ivdev[j]->base_vq_id = j * 2;
> +		rpdev->ivdev[j]->rpdev = rpdev;
> +
> +		ret = register_virtio_device(&rpdev->ivdev[j]->vdev);
> +		if (ret) {
> +			dev_err(dev, "%s failed to register rpdev: %d\n",
> +					__func__, ret);
> +			goto err_out;
> +		}
> +	}
> +	/* Initialize the RX doorbell channel. */
> +	ret = imx_rpmsg_rxdb_channel_init(rpdev);
> +	if (ret)
> +		goto err_out;
> +
> +	return ret;
> +
> +err_out:
> +	if (rpdev->flags & SPECIFIC_DMA_POOL)
> +		of_reserved_mem_device_release(dev);
> +err_chl:
> +	if (!IS_ERR(rpdev->rxdb_ch))
> +		mbox_free_channel(rpdev->rxdb_ch);
> +	if (!IS_ERR(rpdev->tx_ch))
> +		mbox_free_channel(rpdev->tx_ch);
> +	if (!IS_ERR(rpdev->rx_ch))
> +		mbox_free_channel(rpdev->rx_ch);
> +	return ret;
> +}
> +
> +static struct platform_driver imx_rpmsg_driver = {
> +	.driver = {
> +		   .owner = THIS_MODULE,
> +		   .name = "imx-rpmsg",
> +		   .of_match_table = imx_rpmsg_dt_ids,
> +		   },
> +	.probe = imx_rpmsg_probe,
> +};
> +
> +static int __init imx_rpmsg_init(void)
> +{
> +	int ret;
> +
> +	ret = platform_driver_register(&imx_rpmsg_driver);
> +	if (ret)
> +		pr_err("Unable to initialize rpmsg driver\n");
> +	else
> +		pr_info("imx rpmsg driver is registered.\n");
> +
> +	return ret;
> +}
> +
> +MODULE_DESCRIPTION("iMX remote processor messaging virtio device");
> +MODULE_LICENSE("GPL v2");
> +arch_initcall(imx_rpmsg_init);
> diff --git a/drivers/rpmsg/imx_rpmsg_pingpong.c b/drivers/rpmsg/imx_rpmsg_pingpong.c
> new file mode 100644
> index 0000000..b028914
> --- /dev/null
> +++ b/drivers/rpmsg/imx_rpmsg_pingpong.c
> @@ -0,0 +1,100 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019 NXP
> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/virtio.h>
> +#include <linux/rpmsg.h>
> +
> +#define MSG		"hello world!"
> +static unsigned int rpmsg_pingpong;
> +
> +static int rpmsg_pingpong_cb(struct rpmsg_device *rpdev, void *data, int len,
> +						void *priv, u32 src)
> +{
> +	int err;
> +
> +	/* reply */
> +	rpmsg_pingpong = *(unsigned int *)data;
> +	pr_info("get %d (src: 0x%x)\n", rpmsg_pingpong, src);
> +
> +	/* pingpongs should not live forever */
> +	if (rpmsg_pingpong > 100) {
> +		dev_info(&rpdev->dev, "goodbye!\n");
> +		return 0;
> +	}
> +	rpmsg_pingpong++;
> +	err = rpmsg_sendto(rpdev->ept, (void *)(&rpmsg_pingpong), 4, src);
> +
> +	if (err)
> +		dev_err(&rpdev->dev, "rpmsg_send failed: %d\n", err);
> +
> +	return err;
> +}
> +
> +static int rpmsg_pingpong_probe(struct rpmsg_device *rpdev)
> +{
> +	int err;
> +
> +	dev_info(&rpdev->dev, "new channel: 0x%x -> 0x%x!\n",
> +			rpdev->src, rpdev->dst);
> +
> +	/*
> +	 * send a message to our remote processor, and tell remote
> +	 * processor about this channel
> +	 */
> +	err = rpmsg_send(rpdev->ept, MSG, strlen(MSG));
> +	if (err) {
> +		dev_err(&rpdev->dev, "rpmsg_send failed: %d\n", err);
> +		return err;
> +	}
> +
> +	rpmsg_pingpong = 0;
> +	err = rpmsg_sendto(rpdev->ept, (void *)(&rpmsg_pingpong),
> +			   4, rpdev->dst);
> +	if (err) {
> +		dev_err(&rpdev->dev, "rpmsg_send failed: %d\n", err);
> +		return err;
> +	}
> +
> +	return 0;
> +}
> +
> +static void rpmsg_pingpong_remove(struct rpmsg_device *rpdev)
> +{
> +	dev_info(&rpdev->dev, "rpmsg pingpong driver is removed\n");
> +}
> +
> +static struct rpmsg_device_id rpmsg_driver_pingpong_id_table[] = {
> +	{ .name	= "rpmsg-openamp-demo-channel" },
> +	{ .name	= "rpmsg-openamp-demo-channel-1" },
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(rpmsg, rpmsg_driver_pingpong_id_table);
> +
> +static struct rpmsg_driver rpmsg_pingpong_driver = {
> +	.drv.name	= KBUILD_MODNAME,
> +	.drv.owner	= THIS_MODULE,
> +	.id_table	= rpmsg_driver_pingpong_id_table,
> +	.probe		= rpmsg_pingpong_probe,
> +	.callback	= rpmsg_pingpong_cb,
> +	.remove		= rpmsg_pingpong_remove,
> +};
> +
> +static int __init init(void)
> +{
> +	return register_rpmsg_driver(&rpmsg_pingpong_driver);
> +}
> +
> +static void __exit fini(void)
> +{
> +	unregister_rpmsg_driver(&rpmsg_pingpong_driver);
> +}
> +module_init(init);
> +module_exit(fini);
> +
> +MODULE_AUTHOR("Freescale Semiconductor, Inc.");
> +MODULE_DESCRIPTION("iMX virtio remote processor messaging pingpong driver");
> +MODULE_LICENSE("GPL v2");
> diff --git a/include/linux/imx_rpmsg.h b/include/linux/imx_rpmsg.h
> new file mode 100644
> index 0000000..e0d5e97
> --- /dev/null
> +++ b/include/linux/imx_rpmsg.h
> @@ -0,0 +1,43 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2019 NXP.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */
> +
> +/*
> + * @file linux/imx_rpmsg.h
> + *
> + * @brief Global header file for iMX RPMSG
> + *
> + * @ingroup RPMSG
> + */
> +#ifndef __LINUX_IMX_RPMSG_H__
> +#define __LINUX_IMX_RPMSG_H__
> +
> +/* Category define */
> +#define IMX_RMPSG_LIFECYCLE	1
> +#define IMX_RPMSG_PMIC		2
> +#define IMX_RPMSG_AUDIO		3
> +#define IMX_RPMSG_KEY		4
> +#define IMX_RPMSG_GPIO		5
> +#define IMX_RPMSG_RTC		6
> +#define IMX_RPMSG_SENSOR	7
> +/* rpmsg version */
> +#define IMX_RMPSG_MAJOR		1
> +#define IMX_RMPSG_MINOR		0
> +
> +#define CIRC_ADD(idx, size, value)	(((idx) + (value)) & ((size) - 1))
> +
> +struct imx_rpmsg_head {
> +	u8 cate;
> +	u8 major;
> +	u8 minor;
> +	u8 type;
> +	u8 cmd;
> +	u8 reserved[5];
> +} __packed;
> +
> +#endif /* __LINUX_IMX_RPMSG_H__ */
> 

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
