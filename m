Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2634E1FEFD2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 12:44:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sNuBwOscZ3fFOB5b3UFBzwSxUOpbhbT7/CuQrhvdoYc=; b=WOswwuMHrPwnWZtRAPAR3e5zO
	D9OBPIxacZgXy9/LwUV+xVnTAPIVdK6PSvme0FWb3vSEywp677WXDjeBxk54v+iFYo6t+BRnX9JxE
	tr9u60NIHFcQFWlMLS33sF0gnWQjVl+zoFd9heh6P/SDH9GB2BPN6LHf9sOLoPCpPabPMT09sCD0B
	hDH8eM3qa2UmDc/lluk6x2p7h6iKviHEOEd4I0EQ9CNU5yiBpyjM4+8UsQlR+dzd3BTrCg2hNggE9
	EN+3FDjw6fz4/XEfCJNx6pBtQsyGJe8rR6zuXii0fC9RPyuTmgYT25vibkHHhRCqfphLeUXk+MJT3
	nDOL06sOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jls1i-00009X-5m; Thu, 18 Jun 2020 10:44:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jls1Z-000090-Mj
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 10:44:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 85A7E1045;
 Thu, 18 Jun 2020 03:44:00 -0700 (PDT)
Received: from [192.168.1.84] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 432363F6CF;
 Thu, 18 Jun 2020 03:43:57 -0700 (PDT)
Subject: Re: [RFC PATCH 1/2] arm64: kvm: Save/restore MTE registers
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200617123844.29960-1-steven.price@arm.com>
 <20200617123844.29960-2-steven.price@arm.com> <20200617140546.GE5388@gaia>
From: Steven Price <steven.price@arm.com>
Message-ID: <313f5656-b306-72bb-5804-40d20a2cba1e@arm.com>
Date: Thu, 18 Jun 2020 11:43:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200617140546.GE5388@gaia>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_034401_780400_F991594A 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dave P Martin <Dave.Martin@arm.com>, James Morse <James.Morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/06/2020 15:05, Catalin Marinas wrote:
> On Wed, Jun 17, 2020 at 01:38:43PM +0100, Steven Price wrote:
>> diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
>> index 75b1925763f1..6ecee1528566 100644
>> --- a/arch/arm64/kvm/hyp/sysreg-sr.c
>> +++ b/arch/arm64/kvm/hyp/sysreg-sr.c
>> @@ -26,6 +26,12 @@
>>   static void __hyp_text __sysreg_save_common_state(struct kvm_cpu_context *ctxt)
>>   {
>>   	ctxt->sys_regs[MDSCR_EL1]	= read_sysreg(mdscr_el1);
>> +	if (system_supports_mte()) {
>> +		ctxt->sys_regs[RGSR_EL1] = read_sysreg_s(SYS_RGSR_EL1);
>> +		ctxt->sys_regs[GCR_EL1] = read_sysreg_s(SYS_GCR_EL1);
>> +		ctxt->sys_regs[TFSRE0_EL1] = read_sysreg_s(SYS_TFSRE0_EL1);
>> +		ctxt->sys_regs[TFSR_EL1] = read_sysreg_s(SYS_TFSR_EL1);
>> +	}
> 
> TFSR_EL1 is not a common register as we have the TFSR_EL2 as well. So
> you'd have to access it as read_sysreg_el1(SYS_TFSR) so that, in the VHE
> case, it generates TFSR_EL12, otherwise you just save the host register.

Ah, thanks for pointing that out - I'd got myself confused with the 
whole VHE _EL12 registers. I'd managed to miss that TFSR is banked.

> Also, since TFSR*_EL1 can be set asynchronously, I think we need to set
> the SCTLR_EL2.ITFSB bit so that the register update is synchronised on
> entry to EL2. With VHE we get this automatically as part of
> SCTLR_EL1_SET but it turns out that we have another SCTLR_ELx_FLAGS
> macro for the non-VHE case (why not calling this SCTLR_EL2_* I have no
> idea).

I hadn't noticed that there was a different set for the non-VHE case 
which was missing ITFSB - I'll update that.

Thanks,

Steve

>>   	/*
>>   	 * The host arm64 Linux uses sp_el0 to point to 'current' and it must
>> @@ -99,6 +105,12 @@ NOKPROBE_SYMBOL(sysreg_save_guest_state_vhe);
>>   static void __hyp_text __sysreg_restore_common_state(struct kvm_cpu_context *ctxt)
>>   {
>>   	write_sysreg(ctxt->sys_regs[MDSCR_EL1],	  mdscr_el1);
>> +	if (system_supports_mte()) {
>> +		write_sysreg_s(ctxt->sys_regs[RGSR_EL1], SYS_RGSR_EL1);
>> +		write_sysreg_s(ctxt->sys_regs[GCR_EL1], SYS_GCR_EL1);
>> +		write_sysreg_s(ctxt->sys_regs[TFSRE0_EL1], SYS_TFSRE0_EL1);
>> +		write_sysreg_s(ctxt->sys_regs[TFSR_EL1], SYS_TFSR_EL1);
>> +	}
> 
> Similarly here, you override the TFSR_EL2 with VHE enabled.
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
