Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE02C1E1203
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 17:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pGBZb4U++fBDyrIcic2xvzbX9U+H4IMpCj8k8/w3T/c=; b=T4bDeNZQhM1QQuVyeX0yg1Z8i
	Th+pVqEYzbSYazSXs51Ps4H2V6ewuV7KQ9kFrpNqNxmttR0xj70c+u9K3aiyBheLy2JccK/soT94h
	nr0Z0jXmidsKTUXGNs3r1Un77q2IqfrliBOX8knY0mNXxTgn0Q8wL1A/EyAplwA3Lx7Xald/z9tDg
	boGYSIsX/NWP/j82yJ3dUITMTQrYSginHgykLVe5Chd4rhXmVf53dBHWP3R8r73NpQoG5WVOMh3ED
	xpju9YDhGmyYaGvP/7mbXbJOQKw3an+p2NyS6M9jDCaSU4nXcPhSIL5oodl4SyN808ofjDBV+iQq1
	LbHK3tDyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdFHz-0006NB-T1; Mon, 25 May 2020 15:45:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdFHc-0006Ml-5d
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 15:44:57 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A22992071C;
 Mon, 25 May 2020 15:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590421495;
 bh=r8OCSimYRde1NwHA/0Q7MB3/3zxYFYjrUXrzd9tKjr8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jaImQu0pAsogF1OmK8r3Cbbzn3J1P85LmElRGOIs0VgCmyozC8RrwHIJ+DIMyUnqi
 NK2HPQuQAhIlUiOnqaBmX54A14oy1kBZO0SYrzxnu7F/qhagrMQENb5MLd6dYplEBc
 L86U2sMjEGtzOnzFmM953wVFfjZpoYxQR8Q8TczU=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jdFHZ-00FCGg-VI; Mon, 25 May 2020 16:44:54 +0100
MIME-Version: 1.0
Date: Mon, 25 May 2020 16:44:53 +0100
From: Marc Zyngier <maz@kernel.org>
To: Keqian Zhu <zhukeqian1@huawei.com>
Subject: Re: [RFC PATCH 0/7] kvm: arm64: Support stage2 hardware DBM
In-Reply-To: <20200525112406.28224-1-zhukeqian1@huawei.com>
References: <20200525112406.28224-1-zhukeqian1@huawei.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <4b8a939172395bf38e581634abecf925@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: zhukeqian1@huawei.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, catalin.marinas@arm.com, james.morse@arm.com,
 will@kernel.org, suzuki.poulose@arm.com, sean.j.christopherson@intel.com,
 julien.thierry.kdev@gmail.com, broonie@kernel.org, tglx@linutronix.de,
 akpm@linux-foundation.org, alexios.zavras@intel.com,
 wanghaibin.wang@huawei.com, zhengxiang9@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_084456_251679_0262CED3 
X-CRM114-Status: GOOD (  20.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Alexios Zavras <alexios.zavras@intel.com>, zhengxiang9@huawei.com,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, wanghaibin.wang@huawei.com,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-25 12:23, Keqian Zhu wrote:
> This patch series add support for stage2 hardware DBM, and it is only
> used for dirty log for now.
> 
> It works well under some migration test cases, including VM with 4K
> pages or 2M THP. I checked the SHA256 hash digest of all memory and
> they keep same for source VM and destination VM, which means no dirty
> pages is missed under hardware DBM.
> 
> However, there are some known issues not solved.
> 
> 1. Some mechanisms that rely on "write permission fault" become 
> invalid,
>    such as kvm_set_pfn_dirty and "mmap page sharing".
> 
>    kvm_set_pfn_dirty is called in user_mem_abort when guest issues 
> write
>    fault. This guarantees physical page will not be dropped directly 
> when
>    host kernel recycle memory. After using hardware dirty management, 
> we
>    have no chance to call kvm_set_pfn_dirty.

Then you will end-up with memory corruption under memory pressure.
This also breaks things like CoW, which we depend on.

> 
>    For "mmap page sharing" mechanism, host kernel will allocate a new
>    physical page when guest writes a page that is shared with other 
> page
>    table entries. After using hardware dirty management, we have no 
> chance
>    to do this too.
> 
>    I need to do some survey on how stage1 hardware DBM solve these 
> problems.
>    It helps if anyone can figure it out.
> 
> 2. Page Table Modification Races: Though I have found and solved some 
> data
>    races when kernel changes page table entries, I still doubt that 
> there
>    are data races I am not aware of. It's great if anyone can figure 
> them out.
> 
> 3. Performance: Under Kunpeng 920 platform, for every 64GB memory, KVM
>    consumes about 40ms to traverse all PTEs to collect dirty log. It 
> will
>    cause unbearable downtime for migration if memory size is too big. I 
> will
>    try to solve this problem in Patch v1.

This, in my opinion, is why Stage-2 DBM is fairly useless.
 From a performance perspective, this is the worse possible
situation. You end up continuously scanning page tables, at
an arbitrary rate, without a way to evaluate the fault rate.

One thing S2-DBM would be useful for is SVA, where a device
write would mark the S2 PTs dirty as they are shared between
CPU and SMMU. Another thing is SPE, which is essentially a DMA
agent using the CPU's PTs.

But on its own, and just to log the dirty pages, S2-DBM is
pretty rubbish. I wish arm64 had something like Intel's PML,
which looks far more interesting for the purpose of tracking
accesses.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
