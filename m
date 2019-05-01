Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA2010753
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 13:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b9Ie+ZB8YnCiBqCeSr6nK8wcwVFUuQVLYL2k1SZygiw=; b=kQ5MYn8j8X56jQ5kIMvWfArxh
	SDelD9pS2UpTRlE8nVa74ZnxPXU2hx1id0Q4leTwKARUrx3GYoZ7m2dAOKg8ZjBf/7CYChntvz3i3
	MP8p1H5JLEsdbwa6rsVKjCO5kIPC/H65QHVLtSuDDMWPNf8aPrG81FZ5OOdHV6wNcmNvg/Ywg2cRn
	CpSi1KsCXx26w+Dhxv/htrtkX7XrP6UEvyhqH9qLt38hkQwDupuIQ9BZccL/75tntNRAmTbrgWHno
	7hfMag75yjI2sPauZ9sG3hNXPbI+2X8BLy/apZwsFdew7VjrZ7cI+7sgiAN19mqaxq/pA4y6WEOQQ
	t6km0vC1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLn0J-000508-1d; Wed, 01 May 2019 11:02:23 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLn0B-0004zF-7B
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 11:02:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DDA5780D;
 Wed,  1 May 2019 04:02:14 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3AC263F719;
 Wed,  1 May 2019 04:02:12 -0700 (PDT)
Subject: Re: [PATCH] arm64: Demote boot and shutdown messages to pr_debug
To: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>
References: <20190430223835.23513-1-f.fainelli@gmail.com>
 <20190501104733.GB11740@lakrids.cambridge.arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <61e61f14-c991-179f-66a9-a98dcee6c10b@arm.com>
Date: Wed, 1 May 2019 12:02:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501104733.GB11740@lakrids.cambridge.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_040215_265716_582C0F9E 
X-CRM114-Status: GOOD (  29.11  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Rob Herring <robh@kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>, rmk+kernel@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>,
 Suzuki K Poulose <Suzuki.Poulose@arm.com>, Steve Capper <steve.capper@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/05/2019 11:47, Mark Rutland wrote:
> On Tue, Apr 30, 2019 at 03:38:31PM -0700, Florian Fainelli wrote:
>> Similar to commits c68b0274fb3cf ("ARM: reduce "Booted secondary
>> processor" message to debug level") and 035e787543de7 ("ARM: 8644/1: Reduce "CPU:
>> shutdown" message to debug level"), demote the secondary_start_kernel()
>> and __cpu_die() messages from info, respectively notice to debug. While
>> we are at it, also do this for cpu_psci_cpu_kill() which is redundant
>> with __cpu_die().
>>
>> This helps improve the amount of possible hotplug cycles by around +50%
>> on ARCH_BRCMSTB.
> 
> Could you elaborate on why that matters?

Yeah, in general if you have a slow serial console then removing all the 
prints from the kernel makes lots of things much faster, but that's not 
necessarily a good argument for doing so. If that's a problem that 
really concerns users then I'd have to ask why they aren't using a 
stricter loglevel or a different console to begin with.

> e.g. is this just for testing, or does this matter in some shutdown or
> hibernate scenario?
> 
>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
>> ---
>>   arch/arm64/kernel/psci.c | 2 +-
>>   arch/arm64/kernel/smp.c  | 4 ++--
>>   2 files changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
>> index 8cdaf25e99cd..a78581046c80 100644
>> --- a/arch/arm64/kernel/psci.c
>> +++ b/arch/arm64/kernel/psci.c
>> @@ -96,7 +96,7 @@ static int cpu_psci_cpu_kill(unsigned int cpu)
>>   	for (i = 0; i < 10; i++) {
>>   		err = psci_ops.affinity_info(cpu_logical_map(cpu), 0);
>>   		if (err == PSCI_0_2_AFFINITY_LEVEL_OFF) {
>> -			pr_info("CPU%d killed.\n", cpu);
>> +			pr_debug("CPU%d killed.\n", cpu);
>>   			return 0;
>>   		}
>>   
>> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
>> index 824de7038967..71fd2b5a3f0e 100644
>> --- a/arch/arm64/kernel/smp.c
>> +++ b/arch/arm64/kernel/smp.c
>> @@ -259,7 +259,7 @@ asmlinkage notrace void secondary_start_kernel(void)
>>   	 * the CPU migration code to notice that the CPU is online
>>   	 * before we continue.
>>   	 */
>> -	pr_info("CPU%u: Booted secondary processor 0x%010lx [0x%08x]\n",
>> +	pr_debug("CPU%u: Booted secondary processor 0x%010lx [0x%08x]\n",
>>   					 cpu, (unsigned long)mpidr,
>>   					 read_cpuid_id());
> 
> I generally agree that we don't need to be verbose, and demoting these
> to debug is fine, but it's a shame that these won't be accessible in
> defconfig.
> 
> I wonder if we should enable DYNAMIC_DEBUG so that we can turn these on
> from the kernel command line, or if we should have something like a
> verbose_hotplug option specifically for these messages.

We've had DYNAMIC_DEBUG=y in defconfig for a while already :/

Robin.

> 
> Thanks,
> Mark.
> 
>>   	update_cpu_boot_status(CPU_BOOT_SUCCESS);
>> @@ -348,7 +348,7 @@ void __cpu_die(unsigned int cpu)
>>   		pr_crit("CPU%u: cpu didn't die\n", cpu);
>>   		return;
>>   	}
>> -	pr_notice("CPU%u: shutdown\n", cpu);
>> +	pr_debug("CPU%u: shutdown\n", cpu);
>>   
>>   	/*
>>   	 * Now that the dying CPU is beyond the point of no return w.r.t.
>> -- 
>> 2.17.1
>>
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
