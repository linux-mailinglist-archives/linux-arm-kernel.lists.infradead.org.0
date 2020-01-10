Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17427136C53
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 12:52:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1hQT5Y56yJBtAGl7IIengX9Lq4uFfxmMnvRgZyQyKug=; b=r6+3+QNkX/AQAOx/biSeKg1et
	VhbPiJrjUMLtklZA3qBestxwPbnGnRafwt+YMyB25UbeTweHpSjFaj/x7epT06jCHOMnIydDqJbqD
	AqyFa2vClTKKJuKDNZBkMi1nGSMTRmh6o6VmFNhLvuUcimh1FxMfvBUJcke60kEikFFjiQxmWaxEc
	oYnyA7Ly21/d8C3dJXGVl5bFCVY2oKa6C6FmyyeGT4XFP+8MQ2eEJ21kqkwgaKE0gyS8br3pOK/RF
	XseiWvoMwqjP3TOAnEOg8FdE/g8vYujaSIey83xuxr1CKcLhgIjgD/N1WcGOmXXO8HVUDSWWHmz7+
	bB60LM5zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipspi-0005YU-K0; Fri, 10 Jan 2020 11:52:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipspK-0005NG-8V
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 11:51:44 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 70ECB2080D;
 Fri, 10 Jan 2020 11:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578657101;
 bh=jJUkcjlxwjxVbdrRgoCs6tTj/btd2RuYwbP/9MOQQHc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lPDFLIp2y/zfIEfpK3sWSrIpYRzJDteW6v0AejN7nmS3UdT4LDA3sb9n+txHlFqjK
 QUee08LOPhT7Z+dufKo0LNTV0jpsxFsFrSU8fVs4tRm5DwCRrGwWLNftXy0jT4qq+Z
 +/DUPa2uDXcm188GW7HYO/neBOaAWRv/J/NPofxE=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1ipspH-0008EI-PA; Fri, 10 Jan 2020 11:51:39 +0000
MIME-Version: 1.0
Date: Fri, 10 Jan 2020 11:51:39 +0000
From: Marc Zyngier <maz@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 09/18] arm64: KVM: enable conditional save/restore full
 SPE profiling buffer controls
In-Reply-To: <20200110110420.GD42593@e119886-lin.cambridge.arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-10-andrew.murray@arm.com>
 <20191221141325.5a177343@why>
 <20200110105435.GC42593@e119886-lin.cambridge.arm.com>
 <20200110110420.GD42593@e119886-lin.cambridge.arm.com>
Message-ID: <ee0fd7bcdbbbcc942117468eb676b18f@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: andrew.murray@arm.com, kvm@vger.kernel.org,
 Catalin.Marinas@arm.com, linux-kernel@vger.kernel.org, Sudeep.Holla@arm.com,
 will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_035142_359415_23B925DF 
