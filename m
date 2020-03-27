Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E959D195AC7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 17:12:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r6v0Rx3QoQGCU5PDWWWGaPIWQFTukW5TSWmxogF3ocU=; b=icKQU9QPT7IeOq
	Ev86q/pa1Lv79M3ZJ5gphQNZAliAQhG8VSNMKX5txhVC4NhtRGik0BeiskmUy32y3MLlDz714tWH4
	Ig+nDmIttPefwSKIOz99YT88dgsoyzV5inhO+G4ltT3iYBtl/IfwRV3fnFlqJPSa2s7enbFCVVsE5
	EpcIDSftgy26GzkLJLAMEvI6pregrRCirskZLE9s2Pi4yg6nCcmozOcTxr9I2QLX/3jETKF1rxR5Y
	IU+I6Tnwm2PDBqxELSLw2qGuBkk+XpGsP/gMy/rw4Jt7zusxJRLcXctwHdvi/rctcrxVIqXHRQG1N
	hbY0pB57tSLf5JzOoM7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHrae-0004E7-Va; Fri, 27 Mar 2020 16:12:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHraS-0004DM-Ov
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 16:12:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B42E31FB;
 Fri, 27 Mar 2020 09:11:59 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 42F6A3F71F;
 Fri, 27 Mar 2020 09:11:57 -0700 (PDT)
Subject: Re: [RFC PATCH] arm64: unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
To: Andrew Scull <ascull@google.com>
References: <20200327143941.195626-1-ascull@google.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <a8cc7a17-cb84-3e52-15f4-87b27a01876b@arm.com>
Date: Fri, 27 Mar 2020 16:11:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200327143941.195626-1-ascull@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_091200_849357_F249101C 
X-CRM114-Status: GOOD (  16.24  )
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
Cc: qwandor@google.com, qperret@google.com, Marc Zyngier <maz@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Steven Price <steven.price@arm.com>,
 Will Deacon <will@kernel.org>, wedsonaf@google.com,
 linux-arm-kernel@lists.infradead.org, dbrazdil@google.com,
 kernel-team@android.com, kvmarm@lists.cs.columbia.edu, tabba@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On 3/27/20 2:39 PM, Andrew Scull wrote:
> Errata 1165522, 1319367 and 1530923 each allow TLB entries to be
> allocated as a result of a speculative AT instruction. In order to
> avoid mandating VHE on certain affected CPUs, apply the workaround to
> both the nVHE and the VHE case for all affected CPUs.

You're booting a VHE capable system without VHE, and need KVM?
Do tell!

Would enabling the nVHE workaround on a VHE capable part solve your problem?
Merging the errata has some side effects...


> ---
> I'm not able to test the workarounds properly for the affected CPUs but
> have built and booted under qemu configs with and without VHE as well as
> the workaround being enabled and disabled.
> 
> As there exist work arounds for nVHE and VHE, it doesn't appear to be a
> technical limitation that meant VHE was being mandated. Please correct
> me if this understanding is inaccurate. Thanks!

The affected VHE parts came first. Then came those that didn't have VHE at all.


> diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
> index 7672a978926c..2c1436fc0830 100644
> --- a/arch/arm64/kvm/hyp/sysreg-sr.c
> +++ b/arch/arm64/kvm/hyp/sysreg-sr.c
> @@ -118,7 +118,7 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
>  	write_sysreg(ctxt->sys_regs[MPIDR_EL1],		vmpidr_el2);
>  	write_sysreg(ctxt->sys_regs[CSSELR_EL1],	csselr_el1);
>  
> -	if (!cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
> +	if (!cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
>  		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
>  		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
>  	} else	if (!ctxt->__hyp_running_vcpu) {

The comment just below here:
|		/*
|		 * Must only be done for guest registers, hence the context
|		 * test. We're coming from the host, so SCTLR.M is already
|		 * set. Pairs with __activate_traps_nvhe().
|		 */

The VHE parts aren't going to run __activate_traps_nvhe(), so you skip restoring
the guest's SCTLR_EL1 and TCR_EL1...


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
