Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0CE5F62A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 12:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGYPaVoCPSc4NlfYSEWqWFb43C1rb4xJD9OhqIj/3hI=; b=ceOl6ygSksKpW2
	1ECY0hwi6S1WwfwJ+8IqL84kKB6NA4Yzm7YCRzkZexmku9g9TIAJX4jAVCjcRzq/QKac5joJM4Xo0
	l5NykpVNmKqL25c0sJaBObJ2ZM7ukcbfoXjQiSXQ9/LRQglAOhZKc4749fTR1jt9tMPlXVQdIJErW
	KCWRTW/jsw9rMrZ1SV+nPGEKYSP+mVznDYClIohY5mQFLVoP0eHyDuQDUCbF27OgbZX2QF0Up6cn8
	4boF+VRYJfuX6XTNbOHbOOroL87vjRF2uuxUUdWUmiCjLiJ8X2MwpYXU/WpxLn41ZRJ4Rx2gpChHZ
	3aweZuw6FsvzI0gChZ5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiyXV-0001EE-9b; Thu, 04 Jul 2019 10:00:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiyXF-0001CX-Cl
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 10:00:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 52016360;
 Thu,  4 Jul 2019 03:00:12 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 84C643F703;
 Thu,  4 Jul 2019 03:00:11 -0700 (PDT)
Date: Thu, 4 Jul 2019 11:00:09 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH 06/59] KVM: arm64: nv: Allow userspace to set PSR_MODE_EL2x
Message-ID: <20190704100009.GZ2790@e103592.cambridge.arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-7-marc.zyngier@arm.com>
 <7f8a9d76-6087-b8d9-3571-074a08d08ec8@arm.com>
 <3a68e4e6-878f-7272-4e2d-8768680287fd@arm.com>
 <20190624124859.GP2790@e103592.cambridge.arm.com>
 <09dca509-9696-d224-22d2-4d5b0a0d9161@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <09dca509-9696-d224-22d2-4d5b0a0d9161@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_030013_518908_54758647 
X-CRM114-Status: GOOD (  23.02  )
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

On Wed, Jul 03, 2019 at 10:21:57AM +0100, Marc Zyngier wrote:
> On 24/06/2019 13:48, Dave Martin wrote:
> > On Fri, Jun 21, 2019 at 02:50:08PM +0100, Marc Zyngier wrote:
> >> On 21/06/2019 14:24, Julien Thierry wrote:
> >>>
> >>>
> >>> On 21/06/2019 10:37, Marc Zyngier wrote:
> >>>> From: Christoffer Dall <christoffer.dall@linaro.org>
> >>>>
> >>>> We were not allowing userspace to set a more privileged mode for the VCPU
> >>>> than EL1, but we should allow this when nested virtualization is enabled
> >>>> for the VCPU.
> >>>>
> >>>> Signed-off-by: Christoffer Dall <christoffer.dall@linaro.org>
> >>>> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> >>>> ---
> >>>>  arch/arm64/kvm/guest.c | 6 ++++++
> >>>>  1 file changed, 6 insertions(+)
> >>>>
> >>>> diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
> >>>> index 3ae2f82fca46..4c35b5d51e21 100644
> >>>> --- a/arch/arm64/kvm/guest.c
> >>>> +++ b/arch/arm64/kvm/guest.c
> >>>> @@ -37,6 +37,7 @@
> >>>>  #include <asm/kvm_emulate.h>
> >>>>  #include <asm/kvm_coproc.h>
> >>>>  #include <asm/kvm_host.h>
> >>>> +#include <asm/kvm_nested.h>
> >>>>  #include <asm/sigcontext.h>
> >>>>  
> >>>>  #include "trace.h"
> >>>> @@ -194,6 +195,11 @@ static int set_core_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
> >>>>  			if (vcpu_el1_is_32bit(vcpu))
> >>>>  				return -EINVAL;
> >>>>  			break;
> >>>> +		case PSR_MODE_EL2h:
> >>>> +		case PSR_MODE_EL2t:
> >>>> +			if (vcpu_el1_is_32bit(vcpu) || !nested_virt_in_use(vcpu))
> >>>
> >>> This condition reads a bit weirdly. Why do we care about anything else
> >>> than !nested_virt_in_use() ?
> >>>
> >>> If nested virt is not in use then obviously we return the error.
> >>>
> >>> If nested virt is in use then why do we care about EL1? Or should this
> >>> test read as "highest_el_is_32bit" ?
> >>
> >> There are multiple things at play here:
> >>
> >> - MODE_EL2x is not a valid 32bit mode
> >> - The architecture forbids nested virt with 32bit EL2
> >>
> >> The code above is a simplification of these two conditions. But
> >> certainly we can do a bit better, as kvm_reset_cpu() doesn't really
> >> check that we don't create a vcpu with both 32bit+NV. These two bits
> >> should really be exclusive.
> > 
> > This code is safe for now because KVM_VCPU_MAX_FEATURES <=
> > KVM_ARM_VCPU_NESTED_VIRT, right, i.e., nested_virt_in_use() cannot be
> > true?
> > 
> > This makes me a little uneasy, but I think that's paranoia talking: we
> > want bisectably, but no sane person should ship with just half of this
> > series.  So I guess this is fine.
> > 
> > We could stick something like
> > 
> > 	if (WARN_ON(...))
> > 		return false;
> > 
> > in nested_virt_in_use() and then remove it in the final patch, but it's
> > probably overkill.
> 
> The only case I can imagine something going wrong is if this series is
> only applied halfway, and another series bumps the maximum feature to
> something that includes NV. I guess your suggestion would solve that.

I won't lose sleep over it either way.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
