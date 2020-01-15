Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D36813C55E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:14:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MbIG48yDBmyTE/gdna36ZXbNFupbISbySsiXqLCIJNY=; b=M5swQCAbo1l20HtW/ZL1ryK+A
	8DmmGss+jWAEL9epwdVECAoQ73MknfOQ6GQGKWE5UEGMLVER6BoDzhALlkFV7ldpvJwwXt0xioVC2
	M7gAilJltV6C18UOGOnyhxFY41mTzjQ2FblLCeyev+cPYh13D67o88U2YFZNBqtThveFfXSaoeW4P
	KJDELEShPtqfKlzrho0tQn+Ev+9e/p8PLjk6L72J4H61bG5iYGSLHwhtPBcytNtjXhHx1olQrL5Xv
	Fke9uonL1CJhMWLmyEsUsgcTXW78NuW1Bk74h5S4OK/dA/12ffmzsAkMnj+lw5J1uCMb4Hz45v28a
	Fcl5lrRuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjRB-00013W-8Y; Wed, 15 Jan 2020 14:14:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjQy-00012E-80
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:14:17 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7CDC24679;
 Wed, 15 Jan 2020 14:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579097651;
 bh=CaXoAkqOajL0kmg6h715f9PHn0XAZVLVKqsyXgOXacM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IfVjmj7KSiyixL26Y39CJZiiWPKnwpOP90yCrThZ4afM3dMYPowazyc4h9gC+j/q/
 AW95yu14rcNeC/TEWOUi3I0du1tfRtRn00bWjyiSecTPMTfwJDnMJG09iFY87NdN1S
 yZ3p6nWb+/NtCMwUmPpa43pUBiyDYqjj1Lq8ET1I=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1irjQw-0000fF-2L; Wed, 15 Jan 2020 14:14:10 +0000
MIME-Version: 1.0
Date: Wed, 15 Jan 2020 14:14:10 +0000
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 0/6] KVM: arm64: VCPU preempted check support
In-Reply-To: <20200113121240.GC3260@willie-the-truck>
References: <20191226135833.1052-1-yezengruan@huawei.com>
 <20200113121240.GC3260@willie-the-truck>
Message-ID: <b1d23a82d6a7caa79a99597fb83472be@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: will@kernel.org, yezengruan@huawei.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 virtualization@lists.linux-foundation.org, james.morse@arm.com,
 linux@armlinux.org.uk, suzuki.poulose@arm.com, julien.thierry.kdev@gmail.com,
 catalin.marinas@arm.com, mark.rutland@arm.com, steven.price@arm.com,
 daniel.lezcano@linaro.org, peterz@infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_061412_327058_5FE3E74A 
X-CRM114-Status: GOOD (  20.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, daniel.lezcano@linaro.org, kvm@vger.kernel.org,
 linux-doc@vger.kernel.org, peterz@infradead.org, catalin.marinas@arm.com,
 suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, Zengruan Ye <yezengruan@huawei.com>,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, linux@armlinux.org.uk,
 steven.price@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-13 12:12, Will Deacon wrote:
> [+PeterZ]
> 
> On Thu, Dec 26, 2019 at 09:58:27PM +0800, Zengruan Ye wrote:
>> This patch set aims to support the vcpu_is_preempted() functionality
>> under KVM/arm64, which allowing the guest to obtain the VCPU is
>> currently running or not. This will enhance lock performance on
>> overcommitted hosts (more runnable VCPUs than physical CPUs in the
>> system) as doing busy waits for preempted VCPUs will hurt system
>> performance far worse than early yielding.
>> 
>> We have observed some performace improvements in uninx benchmark 
>> tests.
>> 
>> unix benchmark result:
>>   host:  kernel 5.5.0-rc1, HiSilicon Kunpeng920, 8 CPUs
>>   guest: kernel 5.5.0-rc1, 16 VCPUs
>> 
>>                test-case                |    after-patch    |   
>> before-patch
>> ----------------------------------------+-------------------+------------------
>>  Dhrystone 2 using register variables   | 334600751.0 lps   | 
>> 335319028.3 lps
>>  Double-Precision Whetstone             |     32856.1 MWIPS |     
>> 32849.6 MWIPS
>>  Execl Throughput                       |      3662.1 lps   |      
>> 2718.0 lps
>>  File Copy 1024 bufsize 2000 maxblocks  |    432906.4 KBps  |    
>> 158011.8 KBps
>>  File Copy 256 bufsize 500 maxblocks    |    116023.0 KBps  |     
>> 37664.0 KBps
>>  File Copy 4096 bufsize 8000 maxblocks  |   1432769.8 KBps  |    
>> 441108.8 KBps
>>  Pipe Throughput                        |   6405029.6 lps   |   
>> 6021457.6 lps
>>  Pipe-based Context Switching           |    185872.7 lps   |    
>> 184255.3 lps
>>  Process Creation                       |      4025.7 lps   |      
>> 3706.6 lps
>>  Shell Scripts (1 concurrent)           |      6745.6 lpm   |      
>> 6436.1 lpm
>>  Shell Scripts (8 concurrent)           |       998.7 lpm   |       
>> 931.1 lpm
>>  System Call Overhead                   |   3913363.1 lps   |   
>> 3883287.8 lps
>> ----------------------------------------+-------------------+------------------
>>  System Benchmarks Index Score          |      1835.1       |      
>> 1327.6
> 
> Interesting, thanks for the numbers.
> 
> So it looks like there is a decent improvement to be had from targetted 
> vCPU
> wakeup, but I really dislike the explicit PV interface and it's already 
> been
> shown to interact badly with the WFE-based polling in 
> smp_cond_load_*().
> 
> Rather than expose a divergent interface, I would instead like to 
> explore an
> improvement to smp_cond_load_*() and see how that performs before we 
> commit
> to something more intrusive. Marc and I looked at this very briefly in 
> the
> past, and the basic idea is to register all of the WFE sites with the
> hypervisor, indicating which register contains the address being spun 
> on
> and which register contains the "bad" value. That way, you don't bother
> rescheduling a vCPU if the value at the address is still bad, because 
> you
> know it will exit immediately.
> 
> Of course, the devil is in the details because when I say "address", 
> that's
> a guest virtual address, so you need to play some tricks in the 
> hypervisor
> so that you have a separate mapping for the lockword (it's enough to 
> keep
> track of the physical address).
> 
> Our hacks are here but we basically ran out of time to work on them 
> beyond
> an unoptimised and hacky prototype:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/log/?h=kvm-arm64/pvcy
> 
> Marc -- how would you prefer to handle this?

Let me try and rebase this thing to a modern kernel (I doubt it applies 
without
conflicts to mainline). We can then have discussion about its merit on 
the list
once I post it. It'd be good to have a pointer to the benchamrks that 
have been
used here.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
