Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D0E196043
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 22:13:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MkcyiiWYXFbVbfbo+s0Ftru41mfXn7uIrTtq4c+lWW0=; b=CDm9RR9QxTEx0m
	8Xktg27zSVTChVrR6AvYIOBMkO7Is2IynLUeCBGs7PB/VILkDjXbA7d5T/SJKAzZGdL5WJ6f5szLl
	twHyWP1kkb7rVRtdxlfFTjeo9erpAYtgF4qaJPvZz+ydgtuFzuYaz4ndCNdfeWwTjcOVak3bkXoGN
	Y/l0t4iONjtDgSIDUk10DklBrcFbtNLWaaS0amUHooq193nt/48jlVob8b2GnEP/kjXSyuClmOjSp
	Vg9CukxPjyD+fi03Sb8/8A/PY7MHa8kDj4xSNksd3ALt/5vKmg9/cgJJNZT0yOIdad6irOrzR7Yzm
	HVkIutToo8iZHyNmT8oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHwHn-0000K8-S0; Fri, 27 Mar 2020 21:13:03 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHwHe-0000IC-7K
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 21:12:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585343567;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=D8lm5yoveVj8y3xXdJ7sx9MbLX7wtfmt5oe9dip1qmw=;
 b=P/gRuk2coWcQ6KQlucrt5P2VlSHVI7Fi1C0DoQhsvLl1Ro66e7Dmgp/5VJglTKk1f4LjPi
 fKM7aC0wJQ8OvoMgVqXdyt3a+LqWhKHQN3SBCbZ830lrQNikv5rNvhaomBfYowvnL8urpT
 SyPxttBOfRCKmg3sK6LkOYTaV4a3Wlo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-15-zg0r05QhNaW2u3QMIi52MQ-1; Fri, 27 Mar 2020 17:12:45 -0400
X-MC-Unique: zg0r05QhNaW2u3QMIi52MQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 706948017CC;
 Fri, 27 Mar 2020 21:12:43 +0000 (UTC)
Received: from w520.home (ovpn-112-162.phx2.redhat.com [10.3.112.162])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D90E560304;
 Fri, 27 Mar 2020 21:12:42 +0000 (UTC)
Date: Fri, 27 Mar 2020 15:12:42 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Diana Craciun <diana.craciun@oss.nxp.com>
Subject: Re: [PATCH 1/9] vfio/fsl-mc: Add VFIO framework skeleton for fsl-mc
 devices
Message-ID: <20200327151242.15afcc09@w520.home>
In-Reply-To: <20200323171911.27178-2-diana.craciun@oss.nxp.com>
References: <20200323171911.27178-1-diana.craciun@oss.nxp.com>
 <20200323171911.27178-2-diana.craciun@oss.nxp.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_141254_354902_EA5A3B9A 
