Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A17E0805AA
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 12:11:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PwIrkAsntAwN+X0+FEYASb1K7w8SIXMcRyWatBn3S5c=; b=QR2ALaFeazdzvN
	yCWEWf2FMLdUYtN2+atB0e1Pi3XpcOjmJRPcYgZbqzP8ZRLJNZlqkGnYtW9/cH7wENTrqITzip7e+
	G64TGwb75+oA1dtv2QQvVp/KJ3hYoNNOWYSL/rjYaxMgT02C84UgpnEuBN8HST6amluOVPOgS+k8D
	AB+dfbnU9RD0pRVnByMl0Cx4qShYxlfTRYYNJjEypIWzckaJwMlafRRtSoTxFZTmg8Ery8/zhlnGM
	e3eFXcnxkIGUcKlzrFFxuwx23NG6Hdc1UR/2EInTT/+PF0wpydVHhRgzI2I6oRo0iC/o3gJnNKasT
	JW51nTLCsgVB4B2jdKxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htr0U-0004q6-PU; Sat, 03 Aug 2019 10:11:22 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htr0K-0004pY-Ll
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 10:11:14 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1htr0B-0006eH-Tl; Sat, 03 Aug 2019 12:11:04 +0200
Date: Sat, 3 Aug 2019 11:10:47 +0100
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: kvm-unit-tests: psci_cpu_on_test FAILed
Message-ID: <20190803111047.11493907@why>
In-Reply-To: <f58de1d7-a6ca-bd6d-8423-01d27326e078@huawei.com>
References: <3ddf8766-6f02-b655-1b80-d8a7fd016509@huawei.com>
 <48a18685-ee81-83a7-9eea-63fe26690903@kernel.org>
 <f58de1d7-a6ca-bd6d-8423-01d27326e078@huawei.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, drjones@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, wanghaibin.wang@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_031112_863320_9E719D63 
