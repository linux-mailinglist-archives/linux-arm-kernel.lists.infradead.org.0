Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B5C1E3991
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 08:46:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pnjXGgzVP05GmXit55IGq8hQ/9TRKOwQJsDfOJAa8ng=; b=HEs8CxRa3cSX2b
	pu5xN5c8Syjtuo81VGjxbVOWGar2ShXw/ulq902R4lx4ReAo2hlGo8AqoJCn9OPeUE9ZPo2IKpE4N
	ig77F5BSF9MOwaTWkOR8tBJ2qaWWHSEPAxrAHBl6O00aDipT0Hy2iUM8Y2ZYeDBeQ/USBH98/QkEN
	EE7ywi8wFNHC9Y5rXct0bn27i+fjI13OcypNhiFFIvdoIC6z5Ko8yFlwlNHDzVXZjXi/CdZWUJEb4
	OTul82tX0f3gBstXk94htpJYanxKQ8M9Dng9ccIvWXQ7ttMMlkewvG2e64gf38oxJJjsQLqi3q8D4
	ynxWfb+Xzk14GCI8qu8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdppy-000177-9T; Wed, 27 May 2020 06:46:50 +0000
Received: from szxga08-in.huawei.com ([45.249.212.255] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdppl-00016S-GI
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 06:46:41 +0000
Received: from DGGEMM403-HUB.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id 35613D2FADC08F94C152;
 Wed, 27 May 2020 14:46:32 +0800 (CST)
Received: from DGGEMM424-HUB.china.huawei.com (10.1.198.41) by
 DGGEMM403-HUB.china.huawei.com (10.3.20.211) with Microsoft SMTP Server (TLS)
 id 14.3.487.0; Wed, 27 May 2020 14:46:31 +0800
Received: from DGGEMM506-MBX.china.huawei.com ([169.254.3.4]) by
 dggemm424-hub.china.huawei.com ([10.1.198.41]) with mapi id 14.03.0487.000;
 Wed, 27 May 2020 14:46:25 +0800
From: "Zengtao (B)" <prime.zeng@hisilicon.com>
To: "zhengxiang (A)" <zhengxiang9@huawei.com>, Jean-Philippe Brucker
 <jean-philippe@linaro.org>
Subject: RE: [RFC] Use SMMU HTTU for DMA dirty page tracking
Thread-Topic: [RFC] Use SMMU HTTU for DMA dirty page tracking
Thread-Index: AQHWLcHpdMO0bbYbEkW2sovVw/ZxjKiz12IAgARX1wCAA1ZFUA==
Date: Wed, 27 May 2020 06:46:24 +0000
Message-ID: <678F3D1BB717D949B966B68EAEB446ED4146A6E4@DGGEMM506-MBX.china.huawei.com>
References: <b926ec0b-fe87-0792-c41d-acad56c656a4@huawei.com>
 <20200522171452.GC3453945@myrica>
 <e68c1158-8573-a477-42ce-48cee510c3ce@huawei.com>
In-Reply-To: <e68c1158-8573-a477-42ce-48cee510c3ce@huawei.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.74.221.187]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_234639_196687_41C0322D 
X-CRM114-Status: GOOD (  24.33  )
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
Cc: "alex.williamson@redhat.com" <alex.williamson@redhat.com>,
 Yan Zhao <yan.y.zhao@intel.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 "maz@kernel.org" <maz@kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Kirti Wankhede <kwankhede@nvidia.com>,
 "Wangzhou \(B\)" <wangzhou1@hisilicon.com>, James
 Morse <james.morse@arm.com>,
 "julien.thierry.kdev@gmail.com" <julien.thierry.kdev@gmail.com>, "Wanghaibin
 \(D\)" <wanghaibin.wang@huawei.com>, Will Deacon <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: zhengxiang (A)
