Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76209107285
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 13:54:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bcsrbjSpZy2vq5yfm89EOlrC8M/3cE3Sc+MBZbVh86g=; b=PEhwPYOBd82LOG
	Nt0vXarD5KJ5LY8yyP7tGe4vSH6pYFDdO/D/hc9i8prRygr4TNcqELdAK6X94EQOef9BdAsMJ+SUB
	7qB2S8PXAfc5JgOlw4eLgsJvaltHbh+lteaBPYPR/KuoYrJpguWp6GuPueoPyUKVIHpuTsBvWYJuQ
	Y1DWcuHrsINrbFoDJ1QgP+xmMWh/ndk6IuScf0DQrlt4Lw+uOletQxPggXvSk9IIlKof6wIKJan9g
	ZqnKeTHd8P6GNZy7+M1VDYauqWTn2JCHi9ELwlE5AmaPwAFmv0kdUsSC5EBTdb2MkrCklQXKZCYlZ
	4DcjZH3EfLZ0n3Tzfolw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY8S3-00010D-38; Fri, 22 Nov 2019 12:54:19 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY8Rv-0000zp-5I
 for linux-arm-kernel@bombadil.infradead.org; Fri, 22 Nov 2019 12:54:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o8t4lg6G38qB0SQwvVJ9hoeWVdNOZDcB44Ut03IMc4g=; b=bMvs6OyIxONOcuKPu03F5/XHt7
 x/5R8LWHW7b0F6TZSmNJnlDqWWW7H+6DmKqt3sUmPK9E4iK+YkuVjtg0asYKR60X8O7TtRXRa+bbL
 LvGxV33p4XIpYFZNDg2AHyzicOVMkqGxpEjUqjA7jXCq9d/yX4hMzqnl19+JMfLp46XBnIsJXA8bP
 stKfHtuMpg1b5BhsYdt2Y99pxNedxoisKW5ofRwn8Y2WXJbdPh+R53BZ9q8MW6uN3GGbinxLPrCMn
 TkS/8W0h1oq+K2dD6EREmbbAO/igrjNVMUm/fUgzHsazVS/iza+HgK67YEK9nD4uqF/U+o5Q3//Ez
 ZGFQlf4g==;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY8SQ-0003Hu-1B
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 12:54:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574427214;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o8t4lg6G38qB0SQwvVJ9hoeWVdNOZDcB44Ut03IMc4g=;
 b=KDUfqgLLYhtb9bVaP5aoz3yiIj9TBsbWJrTJ6fbUFxGeg9ItcQwJUvX7mFmm1RyT8fzoFd
 e8sIvV7xLESG/QZjPS609Vc3qRmBYAZj3hy6kGrQ3ViJsTh/dzl4uA8okHR26IczrJ7mBn
 pf75M5reuhSsowtYzlEQSWuZL58umKc=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-397-5w9gqi66MNCmniwfndm_mg-1; Fri, 22 Nov 2019 07:53:29 -0500
Received: by mail-qt1-f200.google.com with SMTP id h39so4568432qth.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 04:53:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9xHNF9/YgjAGk4kIlAAsdUxHxJcJJsv6exr71iNr4V4=;
 b=ulwJPIMAlp7JOLf+JvmRi3UztglyFGZjbqK1VDgyJYnCqV/dvSc5DqJjQi/orF3sTs
 8Hg2mnUWh84pSPgELc11YUoXjE3c7YwkcdJCrU6wjVgRE23KuY1k1ve9+4JD5JAHis5Z
 IZIHCGyrjMLNuBs9xwnWxLv5OsrnQQVrlLYsRYWUdn6SHz1ieglaW6/PlSo5PqUV1xNl
 6hLwT7x2mAo6kBk+vtz+xsWuEkMiwtMPJsK9T91OjFPre76mxbyzqBvPcFXghVWQPwMy
 DCFMUYKdn1N/eF60cEPBRNHTmY0EJ4ITs7m2jxE/5K5ii0Lf0/TMcxdl9oy7/LyxtS/o
 2qaQ==
