Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF32143058
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 17:59:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F7fKjWouGpy2/yJDdUEg41La/tZFXHRBpNAQHinieR8=; b=Q8oN+qcSYamhDqr7+SG6z+zI3
	PrW3xoCt87UTze8c81TJgsi//4MDXuYU8lMiD1pFAOLNRIschHbmt3onFwIg4jAViZP8wMhaDd3TA
	D1yDjpnreU34aOj93/V17E3d3LvnT6MNW8BLAndhDXSHV7hEGISsQE3d/b35SK5qez/raEBTYdx/Y
	KWMPGH/Fn2peRBfzPCDFESTY3Qp3Sba7r+DzDq2JC/ARbqJqoOXVoEh3IZ1Jc54OO7sIoZGfI01KO
	HLnlLe1kx8CObTsiOqfIcmq3LA8E1WOPwi14anJlHNhruOh5q/LjsIeJCsnuU5DrBAcsx6zmKcxXP
	cvgitGGqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itaOP-0003Xq-Us; Mon, 20 Jan 2020 16:59:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itaOB-0003Wl-B8
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 16:59:04 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C870521835;
 Mon, 20 Jan 2020 16:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579539538;
 bh=JgbDfq4EA2jDNPafHHnAdxSTTYpNwTOcFWNE/lZcRYo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=xRaaBG2RUzIt2/qE53O3BqXhDNiVF0NWdKgdhpvae2nbM9ulwMcgp+EU2KSzk4D1V
 JLYKSmQbytbQ4LreIHZyPJ1MUp6c9GYA/UpLhi1teoNiDLw9dDkosentoJQB5jmegO
 tTcbyaWnr3Hr4uj/PvtiHPcj6NmxBpIchD2Fbu4M=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1itaO9-000K5w-0t; Mon, 20 Jan 2020 16:58:57 +0000
MIME-Version: 1.0
Date: Mon, 20 Jan 2020 16:58:56 +0000
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: kvm: Annotate guest entry/exit as a single function
In-Reply-To: <20200120164522.GA20435@willie-the-truck>
References: <20200120124706.8681-1-broonie@kernel.org>
 <20200120164522.GA20435@willie-the-truck>
Message-ID: <bcd977af14883dc603c52f6d16f8bbfb@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: will@kernel.org, broonie@kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_085859_433574_671617E7 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-20 16:45, Will Deacon wrote:
> [+Marc Z]

Thanks for the heads up!

> On Mon, Jan 20, 2020 at 12:47:06PM +0000, Mark Brown wrote:
>> In an effort to clarify and simplify the annotations of assembly
>> functions in the kernel new macros have been introduced replacing 
>> ENTRY
>> and ENDPROC. There are separate annotations SYM_FUNC_ for normal C
>> functions and SYM_CODE_ for other code. Currently __guest_enter and
>> __guest_exit are annotated as standard functions but this is not
>> entirely correct as the former doesn't do a normal return and the 
>> latter
>> is not entered in a normal fashion. From the point of view of the
>> hypervisor the guest entry/exit may be viewed as a single
>> function which happens to have an eret in the middle of it so let's
>> annotate it as such.
>> 
>> Suggested-by: Mark Rutland <mark.rutland@arm.com>
>> Signed-off-by: Mark Brown <broonie@kernel.org>
>> ---
>>  arch/arm64/kvm/hyp/entry.S | 7 +++----
>>  1 file changed, 3 insertions(+), 4 deletions(-)
>> 
>> diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
>> index e5cc8d66bf53..5b76a89939b1 100644
>> --- a/arch/arm64/kvm/hyp/entry.S
>> +++ b/arch/arm64/kvm/hyp/entry.S
>> @@ -44,7 +44,7 @@
>>   * u64 __guest_enter(struct kvm_vcpu *vcpu,
>>   *		     struct kvm_cpu_context *host_ctxt);
>>   */
>> -ENTRY(__guest_enter)
>> +SYM_FUNC_START(__guest_enter)
>>  	// x0: vcpu
>>  	// x1: host context
>>  	// x2-x17: clobbered by macros
>> @@ -96,9 +96,8 @@ alternative_else_nop_endif
>>  	// Do not touch any register after this!
>>  	eret
>>  	sb
>> -ENDPROC(__guest_enter)
>> 
>> -ENTRY(__guest_exit)
>> +SYM_INNER_LABEL(__guest_exit, SYM_L_GLOBAL)
>>  	// x0: return code
>>  	// x1: vcpu
>>  	// x2-x29,lr: vcpu regs
>> @@ -192,4 +191,4 @@ abort_guest_exit_end:
>>  	msr	spsr_el2, x4
>>  	orr	x0, x0, x5
>>  1:	ret
>> -ENDPROC(__guest_exit)
>> +SYM_FUNC_END(__guest_enter)
> 
> I wondered what the INNER_LABEL thing was for! Looks good:
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> Assuming this is going via the kvm tree.

Yup, I've now picked it up.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
