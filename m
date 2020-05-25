Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5816C1E0D61
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:34:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEckBi+viXyUfNDfhoMsSVLGD6mSJdTzBCDrDRFOjF4=; b=OcPFd7NYqvVqFi
	vgRhCA5gzWjPtet+K2USgsUIj7L4HAr7aM6MdQjF0MKMlWeS0rIPb9csHvys7hXAu+IPcV7IZFOFE
	DbuOlF8IGlLYBPpcMwg7c+x+x8OVQg7yGlmRgayPHGvmmCEXtPdtrOfTqBQMuy+IHvbGtNbvdCTFg
	IwaYQiKQG5ReY+YGjrNiTI73ywdgwg5m4X4a9rQEIigeIno+AbgCLJua7XciTp5qomJgj+WsagS9D
	GToAw2ucSK8n0H3eeK4M+cF41t7D3wsRxqFm3avPWTzqJ3jRjnm+kncvFm05XOSS05j6MaKWPmcL3
	8FePnvUdsqI7SC4ld/hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBNd-0003ZE-Bb; Mon, 25 May 2020 11:34:53 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBNK-0003YF-7Y
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:34:38 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 70F0B3DFEED4FB33AF0C;
 Mon, 25 May 2020 19:34:27 +0800 (CST)
Received: from [127.0.0.1] (10.173.221.213) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.487.0;
 Mon, 25 May 2020 19:34:19 +0800
Subject: Re: [RFC] Use SMMU HTTU for DMA dirty page tracking
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
References: <b926ec0b-fe87-0792-c41d-acad56c656a4@huawei.com>
 <20200522171452.GC3453945@myrica>
From: Xiang Zheng <zhengxiang9@huawei.com>
Message-ID: <e68c1158-8573-a477-42ce-48cee510c3ce@huawei.com>
Date: Mon, 25 May 2020 19:34:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20200522171452.GC3453945@myrica>
Content-Language: en-US
X-Originating-IP: [10.173.221.213]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_043434_492889_88EF1D2F 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: alex.williamson@redhat.com, Yan Zhao <yan.y.zhao@intel.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, maz@kernel.org,
 iommu@lists.linux-foundation.org, Kirti Wankhede <kwankhede@nvidia.com>,
 wangzhou1@hisilicon.com, James Morse <james.morse@arm.com>,
 julien.thierry.kdev@gmail.com, prime.zeng@hisilicon.com,
 Wang Haibin <wanghaibin.wang@huawei.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+cc Kirti, Yan, Alex]

On 2020/5/23 1:14, Jean-Philippe Brucker wrote:
> Hi,
> 
> On Tue, May 19, 2020 at 05:42:55PM +0800, Xiang Zheng wrote:
>> Hi all,
>>
>> Is there any plan for enabling SMMU HTTU?
> 
> Not outside of SVA, as far as I know.
> 

>> I have seen the patch locates in the SVA series patch, which adds
>> support for HTTU:
>>     https://www.spinics.net/lists/arm-kernel/msg798694.html
>>
>> HTTU reduces the number of access faults on SMMU fault queue
>> (permission faults also benifit from it).
>>
>> Besides reducing the faults, HTTU also helps to track dirty pages for
>> device DMA. Is it feasible to utilize HTTU to get dirty pages on device
>> DMA during VFIO live migration?
> 
> As you know there is a VFIO interface for this under discussion:
> https://lore.kernel.org/kvm/1589781397-28368-1-git-send-email-kwankhede@nvidia.com/
> It doesn't implement an internal API to communicate with the IOMMU driver
> about dirty pages.

> 
>> If SMMU can track dirty pages, devices are not required to implement
>> additional dirty pages tracking to support VFIO live migration.
> 
> It seems feasible, though tracking it in the device might be more
> efficient. I might have misunderstood but I think for live migration of
> the Intel NIC they trap guest accesses to the device and introspect its
> state to figure out which pages it is accessing.
> 
> With HTTU I suppose (without much knowledge about live migration) that
> you'd need several new interfaces to the IOMMU drivers:
> 
> * A way for VFIO to query HTTU support in the SMMU. There are some
>   discussions about communicating more IOMMU capabilities through VFIO but
>   no implementation yet. When HTTU isn't supported the DIRTY_PAGES bitmap
>   would report all pages as they do now.
> 
> * VFIO_IOMMU_DIRTY_PAGES_FLAG_START/STOP would clear the dirty bit
>   for all VFIO mappings (which is going to take some time). There is a
>   walker in io-pgtable for iova_to_phys() which could be extended. I
>   suppose it's also possible to atomically switch the HA and HD bits in
>   context descriptors.

Maybe we need not switch HA and HD bits, just turn on them all the time?

> 
> * VFIO_IOMMU_DIRTY_PAGES_FLAG_GET_BITMAP would query the dirty bit for all
>   VFIO mappings.
> 

I think we need to consider the case of IOMMU dirty pages logging. We want
to test Kirti's VFIO migration patches combined with SMMU HTTU, any suggestions?

-- 
Thanks,
Xiang


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
