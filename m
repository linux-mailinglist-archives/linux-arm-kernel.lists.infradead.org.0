Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7E11EB4AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 06:43:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SzFUz1AyJ2kJadnAc2OatwbSpz4F2Smu4J9ZcJminKw=; b=YrmK2zQ72AxPW5
	ctZhN78WWNZi8OZi1wFvw8Q7Id7kQvcteXFPkEAmYvnN9eYlYGLL944yLcDFEOyFqW5QPWa2YMzEZ
	wilcXxFXUfmcmkW9TlRsV5Kr1bBjsoC87gxA6s9haVaLA2VWIvXiaAzu8mjOiR5e8rs9A85DXJJGh
	YCg2lHOm4GzXwmNIYvcAtfq6gbhJ90tCBY6bgNDXffiUk18PJTWw+cpPbwcadrUg6HuoG70Ih5oj1
	7LdtoYz5L7l6VmrH0bZX2Mgx6sF5yOsVMFAiODo0l85/DpFRVY8Ysj9EUGH6L2boDJwjhHy8nSgnR
	z+e7p2YeQ4A7PMU/lM9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfylW-0002CZ-6c; Tue, 02 Jun 2020 04:43:06 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfylO-0002Ar-9E
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 04:43:00 +0000
Received: from dggemi406-hub.china.huawei.com (unknown [172.30.72.55])
 by Forcepoint Email with ESMTP id B531CB564B3EBAAFC3AC;
 Tue,  2 Jun 2020 12:42:50 +0800 (CST)
Received: from DGGEMI525-MBS.china.huawei.com ([169.254.6.10]) by
 dggemi406-hub.china.huawei.com ([10.3.17.144]) with mapi id 14.03.0487.000;
 Tue, 2 Jun 2020 12:42:43 +0800
From: "Song Bao Hua (Barry Song)" <song.bao.hua@hisilicon.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH] driver core: platform: expose numa_node to users in sysfs
Thread-Topic: [PATCH] driver core: platform: expose numa_node to users in sysfs
Thread-Index: AQHWOIpUwdvGGcJ/+UCxidEm0PhHvqjEM/4AgACJWmA=
Date: Tue, 2 Jun 2020 04:42:42 +0000
Message-ID: <B926444035E5E2439431908E3842AFD24D8D1E@DGGEMI525-MBS.china.huawei.com>
References: <20200602030139.73012-1-song.bao.hua@hisilicon.com>
 <20200602042340.GA2130884@kroah.com>
In-Reply-To: <20200602042340.GA2130884@kroah.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.126.203.56]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_214258_506086_6B375D92 
X-CRM114-Status: GOOD (  19.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
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
> Sent: Tuesday, June 2, 2020 4:24 PM
> To: Song Bao Hua (Barry Song) <song.bao.hua@hisilicon.com>
> Cc: rafael@kernel.org; iommu@lists.linux-foundation.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Linuxarm
> <linuxarm@huawei.com>; Zengtao (B) <prime.zeng@hisilicon.com>; Robin
> Murphy <robin.murphy@arm.com>
> Subject: Re: [PATCH] driver core: platform: expose numa_node to users in sysfs
> 
> On Tue, Jun 02, 2020 at 03:01:39PM +1200, Barry Song wrote:
> > For some platform devices like iommu, particually ARM smmu, users may
> > care about the numa locality. for example, if threads and drivers run
> > near iommu, they may get much better performance on dma_unmap_sg.
> > For other platform devices, users may still want to know the hardware
> > topology.
> >
> > Cc: Prime Zeng <prime.zeng@hisilicon.com>
> > Cc: Robin Murphy <robin.murphy@arm.com>
> > Signed-off-by: Barry Song <song.bao.hua@hisilicon.com>
> > ---
> >  drivers/base/platform.c | 26 +++++++++++++++++++++++++-
> >  1 file changed, 25 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/base/platform.c b/drivers/base/platform.c
> > index b27d0f6c18c9..7794b9a38d82 100644
> > --- a/drivers/base/platform.c
> > +++ b/drivers/base/platform.c
> > @@ -1062,13 +1062,37 @@ static ssize_t driver_override_show(struct
> device *dev,
> >  }
> >  static DEVICE_ATTR_RW(driver_override);
> >
> > +static ssize_t numa_node_show(struct device *dev,
> > +		struct device_attribute *attr, char *buf)
> > +{
> > +	return sprintf(buf, "%d\n", dev_to_node(dev));
> > +}
> > +static DEVICE_ATTR_RO(numa_node);
> > +
> > +static umode_t platform_dev_attrs_visible(struct kobject *kobj, struct
> attribute *a,
> > +		int n)
> > +{
> > +	struct device *dev = container_of(kobj, typeof(*dev), kobj);
> > +
> > +	if (a == &dev_attr_numa_node.attr &&
> > +			dev_to_node(dev) == NUMA_NO_NODE)
> > +		return 0;
> > +
> > +	return a->mode;
> > +}
> >
> >  static struct attribute *platform_dev_attrs[] = {
> >  	&dev_attr_modalias.attr,
> > +	&dev_attr_numa_node.attr,
> >  	&dev_attr_driver_override.attr,
> >  	NULL,
> >  };
> > -ATTRIBUTE_GROUPS(platform_dev);
> > +
> > +static struct attribute_group platform_dev_group = {
> > +	.attrs = platform_dev_attrs,
> > +	.is_visible = platform_dev_attrs_visible,
> > +};
> > +__ATTRIBUTE_GROUPS(platform_dev);
> >
> >  static int platform_uevent(struct device *dev, struct kobj_uevent_env *env)
> >  {
> 
> Platform devices are NUMA?  That's crazy, and feels like a total abuse
> of platform devices and drivers that really should belong on a "real"
> bus.

I am not sure if it is an abuse of platform device. But smmu is a platform device,
drivers/iommu/arm-smmu-v3.c is a platform driver.
In a typical ARM server, there are maybe multiple SMMU devices which can support
IO virtual address and page tables for other devices on PCI-like busses.
Each different SMMU device might be close to different NUMA node. There is
really a hardware topology.

If you have multiple CPU packages in a NUMA server, some platform devices might
Belong to CPU0, some other might belong to CPU1.

-barry

> 
> What drivers in the kernel today have this issue?
> 
> thanks,
> 
> greg k-h



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
