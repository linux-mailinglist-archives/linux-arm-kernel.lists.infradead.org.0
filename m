Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3441E3983
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 08:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4vwD4plmUDrLWryxKamZ7ntKkkdPEs6dAaGyYr5pV4=; b=XAjK4nNAkx/h0C
	e7cY0qLZPTryIYqw7DUNjukE1b691U6zgWtEXzveUEE9TiJj5BkPTfCPOvkIVevg9ZInw/l0GEKTY
	dGn2lNA3nipH3ZQYsh8P+goNpdNQPgQxJLzjmNG3qqlZPqWFrhKtiRL5+DY1QYwaot4zbGXC20/2Y
	vYAisE3e4ct2AI4qMwsgqdK1XXcpZtfQ4PEULzr+KhI9f0FjNsi1I41ybj7SS43A04OcTJ06+E3Nz
	1m+V+BA2MxmvzRmHrpXcIViRFiMIoj5ul420/geQ/oE6nqm37Th5CELtEPBXPcVexsskMF0w8Hi9D
	Us3ROBv10MKVc84+gUUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdpp5-0000j9-Mh; Wed, 27 May 2020 06:45:55 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdpou-0000i4-S3
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 06:45:46 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id EB9C06C080604E208CCE;
 Wed, 27 May 2020 14:45:33 +0800 (CST)
Received: from [127.0.0.1] (10.173.221.213) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.487.0;
 Wed, 27 May 2020 14:45:26 +0800
Subject: Re: [RFC] Use SMMU HTTU for DMA dirty page tracking
To: "Tian, Kevin" <kevin.tian@intel.com>, Jean-Philippe Brucker
 <jean-philippe@linaro.org>
References: <b926ec0b-fe87-0792-c41d-acad56c656a4@huawei.com>
 <20200522171452.GC3453945@myrica>
 <e68c1158-8573-a477-42ce-48cee510c3ce@huawei.com>
 <MWHPR11MB16454475DA1FF417CEF5A32B8CB10@MWHPR11MB1645.namprd11.prod.outlook.com>
From: Xiang Zheng <zhengxiang9@huawei.com>
Message-ID: <897a84ac-0a71-ace7-e05b-3cc9f0b05c28@huawei.com>
Date: Wed, 27 May 2020 14:45:25 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <MWHPR11MB16454475DA1FF417CEF5A32B8CB10@MWHPR11MB1645.namprd11.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.173.221.213]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_234545_078360_CA745119 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
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
Cc: "Zhao, Yan Y" <yan.y.zhao@intel.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, "maz@kernel.org" <maz@kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Kirti Wankhede <kwankhede@nvidia.com>,
 "alex.williamson@redhat.com" <alex.williamson@redhat.com>,
 James Morse <james.morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "prime.zeng@hisilicon.com" <prime.zeng@hisilicon.com>,
 Wang Haibin <wanghaibin.wang@huawei.com>, Will Deacon <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "julien.thierry.kdev@gmail.com" <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2020/5/27 11:27, Tian, Kevin wrote:
>> From: Xiang Zheng
>> Sent: Monday, May 25, 2020 7:34 PM
>>
>> [+cc Kirti, Yan, Alex]
>>
>> On 2020/5/23 1:14, Jean-Philippe Brucker wrote:
>>> Hi,
>>>
>>> On Tue, May 19, 2020 at 05:42:55PM +0800, Xiang Zheng wrote:
>>>> Hi all,
>>>>
>>>> Is there any plan for enabling SMMU HTTU?
>>>
>>> Not outside of SVA, as far as I know.
>>>
>>
>>>> I have seen the patch locates in the SVA series patch, which adds
>>>> support for HTTU:
>>>>     https://www.spinics.net/lists/arm-kernel/msg798694.html
>>>>
>>>> HTTU reduces the number of access faults on SMMU fault queue
>>>> (permission faults also benifit from it).
>>>>
>>>> Besides reducing the faults, HTTU also helps to track dirty pages for
>>>> device DMA. Is it feasible to utilize HTTU to get dirty pages on device
>>>> DMA during VFIO live migration?
>>>
>>> As you know there is a VFIO interface for this under discussion:
>>> https://lore.kernel.org/kvm/1589781397-28368-1-git-send-email-
>> kwankhede@nvidia.com/
>>> It doesn't implement an internal API to communicate with the IOMMU
>> driver
>>> about dirty pages.
> 
> We plan to add such API later, e.g. to utilize A/D bit in VT-d 2nd-level 
> page tables (Rev 3.0). 
> 

Thank you, Kevin.

When will you send this series patches? Maybe(Hope) we can also support
hardware-based dirty pages tracking via common APIs based on your patches. :)

>>
>>>
>>>> If SMMU can track dirty pages, devices are not required to implement
>>>> additional dirty pages tracking to support VFIO live migration.
>>>
>>> It seems feasible, though tracking it in the device might be more
>>> efficient. I might have misunderstood but I think for live migration of
>>> the Intel NIC they trap guest accesses to the device and introspect its
>>> state to figure out which pages it is accessing.
> 
> Does HTTU implement A/D-like mechanism in SMMU page tables, or just
> report dirty pages in a log buffer? Either way tracking dirty pages in IOMMU
> side is generic thus doesn't require device-specific tweak like in Intel NIC.
> 

Currently HTTU just implement A/D-like mechanism in SMMU page tables. We certainly
expect SMMU can also implement PML-like feature so that we can avoid walking the
whole page table to get the dirty pages.

By the way, I'm not sure whether HTTU or SLAD can help for mediated deivce.

-- 
Thanks,
Xiang


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
