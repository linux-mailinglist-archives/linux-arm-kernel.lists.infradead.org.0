Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7618D1E6106
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 14:37:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a7C2GIVtAAAyZc3WffKBBX6qa0nkFXTiXHan2ml4z70=; b=erep+/LcLfG4JHVVSv5oyFq9K
	LOaM3tTIryuMcRcCw36IW7Iwldv2fGhSMwdrCVLqa03H10ftuIBXrOg/MUnW9rh3h85M4ZyrT8isW
	j+Tc3Ohfkt7bVZk8/1lHnAajUsh8h+mByH4JSUcYbz/63ABKfaDLy33TfZYhAWoZC5NgRspnl4Hqz
	u+g+/2bbdS+A3tJWuDkaBr3AoveJBhFye8l683SGG2nQK1aOkKh1NfXXwUjhDrFV98obeSCMorhf7
	2u/Hog/B1ObJGrYXhiYdUlwgG/xUdRD4ZC/NdTF+Prp8e8SnFMUVIbs7KbhC8rxzrmQ9KhS306UE3
	0kmEw1CiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHme-0000H4-IO; Thu, 28 May 2020 12:37:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHlh-0008ML-2O
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 12:36:19 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3FBDC206F1;
 Thu, 28 May 2020 12:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590669376;
 bh=jmVPYq5TkciJyLWcDt7kANprXnXDO/zkP+8oHq6jzv0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Ygw6IenQVadq9qqrCV3jHpquv3aXXRVDOI0DeLszWQNfYRVdTg/sLTruCCTxH4pg6
 Plfz3LqF1zJmrYhvOcYoygMfJQ1vG/s9Jjxcdh3xNuGCgfD1g5aDmzWoo5qqgtnLeZ
 zO5wp8MLImunIBFSjKGIfwbMrEYMJGVjeD/Rbpm4=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jeHle-00FzAF-NF; Thu, 28 May 2020 13:36:14 +0100
MIME-Version: 1.0
Date: Thu, 28 May 2020 13:36:14 +0100
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 2/3] KVM: arm64: Stop save/restoring ACTLR_EL1
In-Reply-To: <20200526161834.29165-3-james.morse@arm.com>
References: <20200526161834.29165-1-james.morse@arm.com>
 <20200526161834.29165-3-james.morse@arm.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <4d42a5db0b573c7a184aea654829a06c@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: james.morse@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_053617_349610_367350AD 
X-CRM114-Status: GOOD (  15.46  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-26 17:18, James Morse wrote:
> KVM sets HCR_EL2.TACR (which it calls HCR_TAC) via HCR_GUEST_FLAGS.

TAC is a leftover from 32bit.

> This means ACTLR* accesses from the guest are always trapped, and
> always return the value in the sys_regs array.
> 
> The guest can't change the value of these registers, so we are
> save restoring the reset value, which came from the host.
> 
> Stop save/restoring this register.
> 
> This also stops this register being affected by sysregs_loaded_on_cpu,
> so we can provide 32 bit accessors that always use the in-memory copy.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
>  arch/arm64/kvm/hyp/sysreg-sr.c | 2 --
>  arch/arm64/kvm/sys_regs.c      | 2 --
>  2 files changed, 4 deletions(-)
> 
> diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c 
> b/arch/arm64/kvm/hyp/sysreg-sr.c
> index 75b1925763f1..57116cf3a1a5 100644
> --- a/arch/arm64/kvm/hyp/sysreg-sr.c
> +++ b/arch/arm64/kvm/hyp/sysreg-sr.c
> @@ -44,7 +44,6 @@ static void __hyp_text
> __sysreg_save_el1_state(struct kvm_cpu_context *ctxt)
>  {
>  	ctxt->sys_regs[CSSELR_EL1]	= read_sysreg(csselr_el1);
>  	ctxt->sys_regs[SCTLR_EL1]	= read_sysreg_el1(SYS_SCTLR);
> -	ctxt->sys_regs[ACTLR_EL1]	= read_sysreg(actlr_el1);
>  	ctxt->sys_regs[CPACR_EL1]	= read_sysreg_el1(SYS_CPACR);
>  	ctxt->sys_regs[TTBR0_EL1]	= read_sysreg_el1(SYS_TTBR0);
>  	ctxt->sys_regs[TTBR1_EL1]	= read_sysreg_el1(SYS_TTBR1);
> @@ -133,7 +132,6 @@ static void __hyp_text
> __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
>  		isb();
>  	}
> 
> -	write_sysreg(ctxt->sys_regs[ACTLR_EL1],		actlr_el1);

If we don't need to save/restore it, we can also drop its presence
in the sys_regs array.

>  	write_sysreg_el1(ctxt->sys_regs[CPACR_EL1],	SYS_CPACR);
>  	write_sysreg_el1(ctxt->sys_regs[TTBR0_EL1],	SYS_TTBR0);
>  	write_sysreg_el1(ctxt->sys_regs[TTBR1_EL1],	SYS_TTBR1);
> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index 2eda539f3281..aae58513025c 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c
> @@ -81,7 +81,6 @@ u64 vcpu_read_sys_reg(const struct kvm_vcpu *vcpu, 
> int reg)
>  	switch (reg) {
>  	case CSSELR_EL1:	return read_sysreg_s(SYS_CSSELR_EL1);
>  	case SCTLR_EL1:		return read_sysreg_s(SYS_SCTLR_EL12);
> -	case ACTLR_EL1:		return read_sysreg_s(SYS_ACTLR_EL1);
>  	case CPACR_EL1:		return read_sysreg_s(SYS_CPACR_EL12);
>  	case TTBR0_EL1:		return read_sysreg_s(SYS_TTBR0_EL12);
>  	case TTBR1_EL1:		return read_sysreg_s(SYS_TTBR1_EL12);
> @@ -124,7 +123,6 @@ void vcpu_write_sys_reg(struct kvm_vcpu *vcpu, u64
> val, int reg)
>  	switch (reg) {
>  	case CSSELR_EL1:	write_sysreg_s(val, SYS_CSSELR_EL1);	return;
>  	case SCTLR_EL1:		write_sysreg_s(val, SYS_SCTLR_EL12);	return;
> -	case ACTLR_EL1:		write_sysreg_s(val, SYS_ACTLR_EL1);	return;
>  	case CPACR_EL1:		write_sysreg_s(val, SYS_CPACR_EL12);	return;
>  	case TTBR0_EL1:		write_sysreg_s(val, SYS_TTBR0_EL12);	return;
>  	case TTBR1_EL1:		write_sysreg_s(val, SYS_TTBR1_EL12);	return;

It strikes me that we don't even have a trap handler for this sysreg,
whether it is 32 or 64bit... That's a bit unfortunate, to say the
least...

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