X-Gm-Message-State: APjAAAWF2obvGMhH956lY1I+HFmwgmZPJBH3hy16/Zcf0eYJR6TCIXVk
 oW93eb/iPfuKpw7JtDtOfhv9bcI8/X+YAJFYfrZvTXaoLYg3BzTnDEiQzVrcVYbqVBY+bnyAHXN
 z54n7qVtYugw+hzstyGFJ67oXK/AX035U0pk=
X-Received: by 2002:a37:f905:: with SMTP id l5mr719985qkj.90.1574427209067;
 Fri, 22 Nov 2019 04:53:29 -0800 (PST)
X-Google-Smtp-Source: APXvYqwI8O5AZ60spvd8sFXJP6S0266NtbeUWxXughaKMn9jxZ+nG3v0r7IIJE5S7gM+4nnU3Dugaw==
X-Received: by 2002:a37:f905:: with SMTP id l5mr719954qkj.90.1574427208569;
 Fri, 22 Nov 2019 04:53:28 -0800 (PST)
Received: from redhat.com (bzq-79-176-6-42.red.bezeqint.net. [79.176.6.42])
 by smtp.gmail.com with ESMTPSA id o124sm717630qkf.66.2019.11.22.04.53.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 04:53:27 -0800 (PST)
Date: Fri, 22 Nov 2019 07:53:19 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [RFC 13/13] iommu/virtio: Add topology description to
Message-ID: <20191122072753-mutt-send-email-mst@kernel.org>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
 <20191122105000.800410-14-jean-philippe@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20191122105000.800410-14-jean-philippe@linaro.org>
