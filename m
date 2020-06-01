Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E500E1EB068
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 22:43:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpzXG7uFRE9EaaqNccEU+U0zmTAGHy+Ft5+Zzh6i+8M=; b=TvLm6CvXr3tGs/
	oSrvq2KiRSIttDXhb+osUwlSWzPTebQvstVa3/VDtGfQ92ItYqPy6T2uT5sU088V16mFJZBMmOdPn
	eOQ4D3j9KbfukoRX+oAvDTmQOVsqx4MDleg4yTTcNG0yet3PeixihW+faDWhQpzJBVfu8vlRzQ87N
	Cpqd6BRo8sESxEK22BCoDWMIHOpkwKklaOjoRCSPuDGD2L00jtcWJASKIxVdjxYXxbzWsKQL2Dg3r
	C0Ch9u2tRFypgi3PE6kKzDIf7NrCbRVoyLatOUR1aZSt5ulXGZENEIRGjThvpfs7kPNAps8K+BQom
	gwcxEuM2v/kF+7piZfXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfrHW-0002dt-BT; Mon, 01 Jun 2020 20:43:38 +0000
Received: from szxga03-in.huawei.com ([45.249.212.189] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfrHO-0002d3-Oh
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 20:43:32 +0000
Received: from dggemi406-hub.china.huawei.com (unknown [172.30.72.55])
 by Forcepoint Email with ESMTP id 4198766B57FCA23C5AD2;
 Tue,  2 Jun 2020 04:43:23 +0800 (CST)
Received: from DGGEMI525-MBS.china.huawei.com ([169.254.6.10]) by
 dggemi406-hub.china.huawei.com ([10.3.17.144]) with mapi id 14.03.0487.000;
 Tue, 2 Jun 2020 04:43:15 +0800
From: "Song Bao Hua (Barry Song)" <song.bao.hua@hisilicon.com>
To: Robin Murphy <robin.murphy@arm.com>, "will@kernel.org" <will@kernel.org>, 
 "hch@lst.de" <hch@lst.de>, "m.szyprowski@samsung.com"
 <m.szyprowski@samsung.com>, "iommu@lists.linux-foundation.org"
 <iommu@lists.linux-foundation.org>
Subject: RE: [PATCH] iommu/arm-smmu-v3: expose numa_node attribute to users
 in sysfs
Thread-Topic: [PATCH] iommu/arm-smmu-v3: expose numa_node attribute to users
 in sysfs
Thread-Index: AQHWNmL+BAaoTPaXd0CO3TAe6c7BnKjDOhgAgAD/rYA=
Date: Mon, 1 Jun 2020 20:43:14 +0000
Message-ID: <B926444035E5E2439431908E3842AFD24D83EB@DGGEMI525-MBS.china.huawei.com>
References: <20200530091505.56664-1-song.bao.hua@hisilicon.com>
 <4e902884-7ac3-9e79-ec01-f56f2fc5ebad@arm.com>
In-Reply-To: <4e902884-7ac3-9e79-ec01-f56f2fc5ebad@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.126.202.97]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_134331_124728_C34C11FD 
X-CRM114-Status: GOOD (  22.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.189 listed in list.dnswl.org]
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
Cc: Linuxarm <linuxarm@huawei.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Robin Murphy [mailto:robin.murphy@arm.com]
> Sent: Tuesday, June 2, 2020 1:14 AM
> To: Song Bao Hua (Barry Song) <song.bao.hua@hisilicon.com>; will@kernel.org;
> hch@lst.de; m.szyprowski@samsung.com; iommu@lists.linux-foundation.org
> Cc: Linuxarm <linuxarm@huawei.com>; linux-arm-kernel@lists.infradead.org
> Subject: Re: [PATCH] iommu/arm-smmu-v3: expose numa_node attribute to
> users in sysfs
> 
> On 2020-05-30 10:15, Barry Song wrote:
> > As tests show the latency of dma_unmap can increase dramatically while
> > calling them cross NUMA nodes, especially cross CPU packages, eg.
> > 300ns vs 800ns while waiting for the completion of CMD_SYNC in an
> > empty command queue. The large latency causing by remote node will
> > in turn make contention of the command queue more serious, and enlarge
> > the latency of DMA users within local NUMA nodes.
> >
> > Users might intend to enforce NUMA locality with the consideration of
> > the position of SMMU. The patch provides minor benefit by presenting
> > this information to users directly, as they might want to know it without
> > checking hardware spec at all.
> 
> Hmm, given that dev-to_node() is a standard driver model thing, is there
> not already some generic device property that can expose it - and if
> not, should there be? Presumably if userspace cares enough to want to
> know whereabouts in the system an IOMMU is, it probably also cares where
> the actual endpoint devices are too.
> 
> At the very least, it doesn't seem right for it to be specific to one
> single IOMMU driver.

