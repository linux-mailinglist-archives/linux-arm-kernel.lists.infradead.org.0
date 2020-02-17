Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0DD1611A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 13:09:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+i0oHNncBcuNNs37dBglL6oBpYQrTUw1C53BYTq5q14=; b=CJmnm09OoE/a7edvlsVRdkDjM
	8k9kLc9Tkaoh1HE1Va55GvvqcPQGaHbodaYeO2FnPNd5yjvgOm3LjmM2z5pDPgiBPayFINJ8WUwaQ
	XivvF95GtbjYt37ohLipxWmXihLlHKtIe8brvTSRLkAzwCdmEpvWg8Yofutd2F77noP76VgCUgNsC
	13lVGaXcmbLcJ2uTK7fpQDt4jGAdqtFkwP24PinRUu9vCairVQCZvGBbUBViU4tQs5fbQfT60nVTB
	0X/USs2QNQi22IATj9nJNRaEhp4beTwNFF83IUV+Yq/3JIoJ9RykjRShmSGuVcB8DX8fBBSgljn4d
	NhtOZJRTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3fD3-00063E-IZ; Mon, 17 Feb 2020 12:09:09 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fCt-00061y-H2
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 12:09:01 +0000
Received: from LHREML710-CAH.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 5A01FB48AA3C8B00CA05;
 Mon, 17 Feb 2020 12:08:50 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML710-CAH.china.huawei.com (10.201.108.33) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 17 Feb 2020 12:08:50 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Mon, 17 Feb
 2020 12:08:49 +0000
Subject: Re: arm64 iommu groups issue
To: Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <maz@kernel.org>, "Will
 Deacon" <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
 Sudeep Holla <sudeep.holla@arm.com>, "Guohanjun (Hanjun Guo)"
 <guohanjun@huawei.com>
References: <9625faf4-48ef-2dd3-d82f-931d9cf26976@huawei.com>
 <4768c541-ebf4-61d5-0c5e-77dee83f8f94@arm.com>
 <a18b7f26-9713-a5c7-507e-ed70e40bc007@huawei.com>
 <ddc7eaff-c3f9-4304-9b4e-75eff2c66cd5@huawei.com>
 <be464e2a-03d5-0b2e-24ee-96d0d14fd739@arm.com>
 <35fc8d13-b1c1-6a9e-4242-284da7f00764@huawei.com>
 <68643b18-c920-f997-a6d4-a5d9177c0f4e@arm.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <828ec7b3-27af-f0b9-b4a6-0886b0c24b5a@huawei.com>
Date: Mon, 17 Feb 2020 12:08:48 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <68643b18-c920-f997-a6d4-a5d9177c0f4e@arm.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml703-chm.china.huawei.com (10.201.108.52) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_040859_714416_B0315F24 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Saravana Kannan <saravanak@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Alex
 Williamson <alex.williamson@redhat.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, iommu <iommu@lists.linux-foundation.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>>
>> Right, and even worse is that it relies on the port driver even 
>> existing at all.
>>
>> All this iommu group assignment should be taken outside device driver 
>> probe paths.
>>
>> However we could still consider device links for sync'ing the SMMU and 
>> each device probing.
> 
> Yes, we should get that for DT now thanks to the of_devlink stuff, but 
> cooking up some equivalent for IORT might be worthwhile.

It doesn't solve this problem, but at least we could remove the 
iommu_ops check in iort_iommu_xlate().

We would need to carve out a path from pci_device_add() or even 
device_add() to solve all cases.

> 
>>> Another thought that crosses my mind is that when pci_device_group()
>>> walks up to the point of ACS isolation and doesn't find an existing
>>> group, it can still infer that everything it walked past *should* be put
>>> in the same group it's then eventually going to return. Unfortunately I
>>> can't see an obvious way for it to act on that knowledge, though, since
>>> recursive iommu_probe_device() is unlikely to end well.
>>

[...]

>> And this looks to be the reason for which current 
>> iommu_bus_init()->bus_for_each_device(..., add_iommu_group) fails also.
> 
> Of course, just adding a 'correct' add_device replay without the 
> of_xlate process doesn't help at all. No wonder this looked suspiciously 
> simpler than where the first idea left off...
> 
> (on reflection, the core of this idea seems to be recycling the existing 
> iommu_bus_init walk rather than building up a separate "waiting list", 
> while forgetting that that wasn't the difficult part of the original 
> idea anyway)

We could still use a bus walk to add the group per iommu, but we would 
need an additional check to ensure the device is associated with the IOMMU.

> 
>> On this current code mentioned, the principle of this seems wrong to 
>> me - we call bus_for_each_device(..., add_iommu_group) for the first 
>> SMMU in the system which probes, but we attempt to add_iommu_group() 
>> for all devices on the bus, even though the SMMU for that device may 
>> yet to have probed.
> 
> Yes, iommu_bus_init() is one of the places still holding a 
> deeply-ingrained assumption that the ops go live for all IOMMU instances 
> at once, which is what warranted the further replay in 
> of_iommu_configure() originally. Moving that out of 
> of_platform_device_create() to support probe deferral is where the 
> trouble really started.

I'm not too familiar with the history here, but could this be reverted 
now with the introduction of of_devlink stuff?

Cheers,
John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
