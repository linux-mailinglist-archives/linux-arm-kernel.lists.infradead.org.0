Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F16041BB37A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 03:35:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wzZ7j24e9ZrfIoYB1ultDlECy9vI79N75mCLY++W9xo=; b=VnoMBbYa5zhCE8
	yEnOqm/LOyHTj3rN4EhNV35WqndIft0WFqVQkxhFRTN/vGcP/hVMKO3mK3lU+7n0F97UsbRrmgr70
	FBZiyIWLISxZ9LeoMf05QfromxATvrN3I9ijm8pj6IWXto/SQwLjVA/luVfCp5jQRUaYrBYwaFvKR
	UKvoHddA5AUNiwdxSvf3tUUGfzhpwxeZT+x8XWVa9c2ustsj7hBE4sb579jBmBJjsHP/+PAaY+T+Q
	+/k1/0syDz7Q0i0uR0y5CaChs5H1AHaSF3LlnLK4wRwoDcPHkpoQEtCP0EJbdE2rqLxMW32/ZB6fq
	7IC4Wmvh5uh243g1x6Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTF9F-0000AG-23; Tue, 28 Apr 2020 01:34:57 +0000
Received: from szxga08-in.huawei.com ([45.249.212.255] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTF8y-0008SF-GM
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 01:34:44 +0000
Received: from DGGEMM402-HUB.china.huawei.com (unknown [172.30.72.53])
 by Forcepoint Email with ESMTP id 050A225275FAC370E7B4;
 Tue, 28 Apr 2020 09:34:34 +0800 (CST)
Received: from DGGEMM526-MBX.china.huawei.com ([169.254.8.234]) by
 DGGEMM402-HUB.china.huawei.com ([10.3.20.210]) with mapi id 14.03.0487.000;
 Tue, 28 Apr 2020 09:34:24 +0800
From: "Zengtao (B)" <prime.zeng@hisilicon.com>
To: Marc Zyngier <maz@kernel.org>, yuzenghui <yuzenghui@huawei.com>
Subject: RE: [PATCH 18/26] KVM: arm64: Don't use empty structures as CPU
 reset state
Thread-Topic: [PATCH 18/26] KVM: arm64: Don't use empty structures as CPU
 reset state
Thread-Index: AQHWGKCGXKlP0CoY30iMrQFdxO97gqiHJHkAgAA8s4CABmeP4A==
Date: Tue, 28 Apr 2020 01:34:24 +0000
Message-ID: <678F3D1BB717D949B966B68EAEB446ED3A5634AE@dggemm526-mbx.china.huawei.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-19-maz@kernel.org>
 <77963c60-bcc4-0c9e-fd35-d696827ea55c@huawei.com>
 <20200424084505.6b0afc94@why>
In-Reply-To: <20200424084505.6b0afc94@why>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.74.221.187]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_183440_730377_B07D3E44 
X-CRM114-Status: GOOD (  27.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.255 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Andre Przywara <andre.przywara@arm.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 George Cherian <gcherian@marvell.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: kvm-owner@vger.kernel.org [mailto:kvm-owner@vger.kernel.org]
> On Behalf Of Marc Zyngier
> Sent: Friday, April 24, 2020 3:45 PM
> To: yuzenghui
> Cc: linux-arm-kernel@lists.infradead.org; kvmarm@lists.cs.columbia.edu;
> kvm@vger.kernel.org; Will Deacon; Andre Przywara; Dave Martin;
> George Cherian; Zengtao (B); Catalin Marinas
> Subject: Re: [PATCH 18/26] KVM: arm64: Don't use empty structures as
> CPU reset state
> 
> Hi Zenghui,
> 
> On Fri, 24 Apr 2020 12:07:50 +0800
> Zenghui Yu <yuzenghui@huawei.com> wrote:
> 
> > Hi Marc,
> >
> > On 2020/4/22 20:00, Marc Zyngier wrote:
> > > Keeping empty structure as the vcpu state initializer is slightly
> > > wasteful: we only want to set pstate, and zero everything else.
> > > Just do that.
> > >
> > > Signed-off-by: Marc Zyngier <maz@kernel.org>
> > > ---
> > >   arch/arm64/kvm/reset.c | 20 +++++++++-----------
> > >   1 file changed, 9 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
> > > index 241db35a7ef4f..895d7d9ad1866 100644
> > > --- a/arch/arm64/kvm/reset.c
> > > +++ b/arch/arm64/kvm/reset.c
> > > @@ -37,15 +37,11 @@ static u32 kvm_ipa_limit;
> > >   /*
> > >    * ARMv8 Reset Values
> > >    */
> > > -static const struct kvm_regs default_regs_reset = {
> > > -	.regs.pstate = (PSR_MODE_EL1h | PSR_A_BIT | PSR_I_BIT |
> > > -			PSR_F_BIT | PSR_D_BIT),
> > > -};
> > > +#define VCPU_RESET_PSTATE_EL1	(PSR_MODE_EL1h |
> PSR_A_BIT | PSR_I_BIT | \
> > > +				 PSR_F_BIT | PSR_D_BIT)
> > >   > -static const struct kvm_regs default_regs_reset32 = {
> > > -	.regs.pstate = (PSR_AA32_MODE_SVC | PSR_AA32_A_BIT |
> > > -			PSR_AA32_I_BIT | PSR_AA32_F_BIT),
> > > -};
> > > +#define VCPU_RESET_PSTATE_SVC	(PSR_AA32_MODE_SVC |
> PSR_AA32_A_BIT | \
> > > +				 PSR_AA32_I_BIT | PSR_AA32_F_BIT)
> > >   >   static bool cpu_has_32bit_el1(void)
> > >   {
> > > @@ -261,6 +257,7 @@ int kvm_reset_vcpu(struct kvm_vcpu *vcpu)
> > >   	const struct kvm_regs *cpu_reset;
> > >   	int ret = -EINVAL;
> > >   	bool loaded;
> > > +	u32 pstate;
> > >   >   	/* Reset PMU outside of the non-preemptible section */
> > >   	kvm_pmu_vcpu_reset(vcpu);
> > > @@ -291,16 +288,17 @@ int kvm_reset_vcpu(struct kvm_vcpu
> *vcpu)
> > >   		if (test_bit(KVM_ARM_VCPU_EL1_32BIT,
> vcpu->arch.features)) {
> > >   			if (!cpu_has_32bit_el1())
> > >   				goto out;
> > > -			cpu_reset = &default_regs_reset32;
> > > +			pstate = VCPU_RESET_PSTATE_SVC;
> > >   		} else {
> > > -			cpu_reset = &default_regs_reset;
> > > +			pstate = VCPU_RESET_PSTATE_EL1;
> > >   		}
> > >   >   		break;
> > >   	}
> > >   >   	/* Reset core registers */
> > > -	memcpy(vcpu_gp_regs(vcpu), cpu_reset, sizeof(*cpu_reset));
> > > +	memset(vcpu_gp_regs(vcpu), 0, sizeof(*cpu_reset));
> >
> > Be careful that we can *not* use 'sizeof(*cpu_reset)' here anymore.
> As
> > you're going to refactor the layout of the core registers whilst keeping
> > the kvm_regs API unchanged.  Resetting the whole kvm_regs will go
> > corrupting some affected registers and make them temporarily invalid.
> > The bad thing will show up after you start moving ELR_EL1 around,
> > specifically in patch #20...
> 
> Ah, awesome find! Yes, it is pretty obvious now that you point it out.
> If I had removed this now useless cpu_reset variable, I'd have spotted
> it!
> 
> > And the first victim is ... MPIDR_EL1 (the first one in sys_regs array).
> > Now you know how this was spotted ;-)  I think this should be the
> root
> > cause of what Zengtao had previously reported [*].
> 
> It'd be good if Zengtao could confirm that changing this line to
> 
> 	memset(vcpu_gp_regs(vcpu), 0, sizeof(*vcpu_gp_regs(vcpu)));
> 
> fixes his problem.

I tried this change, and it did fix my problem, thanks :). 

> 
> > If these registers are all expected to be reset to architecturally
> > UNKNOWN values, I think we can just drop this memset(), though
> haven't
> > check with the ARM ARM carefully.
> 
> D1.9.1 ("PE state on reset to AArch64 state"):
> 
> "All general-purpose, and SIMD and floating-point registers are
> UNKNOWN."
> 
> There is a vaguely similar wording for AArch32 (G1.17.1), although it
> is only described by omission:
> 
> "Immediately after a reset, much of the PE state is UNKNOWN. However,
> some of the PE state is defined."
> 
> and the GPRs are not part of the list of defined states.
> 
> Still, I'm worried to change KVM's behaviour after so long... I'll have
> a try with a handful of non-Linux guests and see if anything breaks.
> 
> Thanks again,
> 
>          M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
