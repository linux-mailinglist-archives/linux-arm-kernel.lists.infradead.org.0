Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 249521FCF18
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 16:06:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJE3txa6cBfxsIxLvJ5HCljO48jBnk6XaqQMssP0Ms8=; b=pMjRGSMVsa0Jr6
	Ui56sBCeTrWAk02V4hCAxb0kY6aIDs9jS+GTjnFEgdLXAWEvACeLC0GhpwevVVI3ySmIp3Q8Pf4Ct
	X+T26b5Dyd1jrkGVYr4t9buR3XWgjz0UZXVHKUWRqnYLE2ngCpyIX56LZaQ3+FkYQgxLusOkRCX3R
	ZCp9WMYcABVqtyLUBAVKy7pocFiVpZHftvaSf3JNY7Uxzn2l0N38XqAK4K/HBYdth9rHfSN3WxXbh
	uLS0iZe/kS8bxJ6E31BD/USn0dU56uUPdHZYeCEhJj/PYOsvcjM1sKqqeWLCkErVY1cJow0zTmlyy
	6k/6XnneRFl06U5MTAXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlYha-0005HQ-LC; Wed, 17 Jun 2020 14:06:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlYhS-0005GV-Ft
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 14:05:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9DC9E31B;
 Wed, 17 Jun 2020 07:05:55 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA5563F73C;
 Wed, 17 Jun 2020 07:05:53 -0700 (PDT)
Date: Wed, 17 Jun 2020 15:05:47 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [RFC PATCH 1/2] arm64: kvm: Save/restore MTE registers
Message-ID: <20200617140546.GE5388@gaia>
References: <20200617123844.29960-1-steven.price@arm.com>
 <20200617123844.29960-2-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617123844.29960-2-steven.price@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_070558_572319_0446DEA1 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 17, 2020 at 01:38:43PM +0100, Steven Price wrote:
> diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
> index 75b1925763f1..6ecee1528566 100644
> --- a/arch/arm64/kvm/hyp/sysreg-sr.c
> +++ b/arch/arm64/kvm/hyp/sysreg-sr.c
> @@ -26,6 +26,12 @@
>  static void __hyp_text __sysreg_save_common_state(struct kvm_cpu_context *ctxt)
>  {
>  	ctxt->sys_regs[MDSCR_EL1]	= read_sysreg(mdscr_el1);
> +	if (system_supports_mte()) {
> +		ctxt->sys_regs[RGSR_EL1] = read_sysreg_s(SYS_RGSR_EL1);
> +		ctxt->sys_regs[GCR_EL1] = read_sysreg_s(SYS_GCR_EL1);
> +		ctxt->sys_regs[TFSRE0_EL1] = read_sysreg_s(SYS_TFSRE0_EL1);
> +		ctxt->sys_regs[TFSR_EL1] = read_sysreg_s(SYS_TFSR_EL1);
> +	}

TFSR_EL1 is not a common register as we have the TFSR_EL2 as well. So
you'd have to access it as read_sysreg_el1(SYS_TFSR) so that, in the VHE
case, it generates TFSR_EL12, otherwise you just save the host register.

Also, since TFSR*_EL1 can be set asynchronously, I think we need to set
the SCTLR_EL2.ITFSB bit so that the register update is synchronised on
entry to EL2. With VHE we get this automatically as part of
SCTLR_EL1_SET but it turns out that we have another SCTLR_ELx_FLAGS
macro for the non-VHE case (why not calling this SCTLR_EL2_* I have no
idea).

>  	/*
>  	 * The host arm64 Linux uses sp_el0 to point to 'current' and it must
> @@ -99,6 +105,12 @@ NOKPROBE_SYMBOL(sysreg_save_guest_state_vhe);
>  static void __hyp_text __sysreg_restore_common_state(struct kvm_cpu_context *ctxt)
>  {
>  	write_sysreg(ctxt->sys_regs[MDSCR_EL1],	  mdscr_el1);
> +	if (system_supports_mte()) {
> +		write_sysreg_s(ctxt->sys_regs[RGSR_EL1], SYS_RGSR_EL1);
> +		write_sysreg_s(ctxt->sys_regs[GCR_EL1], SYS_GCR_EL1);
> +		write_sysreg_s(ctxt->sys_regs[TFSRE0_EL1], SYS_TFSRE0_EL1);
> +		write_sysreg_s(ctxt->sys_regs[TFSR_EL1], SYS_TFSR_EL1);
> +	}

Similarly here, you override the TFSR_EL2 with VHE enabled.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
