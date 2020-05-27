Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 954C31E3E87
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 12:04:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D82K4naCQXdt4YhzjsWL3c1kax43p0kehLNTNg3hrS0=; b=h4e4jvuqefirHP2KzWDKirl+w
	62yI5QcHIfafHNGZBbN+9a2HvTpMhQHB/Dw/EUKUNCSyN3FVBysmY1kjopupvyh1KsoiV70Yh0LIT
	PSq4hADx9cqXl1bGwzssoNiewAIhVlhWjEmMvohOVor1007p7cgPPCrK/qs4VAS4ZpP+W0yTmqe9f
	bVCYC1pDDPOZqdtV3tDyZh4NUdTVcqAdCtdaYVMgQ4xqwjP6WSYd7+CWyVTeKj6RH9eI0Ubsj1Mvf
	tn8JbYGInqhtScY7sTpZ/i3YWpYEYrgFJ3gs2HIpROU75ITP/1BjLt24x7q1oXKGJTlfxbN447kxR
	qbNolmTqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdsvA-0000Vt-Kk; Wed, 27 May 2020 10:04:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdsuw-0000V8-Uh
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 10:04:12 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6EBCA2084C;
 Wed, 27 May 2020 10:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590573850;
 bh=zSIdbYQzBzwhjrQI1hWwupDBNv6wpaxUIuCkjXojSUs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=mdxZIF05SH6elzOSo9ZapHNOQTVJUmqp6M8R2ruYxkwZfsnML55SowgexSg4vGSjR
 9BrMXLjFGrYP0ZeSZ8q1G2q8UjOZL+OwezjpS3XZ4MXV1NuaCWhNoG73aOTLSrtsLc
 wS9UJZ2vgVazwPa9OxZQ4zUZbrOv7fmLZg4hCw9E=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jdsuu-00Ff8O-Pj; Wed, 27 May 2020 11:04:08 +0100
MIME-Version: 1.0
Date: Wed, 27 May 2020 11:04:08 +0100
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 10/26] KVM: arm64: Refactor vcpu_{read,write}_sys_reg
In-Reply-To: <09da829c-1640-40fe-313f-df021759fb34@arm.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-11-maz@kernel.org>
 <09da829c-1640-40fe-313f-df021759fb34@arm.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <1612302e289ba15fb0ffbfba5ea18e3b@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, gcherian@marvell.com, prime.zeng@hisilicon.com,
 will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_030411_023191_6DEF445B 
X-CRM114-Status: GOOD (  14.46  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>, Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, kvmarm@lists.cs.columbia.edu,
 Will Deacon <will@kernel.org>, George Cherian <gcherian@marvell.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-26 17:28, James Morse wrote:
> Hi Marc,
> 
> On 22/04/2020 13:00, Marc Zyngier wrote:
>> Extract the direct HW accessors for later reuse.
> 
>> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
>> index 51db934702b64..46f218982df8c 100644
>> --- a/arch/arm64/kvm/sys_regs.c
>> +++ b/arch/arm64/kvm/sys_regs.c
> 
>> +u64 vcpu_read_sys_reg(const struct kvm_vcpu *vcpu, int reg)
>> +{
>> +	u64 val = 0x8badf00d8badf00d;
>> +
>> +	if (!vcpu->arch.sysregs_loaded_on_cpu) {
>> +		goto memory_read;
>>  	}
>> 
>> -immediate_write:
>> +	if (__vcpu_read_sys_reg_from_cpu(reg, &val))
>> +		return val;
>> +
>> +memory_read:
>> +	return __vcpu_sys_reg(vcpu, reg);
>> +}
> 
> 
> The goto here is a bit odd, is it just an artefact of how we got here?

That's because a lot of this changes when NV gets added to the mix,
see [1].

> Is this easier on the eye?:
> | u64 vcpu_read_sys_reg(const struct kvm_vcpu *vcpu, int reg)
> | {
> |	u64 val = 0x8badf00d8badf00d;
> |
> |	if (vcpu->arch.sysregs_loaded_on_cpu &&
> |	    __vcpu_read_sys_reg_from_cpu(reg, &val))
> |		return val;
> |
> | 	return __vcpu_sys_reg(vcpu, reg);
> | }

Definitely. I don't mind reworking the NV branch so that the label
gets introduced there.

>> +void vcpu_write_sys_reg(struct kvm_vcpu *vcpu, u64 val, int reg)
>> +{
>> +	if (!vcpu->arch.sysregs_loaded_on_cpu)
>> +		goto memory_write;
>> +
>> +	if (__vcpu_write_sys_reg_to_cpu(val, reg))
>> +		return;
>> +
>> +memory_write:
>>  	 __vcpu_sys_reg(vcpu, reg) = val;
>>  }
> 
> Again I think its clearer without the goto....
> 
> 
> Regardless:
> Reviewed-by: James Morse <james.morse@arm.com>

Thanks,

         M.

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/commit/?h=kvm-arm64/nv-5.7-rc1-WIP&id=11f3217d39a602cbfac7d08064c8b31afb57348e
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
