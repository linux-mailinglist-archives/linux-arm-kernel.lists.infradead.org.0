Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 591901484CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 13:00:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+msjkhUP5Pchpio42BdpeN60gp5iFAeXzzNbctDdX8=; b=Fp1m3j8BF4JdYG
	qIBWUDjO4EFgbpyB1qyOkQN+8yl5u8XPCOGBf/HAWejf60gnlT2Dw1RtT4at1j9Bdx0CLLDaePgf+
	/0tfe0155NQrXsN0YlMCLO0cNqTknPOdX2nqb7kQoIMrQ7pcd5NsF2QRUGf3ZdEEWQnZAnrbVR0So
	xDhWwEklnvoEoeC/iM2FNsvghiLrqz7p1WBW0pXHjvEJk0XldWZkalQjbNTbLH3ZQRfu38tOF9Cn6
	BB0TgGXBkPGB9LJD1Gir251QPb8uBWbpqhKOfduFiePtPhUrTiA1Sgy0F1xA3ouInaud1nNdntf1q
	8fORiYczIM9erXeZb0eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuxdg-0004Eo-1m; Fri, 24 Jan 2020 12:00:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuxdV-0004EP-Td
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 12:00:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C46B71FB;
 Fri, 24 Jan 2020 04:00:28 -0800 (PST)
Received: from [10.1.194.46] (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F00763F68E;
 Fri, 24 Jan 2020 04:00:26 -0800 (PST)
Subject: Re: [PATCH v2 1/6] arm64: add support for the AMU extension v1
To: Ionela Voinescu <ionela.voinescu@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-2-ionela.voinescu@arm.com>
 <05b1981b-cf4d-d990-5155-6ed3fadcca92@arm.com>
 <20200123183207.GB20475@arm.com>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <00d852b0-d456-efc3-5bfa-31524168344b@arm.com>
Date: Fri, 24 Jan 2020 12:00:25 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200123183207.GB20475@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_040030_000323_372639CE 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 sudeep.holla@arm.com, will@kernel.org, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/01/2020 18:32, Ionela Voinescu wrote:
[...]
> and later we can use information in
> AMCGCR_EL0 to get the number of architected counters (n) and
> AMEVTYPER0<n>_EL0 to find out the type. The same logic would apply to
> the auxiliary counters.
> 

Good, I think that's all we'll really need. I've not gone through the whole
series (yet!) so I might've missed AMCGCR being used.

>>> @@ -1150,6 +1152,59 @@ static bool has_hw_dbm(const struct arm64_cpu_capabilities *cap,
>>>  
>>>  #endif
>>>  
>>> +#ifdef CONFIG_ARM64_AMU_EXTN
>>> +
>>> +/*
>>> + * This per cpu variable only signals that the CPU implementation supports
>>> + * the Activity Monitors Unit (AMU) but does not provide information
>>> + * regarding all the events that it supports.
>>> + * When this amu_feat per CPU variable is true, the user of this feature
>>> + * can only rely on the presence of the 4 fixed counters. But this does
>>> + * not guarantee that the counters are enabled or access to these counters
>>> + * is provided by code executed at higher exception levels.
>>> + *
>>> + * Also, to ensure the safe use of this per_cpu variable, the following
>>> + * accessor is defined to allow a read of amu_feat for the current cpu only
>>> + * from the current cpu.
>>> + *  - cpu_has_amu_feat()
>>> + */
>>> +static DEFINE_PER_CPU_READ_MOSTLY(u8, amu_feat);
>>> +
>>
>> Why not bool?
>>
> 
> I've changed it from bool after a sparse warning about expression using
> sizeof(bool) and found this is due to sizeof(bool) being compiler
> dependent. It does not change anything but I thought it might be a good
> idea to define it as 8-bit unsigned and rely on fixed size.
> 

I believe conveying the intent (a truth value) is more important than the
underlying storage size in this case. It mostly matters when dealing with
aggregates, but here it's just a free-standing variable.

We already have a few per-CPU boolean variables in arm64/kernel/fpsimd.c
and the commits aren't even a year old, so I'd go for ignoring sparse this
time around.

> Thank you for the review,
> Ionela.
> 
>>> +inline bool cpu_has_amu_feat(void)
>>> +{
>>> +	return !!this_cpu_read(amu_feat);
>>> +}
>>> +
>>> +static void cpu_amu_enable(struct arm64_cpu_capabilities const *cap)
>>> +{
>>> +	if (has_cpuid_feature(cap, SCOPE_LOCAL_CPU)) {
>>> +		pr_info("detected CPU%d: Activity Monitors Unit (AMU)\n",
>>> +			smp_processor_id());
>>> +		this_cpu_write(amu_feat, 1);
>>> +	}
>>> +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