X-MC-Unique: 5w9gqi66MNCmniwfndm_mg-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_125442_317942_8732B0DD 
X-CRM114-Status: GOOD (  33.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: virtio-dev@lists.oasis-open.org, kevin.tian@intel.com,
 lorenzo.pieralisi@arm.com, gregkh@linuxfoundation.org,
 linux-pci@vger.kernel.org, joro@8bytes.org, sudeep.holla@arm.com,
 rjw@rjwysocki.net, virtualization@lists.linux-foundation.org,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 sebastien.boeuf@intel.com, jacob.jun.pan@intel.com, eric.auger@redhat.com,
 guohanjun@huawei.com, bhelgaas@google.com, jasowang@redhat.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 11:50:00AM +0100, Jean-Philippe Brucker wrote:
> Some hypervisors don't implement either device-tree or ACPI, but still
> need a method to describe the IOMMU topology. Read the virtio-iommu
> config early and parse the topology description. Hook into the
> dma_setup() callbacks to initialize the IOMMU before probing endpoints.
> 
> If the virtio-iommu uses the virtio-pci transport, this will only work
> if the PCI root complex is the first device probed. We don't currently
> support virtio-mmio.
> 
> Initially I tried to generate a fake IORT table and feed it to the IORT
> driver, in order to avoid rewriting the whole DMA code, but it wouldn't
> work with platform endpoints, which are references to items in the ACPI
> table on IORT.
> 
> Signed-off-by: Eric Auger <eric.auger@redhat.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

Overall this looks good to me. The only point is that
I think the way the interface is designed makes writing
the driver a bit too difficult. Idea: if instead we just
have a length field and then an array of records
(preferably unions so we don't need to work hard),
we can shadow that into memory, then iterate over
the unions.

Maybe add a uniform record length + number of records field.
Then just skip types you do not know how to handle.
This will also help make sure it's within bounds.

What do you think?


You will need to do something to address the TODO I think.

> ---
> Note that we only call virt_dma_configure() if the host didn't provide
> either DT or ACPI method. If you want to test this with QEMU, you'll
> need to manually disable the acpi_dma_configure() part in pci-driver.c
> ---
>  drivers/base/platform.c               |   3 +
>  drivers/iommu/Kconfig                 |   9 +
>  drivers/iommu/Makefile                |   1 +
>  drivers/iommu/virtio-iommu-topology.c | 410 ++++++++++++++++++++++++++
>  drivers/iommu/virtio-iommu.c          |   3 +
>  drivers/pci/pci-driver.c              |   3 +
>  include/linux/virtio_iommu.h          |  18 ++
>  include/uapi/linux/virtio_iommu.h     |  26 ++
>  8 files changed, 473 insertions(+)
>  create mode 100644 drivers/iommu/virtio-iommu-topology.c
>  create mode 100644 include/linux/virtio_iommu.h
> 
> diff --git a/drivers/base/platform.c b/drivers/base/platform.c
> index b230beb6ccb4..70b12c8ef2fb 100644
> --- a/drivers/base/platform.c
> +++ b/drivers/base/platform.c
> @@ -27,6 +27,7 @@
>  #include <linux/limits.h>
>  #include <linux/property.h>
>  #include <linux/kmemleak.h>
> +#include <linux/virtio_iommu.h>
>  
>  #include "base.h"
>  #include "power/power.h"
> @@ -1257,6 +1258,8 @@ int platform_dma_configure(struct device *dev)
>  	} else if (has_acpi_companion(dev)) {
>  		attr = acpi_get_dma_attr(to_acpi_device_node(dev->fwnode));
>  		ret = acpi_dma_configure(dev, attr);
> +	} else if (IS_ENABLED(CONFIG_VIRTIO_IOMMU_TOPOLOGY)) {
> +		ret = virt_dma_configure(dev);
>  	}
>  
>  	return ret;
> diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
> index e6eb4f238d1a..d02c0d36019d 100644
> --- a/drivers/iommu/Kconfig
> +++ b/drivers/iommu/Kconfig
> @@ -486,4 +486,13 @@ config VIRTIO_IOMMU
>  
>  	  Say Y here if you intend to run this kernel as a guest.
>  
> +config VIRTIO_IOMMU_TOPOLOGY
> +	bool "Topology properties for the virtio-iommu"
> +	depends on VIRTIO_IOMMU
> +	help
> +	  Enable early probing of the virtio-iommu device, to detect the
> +	  topology description.
> +
> +	  Say Y here if you intend to run this kernel as a guest.
> +
>  endif # IOMMU_SUPPORT
> diff --git a/drivers/iommu/Makefile b/drivers/iommu/Makefile
> index 4f405f926e73..6b51c4186ebc 100644
> --- a/drivers/iommu/Makefile
> +++ b/drivers/iommu/Makefile
> @@ -35,3 +35,4 @@ obj-$(CONFIG_S390_IOMMU) += s390-iommu.o
>  obj-$(CONFIG_QCOM_IOMMU) += qcom_iommu.o
>  obj-$(CONFIG_HYPERV_IOMMU) += hyperv-iommu.o
>  obj-$(CONFIG_VIRTIO_IOMMU) += virtio-iommu.o
> +obj-$(CONFIG_VIRTIO_IOMMU_TOPOLOGY) += virtio-iommu-topology.o
> diff --git a/drivers/iommu/virtio-iommu-topology.c b/drivers/iommu/virtio-iommu-topology.c
> new file mode 100644
> index 000000000000..ec22510ace3d
> --- /dev/null
> +++ b/drivers/iommu/virtio-iommu-topology.c
> @@ -0,0 +1,410 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include <linux/acpi.h>
> +#include <linux/acpi_iort.h>
> +#include <linux/dma-iommu.h>
> +#include <linux/iommu.h>
> +#include <linux/list.h>
> +#include <linux/pci.h>
> +#include <linux/printk.h>
> +#include <linux/virtio_config.h>
> +#include <linux/virtio_iommu.h>
> +#include <linux/virtio_pci.h>
> +#include <uapi/linux/virtio_iommu.h>
> +
> +struct viommu_cap_config {
> +	u8 pos; /* PCI capability position */
> +	u8 bar;
> +	u32 length; /* structure size */
> +	u32 offset; /* structure offset within the bar */
> +};
> +
> +struct viommu_spec {
> +	struct device		*dev; /* transport device */
> +	struct fwnode_handle	*fwnode;
> +	struct iommu_ops	*ops;
> +	struct list_head	topology;
> +	struct list_head	list;
> +};
> +
> +struct viommu_topology {
> +	union {
> +		struct virtio_iommu_topo_head head;
> +		struct virtio_iommu_topo_pci_range pci;
> +		struct virtio_iommu_topo_endpoint ep;
> +	};
> +	/* Index into viommu_spec->topology */
> +	struct list_head list;
> +};
> +
> +static LIST_HEAD(viommus);
> +static DEFINE_MUTEX(viommus_lock);
> +
> +#define VPCI_FIELD(field) offsetof(struct virtio_pci_cap, field)
> +
> +static inline int viommu_find_capability(struct pci_dev *dev, u8 cfg_type,
> +					 struct viommu_cap_config *cap)
> +{
> +	int pos;
> +	u8 bar;
> +
> +	for (pos = pci_find_capability(dev, PCI_CAP_ID_VNDR);
> +	     pos > 0;
> +	     pos = pci_find_next_capability(dev, pos, PCI_CAP_ID_VNDR)) {
> +		u8 type;
> +
> +		pci_read_config_byte(dev, pos + VPCI_FIELD(cfg_type), &type);
> +		if (type != cfg_type)
> +			continue;
> +
> +		pci_read_config_byte(dev, pos + VPCI_FIELD(bar), &bar);
> +
> +		/* Ignore structures with reserved BAR values */
> +		if (type != VIRTIO_PCI_CAP_PCI_CFG && bar > 0x5)
> +			continue;
> +
> +		cap->bar = bar;
> +		cap->pos = pos;
> +		pci_read_config_dword(dev, pos + VPCI_FIELD(length),
> +				      &cap->length);
> +		pci_read_config_dword(dev, pos + VPCI_FIELD(offset),
> +				      &cap->offset);
> +
> +		return pos;
> +	}
> +	return 0;
> +}
> +
> +/*
> + * Setup the special virtio PCI capability to read one of the config registers
> + */
> +static int viommu_switch_pci_cfg(struct pci_dev *dev, int cfg,
> +				 struct viommu_cap_config *cap, u32 length,
> +				 u32 offset)
> +{
> +	offset += cap->offset;
> +
> +	if (offset + length > cap->offset + cap->length) {
> +		dev_warn(&dev->dev,
> +			 "read of %d bytes at offset 0x%x overflows cap of size %d\n",
> +			 length, offset, cap->length);
> +		return -EOVERFLOW;
> +	}
> +
> +	pci_write_config_byte(dev, cfg + VPCI_FIELD(bar), cap->bar);
> +	pci_write_config_dword(dev, cfg + VPCI_FIELD(length), length);
> +	pci_write_config_dword(dev, cfg + VPCI_FIELD(offset), offset);
> +	return 0;
> +}
> +
> +static u32 viommu_cread(struct pci_dev *dev, int cfg,
> +			struct viommu_cap_config *cap, u32 length, u32 offset)
> +{
> +	u8 val8;
> +	u16 val16;
> +	u32 val32;
> +	int out = cfg + sizeof(struct virtio_pci_cap);
> +
> +	if (viommu_switch_pci_cfg(dev, cfg, cap, length, offset))
> +		return 0;
> +
> +	switch (length) {
> +	case 1:
> +		pci_read_config_byte(dev, out, &val8);
> +		return val8;
> +	case 2:
> +		pci_read_config_word(dev, out, &val16);
> +		return val16;
> +	case 4:
> +		pci_read_config_dword(dev, out, &val32);
> +		return val32;
> +	default:
> +		WARN_ON(1);
> +		return 0;
> +	}
> +}
> +
> +static void viommu_cwrite(struct pci_dev *dev, int cfg,
> +			  struct viommu_cap_config *cap, u32 length, u32 offset,
> +			  u32 val)

A single user with 4 byte parameter. Just open-code?

> +{
> +	int out = cfg + sizeof(struct virtio_pci_cap);
> +
> +	if (viommu_switch_pci_cfg(dev, cfg, cap, length, offset))
> +		return;
> +
> +	switch (length) {
> +	case 1:
> +		pci_write_config_byte(dev, out, (u8)val);
> +		break;
> +	case 2:
> +		pci_write_config_word(dev, out, (u16)val);
> +		break;
> +	case 4:
> +		pci_write_config_dword(dev, out, val);
> +		break;
> +	default:
> +		WARN_ON(1);
> +	}
> +}
> +
> +static int viommu_add_topology(struct viommu_spec *viommu_spec,
> +			       struct viommu_topology *cap)
> +{
> +	struct viommu_topology *new = kmemdup(cap, sizeof(*cap), GFP_KERNEL);
> +
> +	if (!new)
> +		return -ENOMEM;
> +
> +	mutex_lock(&viommus_lock);
> +	list_add(&new->list, &viommu_spec->topology);
> +	mutex_unlock(&viommus_lock);
> +	return 0;
> +}
> +
> +static int viommu_parse_topology(struct pci_dev *dev, int pci_cfg,
> +				 struct viommu_cap_config *dev_cfg)
> +{
> +	u32 offset;
> +	struct viommu_topology cap;
> +	struct viommu_spec *viommu_spec;
> +	int iter = 0; /* Protects against config loop */
> +
> +	offset = viommu_cread(dev, pci_cfg, dev_cfg, 2,
> +			      offsetof(struct virtio_iommu_config,
> +				       topo_offset));
> +	if (!offset)
> +		return 0;
> +
> +	viommu_spec = kzalloc(sizeof(*viommu_spec), GFP_KERNEL);
> +	if (!viommu_spec)
> +		return -ENOMEM;
> +
> +	INIT_LIST_HEAD(&viommu_spec->topology);
> +	viommu_spec->dev = &dev->dev;
> +
> +	while (offset >= sizeof(struct virtio_iommu_config) && ++iter < 0x10000) {
> +		memset(&cap, 0, sizeof(cap));
> +
> +		cap.head.type = viommu_cread(dev, pci_cfg, dev_cfg, 2, offset);
> +		cap.head.next = viommu_cread(dev, pci_cfg, dev_cfg, 2, offset + 2);

All of this doesn't seem to be endian-clean. Try running sparse I think
it will complain.

> +
> +		switch (cap.head.type) {
> +		case VIRTIO_IOMMU_TOPO_PCI_RANGE:
> +			cap.pci.endpoint_start = viommu_cread(dev, pci_cfg,
> +							      dev_cfg, 2, offset
> +							      + 4);
> +			cap.pci.hierarchy = viommu_cread(dev, pci_cfg, dev_cfg,
> +							 2, offset + 8);
> +			cap.pci.requester_start = viommu_cread(dev, pci_cfg,
> +							       dev_cfg, 2,
> +							       offset + 10);
> +			cap.pci.requester_end = viommu_cread(dev, pci_cfg,
> +							     dev_cfg, 2, offset +
> +							     12);
> +			dev_info(&dev->dev,
> +				 "topology: adding PCI range 0x%x [0x%x:0x%x] -> 0x%x\n",
> +				 cap.pci.hierarchy, cap.pci.requester_start,
> +				 cap.pci.requester_end, cap.pci.endpoint_start);
> +			if (viommu_add_topology(viommu_spec, &cap))
> +				return -ENOMEM;
> +			break;
> +		case VIRTIO_IOMMU_TOPO_ENDPOINT:
> +			cap.ep.endpoint = viommu_cread(dev, pci_cfg, dev_cfg, 2,
> +						       offset + 4);
> +			cap.ep.address = viommu_cread(dev, pci_cfg, dev_cfg, 2,
> +						      offset + 8);
> +			dev_info(&dev->dev,
> +				 "topology: adding endpoint 0x%llx -> 0x%x\n",
> +				 cap.ep.address, cap.ep.endpoint);
> +			if (viommu_add_topology(viommu_spec, &cap))
> +				return -ENOMEM;
> +			break;
> +		default:
> +			dev_warn(&dev->dev, "Unknown topo structure 0x%x\n",
> +				 cap.head.type);
> +			break;
> +		}
> +
> +		offset = cap.head.next;
> +	}
> +
> +	/* TODO: handle device removal */
> +	mutex_lock(&viommus_lock);
> +	list_add(&viommu_spec->list, &viommus);
> +	mutex_unlock(&viommus_lock);
> +
> +	return 0;
> +}
> +
> +static void viommu_pci_parse_topology(struct pci_dev *dev)
> +{
> +	int pos;
> +	u32 features;
> +	struct viommu_cap_config common = {0};
> +	struct viommu_cap_config pci_cfg = {0};
> +	struct viommu_cap_config dev_cfg = {0};
> +
> +	pos = viommu_find_capability(dev, VIRTIO_PCI_CAP_COMMON_CFG, &common);
> +	if (!pos) {
> +		dev_warn(&dev->dev, "common capability not found\n");
> +		return;
> +	}
> +	pos = viommu_find_capability(dev, VIRTIO_PCI_CAP_DEVICE_CFG, &dev_cfg);
> +	if (!pos) {
> +		dev_warn(&dev->dev, "device config capability not found\n");
> +		return;
> +	}
> +	pos = viommu_find_capability(dev, VIRTIO_PCI_CAP_PCI_CFG, &pci_cfg);
> +	if (!pos) {
> +		dev_warn(&dev->dev, "PCI config capability not found\n");
> +		return;
> +	}
> +
> +	/* Find out if the device supports topology description */
> +	viommu_cwrite(dev, pos, &common, 4,
> +		      offsetof(struct virtio_pci_common_cfg,
> +			       device_feature_select),
> +		      0);
> +	features = viommu_cread(dev, pos, &common, 4,
> +				offsetof(struct virtio_pci_common_cfg,
> +					 device_feature));
> +	if (!(features & VIRTIO_IOMMU_F_TOPOLOGY)) {
> +		dev_dbg(&dev->dev, "device doesn't have topology description");
> +		return;
> +	}
> +
> +	viommu_parse_topology(dev, pos, &dev_cfg);
> +}
> +
> +DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_REDHAT_QUMRANET, 0x1014,
> +			viommu_pci_parse_topology);
> +
> +static const struct iommu_ops *virt_iommu_setup(struct device *dev)
> +{
> +	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
> +	const struct iommu_ops *viommu_ops = NULL;
> +	struct fwnode_handle *viommu_fwnode;
> +	struct viommu_spec *viommu_spec;
> +	struct viommu_topology *topo;
> +	struct pci_dev *pdev = NULL;
> +	struct device *viommu_dev;
> +	bool found = false;
> +	u16 devid;
> +	u32 eid;
> +	int ret;
> +
> +	/* Already translated? */
> +	if (fwspec && fwspec->ops)
> +		return fwspec->ops;
> +
> +	if (dev_is_pci(dev)) {
> +		pdev = to_pci_dev(dev);
> +		devid = pci_dev_id(pdev);
> +	} else {
> +		/* TODO: Do something with devres */
> +		return NULL;
> +	}
> +
> +	mutex_lock(&viommus_lock);
> +	list_for_each_entry(viommu_spec, &viommus, list) {
> +		list_for_each_entry(topo, &viommu_spec->topology, list) {
> +			if (pdev &&
> +			    topo->head.type == VIRTIO_IOMMU_TOPO_PCI_RANGE &&
> +			    pci_domain_nr(pdev->bus) == topo->pci.hierarchy &&
> +			    devid >= topo->pci.requester_start &&
> +			    devid <= topo->pci.requester_end) {
> +				found = true;
> +				eid = devid - topo->pci.requester_start +
> +					topo->pci.endpoint_start;
> +				break;
> +			} else if (!pdev) {
> +				/* TODO: compare address with devres */
> +			}
> +		}
> +		if (found) {
> +			viommu_ops = viommu_spec->ops;
> +			viommu_fwnode = viommu_spec->fwnode;
> +			viommu_dev = viommu_spec->dev;
> +			break;
> +		}
> +	}
> +	mutex_unlock(&viommus_lock);
> +	if (!found)
> +		return NULL;
> +
> +	/* We're not translating ourselves, that would be silly. */
> +	if (viommu_dev == dev)
> +		return NULL;
> +
> +	if (!viommu_ops)
> +		return ERR_PTR(-EPROBE_DEFER);
> +
> +	ret = iommu_fwspec_init(dev, viommu_fwnode, viommu_ops);
> +	if (ret)
> +		return ERR_PTR(ret);
> +
> +	iommu_fwspec_add_ids(dev, &eid, 1);
> +
> +	return viommu_ops;
> +}
> +
> +/**
> + * virt_dma_configure - Configure DMA of virtualized devices
> + * @dev: the endpoint
> + *
> + * An alternative to the ACPI and DT methods to setup DMA and the IOMMU ops of a
> + * virtual device.
> + *
> + * Return: -EPROBE_DEFER if the IOMMU hasn't been loaded yet, 0 otherwise
> + */
> +int virt_dma_configure(struct device *dev)
> +{
> +	const struct iommu_ops *iommu_ops;
> +
> +	/* TODO: do we need to mess about with the dma_mask as well? */
> +	WARN_ON(!dev->dma_mask);
> +
> +	iommu_ops = virt_iommu_setup(dev);
> +	if (IS_ERR(iommu_ops)) {
> +		if (PTR_ERR(iommu_ops) == -EPROBE_DEFER)
> +			return -EPROBE_DEFER;
> +		iommu_ops = NULL;
> +	}
> +
> +	/*
> +	 * If we have reason to believe the IOMMU driver missed the initial
> +	 * add_device callback for dev, replay it to get things in order.
> +	 */
> +	if (iommu_ops && dev->bus && !device_iommu_mapped(dev))
> +		iommu_probe_device(dev);
> +
> +#ifdef CONFIG_ARCH_HAS_SETUP_DMA_OPS
> +	/* Assume coherent, as well as full 64-bit addresses. */
> +	arch_setup_dma_ops(dev, 0, ~0UL, iommu_ops, true);
> +#else
> +	if (iommu_ops)
> +		iommu_setup_dma_ops(dev, 0, ~0UL);
> +#endif
> +	return 0;
> +}
> +
> +/**
> + * virt_set_iommu_ops - Set the IOMMU ops of a virtual IOMMU device
> + *
> + * Setup the iommu_ops associated to a viommu_spec, once the driver is loaded
> + * and the device probed.
> + */
> +void virt_set_iommu_ops(struct device *dev, struct iommu_ops *ops)
> +{
> +	struct viommu_spec *viommu_spec;
> +
> +	mutex_lock(&viommus_lock);
> +	list_for_each_entry(viommu_spec, &viommus, list) {
> +		if (viommu_spec->dev == dev) {
> +			viommu_spec->ops = ops;
> +			viommu_spec->fwnode = ops ? dev->fwnode : NULL;
> +			break;
> +		}
> +	}
> +	mutex_unlock(&viommus_lock);
> +}
> diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
> index 9847552faecc..f68ee9615b38 100644
> --- a/drivers/iommu/virtio-iommu.c
> +++ b/drivers/iommu/virtio-iommu.c
> @@ -22,6 +22,7 @@
>  #include <linux/virtio.h>
>  #include <linux/virtio_config.h>
>  #include <linux/virtio_ids.h>
> +#include <linux/virtio_iommu.h>
>  #include <linux/wait.h>
>  
>  #include <uapi/linux/virtio_iommu.h>
> @@ -1134,6 +1135,7 @@ static int viommu_probe(struct virtio_device *vdev)
>  	if (ret)
>  		goto err_sysfs_remove;
>  
> +	virt_set_iommu_ops(dev->parent, &viommu_ops);
>  	iommu_device_set_ops(&viommu->iommu, &viommu_ops);
>  	iommu_device_register(&viommu->iommu);
>  
> @@ -1182,6 +1184,7 @@ static void viommu_remove(struct virtio_device *vdev)
>  	struct viommu_dev *viommu = vdev->priv;
>  
>  	iommu_device_unregister(&viommu->iommu);
> +	virt_set_iommu_ops(vdev->dev.parent, NULL);
>  	viommu_clear_fwnode(viommu);
>  	iommu_device_sysfs_remove(&viommu->iommu);
>  
> diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
> index a8124e47bf6e..d9b5e902ad18 100644
> --- a/drivers/pci/pci-driver.c
> +++ b/drivers/pci/pci-driver.c
> @@ -17,6 +17,7 @@
>  #include <linux/suspend.h>
>  #include <linux/kexec.h>
>  #include <linux/of_device.h>
> +#include <linux/virtio_iommu.h>
>  #include <linux/acpi.h>
>  #include "pci.h"
>  #include "pcie/portdrv.h"
> @@ -1633,6 +1634,8 @@ static int pci_dma_configure(struct device *dev)
>  		struct acpi_device *adev = to_acpi_device_node(bridge->fwnode);
>  
>  		ret = acpi_dma_configure(dev, acpi_get_dma_attr(adev));
> +	} else if (IS_ENABLED(CONFIG_VIRTIO_IOMMU_TOPOLOGY)) {
> +		ret = virt_dma_configure(dev);
>  	}
>  
>  	pci_put_host_bridge_device(bridge);
> diff --git a/include/linux/virtio_iommu.h b/include/linux/virtio_iommu.h
> new file mode 100644
> index 000000000000..b700256f1063
> --- /dev/null
> +++ b/include/linux/virtio_iommu.h
> @@ -0,0 +1,18 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef VIRTIO_IOMMU_H_
> +#define VIRTIO_IOMMU_H_
> +
> +#if IS_ENABLED(CONFIG_VIRTIO_IOMMU_TOPOLOGY)
> +int virt_dma_configure(struct device *dev);
> +void virt_set_iommu_ops(struct device *dev, struct iommu_ops *ops);
> +#else /* !CONFIG_VIRTIO_IOMMU_TOPOLOGY */
> +static inline int virt_dma_configure(struct device *dev)
> +{
> +	return -ENODEV;
> +}
> +
> +static inline void virt_set_iommu_ops(struct device *dev, struct iommu_ops *ops)
> +{ }
> +#endif /* !CONFIG_VIRTIO_IOMMU_TOPOLOGY */
> +
> +#endif /* VIRTIO_IOMMU_H_ */
> diff --git a/include/uapi/linux/virtio_iommu.h b/include/uapi/linux/virtio_iommu.h
> index 237e36a280cb..d3b7cd2a076f 100644
> --- a/include/uapi/linux/virtio_iommu.h
> +++ b/include/uapi/linux/virtio_iommu.h
> @@ -16,6 +16,7 @@
>  #define VIRTIO_IOMMU_F_BYPASS			3
>  #define VIRTIO_IOMMU_F_PROBE			4
>  #define VIRTIO_IOMMU_F_MMIO			5
> +#define VIRTIO_IOMMU_F_TOPOLOGY			6
>  
>  struct virtio_iommu_range_64 {
>  	__le64					start;
> @@ -36,6 +37,31 @@ struct virtio_iommu_config {
>  	struct virtio_iommu_range_32		domain_range;
>  	/* Probe buffer size */
>  	__le32					probe_size;
> +	/* Offset to the beginning of the topology table */
> +	__le16					topo_offset;

why do we need an offset?

> +};
> +
> +struct virtio_iommu_topo_head {
> +	__le16					type;
> +	__le16					next;
> +};

So this linked list makes things harder than necessary imho.
It will be easier to just have a counter with # of records.
Then make all records the same size.
Then just read each record out into a buffer, and
handle it there.

> +
> +#define VIRTIO_IOMMU_TOPO_PCI_RANGE		0x0
> +#define VIRTIO_IOMMU_TOPO_ENDPOINT		0x1
> +
> +struct virtio_iommu_topo_pci_range {
> +	struct virtio_iommu_topo_head		head;
> +	__le32					endpoint_start;
> +	__le16					hierarchy;
> +	__le16					requester_start;
> +	__le16					requester_end;
> +	__le16					reserved;
> +};
> +
> +struct virtio_iommu_topo_endpoint {
> +	struct virtio_iommu_topo_head		head;
> +	__le32					endpoint;
> +	__le64					address;
>  };
>  
>  /* Request types */
> -- 
> 2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
