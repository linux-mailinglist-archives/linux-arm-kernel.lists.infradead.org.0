Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB415B5B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 09:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZb826ghoUq9yqtGilY/PD0oYCRV4Fn3XSTU5wQMfsU=; b=Dr+DcAy4Di3clW
	Y0LVlMcdW3SX7KYFXIbMGcO4jczFRf9T9DSRUXf1NUvU7BF0bCznqRnG/i1Epu5UyThdTDTwy/dMT
	H6FELeDaRAu2f24pXUeLgDaDMTzcFYewaD03lcRrtRj01y5d4QPUypiycPPPCSgn583HhqRfwPu6f
	FNn+qN9evuDKev0/Ro/JeylGu/T/E5/0ePhVGGceOlqLDGwOPM40VoioXH5sRAqLf646FCR5pVISn
	LfIc0AzsfskzodZDbcnYeSv8nOB46ZJbTXJWZiuTMs66pq/dtxphSE3GvTEINEeP1zUdOydiAxCov
	wjz3DOqgKydBhfrjiRbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhqhH-00072e-Q9; Mon, 01 Jul 2019 07:25:55 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhqh1-00070r-DI
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 07:25:41 +0000
Received: by mail-pg1-x541.google.com with SMTP id o13so1083886pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 00:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=31YZpUwGpcIWxXfunTU3YnlxSzOHcHbdXILjgQQWIsY=;
 b=Rk0sgGyrNiH2QhmgC33ugsXSCUWxLRG8ileCEjyYl9eT3xp6n8dv2Uo6b3XXF5R64m
 F29sjl9RkAdfDtZNKqCOj/rdTbAdcGub+uBvyyDzWkGDBvd0NHXCkev/POfZgzUSqFXs
 7LgTO5o5mx5dmRoPFgfvlvd2ko8PD3+vKT+S4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=31YZpUwGpcIWxXfunTU3YnlxSzOHcHbdXILjgQQWIsY=;
 b=Nd7zNKd4QbG6NBCsiVhCliBXoqEQdt3hf+s9hX4sbV2vcn9M/AHMXa6AvUmux2NTFu
 +gB/+o7laVK+UjCQsa7FyfUpfhNs52kvNM00fIFrIYX8YibuTyO+wDccvqIsbRcZvGED
 FCW4OHvaXVXFk/hFNDJ+lMOe9ykabaR5COff4Tv5yGk3j1HpAptT3y+QyJKU1P1mhOMk
 6MOrDh5E14gUdbTPBmdt3oU6pecJw+EhJS/FuZKSSaqbdEoITBQIQjtC+9vyWd9bxMQp
 NNDpVfoUDp5nCHqdp3PtlXIpmPQw8wyX3aCQkYftvReBqkEJ6BvdijWQ/ptjVglodvc5
 MJEw==
X-Gm-Message-State: APjAAAWUCCVNoLpwHteq5sil7wnCQ/s4YvlUkLDxd3TFcrYK8FdKZcMN
 FemkoEYdpdAth87HfCBSuktOJA==
X-Google-Smtp-Source: APXvYqxWZ5ea3dRF89PSbb6SmUlfX9fNTMbMLqcspKfe3YESfKVtEKjWrcgEaL9fOLPpUnoHeFZYTg==
X-Received: by 2002:a63:89c7:: with SMTP id
 v190mr22486457pgd.299.1561965938371; 
 Mon, 01 Jul 2019 00:25:38 -0700 (PDT)
Received: from chromium.org ([2401:fa00:4:4:6d27:f13:a0fa:d4b6])
 by smtp.gmail.com with ESMTPSA id a3sm9112379pff.122.2019.07.01.00.25.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 00:25:37 -0700 (PDT)
Date: Mon, 1 Jul 2019 16:25:32 +0900
From: Tomasz Figa <tfiga@chromium.org>
To: Jungo Lin <jungo.lin@mediatek.com>
Subject: Re: [RFC,v3 9/9] media: platform: Add Mediatek ISP P1 shared memory
 device
