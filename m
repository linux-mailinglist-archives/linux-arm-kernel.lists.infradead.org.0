Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4F350B17
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 14:49:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sXnBP7BbIeCzPAmcFClCmv99RBp9yUkugdHGhqE/Tf4=; b=nsxlSpBlkT6XrY
	/rcarsb2LbquUBY9AadfB0rI4JONWlkvPYukKIJ8AFYTg1WE9H5BPQ/9qovRbHdRDKoBOwvqw5OM6
	Kxa9vFBGBaSshWUw5s3e+sRTIMtKR8JKqEZUHUe5ZLBTf97PAyrPnQh5xYFettuAx5mRv1ILY55HG
	y9BwdnHXPqW2uqR8EOffYJHPwZQ1xGGu5UIFxhNW6mn0nlLS4Qijp2mzrvgk9QrI9wZeaOwQzgnBj
	XhfYCs3y9TjxEk4yijD8yoWvwVTCGROwEbVMLdL4Og9LLNusUI3MgxXOKW0TXndJ4bHD/CFfP4ZTe
	uDVp3jUcKRCFVtec+SzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOPI-00040C-RY; Mon, 24 Jun 2019 12:49:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOP9-0003zT-Ku
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 12:49:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 73E0C344;
 Mon, 24 Jun 2019 05:49:02 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 856513F718;
 Mon, 24 Jun 2019 05:49:01 -0700 (PDT)
Date: Mon, 24 Jun 2019 13:48:59 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH 06/59] KVM: arm64: nv: Allow userspace to set PSR_MODE_EL2x
Message-ID: <20190624124859.GP2790@e103592.cambridge.arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-7-marc.zyngier@arm.com>
 <7f8a9d76-6087-b8d9-3571-074a08d08ec8@arm.com>
 <3a68e4e6-878f-7272-4e2d-8768680287fd@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a68e4e6-878f-7272-4e2d-8768680287fd@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_054903_731349_2674F9D0 
X-CRM114-Status: GOOD (  20.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kvm@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Julien Thierry <julien.thierry@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 02:50:08PM +0100, Marc Zyngier wrote:
> On 21/06/2019 14:24, Julien Thierry wrote:
> > 
> > 
> > On 21/06/2019 10:37, Marc Zyngier wrote:
> >> From: Christoffer Dall <christoffer.dall@linaro.org>
> >>
> >> We were not allowing userspace to set a more privileged mode for the VCPU
> >> than EL1, but we should allow this when nested virtualization is enabled
> >> for the VCPU.
> >>
> >> Signed-off-by: Christoffer Dall <christoffer.dall@linaro.org>
> >> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> >> ---
> >>  arch/arm64/kvm/guest.c | 6 ++++++
> >>  1 file changed, 6 insertions(+)
> >>
> >> diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
> >> index 3ae2f82fca46..4c35b5d51e21 100644
> >> --- a/arch/arm64/kvm/guest.c
> >> +++ b/arch/arm64/kvm/guest.c
> >> @@ -37,6 +37,7 @@
> >>  #include <asm/kvm_emulate.h>
> >>  #include <asm/kvm_coproc.h>
> >>  #include <asm/kvm_host.h>
> >> +#include <asm/kvm_nested.h>
> >>  #include <asm/sigcontext.h>
> >>  
> >>  #include "trace.h"
> >> @@ -194,6 +195,11 @@ static int set_core_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
> >>  			if (vcpu_el1_is_32bit(vcpu))
> >>  				return -EINVAL;
> >>  			break;
> >> +		case PSR_MODE_EL2h:
> >> +		case PSR_MODE_EL2t:
> >> +			if (vcpu_el1_is_32bit(vcpu) || !nested_virt_in_use(vcpu))
> > 
> > This condition reads a bit weirdly. Why do we care about anything else
> > than !nested_virt_in_use() ?
> > 
> > If nested virt is not in use then obviously we return the error.
> > 
> > If nested virt is in use then why do we care about EL1? Or should this
> > test read as "highest_el_is_32bit" ?
> 
> There are multiple things at play here:
> 
> - MODE_EL2x is not a valid 32bit mode
> - The architecture forbids nested virt with 32bit EL2
> 
> The code above is a simplification of these two conditions. But
> certainly we can do a bit better, as kvm_reset_cpu() doesn't really
> check that we don't create a vcpu with both 32bit+NV. These two bits
> should really be exclusive.

This code is safe for now because KVM_VCPU_MAX_FEATURES <=
KVM_ARM_VCPU_NESTED_VIRT, right, i.e., nested_virt_in_use() cannot be
true?

This makes me a little uneasy, but I think that's paranoia talking: we
want bisectably, but no sane person should ship with just half of this
series.  So I guess this is fine.

We could stick something like

	if (WARN_ON(...))
		return false;

in nested_virt_in_use() and then remove it in the final patch, but it's
probably overkill.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
