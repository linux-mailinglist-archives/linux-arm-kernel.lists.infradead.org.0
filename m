Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB0E1B6F3D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 09:45:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONWpKqjjoAGksHjAjBKdNtAjqDCc5ldvfH255VOJcas=; b=LX0zO2h1o426mJ
	pkKvuNdHCriAvn0tcodJSLCvSL9I4/hbsC3elLbQ5x1GFPm1KoX1wsx3xva8wMX+X8UnKoEf6hlXo
	JnQq29GywM//klsPKP7S83EKCDVHvj0dzcHz4dJWgj+P/OIX1IIyve1+t/TC8iprYmadNuaWbjc0z
	OFRWKmUTvhmq13pMoFVPBl1Hltf39wdShi63J8LwnkQ1HVpgfABNuZ2WTNKGoizuwEMRcgutD7Vck
	MUZVMJr9xBcv7UewJcFVuEACaPJrCuH3KvUjhBJQ+V7wV39eDpuLHoa735PTM3bRI3OkiI8IpPcFY
	TJ7a75AEovTcYOj3lVmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRt1U-0007PM-Hn; Fri, 24 Apr 2020 07:45:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRt1J-0006el-Qw
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 07:45:12 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6AB220704;
 Fri, 24 Apr 2020 07:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587714309;
 bh=bgQUeLtR5/7GCj8flGJ20OIZAJat0izFGHC+rQxM1Nw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZYezxYGsy/G1/2Jk5bMxQlxiWkn+K1nNr7hI7ZppcXRhc8cg98jCrayPkkBrdIisP
 GQdWFFKlqM2rLs5qeqWiQvTeMhc9jvcpu863z+OFOYVW7Q7JiYRoAF0sFpOyPKHEVd
 jEfBF2WmiIdN2XcMiyBclLkmiiCrfBC9RLg6c8k8=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jRt1H-005zJu-9N; Fri, 24 Apr 2020 08:45:07 +0100
Date: Fri, 24 Apr 2020 08:45:05 +0100
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH 18/26] KVM: arm64: Don't use empty structures as CPU
 reset state
Message-ID: <20200424084505.6b0afc94@why>
In-Reply-To: <77963c60-bcc4-0c9e-fd35-d696827ea55c@huawei.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-19-maz@kernel.org>
 <77963c60-bcc4-0c9e-fd35-d696827ea55c@huawei.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, will@kernel.org,
 andre.przywara@arm.com, Dave.Martin@arm.com, gcherian@marvell.com,
 prime.zeng@hisilicon.com, catalin.marinas@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_004511_318617_B61C3EE0 
X-CRM114-Status: GOOD (  21.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: kvm@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 kvmarm@lists.cs.columbia.edu, George Cherian <gcherian@marvell.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On Fri, 24 Apr 2020 12:07:50 +0800
Zenghui Yu <yuzenghui@huawei.com> wrote:

> Hi Marc,
> 
> On 2020/4/22 20:00, Marc Zyngier wrote:
> > Keeping empty structure as the vcpu state initializer is slightly
> > wasteful: we only want to set pstate, and zero everything else.
> > Just do that.
> > 
> > Signed-off-by: Marc Zyngier <maz@kernel.org>
> > ---
> >   arch/arm64/kvm/reset.c | 20 +++++++++-----------
> >   1 file changed, 9 insertions(+), 11 deletions(-)
> > 
> > diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
> > index 241db35a7ef4f..895d7d9ad1866 100644
> > --- a/arch/arm64/kvm/reset.c
> > +++ b/arch/arm64/kvm/reset.c
> > @@ -37,15 +37,11 @@ static u32 kvm_ipa_limit;
> >   /*
> >    * ARMv8 Reset Values
> >    */
> > -static const struct kvm_regs default_regs_reset = {
> > -	.regs.pstate = (PSR_MODE_EL1h | PSR_A_BIT | PSR_I_BIT |
> > -			PSR_F_BIT | PSR_D_BIT),
> > -};
> > +#define VCPU_RESET_PSTATE_EL1	(PSR_MODE_EL1h | PSR_A_BIT | PSR_I_BIT | \
> > +				 PSR_F_BIT | PSR_D_BIT)  
> >   > -static const struct kvm_regs default_regs_reset32 = {  
> > -	.regs.pstate = (PSR_AA32_MODE_SVC | PSR_AA32_A_BIT |
> > -			PSR_AA32_I_BIT | PSR_AA32_F_BIT),
> > -};
> > +#define VCPU_RESET_PSTATE_SVC	(PSR_AA32_MODE_SVC | PSR_AA32_A_BIT | \
> > +				 PSR_AA32_I_BIT | PSR_AA32_F_BIT)  
> >   >   static bool cpu_has_32bit_el1(void)  
> >   {
> > @@ -261,6 +257,7 @@ int kvm_reset_vcpu(struct kvm_vcpu *vcpu)
> >   	const struct kvm_regs *cpu_reset;
> >   	int ret = -EINVAL;
> >   	bool loaded;
> > +	u32 pstate;  
> >   >   	/* Reset PMU outside of the non-preemptible section */  
> >   	kvm_pmu_vcpu_reset(vcpu);
> > @@ -291,16 +288,17 @@ int kvm_reset_vcpu(struct kvm_vcpu *vcpu)
> >   		if (test_bit(KVM_ARM_VCPU_EL1_32BIT, vcpu->arch.features)) {
> >   			if (!cpu_has_32bit_el1())
> >   				goto out;
> > -			cpu_reset = &default_regs_reset32;
> > +			pstate = VCPU_RESET_PSTATE_SVC;
> >   		} else {
> > -			cpu_reset = &default_regs_reset;
> > +			pstate = VCPU_RESET_PSTATE_EL1;
> >   		}  
> >   >   		break;  
> >   	}  
> >   >   	/* Reset core registers */  
> > -	memcpy(vcpu_gp_regs(vcpu), cpu_reset, sizeof(*cpu_reset));
> > +	memset(vcpu_gp_regs(vcpu), 0, sizeof(*cpu_reset));  
> 
> Be careful that we can *not* use 'sizeof(*cpu_reset)' here anymore.  As
> you're going to refactor the layout of the core registers whilst keeping
> the kvm_regs API unchanged.  Resetting the whole kvm_regs will go
> corrupting some affected registers and make them temporarily invalid.
> The bad thing will show up after you start moving ELR_EL1 around,
> specifically in patch #20...

Ah, awesome find! Yes, it is pretty obvious now that you point it out.
If I had removed this now useless cpu_reset variable, I'd have spotted
it!

> And the first victim is ... MPIDR_EL1 (the first one in sys_regs array).
> Now you know how this was spotted ;-)  I think this should be the root
> cause of what Zengtao had previously reported [*].

It'd be good if Zengtao could confirm that changing this line to

	memset(vcpu_gp_regs(vcpu), 0, sizeof(*vcpu_gp_regs(vcpu)));

fixes his problem.

> If these registers are all expected to be reset to architecturally
> UNKNOWN values, I think we can just drop this memset(), though haven't
> check with the ARM ARM carefully.

D1.9.1 ("PE state on reset to AArch64 state"):

"All general-purpose, and SIMD and floating-point registers are
UNKNOWN."

There is a vaguely similar wording for AArch32 (G1.17.1), although it
is only described by omission:

"Immediately after a reset, much of the PE state is UNKNOWN. However,
some of the PE state is defined."

and the GPRs are not part of the list of defined states.

Still, I'm worried to change KVM's behaviour after so long... I'll have
a try with a handful of non-Linux guests and see if anything breaks.

Thanks again,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