X-CRM114-Status: GOOD (  28.33  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: drjones@redhat.com, kvm@vger.kernel.org, suzuki.poulose@arm.com,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 "Wanghaibin \(D\)" <wanghaibin.wang@huawei.com>, kvmarm@lists.cs.columbia.edu,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 3 Aug 2019 17:27:41 +0800
Zenghui Yu <yuzenghui@huawei.com> wrote:

> Hi Marc,
> 
> On 2019/8/2 23:56, Marc Zyngier wrote:
> > On 02/08/2019 11:56, Zenghui Yu wrote:  
> >> Hi folks,
> >>
> >> Running kvm-unit-tests with Linux 5.3.0-rc2 on Kunpeng 920, we will get
> >> the following fail info:
> >>
> >> 	[...]
> >> 	FAIL psci (4 tests, 1 unexpected failures)
> >> 	[...]
> >> and
> >> 	[...]
> >> 	INFO: unexpected cpu_on return value: caller=CPU9, ret=-2
> >> 	FAIL: cpu-on
> >> 	SUMMARY: 4 tests, 1 unexpected failures
> >>
> >>
> >> I think this is an issue had been fixed once by commit 6c7a5dce22b3
> >> ("KVM: arm/arm64: fix races in kvm_psci_vcpu_on"), which makes use of
> >> kvm->lock mutex to fix the race between two PSCI_CPU_ON calls - one
> >> does reset on the MPIDR register whilst another reads it.
> >>
> >> But commit 358b28f09f0 ("arm/arm64: KVM: Allow a VCPU to fully reset
> >> itself") later moves the reset work into check_vcpu_requests(), by
> >> making a KVM_REQ_VCPU_RESET request in PSCI code. Thus the reset work
> >> has not been protected by kvm->lock mutex anymore, and the race shows up
> >> again...
> >>
> >> Do we need a fix for this issue? At least achieve a mutex execution
> >> between the reset of MPIDR and kvm_mpidr_to_vcpu()?  
> > 
> > The thing is that the way we reset registers is marginally insane.
> > Yes, it catches most reset bugs. It also introduces many more in
> > the rest of the paths.
> > 
> > The fun part is that there is hardly a need for resetting MPIDR.
> > It has already been set when we've created the vcpu. It is the  
> 
> (That means we can let reset_mpidr() do nothing?)

It should ever be only written once, as MPIDR is a constant from the
guest perspective. So it is not that it can do nothing. It is just that
there should never be any other value written to it.

> 
> > poisoning of the sysreg array that creates a situation where
> > the MPIDR is temporarily invalid.
> > 
> > So instead of poisoning the array, how about we just keep
> > track of the registers for which we've called a reset function?
> > It should be enough to track the most obvious bugs... I've  
> 
> The reset of DBG{BCR,BVR,WVR,WCR}n_EL1 registers will also be tracked.
> It may affect our judgment?

How so?

> 
> > cobbled the following patch together, which seems to fix the
> > issue on my TX2 with 64 vcpus.
> > 
> > Thoughts?
> > 
> > 	M.
> > 
> > diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> > index f26e181d881c..17f46ee7dc83 100644
> > --- a/arch/arm64/kvm/sys_regs.c
> > +++ b/arch/arm64/kvm/sys_regs.c
> > @@ -2254,13 +2254,17 @@ static int emulate_sys_reg(struct kvm_vcpu *vcpu,
> >   }  
> >   >   static void reset_sys_reg_descs(struct kvm_vcpu *vcpu,  
> > -			      const struct sys_reg_desc *table, size_t num)
> > +				const struct sys_reg_desc *table, size_t num,
> > +				unsigned long *bmap)
> >   {
> >   	unsigned long i;  
> >   >   	for (i = 0; i < num; i++)  
> > -		if (table[i].reset)
> > +		if (table[i].reset) {
> >   			table[i].reset(vcpu, &table[i]);
> > +			if (bmap)
> > +				set_bit(i, bmap);  
> 
> I think this should be:
> 	set_bit(table[i].reg, bmap);
> 
> Am I wrong?

No, you're absolutely right.

> 
> > +		}
> >   }  
> >   >   /**  
> > @@ -2772,21 +2776,23 @@ void kvm_sys_reg_table_init(void)
> >    */
> >   void kvm_reset_sys_regs(struct kvm_vcpu *vcpu)
> >   {
> > +	unsigned long *bmap;
> >   	size_t num;
> >   	const struct sys_reg_desc *table;  
> >   > -	/* Catch someone adding a register without putting in reset entry. */  
> > -	memset(&vcpu->arch.ctxt.sys_regs, 0x42, sizeof(vcpu->arch.ctxt.sys_regs));
> > +	bmap = bitmap_alloc(NR_SYS_REGS, GFP_KERNEL);  
> 
> LOCKDEP kernel will be not happy with this bitmap_alloc:
> 
> " BUG: sleeping function called from invalid context at mm/slab.h:501
>    in_atomic(): 1, irqs_disabled(): 0, pid: 8710, name: qemu-system-aar "

Well spotted. I guess GFP_ATOMIC is in order.

> 
> >   >   	/* Generic chip reset first (so target could override). */  
> > -	reset_sys_reg_descs(vcpu, sys_reg_descs, ARRAY_SIZE(sys_reg_descs));
> > +	reset_sys_reg_descs(vcpu, sys_reg_descs, ARRAY_SIZE(sys_reg_descs), bmap);  
> >   >   	table = get_target_table(vcpu->arch.target, true, &num);  
> > -	reset_sys_reg_descs(vcpu, table, num);
> > +	reset_sys_reg_descs(vcpu, table, num, bmap);  
> >   >   	for (num = 1; num < NR_SYS_REGS; num++) {  
> > -		if (WARN(__vcpu_sys_reg(vcpu, num) == 0x4242424242424242,
> > +		if (WARN(bmap && !test_bit(num, bmap),
> >   			 "Didn't reset __vcpu_sys_reg(%zi)\n", num))
> >   			break;
> >   	}
> > +
> > +	kfree(bmap);
> >   }
> > 
> >   
> 
> Some other minor questions about the sys reg resetting:
> 1. Pointer Authentication Registers haven't have reset entry yet,
>     do they need? The same for ACTLR_EL1.

Pointer auth registers definitely have a reset function, set to
reset_unknown. So does ACTLR_EL1, which resets to the host's value.

> 2. Why does PMCR_EL0 register have no "reg" field, in sys_reg_descs[]?

This looks like a (very minor) bug. reset_pmcr writes directly to the
PMCR_EL0 shadow register without using r->reg as the register number.
But in the light of the reset tracking we want to add, this needs
fixing.

> I will test this patch with kvm-unit-tests next week!

Well, wait until I repost something a bit less buggy...

Thanks,

	M.
-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
