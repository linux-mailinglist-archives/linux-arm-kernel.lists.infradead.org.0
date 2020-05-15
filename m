Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABF61D445A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 06:20:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lsoprn8q8fx0whyC+9mr7SdGCXK1epWavdy+TL+eWWA=; b=IqhYd2KUdeFU4+
	1VEbdqAu6vh96QGntrdpYRa1SxI69ce1fD4ZiLDtqUuDRVihULMEVQ5t3GnvWZfvutZDpD4SjUZiu
	MPe0abuFDF2AlzyR/rp5ZJdmZWeh4N9XRag2weICd6LCjZgrQhsFmpk7sH5iips8+uesx3SvlX9YX
	X/fRWnT+iWjSzu2nUuj5bdME1yI5IwxefRtc3mRYp3jQ7VKm0gEnwjgbgmBdqHuwRIJmfC15acx6P
	gupcZUvjqPX1mt6CbfwiBcMaIThvHS8wougIstOoreJsCMO8SpyqCAbZhISHWDuhvLUPPQE9048oq
	rYVjv6aDJfQjRu4nbXuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZRpr-0000K9-OL; Fri, 15 May 2020 04:20:35 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZRpj-0000JH-TN
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 04:20:30 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id CED2B789477CF5FD1381;
 Fri, 15 May 2020 12:20:18 +0800 (CST)
Received: from [10.173.221.230] (10.173.221.230) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Fri, 15 May 2020 12:20:12 +0800
Subject: Re: [Question] Hardware management of stage2 page dirty state
To: Catalin Marinas <catalin.marinas@arm.com>
References: <0767678d-d580-eb02-c2f0-423b16526736@huawei.com>
 <20200514161427.GD1907@gaia>
From: zhukeqian <zhukeqian1@huawei.com>
Message-ID: <dce26d58-7b6b-5eaf-8f7d-41361cb5cc9c@huawei.com>
Date: Fri, 15 May 2020 12:20:00 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20200514161427.GD1907@gaia>
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_212028_119942_EE7B530B 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Marc Zyngier <maz@kernel.org>, "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 yuzenghui@huawei.com, wanghaibin.wang@huawei.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On 2020/5/15 0:14, Catalin Marinas wrote:
> Hi Keqian,
> 
> On Thu, May 14, 2020 at 05:16:52PM +0800, zhukeqian wrote:
>> I have some questions after deep reading your patch
>> https://patchwork.kernel.org/patch/8824261/ which enables hardware updates
>> of the Access Flag for Stage 2 page tables.
>>
>> I notice that at the bottom of commit message, you said the following words:
>> "After some digging through the KVM code, I concluded that hardware DBM
>> (dirty bit management) support is not feasible for Stage 2. A potential
>> user would be dirty logging but this requires a different bitmap exposed
>> to Qemu and, to avoid races, the stage 2 mappings need to be mapped
>> read-only on clean, writable on fault. This assumption simplifies the
>> hardware Stage 2 AF support."
>>
>> I have three questions here.
>>
>> 1. I do not understand the reason well about "not feasible". Does the main reason
>>    for this is the "races" you referred?
> 
> IIRC, dirty logging works by having a bitmap populated by the host
> kernel when the guest writes a page. Such write triggers a stage 2 fault
> and the kernel populates the bitmap. With S2 DBM, you wouldn't get a
> fault when the guest writes the page, so the host kernel would have to
> periodically check which S2 entries became writable to update the qemu
> bitmap.
Sure, the performance problem introduced by traversing page table entries is
a defect of DBM mechanism.

> 
> I think the race I had in mind was that the bitmap still reports the
> page as clean while the guest already updated it.
> 
> Looking at this again, it may not matter much as qemu can copy those
> pages again when migrating and before control is handed over to the new
> host.
Yes, race is not a problem. Qemu will not miss dirty pages when control is
handed over to the new Qemu.

> 
>> 2. What does the "races" refer to? Do you mean the races between [hardware S2 DBM]
>>    and [dirty information collection that executed by KVM]?
> 
> Yes.
> 
>>    During VM live migration, Qemu will send dirty page iteratively and finally stop
>>    VM when dirty pages is not too much. We may miss dirty pages during each iteration
>>    before VM stop, but there are no races after VM stop, so we won't miss dirty pages
>>    finally. It seems that "races" is not a convinced reason for "not feasible".
> 
> You are probably right. But you'd have to change the dirty tracking from
> a fault mechanism to a polling one checking the S2 page tables
> periodically. Or, can you check then only once after VM stop?

Our purpose is to remove performance side effect on guest caused by fault mechanism, so we want to
use DBM from begin to end.

For now, the only problem of DBM that we can figure out is the page table traversing performance.
We have done some demo tests on this and situation is not that bad. Besides, we have come up with
some optimizations which can ease this situation effectively.

I plan to send out all test data and PATCH RFC to community next week. It should work functional
correctly but without any optimizations. After that I will add all optimizations based on PATCH
RFC and send PATCH v1.

> 
>> 3. You said that disable hardware S2 DBM support can simplify the hardware S2 AF support.
>>    Could you please explain the reason in detail?
> 
> I probably meant that it simplifies the patch rather than something
> specific to the AF support. If you add DBM, you'd need to make sure that
> making a pte read-only doesn't lose the dirty information (see
> ptep_set_wrprotect(), not sure whether KVM uses the same macro).
> 
OK, I will notice this problem, thanks!

Thanks,
Keqian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