Message-ID: <20190701072532.GB137710@chromium.org>
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-10-jungo.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611035344.29814-10-jungo.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_002539_477288_CE272BFF 
X-CRM114-Status: GOOD (  27.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, sean.cheng@mediatek.com,
 frederic.chen@mediatek.com, rynn.wu@mediatek.com, srv_heupstream@mediatek.com,
 robh@kernel.org, ryan.yu@mediatek.com, frankie.chiu@mediatek.com,
 hverkuil@xs4all.nl, ddavenport@chromium.org, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, laurent.pinchart@ideasonboard.com,
 matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jungo,

On Tue, Jun 11, 2019 at 11:53:44AM +0800, Jungo Lin wrote:
> The purpose of this child device is to provide shared
> memory management for exchanging tuning data between co-processor
> and the Pass 1 unit of the camera ISP system, including cache
> buffer handling.
> 

Looks like we haven't really progressed on getting this replaced with
something that doesn't require so much custom code. Let me propose something
better then.

We already have a reserved memory mode in DT. If it has a compatible string
of "shared-dma-pool", it would be registered in the coherent DMA framework
[1]. That would make it available for consumer devices to look-up.

Now if we add a "memory-region" property to the SCP device node and point it
to our reserved memory node, the SCP driver could look it up and hook to the
DMA mapping API using of_reserved_mem_device_init_by_idx[2].

That basically makes any dma_alloc_*(), dma_map_*(), etc. calls on the SCP
struct device use the coherent DMA ops, which operate on the assigned memory
pool. With that, the P1 driver could just directly use those calls to
manage the memory, without any custom code.

There is an example how this setup works in the s5p-mfc driver[3], but it
needs to be noted that it creates child nodes, because it can have more than
1 DMA port, which may need its own memory pool. In our case, we wouldn't
need child nodes and could just use the SCP device directly.

[1] https://elixir.bootlin.com/linux/v5.2-rc7/source/kernel/dma/coherent.c#L345
[2] https://elixir.bootlin.com/linux/v5.2-rc7/source/drivers/of/of_reserved_mem.c#L312
[3] https://elixir.bootlin.com/linux/v5.2-rc7/source/drivers/media/platform/s5p-mfc/s5p_mfc.c#L1075

Let me also post some specific comments below, in case we end up still
needing any of the code.

> Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
> ---
> This patch depends on "Add support for mt8183 SCP"[1].
> 
> [1] https://patchwork.kernel.org/cover/10972143/
> ---
>  .../platform/mtk-isp/isp_50/cam/Makefile      |   1 +
>  .../mtk-isp/isp_50/cam/mtk_cam-smem.c         | 304 ++++++++++++++++++
>  .../mtk-isp/isp_50/cam/mtk_cam-smem.h         |  18 ++
>  3 files changed, 323 insertions(+)
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem.c
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem.h
> 
> diff --git a/drivers/media/platform/mtk-isp/isp_50/cam/Makefile b/drivers/media/platform/mtk-isp/isp_50/cam/Makefile
> index 95f0b1c8fa1c..d545ca6f09c5 100644
> --- a/drivers/media/platform/mtk-isp/isp_50/cam/Makefile
> +++ b/drivers/media/platform/mtk-isp/isp_50/cam/Makefile
> @@ -4,5 +4,6 @@ mtk-cam-isp-objs += mtk_cam-ctrl.o
>  mtk-cam-isp-objs += mtk_cam-v4l2-util.o
>  mtk-cam-isp-objs += mtk_cam.o
>  mtk-cam-isp-objs += mtk_cam-scp.o
> +mtk-cam-isp-objs += mtk_cam-smem.o
>  
>  obj-$(CONFIG_VIDEO_MEDIATEK_ISP_PASS1) += mtk-cam-isp.o
> \ No newline at end of file
> diff --git a/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem.c b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem.c
> new file mode 100644
> index 000000000000..a9845668ce10
> --- /dev/null
> +++ b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem.c
> @@ -0,0 +1,304 @@
> +// SPDX-License-Identifier: GPL-2.0
> +//
> +// Copyright (c) 2018 MediaTek Inc.
> +
> +#include <asm/cacheflush.h>
> +#include <linux/device.h>
> +#include <linux/io.h>
> +#include <linux/iommu.h>
> +#include <linux/of.h>
> +#include <linux/of_fdt.h>
> +#include <linux/of_reserved_mem.h>
> +#include <linux/platform_device.h>
> +#include <linux/platform_data/mtk_scp.h>
> +#include <media/videobuf2-dma-contig.h>
> +
> +#include "mtk_cam-smem.h"
> +
> +static struct dma_map_ops smem_dma_ops;
> +
> +struct mtk_cam_smem_dev {
> +	struct device *dev;
> +	struct sg_table sgt;
> +	struct page **smem_pages;
> +	dma_addr_t smem_base;
> +	dma_addr_t smem_dma_base;
> +	int smem_size;
> +};
> +
> +struct dma_coherent_mem {
> +	void		*virt_base;
> +	dma_addr_t	device_base;
> +	unsigned long	pfn_base;
> +	int		size;
> +	int		flags;
> +	unsigned long	*bitmap;
> +	spinlock_t	spinlock; /* dma_coherent_mem attributes protection */
> +	bool		use_dev_dma_pfn_offset;
> +};
> +
> +dma_addr_t mtk_cam_smem_iova_to_scp_addr(struct device *dev,
> +					 dma_addr_t iova)
> +{
> +	struct iommu_domain *domain;
> +	dma_addr_t addr, limit;
> +	struct mtk_cam_smem_dev *smem_dev = dev_get_drvdata(dev);
> +
> +	domain = iommu_get_domain_for_dev(dev);
> +	if (!domain) {
> +		dev_warn(dev, "No iommu group domain\n");
> +		return 0;
> +	}
> +
> +	addr = iommu_iova_to_phys(domain, iova);
> +	limit = smem_dev->smem_base + smem_dev->smem_size;
> +	if (addr < smem_dev->smem_base || addr >= limit) {
> +		dev_err(dev,
> +			"Unexpected scp_addr:%pad must >= %pad and < %pad)\n",
> +			&addr, &smem_dev->smem_base, &limit);
> +		return 0;
> +	}
> +	return addr;
> +}

This isn't correct. One could pass an IOVA that wasn't allocated for the SCP
and then the address wouldn't be valid, because it would point outside of
the address range allowed for SCP to access and also it would only point to
the first page backing the IOVA.

The correct approach would be to always carry SCP DMA address and IOVA
together in some kind of struct describing such buffers.

> +
> +static int mtk_cam_smem_get_sgtable(struct device *dev,
> +				    struct sg_table *sgt,
> +				    void *cpu_addr, dma_addr_t dma_addr,
> +				    size_t size, unsigned long attrs)
> +{
> +	struct mtk_cam_smem_dev *smem_dev = dev_get_drvdata(dev);
> +	size_t pages_count = PAGE_ALIGN(size) >> PAGE_SHIFT;
> +	dma_addr_t scp_addr = mtk_cam_smem_iova_to_scp_addr(dev, dma_addr);
> +	u32 pages_start = (scp_addr - smem_dev->smem_base) >> PAGE_SHIFT;
> +
> +	dev_dbg(dev,
> +		"%s:page:%u va:%pK scp addr:%pad, aligned size:%zu pages:%zu\n",
> +		__func__, pages_start, cpu_addr, &scp_addr, size, pages_count);
> +
> +	return sg_alloc_table_from_pages(sgt,
> +		smem_dev->smem_pages + pages_start,
> +		pages_count, 0, size, GFP_KERNEL);
> +}

This should be just dma_get_sgtable_attrs(), in the approach I suggested at
the top.

> +
> +static void *mtk_cam_smem_get_cpu_addr(struct mtk_cam_smem_dev *smem_dev,
> +				       dma_addr_t addr)
> +{
> +	struct device *dev = smem_dev->dev;
> +	struct dma_coherent_mem *dma_mem = dev->dma_mem;
> +
> +	if (addr < smem_dev->smem_base ||
> +	    addr > smem_dev->smem_base + smem_dev->smem_size) {

This is off by one, should be >=.

Also, this wouldn't really guarantee the CPU access the caller is going to
do is valid, because it doesn't consider the access operation size.

Generally I'd suggest designing the code so that it doesn't have to convert
offset addresses between different address spaces.

> +		dev_err(dev, "Invalid scp_addr %pad from sg\n", &addr);
> +		return NULL;
> +	}
> +	return dma_mem->virt_base + (addr - smem_dev->smem_base);
> +}
> +
> +static void mtk_cam_smem_sync_sg_for_cpu(struct device *dev,
> +					 struct scatterlist *sgl, int nelems,
> +					 enum dma_data_direction dir)
> +{
> +	struct mtk_cam_smem_dev *smem_dev = dev_get_drvdata(dev);
> +	dma_addr_t scp_addr = sg_phys(sgl);
> +	void *cpu_addr = mtk_cam_smem_get_cpu_addr(smem_dev, scp_addr);
> +
> +	dev_dbg(dev,
> +		"__dma_unmap_area:scp_addr:%pad,vaddr:%pK,size:%d,dir:%d\n",
> +		&scp_addr, cpu_addr, sgl->length, dir);
> +	__dma_unmap_area(cpu_addr, sgl->length, dir);

It's not allowed to use this function anywhere outside of the DMA API
internals. See the comment [4].

[4] https://elixir.bootlin.com/linux/v5.2-rc7/source/arch/arm64/include/asm/cacheflush.h#L112

> +}
> +
> +static void mtk_cam_smem_sync_sg_for_device(struct device *dev,
> +					    struct scatterlist *sgl,
> +					    int nelems,
> +					    enum dma_data_direction dir)
> +{
> +	struct mtk_cam_smem_dev *smem_dev = dev_get_drvdata(dev);
> +	dma_addr_t scp_addr = sg_phys(sgl);
> +	void *cpu_addr = mtk_cam_smem_get_cpu_addr(smem_dev, scp_addr);
> +
> +	dev_dbg(dev,
> +		"__dma_map_area:scp_addr:%pad,vaddr:%pK,size:%d,dir:%d\n",
> +		&scp_addr, cpu_addr, sgl->length, dir);
> +	__dma_map_area(cpu_addr, sgl->length, dir);

Ditto.

> +}
> +
> +static void mtk_cam_smem_setup_dma_ops(struct device *dev,
> +				       struct dma_map_ops *smem_ops)
> +{
> +	memcpy((void *)smem_ops, dev->dma_ops, sizeof(*smem_ops));
> +	smem_ops->get_sgtable = mtk_cam_smem_get_sgtable;
> +	smem_ops->sync_sg_for_device = mtk_cam_smem_sync_sg_for_device;
> +	smem_ops->sync_sg_for_cpu = mtk_cam_smem_sync_sg_for_cpu;
> +	set_dma_ops(dev, smem_ops);
> +}
> +
> +static int mtk_cam_reserved_drm_sg_init(struct mtk_cam_smem_dev *smem_dev)
> +{
> +	u32 size_align, n_pages;
> +	struct device *dev = smem_dev->dev;
> +	struct sg_table *sgt = &smem_dev->sgt;
> +	struct page **pages;
> +	dma_addr_t dma_addr;
> +	unsigned int i;
> +	int ret;
> +
> +	smem_dev->smem_base = scp_get_reserve_mem_phys(SCP_ISP_MEM2_ID);
> +	smem_dev->smem_size = scp_get_reserve_mem_size(SCP_ISP_MEM2_ID);
> +	if (!smem_dev->smem_base || !smem_dev->smem_size)
> +		return -EPROBE_DEFER;
> +
> +	dev_info(dev, "%s dev:0x%pK base:%pad size:%u MiB\n",
> +		 __func__,
> +		 smem_dev->dev,
> +		 &smem_dev->smem_base,
> +		 (smem_dev->smem_size / SZ_1M));
> +
> +	size_align = PAGE_ALIGN(smem_dev->smem_size);
> +	n_pages = size_align >> PAGE_SHIFT;
> +
> +	pages = kmalloc_array(n_pages, sizeof(struct page *), GFP_KERNEL);
> +	if (!pages)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < n_pages; i++)
> +		pages[i] = phys_to_page(smem_dev->smem_base + i * PAGE_SIZE);
> +
> +	ret = sg_alloc_table_from_pages(sgt, pages, n_pages, 0,
> +					size_align, GFP_KERNEL);
> +	if (ret) {
> +		dev_err(dev, "failed to alloca sg table:%d\n", ret);
> +		goto fail_table_alloc;
> +	}
> +	sgt->nents = dma_map_sg_attrs(dev, sgt->sgl, sgt->orig_nents,
> +				      DMA_BIDIRECTIONAL,
> +				      DMA_ATTR_SKIP_CPU_SYNC);
> +	if (!sgt->nents) {
> +		dev_err(dev, "failed to dma sg map\n");
> +		goto fail_map;
> +	}
> +
> +	dma_addr = sg_dma_address(sgt->sgl);
> +	ret = dma_declare_coherent_memory(dev, smem_dev->smem_base,
> +					  dma_addr, size_align,
> +					  DMA_MEMORY_EXCLUSIVE);
> +	if (ret) {
> +		dev_err(dev, "Unable to declare smem  memory:%d\n", ret);
> +		goto fail_map;
> +	}
> +
> +	dev_info(dev, "Coherent mem pa:%pad/%pad, size:%d\n",
> +		 &smem_dev->smem_base, &dma_addr, size_align);
> +
> +	smem_dev->smem_size = size_align;
> +	smem_dev->smem_pages = pages;
> +	smem_dev->smem_dma_base = dma_addr;
> +
> +	return 0;
> +
> +fail_map:
> +	sg_free_table(sgt);
> +fail_table_alloc:
> +	while (n_pages--)
> +		__free_page(pages[n_pages]);
> +	kfree(pages);
> +
> +	return -ENOMEM;
> +}
> +
> +/* DMA memory related helper functions */
> +static void mtk_cam_memdev_release(struct device *dev)
> +{
> +	vb2_dma_contig_clear_max_seg_size(dev);
> +}
> +
> +static struct device *mtk_cam_alloc_smem_dev(struct device *dev,
> +					     const char *name)
> +{
> +	struct device *child;
> +	int ret;
> +
> +	child = devm_kzalloc(dev, sizeof(*child), GFP_KERNEL);
> +	if (!child)
> +		return NULL;
> +
> +	child->parent = dev;
> +	child->iommu_group = dev->iommu_group;

This isn't something that can be set explicitly. It's an internal field of
the IOMMU subsystem.

> +	child->release = mtk_cam_memdev_release;
> +	dev_set_name(child, name);
> +	set_dma_ops(child, get_dma_ops(dev));
> +	child->dma_mask = dev->dma_mask;
> +	ret = dma_set_coherent_mask(child, DMA_BIT_MASK(32));
> +	if (ret)
> +		return NULL;
> +
> +	vb2_dma_contig_set_max_seg_size(child, DMA_BIT_MASK(32));
> +
> +	if (device_register(child)) {
> +		device_del(child);
> +		return NULL;
> +	}
> +
> +	return child;
> +}

We shouldn't need child devices, just one SCP device, as I mentioned above.

> +
> +static int mtk_cam_composer_dma_init(struct mtk_isp_p1_ctx *isp_ctx)
> +{
> +	struct isp_p1_device *p1_dev = p1_ctx_to_dev(isp_ctx);
> +	struct device *dev = &p1_dev->pdev->dev;
> +	u32 size;
> +	dma_addr_t addr;
> +
> +	isp_ctx->scp_mem_pa = scp_get_reserve_mem_phys(SCP_ISP_MEM_ID);
> +	size = PAGE_ALIGN(scp_get_reserve_mem_size(SCP_ISP_MEM_ID));
> +	if (!isp_ctx->scp_mem_pa || !size)
> +		return -EPROBE_DEFER;
> +
> +	dev_info(dev, "scp addr:%pad size:0x%x\n", &isp_ctx->scp_mem_pa, size);

This isn't something that deserves the "info" log level. Should be "dbg"
or removed.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
