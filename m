Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D0B1E26F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 18:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLt33E8iK/NjHhJON4IviFM00wybwkAHs+j2p/MooZA=; b=rYdBcCH2CM5wlS
	EoTEuyEKmgZbbxKTbnG4QEBGcXe9fuxqbpGKh5BZjeUaBj0pwf2lPI/LuOltlTBVSWWbNUEZ+eYFj
	MhRse6gbFweKyOf+Pt7ZCAJGhrlS9kpZnqnLYKc78U20NTd+bibyxQ/7DgmAfDODmbdIsSn0MYgD5
	ET1oFpCTjTDZT2P3bnWAfa3/rieEKryBUj0Y+p3c5wHWWU/u0NlItTbhUA6BqOnPNakCEEJymHkKs
	nCvD+m+8Xt9IgeK4/8mxY+6iy4FckZZY0ntfWNcHQ/TX5JKmzAyBMP4dJvLf2cCU0EX/d9MftxAWz
	V2SyPBHGvZ+oEXMxtwig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdcRv-0006SV-Gt; Tue, 26 May 2020 16:29:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdcRm-0006Rx-IZ
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 16:29:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C079730E;
 Tue, 26 May 2020 09:28:57 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BE2CF3F52E;
 Tue, 26 May 2020 09:28:55 -0700 (PDT)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 10/26] KVM: arm64: Refactor vcpu_{read,write}_sys_reg
To: Marc Zyngier <maz@kernel.org>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-11-maz@kernel.org>
Message-ID: <09da829c-1640-40fe-313f-df021759fb34@arm.com>
Date: Tue, 26 May 2020 17:28:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200422120050.3693593-11-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_092858_654149_8B9900AD 
X-CRM114-Status: GOOD (  14.36  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>, Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, kvmarm@lists.cs.columbia.edu,
 Will Deacon <will@kernel.org>, George Cherian <gcherian@marvell.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 22/04/2020 13:00, Marc Zyngier wrote:
> Extract the direct HW accessors for later reuse.

> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index 51db934702b64..46f218982df8c 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c

> +u64 vcpu_read_sys_reg(const struct kvm_vcpu *vcpu, int reg)
> +{
> +	u64 val = 0x8badf00d8badf00d;
> +
> +	if (!vcpu->arch.sysregs_loaded_on_cpu) {
> +		goto memory_read;
>  	}
>  
> -immediate_write:
> +	if (__vcpu_read_sys_reg_from_cpu(reg, &val))
> +		return val;
> +
> +memory_read:
> +	return __vcpu_sys_reg(vcpu, reg);
> +}


The goto here is a bit odd, is it just an artefact of how we got here?
Is this easier on the eye?:
| u64 vcpu_read_sys_reg(const struct kvm_vcpu *vcpu, int reg)
| {
|	u64 val = 0x8badf00d8badf00d;
|
|	if (vcpu->arch.sysregs_loaded_on_cpu &&
|	    __vcpu_read_sys_reg_from_cpu(reg, &val))
|		return val;
|
| 	return __vcpu_sys_reg(vcpu, reg);
| }


> +void vcpu_write_sys_reg(struct kvm_vcpu *vcpu, u64 val, int reg)
> +{
> +	if (!vcpu->arch.sysregs_loaded_on_cpu)
> +		goto memory_write;
> +
> +	if (__vcpu_write_sys_reg_to_cpu(val, reg))
> +		return;
> +
> +memory_write:
>  	 __vcpu_sys_reg(vcpu, reg) = val;
>  }

Again I think its clearer without the goto....


Regardless:
Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
