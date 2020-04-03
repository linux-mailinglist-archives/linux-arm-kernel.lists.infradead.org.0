Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B547519D13E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 09:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/08GpncZxeuwgpmt9gsa+z0KjEtlyC4+nwC490/tCgg=; b=ZioSWV1I+TPevd
	ZHnlIYUR1VIKMUydx8tJQVXHy9zzyaPWAI3WzB+X2SN5w69+2q6BkFb2h4//GxECc5/u/wTY8YdiF
	v4PzWaRcJlPuLKaDCauPxvOyto4VPk77CIts/jzqk9sO1HcsqIXYLvhoLHlRDHLDZFv7H9ds/acav
	3vSzKv7nhYs9IjmD2KCN1zGME6k3wPMf/SHqc/W3M3fLhZpYTLzghEkfkRO7JDwOkdgWiDPuKevko
	sUtJ/FEIONu0tHt2yGfdrkbc2ptfyiV4ZYDGQYCi6lEQz+ZbJYO0klsuK8xrZPcZ2aW+olqovB9EA
	g48SyTgYKFRIkdOHXPMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKGls-0005zA-JC; Fri, 03 Apr 2020 07:29:44 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKGld-0005vD-7Z; Fri, 03 Apr 2020 07:29:31 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C97E56251D11205EFCE1;
 Fri,  3 Apr 2020 15:29:22 +0800 (CST)
Received: from [127.0.0.1] (10.177.131.64) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.487.0; Fri, 3 Apr 2020
 15:29:13 +0800
Subject: Re: [PATCH v7 1/4] x86: kdump: move reserve_crashkernel_low() into
 crash_core.c
To: Dave Young <dyoung@redhat.com>, James Morse <james.morse@arm.com>
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <20191223152349.180172-2-chenzhou10@huawei.com>
 <20191227055458.GA14893@dhcp-128-65.nay.redhat.com>
 <09d42854-461b-e85c-ba3f-0e1173dc95b5@huawei.com>
 <20191228093227.GA19720@dhcp-128-65.nay.redhat.com>
 <77c971a4-608f-ee35-40cb-77186a2ddbd1@arm.com>
 <20200117035804.GA16926@dhcp-128-65.nay.redhat.com>
From: Chen Zhou <chenzhou10@huawei.com>
Message-ID: <22a98ad8-e799-081d-7815-6c44bd18dedd@huawei.com>
Date: Fri, 3 Apr 2020 15:29:12 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20200117035804.GA16926@dhcp-128-65.nay.redhat.com>
X-Originating-IP: [10.177.131.64]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_002929_445579_9F205088 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: kbuild test robot <lkp@intel.com>, horms@verge.net.au,
 linux-doc@vger.kernel.org, catalin.marinas@arm.com, bhsharma@redhat.com,
 xiexiuqi@huawei.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 mingo@redhat.com, tglx@linutronix.de, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave/James,

On 2020/1/17 11:58, Dave Young wrote:
> On 01/16/20 at 03:17pm, James Morse wrote:
>> Hi guys,
>>
>> On 28/12/2019 09:32, Dave Young wrote:
>>> On 12/27/19 at 07:04pm, Chen Zhou wrote:
>>>> On 2019/12/27 13:54, Dave Young wrote:
>>>>> On 12/23/19 at 11:23pm, Chen Zhou wrote:
>>>>>> In preparation for supporting reserve_crashkernel_low in arm64 as
>>>>>> x86_64 does, move reserve_crashkernel_low() into kernel/crash_core.c.
>>>>>>
>>>>>> Note, in arm64, we reserve low memory if and only if crashkernel=X,low
>>>>>> is specified. Different with x86_64, don't set low memory automatically.
>>>>>
>>>>> Do you have any reason for the difference?  I'd expect we have same
>>>>> logic if possible and remove some of the ifdefs.
>>>>
>>>> In x86_64, if we reserve crashkernel above 4G, then we call reserve_crashkernel_low()
>>>> to reserve low memory.
>>>>
>>>> In arm64, to simplify, we call reserve_crashkernel_low() at the beginning of reserve_crashkernel()
>>>> and then relax the arm64_dma32_phys_limit if reserve_crashkernel_low() allocated something.
>>>> In this case, if reserve crashkernel below 4G there will be 256M low memory set automatically
>>>> and this needs extra considerations.
>>
>>> Sorry that I did not read the old thread details and thought that is
>>> arch dependent.  But rethink about that, it would be better that we can
>>> have same semantic about crashkernel parameters across arches.  If we
>>> make them different then it causes confusion, especially for
>>> distributions.
>>
>> Surely distros also want one crashkernel* string they can use on all platforms without
>> having to detect the kernel version, platform or changeable memory layout...
>>
>>
>>> OTOH, I thought if we reserve high memory then the low memory should be
>>> needed.  There might be some exceptions, but I do not know the exact
>>> one,
>>
>>> can we make the behavior same, and special case those systems which
>>> do not need low memory reservation.
>>
>> Its tricky to work out which systems are the 'normal' ones.
>>
>> We don't have a fixed memory layout for arm64. Some systems have no memory below 4G.
>> Others have no memory above 4G.
>>
>> Chen Zhou's machine has some memory below 4G, but its too precious to reserve a large
>> chunk for kdump. Without any memory below 4G some of the drivers won't work.
>>
>> I don't see what distros can set as their default for all platforms if high/low are
>> mutually exclusive with the 'crashkernel=' in use today. How did x86 navigate this, ... or
>> was it so long ago?
> 
> It is very rare for such machine without any low memory in X86, at least
> from what I know,  so the current way just works fine.
> 
> Since arm64 is quite different, I would agree with current way
> proposed in the patch, but a question is, for those arm64 systems how can
> admin know if low crashkernel memory is needed or not?  and just skip the
> low reservation for machine with high memory installed only?

Specified size low memory is for crash dump kernel devices.
I think admin should know if there are devices needing low memory in crash dump kernel.

James, any suggestions?

Thanks,
Chen Zhou

> 
>>
>> No one else has reported a problem with the existing placement logic, hence treating this
>> 'low' thing as the 'in addition' special case.
>>
>>
>>>> previous discusses:
>>>> 	https://lkml.org/lkml/2019/6/5/670
>>>> 	https://lkml.org/lkml/2019/6/13/229
>>>
>>> Another concern from James:
>>> "
>>> With both crashk_low_res and crashk_res, we end up with two entries in /proc/iomem called
>>> "Crash kernel". Because its sorted by address, and kexec-tools stops searching when it
>>> find "Crash kernel", you are always going to get the kernel placed in the lower portion.
>>> "
>>>
>>> The kexec-tools code is iterating all "Crash kernel" ranges and add them
>>> in an array.  In X86 code, it uses the higher range to locate memory.
>>
>> Then my hurried reading of what the user-space code does was wrong!
>>
>> If kexec-tools places the kernel in the low region, there may not be enough memory left
>> for whatever purpose it was reserved for. This was the motivation for giving it a
>> different name.
> 
> Agreed,  it is still a potential problem though.  Say we have both low
> and high reserved.  Kdump kernel boots up, the kernel and drivers,
> applications will use memory, I'm not sure if there is a memory
> allocation policy to let them all use high mem first..  Anyway that is
> beyond the kexec-tools and resource name.
> 
> Thanks
> Dave
> 
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
