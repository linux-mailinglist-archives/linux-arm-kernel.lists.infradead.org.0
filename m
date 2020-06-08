Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9F31F1D5F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 18:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rPI9oEA89wyCScBSsZfOj0jE7i0NE3vPFdlvBXX6D0w=; b=NVvEIkPAVIMJg9LAB2BRKCfzB
	X9iqpSKHvW8116AHgSgMAP5JXo0MPvwoCY9l4NK4GRqB21EmoVmQJwTuv4wbwGFLE401y6qK2jABU
	fkomSnbeJh00rng25OU2WDm6WR9Ar9p2xcI4SJ6HHEBOPqiqN6HoMnfCNx5QFfi3gYE5Szr7ssUXY
	gOZ6u5+XYmKzp8CKQtOCEthQSf4nvA2H7c6pM1Un1+KaWPUnP4/vi7gncmFBX6uQWw4kNpb/tLuWu
	BXO+u0X6YLnjzPCYXJ9s7lcp0Yz0Ghkn4dtcg4OOSYVMjghLMqZ590xtfDeMrODmMV5UeZGnwxLSc
	hzw9RckuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiKgT-0005C6-KX; Mon, 08 Jun 2020 16:31:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiKgI-0005B0-QV
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 16:31:28 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58D382072F;
 Mon,  8 Jun 2020 16:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591633886;
 bh=NVh0BXCEcSYUCxgi2WuQ2scVS8On68D+KDFWkURkQNI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=1yhp1ZRDSuYK7i83ihjg/yHmweypv6NQ/77/U3CTmS+RXR22mEBnduexBjUSyAETM
 Ie5g+KHVJcV56V5Oo1zi2XTOTWrAl7XOurArMNdjX38IVuk21e7q/mAT9IkczpFgn0
 8uAFcVnl1bXVWzhDjuRZyzmQi9DE8RQ87fBSjAgI=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jiKgG-001AZA-UF; Mon, 08 Jun 2020 17:31:25 +0100
MIME-Version: 1.0
Date: Mon, 08 Jun 2020 17:31:24 +0100
From: Marc Zyngier <maz@kernel.org>
To: Andrew Scull <ascull@google.com>
Subject: Re: [PATCH] KVM: arm64: Stop sparse from moaning at __hyp_this_cpu_ptr
In-Reply-To: <20200608150035.GB96714@google.com>
References: <20200608085731.1405854-1-maz@kernel.org>
 <20200608150035.GB96714@google.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <61b7e8e75b2d60b21b20d9919fc8bafc@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: ascull@google.com, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_093126_901279_8FF706E8 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-08 16:00, Andrew Scull wrote:
> On Mon, Jun 08, 2020 at 09:57:31AM +0100, Marc Zyngier wrote:
>> Sparse complains that __hyp_this_cpu_ptr() returns something
>> that is flagged noderef and not in the correct address space
>> (both being the result of the __percpu annotation).
>> 
>> Pretend that __hyp_this_cpu_ptr() knows what it is doing by
>> forcefully casting the pointer with __kernel __force.
>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>  arch/arm64/include/asm/kvm_asm.h | 9 +++++++--
>>  1 file changed, 7 insertions(+), 2 deletions(-)
>> 
>> diff --git a/arch/arm64/include/asm/kvm_asm.h 
>> b/arch/arm64/include/asm/kvm_asm.h
>> index 0c9b5fc4ba0a..82691406d493 100644
>> --- a/arch/arm64/include/asm/kvm_asm.h
>> +++ b/arch/arm64/include/asm/kvm_asm.h
>> @@ -81,12 +81,17 @@ extern u32 __kvm_get_mdcr_el2(void);
>> 
>>  extern char __smccc_workaround_1_smc[__SMCCC_WORKAROUND_1_SMC_SZ];
>> 
>> -/* Home-grown __this_cpu_{ptr,read} variants that always work at HYP 
>> */
>> +/*
>> + * Home-grown __this_cpu_{ptr,read} variants that always work at HYP,
>> + * provided that sym is really a *symbol* and not a pointer obtained 
>> from
> 
> Look at `this_cpu_ptr` one thing that stood out was `__verify_pcpu_ptr`
> that is documented to be suitable for used in custom per CPU macros. I
> didn't get how it worked (a type check?)  but maybe it would work here
> to validate the argment was indeed a per CPU symbol?

It only works for sparse, but that is definitely a good addition while
we're fixing the sparse compliance.

Thanks,

       M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
