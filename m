Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FE21E2708
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 18:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+NGLMZ/xkmXKJwNXsh+JoGuFdBc9VvSZpbymXA+PYY=; b=XjZ42UKOwYfeWh
	A586NGwKsLjf5IqbHnFfMY5oWB7ctrxh+tkyo1w9kmmJjlOPRbwwKz0LIFcLKzBRRynxQXr9ABEi2
	6xTJqXD217L7wPSP1EFsqOEpXKuZVW/nIA0mz/0vNexRdzwYVwRp9FsbrKMZkJcxIv1eURBoiSCVJ
	R4qH6V4PD+8dGgHfssrxVgjGo8QV9BJ8qnCqzyEJLjCmXo7lOAql+BwRAlJTDA05nJp7aDb916jGJ
	c5qAyniE3B/PrLx6eTnQymKND++eK/dy903/FD5euda6BW3QjgoRZWsRGlVyqk1ga37fNWERdVlt5
	XQjARcYuJ7ihE/+yCScA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdcT9-0007Pd-Fp; Tue, 26 May 2020 16:30:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdcSh-0007KO-Qf
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 16:29:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 639A330E;
 Tue, 26 May 2020 09:29:54 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 676543F52E;
 Tue, 26 May 2020 09:29:52 -0700 (PDT)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 20/26] KVM: arm64: Move ELR_EL1 to the system register
 array
To: Marc Zyngier <maz@kernel.org>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-21-maz@kernel.org>
Message-ID: <b6a08ca6-1682-4fa6-e8f4-bb4adba5d19a@arm.com>
Date: Tue, 26 May 2020 17:29:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200422120050.3693593-21-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_092955_912641_0866D715 
X-CRM114-Status: GOOD (  15.62  )
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
> As ELR-EL1 is a VNCR-capable register with ARMv8.4-NV, let's move it to
> the sys_regs array and repaint the accessors. While we're at it, let's
> kill the now useless accessors used only on the fault injection path.

Reviewed-by: James Morse <james.morse@arm.com>


A curiosity:

> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index 95977b80265ce..46949fce3e813 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -184,6 +184,8 @@ enum vcpu_sysreg {

Comment above the enum has some claims about the order, but its already out of order with
__vcpu_read_sys_reg_from_cpu()... (PAR_EL1 being the culprit)

(I think it only matters for searching by encoding, which is checked at boot.)


>  	APGAKEYLO_EL1,
>  	APGAKEYHI_EL1,
>  
> +	ELR_EL1,
> +
>  	/* 32bit specific registers. Keep them at the end of the range */
>  	DACR32_EL2,	/* Domain Access Control Register */
>  	IFSR32_EL2,	/* Instruction Fault Status Register */

> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index 5bda4af36a0e7..7c2fffb20c217 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c
> @@ -95,6 +95,7 @@ static bool __vcpu_read_sys_reg_from_cpu(int reg, u64 *val)
>  	case TPIDR_EL1:		*val = read_sysreg_s(SYS_TPIDR_EL1);	break;
>  	case AMAIR_EL1:		*val = read_sysreg_s(SYS_AMAIR_EL12);	break;
>  	case CNTKCTL_EL1:	*val = read_sysreg_s(SYS_CNTKCTL_EL12);	break;
> +	case ELR_EL1:		*val = read_sysreg_s(SYS_ELR_EL12);	break;
>  	case PAR_EL1:		*val = read_sysreg_s(SYS_PAR_EL1);	break;
>  	case DACR32_EL2:	*val = read_sysreg_s(SYS_DACR32_EL2);	break;
>  	case IFSR32_EL2:	*val = read_sysreg_s(SYS_IFSR32_EL2);	break;



Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
