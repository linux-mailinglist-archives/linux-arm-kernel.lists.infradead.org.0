Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6981E1949
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 04:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSnAdqjW5gpD1s7dZvE2vWrj1UzWTw6xFNALLk966ok=; b=qSIaxXDav9eJ4w
	8xXt6hveYiDgotH6NhgmQMjBm5rq4POMdJsvjNh5aqdnBASSnuUcA9JWU78Z2I4/hWivYObfnaYkZ
	YpkArn2EY5ZdeAYn0yfB8UHuCPvspoHotoDW63/bYKtCtbhF3YH9JtfAbyAPRCsS1Ul134gTJgz6b
	ub+vNTML27AxsMFAwdlcbD2FwJQ0/cSrqxZuogUzvq3NQNka4yrcSs1zd/+BJrUJDgetWZU8Miy5O
	u54Gs6sZrMT2haopncjBDR7hgCecmXjnG9h4jxgQyLTPRxkqfRjQY6oDVr+lPrDTmjeIvSZD7TAbJ
	A3lE7KHrn92UIaztfmbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdP1z-0004Ma-LQ; Tue, 26 May 2020 02:09:27 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdP1p-0004LB-QK
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 02:09:19 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id F30B0F64F7B95E6413C3;
 Tue, 26 May 2020 10:09:10 +0800 (CST)
Received: from [10.173.221.230] (10.173.221.230) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Tue, 26 May 2020 10:09:04 +0800
Subject: Re: [RFC PATCH 0/7] kvm: arm64: Support stage2 hardware DBM
To: Marc Zyngier <maz@kernel.org>
References: <20200525112406.28224-1-zhukeqian1@huawei.com>
 <4b8a939172395bf38e581634abecf925@kernel.org>
From: zhukeqian <zhukeqian1@huawei.com>
Message-ID: <66deb797-726f-242b-82fb-0ddee975ef15@huawei.com>
Date: Tue, 26 May 2020 10:08:52 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <4b8a939172395bf38e581634abecf925@kernel.org>
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_190918_023075_54BA2A47 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
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
Cc: Andrew Morton <akpm@linux-foundation.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org, Sean
 Christopherson <sean.j.christopherson@intel.com>,
 Alexios Zavras <alexios.zavras@intel.com>, zhengxiang9@huawei.com,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, wanghaibin.wang@huawei.com,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/5/25 23:44, Marc Zyngier wrote:
> On 2020-05-25 12:23, Keqian Zhu wrote:
>> This patch series add support for stage2 hardware DBM, and it is only
>> used for dirty log for now.
>>
>> It works well under some migration test cases, including VM with 4K
>> pages or 2M THP. I checked the SHA256 hash digest of all memory and
>> they keep same for source VM and destination VM, which means no dirty
>> pages is missed under hardware DBM.
>>
>> However, there are some known issues not solved.
>>
>> 1. Some mechanisms that rely on "write permission fault" become invalid,
>>    such as kvm_set_pfn_dirty and "mmap page sharing".
>>
>>    kvm_set_pfn_dirty is called in user_mem_abort when guest issues write
>>    fault. This guarantees physical page will not be dropped directly when
>>    host kernel recycle memory. After using hardware dirty management, we
>>    have no chance to call kvm_set_pfn_dirty.
> 
> Then you will end-up with memory corruption under memory pressure.
> This also breaks things like CoW, which we depend on.
>
Yes, these problems looks knotty. But I think x86 PML support will face these
problems too. I believe there must be some methods to solve them.
>>
>>    For "mmap page sharing" mechanism, host kernel will allocate a new
>>    physical page when guest writes a page that is shared with other page
>>    table entries. After using hardware dirty management, we have no chance
>>    to do this too.
>>
>>    I need to do some survey on how stage1 hardware DBM solve these problems.
>>    It helps if anyone can figure it out.
>>
>> 2. Page Table Modification Races: Though I have found and solved some data
>>    races when kernel changes page table entries, I still doubt that there
>>    are data races I am not aware of. It's great if anyone can figure them out.
>>
>> 3. Performance: Under Kunpeng 920 platform, for every 64GB memory, KVM
>>    consumes about 40ms to traverse all PTEs to collect dirty log. It will
>>    cause unbearable downtime for migration if memory size is too big. I will
>>    try to solve this problem in Patch v1.
> 
> This, in my opinion, is why Stage-2 DBM is fairly useless.
> From a performance perspective, this is the worse possible
> situation. You end up continuously scanning page tables, at
> an arbitrary rate, without a way to evaluate the fault rate.
> 
> One thing S2-DBM would be useful for is SVA, where a device
> write would mark the S2 PTs dirty as they are shared between
> CPU and SMMU. Another thing is SPE, which is essentially a DMA
> agent using the CPU's PTs.
> 
> But on its own, and just to log the dirty pages, S2-DBM is
> pretty rubbish. I wish arm64 had something like Intel's PML,
> which looks far more interesting for the purpose of tracking
> accesses.

Sure, PML is a better solution on hardware management of dirty state.
However, compared to optimizing hardware, optimizing software is with
shorter cycle time.

Here I have an optimization in mind to solve it. Scanning page tables
can be done parallel, which can greatly reduce time consumption. For there
is no communication between parallel CPUs, we can achieve high speedup
ratio.


> 
> Thanks,
> 
>         M.
Thanks,
Keqian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
