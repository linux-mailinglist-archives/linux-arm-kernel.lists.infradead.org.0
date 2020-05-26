Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A00FE1E2025
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PCh0I+4iL/Sse/KWDsrqLDVlXJ8SzgrMatWuF/YUkSE=; b=VqLoQbEPev+hOi
	7XawD6MhZGIyb1Zt16fMRXwKPsLumC1CDV7wy9SHiah/NbwDnhqAxK6SYd9h4Mbm4KQoXIMcPalok
	t0MZzjqHbIDjDjyayObMzgka2rFKAvVrKvOw9O9Nu3K5XQPdB49cE5wo62AtxJIf38yZFkKLxvM3O
	9lA1XpXwEc87UcJQRRyghHxZanfEXpi3NO52suux91rkomFEWI89O2UFKUUHWJSZbXeI/++dgUWRW
	f8B/jwX6jwkpdY9pkyXgasf6ZOyHKez/WFIEGNIEdb9ZCH6rM0Iz3fqoAjHVyLSVYpgCtWgQBehaS
	4h6T52HZmrL7M3/CLcqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXBs-0005tK-Of; Tue, 26 May 2020 10:52:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXBh-0005s8-Gt
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:52:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0B3FC31B;
 Tue, 26 May 2020 03:52:00 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 047543F6C4;
 Tue, 26 May 2020 03:51:56 -0700 (PDT)
Date: Tue, 26 May 2020 11:51:54 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH RFCv2 4/9] kvm/arm64: Detach ESR operator from vCPU struct
Message-ID: <20200526105154.GD1363@C02TD0UTHF1T.local>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-5-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200508032919.52147-5-gshan@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_035201_605573_239688D1 
X-CRM114-Status: GOOD (  15.67  )
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
Cc: aarcange@redhat.com, drjones@redhat.com, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 james.morse@arm.com, shan.gavin@gmail.com, maz@kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 08, 2020 at 01:29:14PM +1000, Gavin Shan wrote:
> There are a set of inline functions defined in kvm_emulate.h. Those
> functions reads ESR from vCPU fault information struct and then operate
> on it. So it's tied with vCPU fault information and vCPU struct. It
> limits their usage scope.
> 
> This detaches these functions from the vCPU struct. With this, the
> caller has flexibility on where the ESR is read. It shouldn't cause
> any functional changes.
> 
> Signed-off-by: Gavin Shan <gshan@redhat.com>
> ---
>  arch/arm64/include/asm/kvm_emulate.h     | 83 +++++++++++-------------
>  arch/arm64/kvm/handle_exit.c             | 20 ++++--
>  arch/arm64/kvm/hyp/switch.c              | 24 ++++---
>  arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c |  7 +-
>  arch/arm64/kvm/inject_fault.c            |  4 +-
>  arch/arm64/kvm/sys_regs.c                | 12 ++--
>  virt/kvm/arm/arm.c                       |  4 +-
>  virt/kvm/arm/hyp/aarch32.c               |  2 +-
>  virt/kvm/arm/hyp/vgic-v3-sr.c            |  5 +-
>  virt/kvm/arm/mmio.c                      | 27 ++++----
>  virt/kvm/arm/mmu.c                       | 22 ++++---
>  11 files changed, 112 insertions(+), 98 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
> index bd1a69e7c104..2873bf6dc85e 100644
> --- a/arch/arm64/include/asm/kvm_emulate.h
> +++ b/arch/arm64/include/asm/kvm_emulate.h
> @@ -270,10 +270,8 @@ static __always_inline u32 kvm_vcpu_get_esr(const struct kvm_vcpu *vcpu)
>  	return vcpu->arch.fault.esr_el2;
>  }
>  
> -static __always_inline int kvm_vcpu_get_condition(const struct kvm_vcpu *vcpu)
> +static __always_inline int kvm_vcpu_get_condition(u32 esr)

Given the `vcpu` argument has been removed, it's odd to keep `vcpu` in the
name, rather than `esr`.

e.g. this would make more sense as something like esr_get_condition().

... and if we did something like that, we could move most of the
extraction functions into <asm/esr.h>, and share them with non-KVM code.

Otherwise, do you need to extract all of these for your use-case, or do
you only need a few of the helpers? If you only need a few, it might be
better to only factor those out for now, and keep the existing API in
place with wrappers, e.g. have:

| esr_get_condition(u32 esr) {
| 	... 
| }
| 
| kvm_vcpu_get_condition(const struct kvm_vcpu *vcpu)
| {
| 	return esr_get_condition(kvm_vcpu_get_esr(vcpu));
| }

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