> Sent: Monday, May 25, 2020 7:34 PM
> To: Jean-Philippe Brucker
> Cc: linux-arm-kernel@lists.infradead.org; kvmarm@lists.cs.columbia.edu;
> Will Deacon; Wanghaibin (D); Zengtao (B); maz@kernel.org; James Morse;
> julien.thierry.kdev@gmail.com; Suzuki K Poulose; Wangzhou (B);
> iommu@lists.linux-foundation.org; Kirti Wankhede; Yan Zhao;
> alex.williamson@redhat.com
> Subject: Re: [RFC] Use SMMU HTTU for DMA dirty page tracking
> 
> [+cc Kirti, Yan, Alex]
> 
> On 2020/5/23 1:14, Jean-Philippe Brucker wrote:
> > Hi,
> >
> > On Tue, May 19, 2020 at 05:42:55PM +0800, Xiang Zheng wrote:
> >> Hi all,
> >>
> >> Is there any plan for enabling SMMU HTTU?
> >
> > Not outside of SVA, as far as I know.
> >
> 
> >> I have seen the patch locates in the SVA series patch, which adds
> >> support for HTTU:
> >>     https://www.spinics.net/lists/arm-kernel/msg798694.html
> >>
> >> HTTU reduces the number of access faults on SMMU fault queue
> >> (permission faults also benifit from it).
> >>
> >> Besides reducing the faults, HTTU also helps to track dirty pages for
> >> device DMA. Is it feasible to utilize HTTU to get dirty pages on device
> >> DMA during VFIO live migration?
> >
> > As you know there is a VFIO interface for this under discussion:
> >
> https://lore.kernel.org/kvm/1589781397-28368-1-git-send-email-kwankhe
> de@nvidia.com/
> > It doesn't implement an internal API to communicate with the IOMMU
> driver
> > about dirty pages.
> 
> >
> >> If SMMU can track dirty pages, devices are not required to implement
> >> additional dirty pages tracking to support VFIO live migration.
> >
> > It seems feasible, though tracking it in the device might be more
> > efficient. I might have misunderstood but I think for live migration of
> > the Intel NIC they trap guest accesses to the device and introspect its
> > state to figure out which pages it is accessing.
> >
> > With HTTU I suppose (without much knowledge about live migration)
> that
> > you'd need several new interfaces to the IOMMU drivers:
> >
> > * A way for VFIO to query HTTU support in the SMMU. There are some
> >   discussions about communicating more IOMMU capabilities through
> VFIO but
> >   no implementation yet. When HTTU isn't supported the DIRTY_PAGES
> bitmap
> >   would report all pages as they do now.
> >
> > * VFIO_IOMMU_DIRTY_PAGES_FLAG_START/STOP would clear the dirty
> bit
> >   for all VFIO mappings (which is going to take some time). There is a
> >   walker in io-pgtable for iova_to_phys() which could be extended. I
> >   suppose it's also possible to atomically switch the HA and HD bits in
> >   context descriptors.
> 
> Maybe we need not switch HA and HD bits, just turn on them all the time?

I think we need START/STOP, start is called when migration is started and STOP
called when migration finished.

I think you mean that during the migration(between START and STOP), HA and HD
functionality is always turned on.

> 
> >
> > * VFIO_IOMMU_DIRTY_PAGES_FLAG_GET_BITMAP would query the
> dirty bit for all
> >   VFIO mappings.
> >
We need a clear during the query which mean we have to reset the dirty status 
after a query.

> 
> I think we need to consider the case of IOMMU dirty pages logging. We
> want
> to test Kirti's VFIO migration patches combined with SMMU HTTU, any
> suggestions?

@kirti @yan @alex
As we know, you have worked on this feature for a long time, and it seems that
 everything is going very well now, thanks very much for your VFIO migration 
framework, it really helps a lot, and we want to start with SMMU HTTU enabled
 based on your jobs, it's kind of hardware dirty page tracking, and expected to bring us
 better performance, any suggestions? 

Thank you.
Zengtao 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
