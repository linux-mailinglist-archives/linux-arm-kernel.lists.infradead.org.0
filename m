Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C005D1295CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 13:05:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ImPimnric5R+NGxeOmAIKhP7uA+dhK1RUfpeqjtHHhQ=; b=PCkfgryzUY+d6ryPkIr3uVxik
	R9bFWAhZJ9fb0v4ySQPO7nfX0W/aQHK2gbSnkRHBzn4Ar9VV8PLKAcegNcSVJ7WNBdQvON3kxaMOq
	uDK2j6Zl1+AMHOE1VkkLeolWnz0G2JDdZJXv8fE6fiaD7+QYC983OorV93+WwtVTn4zkR6JaaN1Fo
	FKJUiQ2HeXDP7wKoS0oC3S4vnIp+yDkEEi90Dv7pxQ7GKlHPB36tN+s5825JbZlyYusPYZZQtRqM9
	RC6WqiWxvLHWvXgzpsy6OPQGsXvHuwcPegQYw3nTOSiYV37sS19rVBOHSkE0P0Mwbk7SqqqPX6tp6
	EwxjyH1sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijMSt-0006Of-A2; Mon, 23 Dec 2019 12:05:35 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijMSh-0006Ld-6X
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 12:05:24 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ijMSW-0003P7-RT; Mon, 23 Dec 2019 13:05:12 +0100
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 11/18] KVM: arm64: don't trap Statistical Profiling
 controls to EL2
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 23 Dec 2019 12:05:12 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191223115651.GA42593@e119886-lin.cambridge.arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-12-andrew.murray@arm.com>
 <86bls0iqv6.wl-maz@kernel.org>
 <20191223115651.GA42593@e119886-lin.cambridge.arm.com>
Message-ID: <1bb190091362262021dbaf41b5fe601e@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: andrew.murray@arm.com, catalin.marinas@arm.com,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org, sudeep.holla@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_040523_385301_F7487FFB 
X-CRM114-Status: GOOD (  18.28  )
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
Cc: kvm@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-23 11:56, Andrew Murray wrote:
> On Sun, Dec 22, 2019 at 10:42:05AM +0000, Marc Zyngier wrote:
>> On Fri, 20 Dec 2019 14:30:18 +0000,
>> Andrew Murray <andrew.murray@arm.com> wrote:
>> >
>> > As we now save/restore the profiler state there is no need to trap
>> > accesses to the statistical profiling controls. Let's unset the
>> > _TPMS bit.
>> >
>> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
>> > ---
>> >  arch/arm64/kvm/debug.c | 2 --
>> >  1 file changed, 2 deletions(-)
>> >
>> > diff --git a/arch/arm64/kvm/debug.c b/arch/arm64/kvm/debug.c
>> > index 43487f035385..07ca783e7d9e 100644
>> > --- a/arch/arm64/kvm/debug.c
>> > +++ b/arch/arm64/kvm/debug.c
>> > @@ -88,7 +88,6 @@ void kvm_arm_reset_debug_ptr(struct kvm_vcpu 
>> *vcpu)
>> >   *  - Performance monitors (MDCR_EL2_TPM/MDCR_EL2_TPMCR)
>> >   *  - Debug ROM Address (MDCR_EL2_TDRA)
>> >   *  - OS related registers (MDCR_EL2_TDOSA)
>> > - *  - Statistical profiler (MDCR_EL2_TPMS/MDCR_EL2_E2PB)
>> >   *
>> >   * Additionally, KVM only traps guest accesses to the debug 
>> registers if
>> >   * the guest is not actively using them (see the 
>> KVM_ARM64_DEBUG_DIRTY
>> > @@ -111,7 +110,6 @@ void kvm_arm_setup_debug(struct kvm_vcpu 
>> *vcpu)
>> >  	 */
>> >  	vcpu->arch.mdcr_el2 = __this_cpu_read(mdcr_el2) & 
>> MDCR_EL2_HPMN_MASK;
>> >  	vcpu->arch.mdcr_el2 |= (MDCR_EL2_TPM |
>> > -				MDCR_EL2_TPMS |
>>
>> No. This is an *optional* feature (the guest could not be presented
>> with the SPE feature, or the the support simply not be compiled in).
>>
>> If the guest is not allowed to see the feature, for whichever 
>> reason,
>> the traps *must* be enabled and handled.
>
> I'll update this (and similar) to trap such registers when we don't 
> support
> SPE in the guest.
>
> My original concern in the cover letter was in how to prevent the 
> guest
> from attempting to use these registers in the first place - I think 
> the
> solution I was looking for is to trap-and-emulate ID_AA64DFR0_EL1 
> such that
> the PMSVer bits indicate that SPE is not emulated.

That, and active trapping of the SPE system registers resulting in 
injection
of an UNDEF into the offending guest.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
