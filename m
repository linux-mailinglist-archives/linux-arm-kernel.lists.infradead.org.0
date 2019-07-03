Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3055E8D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 18:27:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTboRd5TrMt8kLL6xOBHSkcqi5h/xT7mduSODhNbMAg=; b=DoROnfftiXGY7h
	dts2MxwVYlCPU9GHffKu2IaOL1kRDmex2Ia2JHVUpKKxrIfopbs2C5/0tg77BkqVaQJnqNMvYzRYb
	LcmqA0X0kL5z84ygzr2yF8cjUBk0bCR8dr+YLz/ZIAVuFiAyotn7cWP+KHGZJ5zK7avjm/xViCt8b
	90f4HIpbKIRbx48e6YOfBayx16W7aiPHYzZvOZd3aa3wq4p2aJyhkdVW/AuCcWKRpMsDlJxMWt2YW
	FiV2dk41F/YFC2SqU+1WNOw0FApRb5fWUOSxiAKXn05V2wYRYszJhQ15gk18X8NzwkytCNfmp1U9O
	DwIpEBFG04ac1cRdAAUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hii6N-0006Kj-Jv; Wed, 03 Jul 2019 16:27:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hii6A-0006Jl-Do
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 16:27:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF292344;
 Wed,  3 Jul 2019 09:27:09 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E05F3F718;
 Wed,  3 Jul 2019 09:27:09 -0700 (PDT)
Date: Wed, 3 Jul 2019 17:27:07 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH 04/59] KVM: arm64: nv: Introduce nested virtualization
 VCPU feature
Message-ID: <20190703162706.GV2790@e103592.cambridge.arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-5-marc.zyngier@arm.com>
 <20190624112851.GM2790@e103592.cambridge.arm.com>
 <01e61a51-5bf0-8943-6f68-7a5cea59f093@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <01e61a51-5bf0-8943-6f68-7a5cea59f093@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_092710_556610_11182095 
X-CRM114-Status: GOOD (  21.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arm-kernel@lists.infradead.org,
 Andre Przywara <andre.przywara@arm.com>, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 12:53:58PM +0100, Marc Zyngier wrote:
> On 24/06/2019 12:28, Dave Martin wrote:
> > On Fri, Jun 21, 2019 at 10:37:48AM +0100, Marc Zyngier wrote:
> >> From: Christoffer Dall <christoffer.dall@arm.com>
> >>
> >> Introduce the feature bit and a primitive that checks if the feature is
> >> set behind a static key check based on the cpus_have_const_cap check.
> >>
> >> Checking nested_virt_in_use() on systems without nested virt enabled
> >> should have neglgible overhead.
> >>
> >> We don't yet allow userspace to actually set this feature.
> >>
> >> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
> >> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> >> ---
> >>  arch/arm/include/asm/kvm_nested.h   |  9 +++++++++
> >>  arch/arm64/include/asm/kvm_nested.h | 13 +++++++++++++
> >>  arch/arm64/include/uapi/asm/kvm.h   |  1 +
> >>  3 files changed, 23 insertions(+)
> >>  create mode 100644 arch/arm/include/asm/kvm_nested.h
> >>  create mode 100644 arch/arm64/include/asm/kvm_nested.h
> >>
> >> diff --git a/arch/arm/include/asm/kvm_nested.h b/arch/arm/include/asm/kvm_nested.h
> >> new file mode 100644
> >> index 000000000000..124ff6445f8f
> >> --- /dev/null
> >> +++ b/arch/arm/include/asm/kvm_nested.h
> >> @@ -0,0 +1,9 @@
> >> +/* SPDX-License-Identifier: GPL-2.0 */
> >> +#ifndef __ARM_KVM_NESTED_H
> >> +#define __ARM_KVM_NESTED_H
> >> +
> >> +#include <linux/kvm_host.h>
> >> +
> >> +static inline bool nested_virt_in_use(const struct kvm_vcpu *vcpu) { return false; }
> >> +
> >> +#endif /* __ARM_KVM_NESTED_H */
> >> diff --git a/arch/arm64/include/asm/kvm_nested.h b/arch/arm64/include/asm/kvm_nested.h
> >> new file mode 100644
> >> index 000000000000..8a3d121a0b42
> >> --- /dev/null
> >> +++ b/arch/arm64/include/asm/kvm_nested.h
> >> @@ -0,0 +1,13 @@
> >> +/* SPDX-License-Identifier: GPL-2.0 */
> >> +#ifndef __ARM64_KVM_NESTED_H
> >> +#define __ARM64_KVM_NESTED_H
> >> +
> >> +#include <linux/kvm_host.h>
> >> +
> >> +static inline bool nested_virt_in_use(const struct kvm_vcpu *vcpu)
> >> +{
> >> +	return cpus_have_const_cap(ARM64_HAS_NESTED_VIRT) &&
> >> +		test_bit(KVM_ARM_VCPU_NESTED_VIRT, vcpu->arch.features);
> >> +}
> >> +
> >> +#endif /* __ARM64_KVM_NESTED_H */
> >> diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
> >> index d819a3e8b552..563e2a8bae93 100644
> >> --- a/arch/arm64/include/uapi/asm/kvm.h
> >> +++ b/arch/arm64/include/uapi/asm/kvm.h
> >> @@ -106,6 +106,7 @@ struct kvm_regs {
> >>  #define KVM_ARM_VCPU_SVE		4 /* enable SVE for this CPU */
> >>  #define KVM_ARM_VCPU_PTRAUTH_ADDRESS	5 /* VCPU uses address authentication */
> >>  #define KVM_ARM_VCPU_PTRAUTH_GENERIC	6 /* VCPU uses generic authentication */
> >> +#define KVM_ARM_VCPU_NESTED_VIRT	7 /* Support nested virtualization */
> > 
> > This seems weirdly named:
> > 
> > Isn't the feature we're exposing here really EL2?  In that case, the
> > feature the guest gets with this flag enabled is plain virtualisation,
> > possibly with the option to nest further.
> > 
> > Does the guest also get nested virt (i.e., recursively nested virt from
> > the host's PoV) as a side effect, or would require an explicit extra
> > flag?
> 
> So far, there is no extra flag to describe further nesting, and it
> directly comes from EL2 being emulated. I don't mind renaming this to
> KVM_ARM_VCPU_HAS_EL2, or something similar... Whether we want userspace
> to control the exposure of the nesting capability (i.e. EL2 with
> ARMv8.3-NV) is another question.

Agreed.

KVM_ARM_VCPU_HAS_EL2 seems a reasonable name to me.

If we have have an internal flag in vcpu_arch.flags we could call that
something different (i.e., keep the NESTED_VIRT naming) if it's natural
to do so.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
