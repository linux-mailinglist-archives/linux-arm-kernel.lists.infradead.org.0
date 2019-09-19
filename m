Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC89B7CF4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6DrVk2l85CwOrib/nSwujoQgtBSWaLKwdEXAe+N8/go=; b=pdpL7xJYFrQsUZtfRn43fQ6gP
	KUoPDDPocWS5i8LaYhsy/sez1OffXSc/8ipxDrZWGqENA8HA/yPanawlo6x+UfeCGd5YOFzo5MA5X
	FSUTXxcj6Bcj70xxRXvsDo9ty4EfYXNOnjyDbFi/dBLNZd3jVNq911J37D/a7egQ18RcPLrmzPnEr
	bLI+FvTkzB2KhTuTltsmqzrK/6qxeOaURe4dZ7O+nKuCKtuxtG3t+K2TptgSNUn+i97uRv1YbUykJ
	bT95EhBe56dDIgPXUM/64Xycrl2T6pjik5JlKP3BH4sPkG69bK0Cu6hd7H8fxCdX3hHlSYtM+HmjA
	nQCwGAU+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxX9-0007WZ-SH; Thu, 19 Sep 2019 14:35:47 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxWw-0007Vu-Cf
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:35:36 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id D07CF8849E71097B62BE;
 Thu, 19 Sep 2019 22:35:25 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.179) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 19 Sep 2019 22:35:16 +0800
From: John Garry <john.garry@huawei.com>
Subject: Re: arm64 iommu groups issue
To: Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <maz@kernel.org>, "Will
 Deacon" <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
 Sudeep Holla <sudeep.holla@arm.com>, "Guohanjun (Hanjun Guo)"
 <guohanjun@huawei.com>
References: <9625faf4-48ef-2dd3-d82f-931d9cf26976@huawei.com>
 <4768c541-ebf4-61d5-0c5e-77dee83f8f94@arm.com>
Message-ID: <a18b7f26-9713-a5c7-507e-ed70e40bc007@huawei.com>
Date: Thu, 19 Sep 2019 15:35:08 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <4768c541-ebf4-61d5-0c5e-77dee83f8f94@arm.com>
X-Originating-IP: [10.202.227.179]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_073535_011785_4CA8EE73 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, iommu <iommu@lists.linux-foundation.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/09/2019 14:25, Robin Murphy wrote:
>> When the port eventually probes it gets a new, separate group.
>>
>> This all seems to be as the built-in module init ordering is as
>> follows: pcieport drv, smmu drv, mlx5 drv
>>
>> I notice that if I build the mlx5 drv as a ko and insert after boot,
>> all functions + pcieport are in the same group:
>>
>> [   11.530046] hisi_sas_v2_hw HISI0162:01: Adding to iommu group 0
>> [   17.301093] hns_dsaf HISI00B2:00: Adding to iommu group 1
>> [   18.743600] ehci-platform PNP0D20:00: Adding to iommu group 2
>> [   20.212284] pcieport 0002:f8:00.0: Adding to iommu group 3
>> [   20.356303] pcieport 0004:88:00.0: Adding to iommu group 4
>> [   20.493337] pcieport 0005:78:00.0: Adding to iommu group 5
>> [   20.702999] pcieport 000a:10:00.0: Adding to iommu group 6
>> [   20.859183] pcieport 000c:20:00.0: Adding to iommu group 7
>> [   20.996140] pcieport 000d:30:00.0: Adding to iommu group 8
>> [   21.152637] serial 0002:f9:00.0: Adding to iommu group 3
>> [   21.346991] serial 0002:f9:00.1: Adding to iommu group 3
>> [  100.754306] mlx5_core 000a:11:00.0: Adding to iommu group 6
>> [  101.420156] mlx5_core 000a:11:00.1: Adding to iommu group 6
>> [  292.481714] mlx5_core 000a:11:00.2: Adding to iommu group 6
>> [  293.281061] mlx5_core 000a:11:00.3: Adding to iommu group 6
>>
>> This does seem like a problem for arm64 platforms which don't support
>> ACS, yet enable an SMMU. Maybe also a problem even if they do support
>> ACS.
>>
>> Opinion?
>

Hi Robin,

> Yeah, this is less than ideal.

For sure. Our production D05 boards don't ship with the SMMU enabled in 
BIOS, but it would be slightly concerning in this regard if they did.

 > One way to bodge it might be to make
> pci_device_group() also walk downwards to see if any non-ACS-isolated
> children already have a group, rather than assuming that groups get
> allocated in hierarchical order, but that's far from ideal.

Agree.

My own workaround was to hack the mentioned iort code to defer the PF 
probe if the parent port had also yet to probe.

>
> The underlying issue is that, for historical reasons, OF/IORT-based
> IOMMU drivers have ended up with group allocation being tied to endpoint
> driver probing via the dma_configure() mechanism (long story short,
> driver probe is the only thing which can be delayed in order to wait for
> a specific IOMMU instance to be ready).However, in the meantime, the
> IOMMU API internals have evolved sufficiently that I think there's a way
> to really put things right - I have the spark of an idea which I'll try
> to sketch out ASAP...
>

OK, great.

Thanks,
John

> Robin.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