X-CRM114-Status: GOOD (  34.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kvm@vger.kernel.org, Catalin Marinas <Catalin.Marinas@arm.com>,
 linux-kernel@vger.kernel.org, Sudeep Holla <Sudeep.Holla@arm.com>,
 will@kernel.org, kvmarm <kvmarm@lists.cs.columbia.edu>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-10 11:04, Andrew Murray wrote:
> On Fri, Jan 10, 2020 at 10:54:36AM +0000, Andrew Murray wrote:
>> On Sat, Dec 21, 2019 at 02:13:25PM +0000, Marc Zyngier wrote:
>> > On Fri, 20 Dec 2019 14:30:16 +0000
>> > Andrew Murray <andrew.murray@arm.com> wrote:
>> >
>> > [somehow managed not to do a reply all, re-sending]
>> >
>> > > From: Sudeep Holla <sudeep.holla@arm.com>
>> > >
>> > > Now that we can save/restore the full SPE controls, we can enable it
>> > > if SPE is setup and ready to use in KVM. It's supported in KVM only if
>> > > all the CPUs in the system supports SPE.
>> > >
>> > > However to support heterogenous systems, we need to move the check if
>> > > host supports SPE and do a partial save/restore.
>> >
>> > No. Let's just not go down that path. For now, KVM on heterogeneous
>> > systems do not get SPE. If SPE has been enabled on a guest and a CPU
>> > comes up without SPE, this CPU should fail to boot (same as exposing a
>> > feature to userspace).
>> >
>> > >
>> > > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
>> > > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
>> > > ---
>> > >  arch/arm64/kvm/hyp/debug-sr.c | 33 ++++++++++++++++-----------------
>> > >  include/kvm/arm_spe.h         |  6 ++++++
>> > >  2 files changed, 22 insertions(+), 17 deletions(-)
>> > >
>> > > diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
>> > > index 12429b212a3a..d8d857067e6d 100644
>> > > --- a/arch/arm64/kvm/hyp/debug-sr.c
>> > > +++ b/arch/arm64/kvm/hyp/debug-sr.c
>> > > @@ -86,18 +86,13 @@
>> > >  	}
>> > >
>> > >  static void __hyp_text
>> > > -__debug_save_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
>> > > +__debug_save_spe_context(struct kvm_cpu_context *ctxt, bool full_ctxt)
>> > >  {
>> > >  	u64 reg;
>> > >
>> > >  	/* Clear pmscr in case of early return */
>> > >  	ctxt->sys_regs[PMSCR_EL1] = 0;
>> > >
>> > > -	/* SPE present on this CPU? */
>> > > -	if (!cpuid_feature_extract_unsigned_field(read_sysreg(id_aa64dfr0_el1),
>> > > -						  ID_AA64DFR0_PMSVER_SHIFT))
>> > > -		return;
>> > > -
>> > >  	/* Yes; is it owned by higher EL? */
>> > >  	reg = read_sysreg_s(SYS_PMBIDR_EL1);
>> > >  	if (reg & BIT(SYS_PMBIDR_EL1_P_SHIFT))
>> > > @@ -142,7 +137,7 @@ __debug_save_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
>> > >  }
>> > >
>> > >  static void __hyp_text
>> > > -__debug_restore_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
>> > > +__debug_restore_spe_context(struct kvm_cpu_context *ctxt, bool full_ctxt)
>> > >  {
>> > >  	if (!ctxt->sys_regs[PMSCR_EL1])
>> > >  		return;
>> > > @@ -210,11 +205,14 @@ void __hyp_text __debug_restore_guest_context(struct kvm_vcpu *vcpu)
>> > >  	struct kvm_guest_debug_arch *host_dbg;
>> > >  	struct kvm_guest_debug_arch *guest_dbg;
>> > >
>> > > +	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
>> > > +	guest_ctxt = &vcpu->arch.ctxt;
>> > > +
>> > > +	__debug_restore_spe_context(guest_ctxt, kvm_arm_spe_v1_ready(vcpu));
>> > > +
>> > >  	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
>> > >  		return;
>> > >
>> > > -	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
>> > > -	guest_ctxt = &vcpu->arch.ctxt;
>> > >  	host_dbg = &vcpu->arch.host_debug_state.regs;
>> > >  	guest_dbg = kern_hyp_va(vcpu->arch.debug_ptr);
>> > >
>> > > @@ -232,8 +230,7 @@ void __hyp_text __debug_restore_host_context(struct kvm_vcpu *vcpu)
>> > >  	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
>> > >  	guest_ctxt = &vcpu->arch.ctxt;
>> > >
>> > > -	if (!has_vhe())
>> > > -		__debug_restore_spe_nvhe(host_ctxt, false);
>> > > +	__debug_restore_spe_context(host_ctxt, kvm_arm_spe_v1_ready(vcpu));
>> >
>> > So you now do an unconditional save/restore on the exit path for VHE as
>> > well? Even if the host isn't using the SPE HW? That's not acceptable
>> > as, in most cases, only the host /or/ the guest will use SPE. Here, you
>> > put a measurable overhead on each exit.
>> >
>> > If the host is not using SPE, then the restore/save should happen in
>> > vcpu_load/vcpu_put. Only if the host is using SPE should you do
>> > something in the run loop. Of course, this only applies to VHE and
>> > non-VHE must switch eagerly.
>> >
>> 
>> On VHE where SPE is used in the guest only - we save/restore in 
>> vcpu_load/put.
>> 
>> On VHE where SPE is used in the host only - we save/restore in the run 
>> loop.
>> 
>> On VHE where SPE is used in guest and host - we save/restore in the 
>> run loop.
>> 
>> As the guest can't trace EL2 it doesn't matter if we restore guest SPE 
>> early
>> in the vcpu_load/put functions. (I assume it doesn't matter that we 
>> restore
>> an EL0/EL1 profiling buffer address at this point and enable tracing 
>> given
>> that there is nothing to trace until entering the guest).
>> 
>> However the reason for moving save/restore to vcpu_load/put when the 
>> host is
>> using SPE is to minimise the host EL2 black-out window.
>> 
>> 
>> On nVHE we always save/restore in the run loop. For the SPE 
>> guest-use-only
>> use-case we can't save/restore in vcpu_load/put - because the guest 
>> runs at
>> the same ELx level as the host - and thus doing so would result in the 
>> guest
>> tracing part of the host.
>> 
>> Though if we determine that (for nVHE systems) the guest SPE is 
>> profiling only
>> EL0 - then we could also save/restore in vcpu_load/put where SPE is 
>> only being
>> used in the guest.
>> 
>> Does that make sense, are my reasons correct?
> 
> Also I'm making the following assumptions:
> 
>  - We determine if the host or guest are using SPE by seeing if 
> profiling
>    (e.g. PMSCR_EL1) is enabled. That should determine *when* we restore 
> as per
>    my previous email.

Yes.

>  - I'm less sure on this: We should determine *what* we restore based 
> on the
>    availability of the SPE feature and not if it is being used - so for 
> guest
>    this is if the guest has the feature on the vcpu. For host this is 
> based on
>    the CPU feature registers.

As long as the guest's feature is conditionned on the HW being present 
*and*
that you're running on a CPU that has the HW.

>    The downshot of this is that if you have SPE support present on 
> guest and
>    host and they aren't being used, then you still save/restore upon 
> entering/
>    leaving a guest. The reason I feel this is needed is to prevent the 
> issue
>    where the host starts programming the SPE registers, but is 
> preempted by
>    KVM entering a guest, before it could enable host SPE. Thus when we 
> enter the
>    guest we don't save all the registers, we return to the host and the 
> host
>    SPE carries on from where it left of and enables it - yet because we 
> didn't
>    restore all the programmed registers it doesn't work.

Saving the host registers is never optional if they are shared with the 
guest.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
