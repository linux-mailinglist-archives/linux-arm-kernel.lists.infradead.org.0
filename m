Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE80E19B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fy33dQ+boseivLh3CLmT1bHRUADP0FEYgtywZjlUjGI=; b=J7C5zaZ/KGTINjB/P1gt6za5e
	NRNUUMzouIumlslkwK+9x50Mk8ntyibDeLfw85G1QmWiLRacmaqf7cae5H5Xuu3O7dBlYMey7VH+T
	55uDbh+WGLfNNJbpVycPFjxfFVj6/CBUNGBEfQf2rxd6TssDc1RMGT0Sl7EO7RnSeUWPgRep757ks
	aRDwqjTFiIXr4r19Zb4zDNcN3iZQyb3ZiYBOGSiE7a58wMD8HAPObQgIw+/guWvUnOHmxUHJkaSdJ
	O8kc49k/4WvTyVUFZZ/5QNVvQ/MWnZQiVQRkGYGaURL+p5WZz9PW1GXttTJYKVBmpnGqAS724Qr+j
	viiNO/K1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFW4-0003qQ-0X; Wed, 23 Oct 2019 12:13:28 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFVv-0003pu-Jt
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:13:21 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iNFVq-0001TZ-BF; Wed, 23 Oct 2019 14:13:14 +0200
To: "liwei (GF)" <liwei391@huawei.com>
Subject: Re: [PATCH v3 1/2] arm64: Relax =?UTF-8?Q?ICC=5FPMR=5FEL=31=20acc?=
 =?UTF-8?Q?esses=20when=20ICC=5FCTLR=5FEL=31=2EPMHE=20is=20clear?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 23 Oct 2019 13:13:14 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <ad164b94-06af-ffe7-b8ff-317b4078b1a5@huawei.com>
References: <20191002090613.14236-1-maz@kernel.org>
 <20191002090613.14236-2-maz@kernel.org>
 <ad164b94-06af-ffe7-b8ff-317b4078b1a5@huawei.com>
Message-ID: <4ed2ed389a81cc0ec6f3150ce38517a5@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: liwei391@huawei.com, will@kernel.org,
 catalin.marinas@arm.com, suzuki.poulose@arm.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, huawei.libin@huawei.com, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_051319_802243_AB732C26 
X-CRM114-Status: GOOD (  22.01  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 huawei.libin@huawei.com, guohanjun@huawei.com, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wei,

On 2019-10-23 09:38, liwei (GF) wrote:
> Hi Marc,
>
> On 2019/10/2 17:06, Marc Zyngier wrote:
>> The GICv3 architecture specification is incredibly misleading when 
>> it
>> comes to PMR and the requirement for a DSB. It turns out that this 
>> DSB
>> is only required if the CPU interface sends an Upstream Control
>> message to the redistributor in order to update the RD's view of 
>> PMR.
>>
>> This message is only sent when ICC_CTLR_EL1.PMHE is set, which isn't
>> the case in Linux. It can still be set from EL3, so some special 
>> care
>> is required. But the upshot is that in the (hopefuly large) majority
>> of the cases, we can drop the DSB altogether.
>>
>> This relies on a new static key being set if the boot CPU has PMHE
>> set. The drawback is that this static key has to be exported to
>> modules.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: James Morse <james.morse@arm.com>
>> Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
>> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>  arch/arm64/include/asm/barrier.h   | 12 ++++++++++++
>>  arch/arm64/include/asm/daifflags.h |  3 ++-
>>  arch/arm64/include/asm/irqflags.h  | 19 ++++++++++---------
>>  arch/arm64/include/asm/kvm_host.h  |  3 +--
>>  arch/arm64/kernel/entry.S          |  6 ++++--
>>  arch/arm64/kvm/hyp/switch.c        |  4 ++--
>>  drivers/irqchip/irq-gic-v3.c       | 20 ++++++++++++++++++++
>>  include/linux/irqchip/arm-gic-v3.h |  2 ++
>>  8 files changed, 53 insertions(+), 16 deletions(-)
>>
>> diff --git a/arch/arm64/include/asm/barrier.h 
>> b/arch/arm64/include/asm/barrier.h
>> index e0e2b1946f42..7d9cc5ec4971 100644
>> --- a/arch/arm64/include/asm/barrier.h
>> +++ b/arch/arm64/include/asm/barrier.h
>> @@ -29,6 +29,18 @@
>>  						 SB_BARRIER_INSN"nop\n",	\
>>  						 ARM64_HAS_SB))
>>
>> +#ifdef CONFIG_ARM64_PSEUDO_NMI
>> +#define pmr_sync()						\
>> +	do {							\
>> +		extern struct static_key_false gic_pmr_sync;	\
>> +								\
>> +		if (static_branch_unlikely(&gic_pmr_sync))	\
>> +			dsb(sy);				\
>> +	} while(0)
>> +#else
>> +#define pmr_sync()	do {} while (0)
>> +#endif
>> +
>
> Thank you for solving this problem, it helps a lot indeed.
>
> The pmr_sync() will call dsb(sy) when ARM64_PSEUDO_NMI=y and
> gic_pmr_sync=force,
> but if pseudo nmi is not enabled through boot option, it just take 
> one more
> redundant calling than before at the following two place.
>
> I think change dsb(sy) to
> +                       asm volatile(ALTERNATIVE("nop", "dsb sy",     
>  \
> +                               ARM64_HAS_IRQ_PRIO_MASKING)     \
> +                               : : : "memory");                \
> may be more appropriate.

I'm not sure I understand what you mean. The static key defaults to 
false,
so if pseudo_nmi is not enabled, this dsb(sy) is simply never executed.

Am I missing something obvious?

Thanks,

         M.

>
> Thanks,
> Wei
>
>>
>> @@ -34,14 +35,14 @@ static inline void arch_local_irq_enable(void)
>>  	}
>>
>>  	asm volatile(ALTERNATIVE(
>> -		"msr	daifclr, #2		// arch_local_irq_enable\n"
>> -		"nop",
>> -		__msr_s(SYS_ICC_PMR_EL1, "%0")
>> -		"dsb	sy",
>> +		"msr	daifclr, #2		// arch_local_irq_enable",
>> +		__msr_s(SYS_ICC_PMR_EL1, "%0"),
>>  		ARM64_HAS_IRQ_PRIO_MASKING)
>>  		:
>>  		: "r" ((unsigned long) GIC_PRIO_IRQON)
>>  		: "memory");
>> +
>> +	pmr_sync();
>>  }
>>
>>  static inline void arch_local_irq_disable(void)
>> @@ -116,14 +117,14 @@ static inline unsigned long 
>> arch_local_irq_save(void)
>>  static inline void arch_local_irq_restore(unsigned long flags)
>>  {
>>  	asm volatile(ALTERNATIVE(
>> -			"msr	daif, %0\n"
>> -			"nop",
>> -			__msr_s(SYS_ICC_PMR_EL1, "%0")
>> -			"dsb	sy",
>> -			ARM64_HAS_IRQ_PRIO_MASKING)
>> +		"msr	daif, %0",
>> +		__msr_s(SYS_ICC_PMR_EL1, "%0"),
>> +		ARM64_HAS_IRQ_PRIO_MASKING)
>>  		:
>>  		: "r" (flags)
>>  		: "memory");
>> +
>> +	pmr_sync();
>>  }
>>

-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
