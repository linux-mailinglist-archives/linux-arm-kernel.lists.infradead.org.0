Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA17161260
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 13:53:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pePBosOg09iMUopQBRfUai69XtyIcUYfK7d8LUKr1Ws=; b=ujwQ3dj/4nPzbn
	Ing3t7N17lxNVAcT3yGNQ7xs+lB4DXuQ/BCEaw35xL5ab7bmO+3TcfodM7Po0b3SobGIsoLZBDSKn
	m12UR+8lKRnterj1/yIsUw5EOnvV1lY+sA4Jl9ZJPCdOV1NkDqIXVEUagImyOxrIgHlaNKakyfV6d
	obgJuRuYYzySplbvI/HpgJKVFy7dsePqf+oX30xmUsOlW/do5FeLR7coYbMq3AWjTyMZP737CQ45Q
	GoHDrn04rHPKXkHfwgUYU01EnrFOeIJmxdswDVnITlita6Ifb2nVZBHEI/WTkgPTD0fkB5puQFLbQ
	rlErh8kjCJsbTM1zoHew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ftQ-00057S-NU; Mon, 17 Feb 2020 12:52:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ftG-00056r-2i
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 12:52:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9ED0330E;
 Mon, 17 Feb 2020 04:52:43 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B75A73F703;
 Mon, 17 Feb 2020 04:52:42 -0800 (PST)
Date: Mon, 17 Feb 2020 12:52:40 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 09/94] KVM: arm64: nv: Support virtual EL2 exceptions
Message-ID: <20200217125240.GC47755@lakrids.cambridge.arm.com>
References: <20200211174938.27809-1-maz@kernel.org>
 <20200211174938.27809-10-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211174938.27809-10-maz@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_045246_166801_DCEAEB18 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Andre Przywara <andre.przywara@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 05:48:13PM +0000, Marc Zyngier wrote:
> From: Jintack Lim <jintack.lim@linaro.org>
> 
> Support injecting exceptions and performing exception returns to and
> from virtual EL2.  This must be done entirely in software except when
> taking an exception from vEL0 to vEL2 when the virtual HCR_EL2.{E2H,TGE}
> == {1,1}  (a VHE guest hypervisor).
> 
> Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/include/asm/kvm_arm.h     |  17 +++
>  arch/arm64/include/asm/kvm_emulate.h |  22 ++++
>  arch/arm64/kvm/Makefile              |   2 +
>  arch/arm64/kvm/emulate-nested.c      | 183 +++++++++++++++++++++++++++
>  arch/arm64/kvm/inject_fault.c        |  12 --
>  arch/arm64/kvm/trace.h               |  56 ++++++++
>  6 files changed, 280 insertions(+), 12 deletions(-)
>  create mode 100644 arch/arm64/kvm/emulate-nested.c

[...]

> +static void enter_el2_exception(struct kvm_vcpu *vcpu, u64 esr_el2,
> +				enum exception_type type)
> +{
> +	trace_kvm_inject_nested_exception(vcpu, esr_el2, type);
> +
> +	vcpu_write_sys_reg(vcpu, *vcpu_cpsr(vcpu), SPSR_EL2);
> +	vcpu_write_sys_reg(vcpu, *vcpu_pc(vcpu), ELR_EL2);
> +	vcpu_write_sys_reg(vcpu, esr_el2, ESR_EL2);
> +
> +	*vcpu_pc(vcpu) = get_el2_except_vector(vcpu, type);
> +	/* On an exception, PSTATE.SP becomes 1 */
> +	*vcpu_cpsr(vcpu) = PSR_MODE_EL2h;
> +	*vcpu_cpsr(vcpu) |= PSR_A_BIT | PSR_F_BIT | PSR_I_BIT | PSR_D_BIT;
> +}

This needs to be fixed up to handle the rest of the PSTATE bits.

It should be possible to refactor get_except64_pstate() for that. I
*think* the only differences are bits affects by SCTLR controls, but
someone should audit that -- good thing we added references. :)

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
