Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D72ED11502D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 13:12:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xHmkAyN9LqIxABhzcfrYrgZxoYPpTQiHGoTmNw+1sow=; b=ndny9yRN8V1QZ4T2d1zOvsAca
	LQrlEfO8L8K8jMFnakofBls3YLE8VKKrT7YzzkmSudQpL8/1CRcRDV4TvM0J58GPRkRkA/exteVN0
	x71MOXqUaPh6Iu7EJpz9yuUjidEAuz8nwtR+orYJAbVxJX475bmxTebnXzlsgq2Oo/2T8smU4Rqgm
	O9dvppO8VrLjOgji1iAcERn4NJe6mh58gOg/j36xi4bROnq4uDbQgwjaPzdY9sTHNm5CTwDs9AJ8q
	l92BlUsT9nltitCXyiyNkUXRRqbsW6fPmEMaDOkg/DNhNgX9ziMd5+RUK05SC0k+YCiOiL9klo8qO
	7Gt8qthIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idCT7-00063m-UG; Fri, 06 Dec 2019 12:12:21 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idCSy-00063N-TX
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 12:12:14 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1idCSw-0002KP-Gd; Fri, 06 Dec 2019 13:12:10 +0100
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2] arm64: KVM: Invoke =?UTF-8?Q?compute=5Flayout=28?=
 =?UTF-8?Q?=29=20before=20alternatives=20are=20applied?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 06 Dec 2019 12:12:10 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191206115716.GC32767@arrakis.emea.arm.com>
References: <20191016165953.o6ogh4fdmsjmd2sw@linutronix.de>
 <ecfbb413-e97e-c3eb-e051-1f218b387edd@arm.com>
 <20191128195805.c2pryug4ohmcoqwd@linutronix.de>
 <20191206115716.GC32767@arrakis.emea.arm.com>
Message-ID: <41a90c16d6958e70524c1c54b63a7f50@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: catalin.marinas@arm.com, bigeasy@linutronix.de,
 james.morse@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, will@kernel.org,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, tglx@linutronix.de
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_041213_099987_3AC9C8F7 
X-CRM114-Status: GOOD (  13.40  )
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
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-06 11:57, Catalin Marinas wrote:
> On Thu, Nov 28, 2019 at 08:58:05PM +0100, Sebastian Andrzej Siewior 
> wrote:
>> @@ -408,6 +410,8 @@ static void __init hyp_mode_check(void)
>>  			   "CPU: CPUs started in inconsistent modes");
>>  	else
>>  		pr_info("CPU: All CPU(s) started at EL1\n");
>> +	if (IS_ENABLED(CONFIG_KVM_ARM_HOST))
>> +		kvm_compute_layout();
>>  }
>
> It looks like we call this unconditionally here even if the kernel 
> was
> booted at EL1.

It has always been the case. My motivation was to be able to debug
this in a guest, because doing this on the host is... painful! ;-)

Feel free to condition it on !EL1 though.

>
>>  void __init smp_cpus_done(unsigned int max_cpus)
>> diff --git a/arch/arm64/kvm/va_layout.c b/arch/arm64/kvm/va_layout.c
>> index 2cf7d4b606c38..dab1fea4752aa 100644
>> --- a/arch/arm64/kvm/va_layout.c
>> +++ b/arch/arm64/kvm/va_layout.c
>> @@ -22,7 +22,7 @@ static u8 tag_lsb;
>>  static u64 tag_val;
>>  static u64 va_mask;
>>
>> -static void compute_layout(void)
>> +__init void kvm_compute_layout(void)
>>  {
>>  	phys_addr_t idmap_addr = __pa_symbol(__hyp_idmap_text_start);
>>  	u64 hyp_va_msb;
>> @@ -110,9 +110,6 @@ void __init kvm_update_va_mask(struct alt_instr 
>> *alt,
>>
>>  	BUG_ON(nr_inst != 5);
>>
>> -	if (!has_vhe() && !va_mask)
>> -		compute_layout();
>> -
>>  	for (i = 0; i < nr_inst; i++) {
>>  		u32 rd, rn, insn, oinsn;
>>
>> @@ -156,9 +153,6 @@ void kvm_patch_vector_branch(struct alt_instr 
>> *alt,
>>  		return;
>>  	}
>>
>> -	if (!va_mask)
>> -		compute_layout();
>
> And here we had a few more checks.
>
> Maybe it's still correct but asking anyway.

It should be correct. These checks were there to ensure that we only 
computed
the layout once, and this now happens by construction (calling 
compute_layout
from a single location instead of doing it from the patch callbacks).

Thanks,

        M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
