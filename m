Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5646C1EB5A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 08:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSah8I2KznxWCtSwhAcWe5jZ0dPcJ2ioN9sCAVCMX1Y=; b=a2gbDOynxW1UB8
	Ls39UdD8B0UAs0rOqcIbEBw5ToBrozVjak/Xq6kYKGoJ69J9mihd7cxWCcQRaFmPrn4Rk/0MwXksu
	U8x/OCavb04r2zNrAdsAEajHOGA8KTB/GF/jFRcu5zrydr2LGbYL/4CngVvbwK0iqeBt9bAh6XA1M
	5OoSNnCxoFXKDOydV+/PkeFdG5fWbgYDMOEAkaQbo2L4LoJhLKrzb8PEdCYW9wF7tmWIq/lEBnmoB
	Z3y5jNPGv6fA+YakC16gP6K/5fZ7Ue2NmAgut04vvVohB62ANfze8nKil1HETONIvFCYqmwoytURk
	w80O571jznJPc45MDaRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg08z-0007Zs-GB; Tue, 02 Jun 2020 06:11:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg08p-0007Yx-Sz
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 06:11:17 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 063F2206A2;
 Tue,  2 Jun 2020 06:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591078275;
 bh=S9BDyCPZ3sQBve1F7WjZIz76qdGdT07Qbc97K/4Wka8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n87q5ssQcTPcbQPy4ii4n0LRx2wpWrJK9vvsAw36MC/vsEKsffyUpXOPjcSlIES5S
 7xuP9hHliVR4456n+8uSoDhnx0jlpwwagPijeMfWRc12Xan8GvfXsYVOEzPi+TcaCf
 ZWUj/cuJlMa/67FTh0lUj8p8GeGkZ8AozWLEYUvE=
Date: Tue, 2 Jun 2020 08:11:12 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Song Bao Hua (Barry Song)" <song.bao.hua@hisilicon.com>
Subject: Re: [PATCH] driver core: platform: expose numa_node to users in sysfs
Message-ID: <20200602061112.GC2256033@kroah.com>
References: <20200602030139.73012-1-song.bao.hua@hisilicon.com>
 <20200602042340.GA2130884@kroah.com>
 <B926444035E5E2439431908E3842AFD24D8F9E@DGGEMI525-MBS.china.huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <B926444035E5E2439431908E3842AFD24D8F9E@DGGEMI525-MBS.china.huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_231115_975785_5B559C91 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "rafael@kernel.org" <rafael@kernel.org>, Linuxarm <linuxarm@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 02, 2020 at 05:09:57AM +0000, Song Bao Hua (Barry Song) wrote:
> > >
> > > Platform devices are NUMA?  That's crazy, and feels like a total abuse
> > > of platform devices and drivers that really should belong on a "real"
> > > bus.
> > 
> > I am not sure if it is an abuse of platform device. But smmu is a platform
> > device,
> > drivers/iommu/arm-smmu-v3.c is a platform driver.
> > In a typical ARM server, there are maybe multiple SMMU devices which can
> > support
> > IO virtual address and page tables for other devices on PCI-like busses.
> > Each different SMMU device might be close to different NUMA node. There is
> > really a hardware topology.
> > 
> > If you have multiple CPU packages in a NUMA server, some platform devices
> > might
> > Belong to CPU0, some other might belong to CPU1.
> 
> Those devices are populated by acpi_iort for an ARM server:
> 
> drivers/acpi/arm64/iort.c:
> 
> static const struct iort_dev_config iort_arm_smmu_v3_cfg __initconst = {
>         .name = "arm-smmu-v3",
>         .dev_dma_configure = arm_smmu_v3_dma_configure,
>         .dev_count_resources = arm_smmu_v3_count_resources,
>         .dev_init_resources = arm_smmu_v3_init_resources,
>         .dev_set_proximity = arm_smmu_v3_set_proximity,
> };
> 
> void __init acpi_iort_init(void)
> {
>         acpi_status status;
> 
>         status = acpi_get_table(ACPI_SIG_IORT, 0, &iort_table);
>         ...
>         iort_check_id_count_workaround(iort_table);
>         iort_init_platform_devices();
> }
> 
> static void __init iort_init_platform_devices(void)
> {
>         ...
> 
>         for (i = 0; i < iort->node_count; i++) {
>                 if (iort_node >= iort_end) {
>                         pr_err("iort node pointer overflows, bad table\n");
>                         return;
>                 }
> 
>                 iort_enable_acs(iort_node);
> 
>                 ops = iort_get_dev_cfg(iort_node);
>                 if (ops) {
>                         fwnode = acpi_alloc_fwnode_static();
>                         if (!fwnode)
>                                 return;
> 
>                         iort_set_fwnode(iort_node, fwnode);
> 
>                         ret = iort_add_platform_device(iort_node, ops);
>                         if (ret) {
>                                 iort_delete_fwnode(iort_node);
>                                 acpi_free_fwnode_static(fwnode);
>                                 return;
>                         }
>                 }
> 
>                 ...
>         }
> ...
> }
> 
> NUMA node is got from ACPI:
> 
> static int  __init arm_smmu_v3_set_proximity(struct device *dev,
>                                               struct acpi_iort_node *node)
> {
>         struct acpi_iort_smmu_v3 *smmu;
> 
>         smmu = (struct acpi_iort_smmu_v3 *)node->node_data;
>         if (smmu->flags & ACPI_IORT_SMMU_V3_PXM_VALID) {
>                 int dev_node = acpi_map_pxm_to_node(smmu->pxm);
> 
>                 ...
> 
>                 set_dev_node(dev, dev_node);
>                 ...
>         }
>         return 0;
> }
> 
> Barry

That's fine, but those are "real" devices, not platform devices, right?

What platform device has this issue?  What one will show up this way
with the new patch?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