X-CRM114-Status: GOOD (  33.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kvm@vger.kernel.org, linux-kernel@vger.kernel.org, laurentiu.tudor@nxp.com,
 Bharat Bhushan <Bharat.Bhushan@nxp.com>, linux-arm-kernel@lists.infradead.org,
 bharatb.yadav@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 23 Mar 2020 19:19:03 +0200
Diana Craciun <diana.craciun@oss.nxp.com> wrote:

> From: Bharat Bhushan <Bharat.Bhushan@nxp.com>
> 
> DPAA2 (Data Path Acceleration Architecture) consists in
> mechanisms for processing Ethernet packets, queue management,
> accelerators, etc.
> 
> The Management Complex (mc) is a hardware entity that manages the DPAA2
> hardware resources. It provides an object-based abstraction for software
> drivers to use the DPAA2 hardware. The MC mediates operations such as
> create, discover, destroy of DPAA2 objects.
> The MC provides memory-mapped I/O command interfaces (MC portals) which
> DPAA2 software drivers use to operate on DPAA2 objects.
> 
> A DPRC is a container object that holds other types of DPAA2 objects.
> Each object in the DPRC is a Linux device and bound to a driver.
> The MC-bus driver is a platform driver (different from PCI or platform
> bus). The DPRC driver does runtime management of a bus instance. It
> performs the initial scan of the DPRC and handles changes in the DPRC
> configuration (adding/removing objects).
> 
> All objects inside a container share the same hardware isolation
> context, meaning that only an entire DPRC can be assigned to
> a virtual machine.
> When a container is assigned to a virtual machine, all the objects
> within that container are assigned to that virtual machine.
> The DPRC container assigned to the virtual machine is not allowed
> to change contents (add/remove objects) by the guest. The restriction
> is set by the host and enforced by the mc hardware.
> 
> The DPAA2 objects can be directly assigned to the guest. However
> the MC portals (the memory mapped command interface to the MC) need
> to be emulated because there are commands that configure the
> interrupts and the isolation IDs which are virtual in the guest.
> 
> Example:
> echo vfio-fsl-mc > /sys/bus/fsl-mc/devices/dprc.2/driver_override
> echo dprc.2 > /sys/bus/fsl-mc/drivers/vfio-fsl-mc/bind
> 
> The dprc.2 is bound to the VFIO driver and all the objects within
> dprc.2 are going to be bound to the VFIO driver.
>
> This patch adds the infrastructure for VFIO support for fsl-mc
> devices. Subsequent patches will add support for binding and secure
> assigning these devices using VFIO.
> 
> More details about the DPAA2 objects can be found here:
> Documentation/networking/device_drivers/freescale/dpaa2/overview.rst
> 
> Signed-off-by: Bharat Bhushan <Bharat.Bhushan@nxp.com>
> Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
> ---
>  MAINTAINERS                               |   6 +
>  drivers/vfio/Kconfig                      |   1 +
>  drivers/vfio/Makefile                     |   1 +
>  drivers/vfio/fsl-mc/Kconfig               |   9 ++
>  drivers/vfio/fsl-mc/Makefile              |   2 +
>  drivers/vfio/fsl-mc/vfio_fsl_mc.c         | 161 ++++++++++++++++++++++
>  drivers/vfio/fsl-mc/vfio_fsl_mc_private.h |  14 ++
>  include/uapi/linux/vfio.h                 |   1 +
>  8 files changed, 195 insertions(+)
>  create mode 100644 drivers/vfio/fsl-mc/Kconfig
>  create mode 100644 drivers/vfio/fsl-mc/Makefile
>  create mode 100644 drivers/vfio/fsl-mc/vfio_fsl_mc.c
>  create mode 100644 drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index cc1d18cb5d18..fc547e6f5bf8 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -17566,6 +17566,12 @@ F:	drivers/vfio/
>  F:	include/linux/vfio.h
>  F:	include/uapi/linux/vfio.h
>  
> +VFIO FSL-MC DRIVER
> +M:	Diana Craciun <diana.craciun@oss.nxp.com>
> +L:	kvm@vger.kernel.org
> +S:	Maintained
> +F:	drivers/vfio/fsl-mc/
> +
>  VFIO MEDIATED DEVICE DRIVERS
>  M:	Kirti Wankhede <kwankhede@nvidia.com>
>  L:	kvm@vger.kernel.org
> diff --git a/drivers/vfio/Kconfig b/drivers/vfio/Kconfig
> index fd17db9b432f..5533df91b257 100644
> --- a/drivers/vfio/Kconfig
> +++ b/drivers/vfio/Kconfig
> @@ -47,4 +47,5 @@ menuconfig VFIO_NOIOMMU
>  source "drivers/vfio/pci/Kconfig"
>  source "drivers/vfio/platform/Kconfig"
>  source "drivers/vfio/mdev/Kconfig"
> +source "drivers/vfio/fsl-mc/Kconfig"
>  source "virt/lib/Kconfig"
> diff --git a/drivers/vfio/Makefile b/drivers/vfio/Makefile
> index de67c4725cce..fee73f3d9480 100644
> --- a/drivers/vfio/Makefile
> +++ b/drivers/vfio/Makefile
> @@ -9,3 +9,4 @@ obj-$(CONFIG_VFIO_SPAPR_EEH) += vfio_spapr_eeh.o
>  obj-$(CONFIG_VFIO_PCI) += pci/
>  obj-$(CONFIG_VFIO_PLATFORM) += platform/
>  obj-$(CONFIG_VFIO_MDEV) += mdev/
> +obj-$(CONFIG_VFIO_FSL_MC) += fsl-mc/
> diff --git a/drivers/vfio/fsl-mc/Kconfig b/drivers/vfio/fsl-mc/Kconfig
> new file mode 100644
> index 000000000000..b1a527d6b6f2
> --- /dev/null
> +++ b/drivers/vfio/fsl-mc/Kconfig
> @@ -0,0 +1,9 @@
> +config VFIO_FSL_MC
> +	tristate "VFIO support for QorIQ DPAA2 fsl-mc bus devices"
> +	depends on VFIO && FSL_MC_BUS && EVENTFD
> +	help
> +	  Driver to enable support for the VFIO QorIQ DPAA2 fsl-mc
> +	  (Management Complex) devices. This is required to passthrough
> +	  fsl-mc bus devices using the VFIO framework.
> +
> +	  If you don't know what to do here, say N.
> diff --git a/drivers/vfio/fsl-mc/Makefile b/drivers/vfio/fsl-mc/Makefile
> new file mode 100644
> index 000000000000..6f2b80645d5b
> --- /dev/null
> +++ b/drivers/vfio/fsl-mc/Makefile
> @@ -0,0 +1,2 @@
> +vfio-fsl_mc-y := vfio_fsl_mc.o
> +obj-$(CONFIG_VFIO_FSL_MC) += vfio_fsl_mc.o
> diff --git a/drivers/vfio/fsl-mc/vfio_fsl_mc.c b/drivers/vfio/fsl-mc/vfio_fsl_mc.c
> new file mode 100644
> index 000000000000..320fb09b5691
> --- /dev/null
> +++ b/drivers/vfio/fsl-mc/vfio_fsl_mc.c
> @@ -0,0 +1,161 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright 2013-2016 Freescale Semiconductor Inc.
> + * Copyright 2016-2017,2019-2020 NXP
> + */
> +
> +#include <linux/device.h>
> +#include <linux/iommu.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/slab.h>
> +#include <linux/types.h>
> +#include <linux/vfio.h>
> +#include <linux/fsl/mc.h>
> +
> +#include "vfio_fsl_mc_private.h"
> +
> +static int vfio_fsl_mc_open(void *device_data)
> +{
> +	if (!try_module_get(THIS_MODULE))
> +		return -ENODEV;
> +
> +	return 0;
> +}
> +
> +static void vfio_fsl_mc_release(void *device_data)
> +{
> +	module_put(THIS_MODULE);
> +}
> +
> +static long vfio_fsl_mc_ioctl(void *device_data, unsigned int cmd,
> +			      unsigned long arg)
> +{
> +	switch (cmd) {
> +	case VFIO_DEVICE_GET_INFO:
> +	{
> +		return -EINVAL;
> +	}
> +	case VFIO_DEVICE_GET_REGION_INFO:
> +	{
> +		return -EINVAL;
> +	}
> +	case VFIO_DEVICE_GET_IRQ_INFO:
> +	{
> +		return -EINVAL;
> +	}
> +	case VFIO_DEVICE_SET_IRQS:
> +	{
> +		return -EINVAL;
> +	}
> +	case VFIO_DEVICE_RESET:
> +	{
> +		return -EINVAL;
> +	}
> +	default:
> +		return -EINVAL;
> +	}

We generally use -ENOTTY for unimplemented ioctls.  We could probably
just implement the default case here and add each ioctl as it gets
implemented, but we'll reach the same conclusion, so either way.
  
> +}
> +
> +static ssize_t vfio_fsl_mc_read(void *device_data, char __user *buf,
> +				size_t count, loff_t *ppos)
> +{
> +	return -EINVAL;
> +}
> +
> +static ssize_t vfio_fsl_mc_write(void *device_data, const char __user *buf,
> +				 size_t count, loff_t *ppos)
> +{
> +	return -EINVAL;
> +}
> +
> +static int vfio_fsl_mc_mmap(void *device_data, struct vm_area_struct *vma)
> +{
> +	return -EINVAL;
> +}
> +
> +static const struct vfio_device_ops vfio_fsl_mc_ops = {
> +	.name		= "vfio-fsl-mc",
> +	.open		= vfio_fsl_mc_open,
> +	.release	= vfio_fsl_mc_release,
> +	.ioctl		= vfio_fsl_mc_ioctl,
> +	.read		= vfio_fsl_mc_read,
> +	.write		= vfio_fsl_mc_write,
> +	.mmap		= vfio_fsl_mc_mmap,
> +};
> +
> +static int vfio_fsl_mc_probe(struct fsl_mc_device *mc_dev)
> +{
> +	struct iommu_group *group;
> +	struct vfio_fsl_mc_device *vdev;
> +	struct device *dev = &mc_dev->dev;
> +	int ret;
> +
> +	group = vfio_iommu_group_get(dev);
> +	if (!group) {
> +		dev_err(dev, "%s: VFIO: No IOMMU group\n", __func__);
> +		return -EINVAL;
> +	}
> +
> +	vdev = devm_kzalloc(dev, sizeof(*vdev), GFP_KERNEL);
> +	if (!vdev) {
> +		vfio_iommu_group_put(group, dev);
> +		return -ENOMEM;
> +	}
> +
> +	vdev->mc_dev = mc_dev;
> +
> +	ret = vfio_add_group_dev(dev, &vfio_fsl_mc_ops, vdev);
> +	if (ret) {
> +		dev_err(dev, "%s: Failed to add to vfio group\n", __func__);
> +		vfio_iommu_group_put(group, dev);
> +		return ret;
> +	}
> +
> +	return ret;
> +}
> +
> +static int vfio_fsl_mc_remove(struct fsl_mc_device *mc_dev)
> +{
> +	struct vfio_fsl_mc_device *vdev;
> +	struct device *dev = &mc_dev->dev;
> +
> +	vdev = vfio_del_group_dev(dev);
> +	if (!vdev)
> +		return -EINVAL;
> +
> +	vfio_iommu_group_put(mc_dev->dev.iommu_group, dev);
> +	devm_kfree(dev, vdev);

Isn't the purpose of using managed resources that we don't need this
free?  AFAICT, devres_release_all() gets called after this, or on a
failed .probe() above.  It's inconsistent to preemptively free here but
not above.  Thanks,

Alex

> +
> +	return 0;
> +}
> +
> +/*
> + * vfio-fsl_mc is a meta-driver, so use driver_override interface to
> + * bind a fsl_mc container with this driver and match_id_table is NULL.
> + */
> +static struct fsl_mc_driver vfio_fsl_mc_driver = {
> +	.probe		= vfio_fsl_mc_probe,
> +	.remove		= vfio_fsl_mc_remove,
> +	.match_id_table = NULL,
> +	.driver	= {
> +		.name	= "vfio-fsl-mc",
> +		.owner	= THIS_MODULE,
> +	},
> +};
> +
> +static int __init vfio_fsl_mc_driver_init(void)
> +{
> +	return fsl_mc_driver_register(&vfio_fsl_mc_driver);
> +}
> +
> +static void __exit vfio_fsl_mc_driver_exit(void)
> +{
> +	fsl_mc_driver_unregister(&vfio_fsl_mc_driver);
> +}
> +
> +module_init(vfio_fsl_mc_driver_init);
> +module_exit(vfio_fsl_mc_driver_exit);
> +
> +MODULE_LICENSE("GPL v2");
> +MODULE_DESCRIPTION("VFIO for FSL-MC devices - User Level meta-driver");
> diff --git a/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h b/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
> new file mode 100644
> index 000000000000..b92858a003c0
> --- /dev/null
> +++ b/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause) */
> +/*
> + * Copyright 2013-2016 Freescale Semiconductor Inc.
> + * Copyright 2016,2019-2020 NXP
> + */
> +
> +#ifndef VFIO_FSL_MC_PRIVATE_H
> +#define VFIO_FSL_MC_PRIVATE_H
> +
> +struct vfio_fsl_mc_device {
> +	struct fsl_mc_device		*mc_dev;
> +};
> +
> +#endif /* VFIO_PCI_PRIVATE_H */
> diff --git a/include/uapi/linux/vfio.h b/include/uapi/linux/vfio.h
> index 9e843a147ead..6d0a7a071ef4 100644
> --- a/include/uapi/linux/vfio.h
> +++ b/include/uapi/linux/vfio.h
> @@ -201,6 +201,7 @@ struct vfio_device_info {
>  #define VFIO_DEVICE_FLAGS_AMBA  (1 << 3)	/* vfio-amba device */
>  #define VFIO_DEVICE_FLAGS_CCW	(1 << 4)	/* vfio-ccw device */
>  #define VFIO_DEVICE_FLAGS_AP	(1 << 5)	/* vfio-ap device */
> +#define VFIO_DEVICE_FLAGS_FSL_MC (1 << 6)	/* vfio-fsl-mc device */
>  	__u32	num_regions;	/* Max region index + 1 */
>  	__u32	num_irqs;	/* Max IRQ index + 1 */
>  };


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
