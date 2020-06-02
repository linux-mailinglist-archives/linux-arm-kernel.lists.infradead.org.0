Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6972A1EB5CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 08:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MkK5mkug5GqXZorB97hXEQpA3/0h8uM+fVxrGMKJz0U=; b=CZ9Z1KsQJUdX/u
	0z1x8cQWpvO4uRpzDCQixSx5cG8GH+J2k9CtIjWPYkKZw6if12oBUn+uxdI4bCGYCY9G0pEJVofA5
	I5R13dEnuk+qEeU6RgwXAtcWYQVYN26KZsg2gHPn2LW0g47VsgSRxSXiRW/UokMXcZCCDsFVgQgPS
	fjZ0Xwz81XjCsRtV67jgUiv7e4yE/y6s17uPKyeUeEAg2OqLRXWqN6AgPbnVYHt1p42jPfyWQdVZp
	1c3vCD9a06AIfxLxD9usyAqg6U2QO1A4j/ImgdT5NQJqrFxArt/wvvSWniSCfCK3f2gv5aGVJwRmy
	0/dNBTqC0nYGuSG/9eBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg0Os-0002Fq-OE; Tue, 02 Jun 2020 06:27:50 +0000
Received: from szxga08-in.huawei.com ([45.249.212.255] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg0Ol-0002Ek-VZ
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 06:27:45 +0000
Received: from dggemi405-hub.china.huawei.com (unknown [172.30.72.55])
 by Forcepoint Email with ESMTP id A38F213119F8EAEEE759;
 Tue,  2 Jun 2020 14:27:30 +0800 (CST)
Received: from DGGEMI525-MBS.china.huawei.com ([169.254.6.10]) by
 dggemi405-hub.china.huawei.com ([10.3.17.143]) with mapi id 14.03.0487.000;
 Tue, 2 Jun 2020 14:26:20 +0800
From: "Song Bao Hua (Barry Song)" <song.bao.hua@hisilicon.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH] driver core: platform: expose numa_node to users in sysfs
Thread-Topic: [PATCH] driver core: platform: expose numa_node to users in sysfs
Thread-Index: AQHWOIpUwdvGGcJ/+UCxidEm0PhHvqjEM/4AgACJWmCAAAdA0P//jXEAgACHQ7A=
Date: Tue, 2 Jun 2020 06:26:19 +0000
Message-ID: <B926444035E5E2439431908E3842AFD24D90DD@DGGEMI525-MBS.china.huawei.com>
References: <20200602030139.73012-1-song.bao.hua@hisilicon.com>
 <20200602042340.GA2130884@kroah.com>
 <B926444035E5E2439431908E3842AFD24D8F9E@DGGEMI525-MBS.china.huawei.com>
 <20200602061112.GC2256033@kroah.com>
In-Reply-To: <20200602061112.GC2256033@kroah.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.126.200.200]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_232744_203310_83C08703 
X-CRM114-Status: GOOD (  20.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.255 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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



> -----Original Message-----
> From: Greg KH [mailto:gregkh@linuxfoundation.org]
> Sent: Tuesday, June 2, 2020 6:11 PM
> To: Song Bao Hua (Barry Song) <song.bao.hua@hisilicon.com>
> Cc: rafael@kernel.org; iommu@lists.linux-foundation.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Linuxarm
> <linuxarm@huawei.com>; Zengtao (B) <prime.zeng@hisilicon.com>; Robin
> Murphy <robin.murphy@arm.com>
> Subject: Re: [PATCH] driver core: platform: expose numa_node to users in sysfs
> 
> On Tue, Jun 02, 2020 at 05:09:57AM +0000, Song Bao Hua (Barry Song) wrote:
> > > >
> > > > Platform devices are NUMA?  That's crazy, and feels like a total
> > > > abuse of platform devices and drivers that really should belong on a
> "real"
> > > > bus.
> > >
> > > I am not sure if it is an abuse of platform device. But smmu is a
> > > platform device, drivers/iommu/arm-smmu-v3.c is a platform driver.
> > > In a typical ARM server, there are maybe multiple SMMU devices which
> > > can support IO virtual address and page tables for other devices on
> > > PCI-like busses.
> > > Each different SMMU device might be close to different NUMA node.
> > > There is really a hardware topology.
> > >
> > > If you have multiple CPU packages in a NUMA server, some platform
> > > devices might Belong to CPU0, some other might belong to CPU1.
> >
> > Those devices are populated by acpi_iort for an ARM server:
> >
> > drivers/acpi/arm64/iort.c:
> >
> > static const struct iort_dev_config iort_arm_smmu_v3_cfg __initconst = {
> >         .name = "arm-smmu-v3",
> >         .dev_dma_configure = arm_smmu_v3_dma_configure,
> >         .dev_count_resources = arm_smmu_v3_count_resources,
> >         .dev_init_resources = arm_smmu_v3_init_resources,
> >         .dev_set_proximity = arm_smmu_v3_set_proximity, };
> >
> > void __init acpi_iort_init(void)
> > {
> >         acpi_status status;
> >
> >         status = acpi_get_table(ACPI_SIG_IORT, 0, &iort_table);
> >         ...
> >         iort_check_id_count_workaround(iort_table);
> >         iort_init_platform_devices();
> > }
> >
> > static void __init iort_init_platform_devices(void) {
> >         ...
> >
> >         for (i = 0; i < iort->node_count; i++) {
> >                 if (iort_node >= iort_end) {
> >                         pr_err("iort node pointer overflows, bad
> table\n");
> >                         return;
> >                 }
> >
> >                 iort_enable_acs(iort_node);
> >
> >                 ops = iort_get_dev_cfg(iort_node);
> >                 if (ops) {
> >                         fwnode = acpi_alloc_fwnode_static();
> >                         if (!fwnode)
> >                                 return;
> >
> >                         iort_set_fwnode(iort_node, fwnode);
> >
> >                         ret = iort_add_platform_device(iort_node, ops);
> >                         if (ret) {
> >                                 iort_delete_fwnode(iort_node);
> >                                 acpi_free_fwnode_static(fwnode);
> >                                 return;
> >                         }
> >                 }
> >
> >                 ...
> >         }
> > ...
> > }
> >
> > NUMA node is got from ACPI:
> >
> > static int  __init arm_smmu_v3_set_proximity(struct device *dev,
> >                                               struct acpi_iort_node
> > *node) {
> >         struct acpi_iort_smmu_v3 *smmu;
> >
> >         smmu = (struct acpi_iort_smmu_v3 *)node->node_data;
> >         if (smmu->flags & ACPI_IORT_SMMU_V3_PXM_VALID) {
> >                 int dev_node = acpi_map_pxm_to_node(smmu->pxm);
> >
> >                 ...
> >
> >                 set_dev_node(dev, dev_node);
> >                 ...
> >         }
> >         return 0;
> > }
> >
> > Barry
> 
> That's fine, but those are "real" devices, not platform devices, right?
> 

Most platform devices are "real" memory-mapped hardware devices. For an embedded system, almost all "simple-bus"
devices are populated from device trees as platform devices. Only a part of platform devices are not "real" hardware.

Smmu is a memory-mapped device. It is totally like most other platform devices populated in a 
memory space mapped in cpu's local space. It uses ioremap to map registers, use readl/writel to read/write its
space.

> What platform device has this issue?  What one will show up this way with
> the new patch?

if platform device shouldn't be a real hardware, there is no platform device with a hardware topology.
But platform devices are "real" hardware at most time. Smmu is a "real" device, but it is a platform device in Linux.

> 
> thanks,
> 
> greg k-h

-barry


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
