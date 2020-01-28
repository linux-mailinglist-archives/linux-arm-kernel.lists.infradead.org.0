Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F2214BE7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 18:26:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5TJIf1TUN2Q1/s+8POV6l6eVhz0E8TE9XtP2cX0jGUk=; b=MFiQZGs8D1AtcSV7g0TFZyhEo
	XwvvDJWqu3lBILAJj6KqWnihf5cAVAtTNT+LBzPeOoZU90OAldjgD8jPd2Na5yvqggBwToccPA/hy
	63GbNyMhpoHphDYK1NBioc0pqk+orO98YPm1JKYVHqS+1E4HcHk33ClrDotVIT2Fzj1A3tj6yvkqb
	NC9cq1w/1xWmJ+mPiyPix250H6pQkZfP9K8S36iS+IIS8A+lbtm83Fns3nEW4ai6c47+ubl4AJ71L
	PYKfi0egHYXDXm/V8sMEpWr28/bcF6rOdPMl+VxPEV70B3oZrbU3RpMlAu2e/1REdHeqJ+QZQ4f9w
	ofXvDpb6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwUda-0000Qc-5G; Tue, 28 Jan 2020 17:26:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwUdP-0000Pn-7k
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 17:26:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 496B9328;
 Tue, 28 Jan 2020 09:26:42 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 47B503F52E;
 Tue, 28 Jan 2020 09:26:40 -0800 (PST)
Subject: Re: [PATCH v2 3/6] arm64/kvm: disable access to AMU registers from
 kvm guests
To: Valentin Schneider <valentin.schneider@arm.com>,
 Ionela Voinescu <ionela.voinescu@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, mark.rutland@arm.com, maz@kernel.org, sudeep.holla@arm.com,
 dietmar.eggemann@arm.com
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-4-ionela.voinescu@arm.com>
 <bc3f582c-9aed-8052-d0cb-b39c76c8ce73@arm.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <0690745f-fa38-f623-30a5-42d0eadfb668@arm.com>
Date: Tue, 28 Jan 2020 17:26:39 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <bc3f582c-9aed-8052-d0cb-b39c76c8ce73@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_092643_365316_9D7E65A1 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/01/2020 15:33, Valentin Schneider wrote:
> On 18/12/2019 18:26, Ionela Voinescu wrote:
>> diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
>> index 6e5d839f42b5..dd20fb185d56 100644
>> --- a/arch/arm64/include/asm/kvm_arm.h
>> +++ b/arch/arm64/include/asm/kvm_arm.h
>> @@ -266,10 +266,11 @@
>>   #define CPTR_EL2_TFP_SHIFT 10
>>   
>>   /* Hyp Coprocessor Trap Register */
>> -#define CPTR_EL2_TCPAC	(1 << 31)
>> -#define CPTR_EL2_TTA	(1 << 20)
>> -#define CPTR_EL2_TFP	(1 << CPTR_EL2_TFP_SHIFT)
>>   #define CPTR_EL2_TZ	(1 << 8)
>> +#define CPTR_EL2_TFP	(1 << CPTR_EL2_TFP_SHIFT)
>> +#define CPTR_EL2_TTA	(1 << 20)
>> +#define CPTR_EL2_TAM	(1 << 30)
>> +#define CPTR_EL2_TCPAC	(1 << 31)
> 
> Nit: why the #define movement? Couldn't that just be added beneath
> CPTR_EL2_TCPAC?
> 
>>   #define CPTR_EL2_RES1	0x000032ff /* known RES1 bits in CPTR_EL2 */
>>   #define CPTR_EL2_DEFAULT	CPTR_EL2_RES1
>>   
>> diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
>> index 72fbbd86eb5e..0bca87a2621f 100644
>> --- a/arch/arm64/kvm/hyp/switch.c
>> +++ b/arch/arm64/kvm/hyp/switch.c
>> @@ -90,6 +90,17 @@ static void activate_traps_vhe(struct kvm_vcpu *vcpu)
>>   	val = read_sysreg(cpacr_el1);
>>   	val |= CPACR_EL1_TTA;
>>   	val &= ~CPACR_EL1_ZEN;
>> +
>> +	/*
>> +	 * With VHE enabled, we have HCR_EL2.{E2H,TGE} = {1,1}. Note that in
>> +	 * this case CPACR_EL1 has the same bit layout as CPTR_EL2, and
>> +	 * CPACR_EL1 accessing instructions are redefined to access CPTR_EL2.
>> +	 * Therefore use CPTR_EL2.TAM bit reference to activate AMU register
>> +	 * traps.
>> +	 */
>> +
>> +	val |= CPTR_EL2_TAM;
>> +
> 
> Hmm so this is a bit confusing for me, I've rewritten that part of the
> email too many times (didn't help that I'm far from being a virt guru).
> Rectifications are most welcome.
> 
> 
> First, AFAICT we *don't* have HCR_EL2.TGE set anymore at this point, it's
> cleared just a bit earlier in __activate_traps().
> 
> 
> Then, your comment suggests that when we're running this code, CPACR_EL1
> accesses are rerouted to CPTR_EL2. Annoyingly this isn't mentioned in
> the doc of CPACR_EL1, but D5.6.3 does say
> 
> """
> When ARMv8.1-VHE is implemented, and HCR_EL2.E2H is set to 1, when executing
> at EL2, some EL1 System register access instructions are redefined to access
> the equivalent EL2 register.
> """
> 
> And CPACR_EL1 is part of these, so far so good. Now, the thing is
> the doc for CPACR_EL1 *doesn't* mention any TAM bit - but CPTR_EL2 does.
> I believe what *do* want here is to set CPTR_EL2.TAM (which IIUC we end
> up doing via the rerouting).
> 
> So, providing I didn't get completely lost on the way, I have to ask:
> why do we use CPACR_EL1 here? Couldn't we use CPTR_EL2 directly?

Part of the reason is, CPTR_EL2 has different layout depending on
whether HCR_EL2.E2H == 1. e.g, CPTR_EL2.TTA move from Bit[28] to Bit[20].

So, to keep it simple, CPTR_EL2 is used for non-VHE code with the shifts
as defined by the "CPTR_EL2 when E2H=0"

if E2H == 1, CPTR_EL2 takes the layout of CPACR_EL1 and "overrides" some
of the RES0 bits in CPACR_EL1 with EL2 controls (e.g: TAM, TCPAC).
Thus we use CPACR_EL1 to keep the "shifts" non-conflicting (e.g, ZEN)
and is the right thing to do.

It is a bit confusing, but we are doing the right thing. May be we could 
improve the comment like :

	/*
	 * With VHE (HCR.E2H == 1), CPTR_EL2 has the same layout as
	 * CPACR_EL1, except for some missing controls, such as TAM.
	 * And accesses to CPACR_EL1 are routed to CPTR_EL2.
	 * Also CPTR_EL2.TAM has the same position with or without
	 * HCR.E2H == 1. Therefore, use CPTR_EL2.TAM here for
	 * trapping the AMU accesses.
	 */

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