Right now pci devices have generally got the numa_node in sysfs by drivers/pci/pci-sysfs.c

static ssize_t numa_node_store(struct device *dev,
                               struct device_attribute *attr, const char *buf,
                               size_t count)
{
        ...

        add_taint(TAINT_FIRMWARE_WORKAROUND, LOCKDEP_STILL_OK);
        pci_alert(pdev, FW_BUG "Overriding NUMA node to %d.  Contact your vendor for updates.",
                  node);

        dev->numa_node = node;
        return count;
}

static ssize_t numa_node_show(struct device *dev, struct device_attribute *attr,
                              char *buf)
{
        return sprintf(buf, "%d\n", dev->numa_node);
}
static DEVICE_ATTR_RW(numa_node);

for other devices who care about numa information, the specific drivers are doing that, for example:

drivers/dax/bus.c:      if (a == &dev_attr_numa_node.attr && !IS_ENABLED(CONFIG_NUMA))
drivers/dax/bus.c:      &dev_attr_numa_node.attr,
drivers/dma/idxd/sysfs.c:       &dev_attr_numa_node.attr,
drivers/hv/vmbus_drv.c: &dev_attr_numa_node.attr,
drivers/nvdimm/bus.c:   &dev_attr_numa_node.attr,
drivers/nvme/host/core.c:       &dev_attr_numa_node.attr,

smmu is usually a platform device, we can actually expose numa_node for platform_device, or globally expose numa_node
for general "device" if people don't opposite.

Barry

> 
> Robin.
> 
> > Signed-off-by: Barry Song <song.bao.hua@hisilicon.com>
> > ---
> >   drivers/iommu/arm-smmu-v3.c | 40
> ++++++++++++++++++++++++++++++++++++-
> >   1 file changed, 39 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> > index 82508730feb7..754c4d59498b 100644
> > --- a/drivers/iommu/arm-smmu-v3.c
> > +++ b/drivers/iommu/arm-smmu-v3.c
> > @@ -4021,6 +4021,44 @@ err_reset_pci_ops: __maybe_unused;
> >   	return err;
> >   }
> >
> > +static ssize_t numa_node_show(struct device *dev,
> > +		struct device_attribute *attr, char *buf)
> > +{
> > +	return sprintf(buf, "%d\n", dev_to_node(dev));
> > +}
> > +static DEVICE_ATTR_RO(numa_node);
> > +
> > +static umode_t arm_smmu_numa_attr_visible(struct kobject *kobj, struct
> attribute *a,
> > +		int n)
> > +{
> > +	struct device *dev = container_of(kobj, typeof(*dev), kobj);
> > +
> > +	if (!IS_ENABLED(CONFIG_NUMA))
> > +		return 0;
> > +
> > +	if (a == &dev_attr_numa_node.attr &&
> > +			dev_to_node(dev) == NUMA_NO_NODE)
> > +		return 0;
> > +
> > +	return a->mode;
> > +}
> > +
> > +static struct attribute *arm_smmu_dev_attrs[] = {
> > +	&dev_attr_numa_node.attr,
> > +	NULL
> > +};
> > +
> > +static struct attribute_group arm_smmu_dev_attrs_group = {
> > +	.attrs          = arm_smmu_dev_attrs,
> > +	.is_visible     = arm_smmu_numa_attr_visible,
> > +};
> > +
> > +
> > +static const struct attribute_group *arm_smmu_dev_attrs_groups[] = {
> > +	&arm_smmu_dev_attrs_group,
> > +	NULL,
> > +};
> > +
> >   static int arm_smmu_device_probe(struct platform_device *pdev)
> >   {
> >   	int irq, ret;
> > @@ -4097,7 +4135,7 @@ static int arm_smmu_device_probe(struct
> platform_device *pdev)
> >   		return ret;
> >
> >   	/* And we're up. Go go go! */
> > -	ret = iommu_device_sysfs_add(&smmu->iommu, dev, NULL,
> > +	ret = iommu_device_sysfs_add(&smmu->iommu, dev,
> arm_smmu_dev_attrs_groups,
> >   				     "smmu3.%pa", &ioaddr);
> >   	if (ret)
> >   		return ret;
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
