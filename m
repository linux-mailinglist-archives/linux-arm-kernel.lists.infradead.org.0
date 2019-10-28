Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D75E775B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 18:10:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhcSkHypaYgejmUTPIeU72mhtEcO8YrKLAcyYLfCOdQ=; b=lCuzZr4McxegBw
	efGiq0lVCM8TV3PFZK4UG3KqypfVLrlJtaKTNZBJQt2jeuSkSsNX7cZcnxaSXgzET67be7qQLk91c
	2+WjE+rmxY/J3PnuqMgRhbzCm4cw+KHAI0ZrD/+jVuV01q6ZCz96BZ2lCOSnweZL4CnqtxaLBSPgp
	AqLL4WC6OEgGKChNo1+sScpWzIded1WN42I1mcZJZdbdLCYTseee8iBFr2OwuSjQXIJcO6Ii6RPEW
	kgNFgVe08D31P33QRvV6KF2IrbZw/wz1E4pTtfJETGaqSUWSicgNbOIYDzMC4F98Im9gOxzJeSFdG
	a1jBsxKTAz/9CmrAc+EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8Wm-0005GQ-T9; Mon, 28 Oct 2019 17:10:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8Wc-0005Fz-8s
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 17:09:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C62111FB;
 Mon, 28 Oct 2019 10:09:49 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1F99E3F71F;
 Mon, 28 Oct 2019 10:09:49 -0700 (PDT)
Date: Mon, 28 Oct 2019 17:09:47 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2] KVM: arm64: Don't set HCR_EL2.TVM when S2FWB is
 supported
Message-ID: <20191028170946.GB52213@lakrids.cambridge.arm.com>
References: <20191028130541.30536-1-christoffer.dall@arm.com>
 <0c3291a7-18dc-1ae5-e706-8b04c9ab8a9e@arm.com>
 <86pnigyh90.wl-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86pnigyh90.wl-maz@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_100950_360417_D4A8D37C 
X-CRM114-Status: GOOD (  15.91  )
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
Cc: Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 04:19:55PM +0000, Marc Zyngier wrote:
> On Mon, 28 Oct 2019 15:12:39 +0000,
> Alexandru Elisei <alexandru.elisei@arm.com> wrote:
> > On 10/28/19 1:05 PM, Christoffer Dall wrote:
> > > diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
> > > index d69c1efc63e7..70509799a2a9 100644
> > > --- a/arch/arm64/include/asm/kvm_emulate.h
> > > +++ b/arch/arm64/include/asm/kvm_emulate.h
> > > @@ -53,8 +53,18 @@ static inline void vcpu_reset_hcr(struct kvm_vcpu *vcpu)
> > >  		/* trap error record accesses */
> > >  		vcpu->arch.hcr_el2 |= HCR_TERR;
> > >  	}
> > > -	if (cpus_have_const_cap(ARM64_HAS_STAGE2_FWB))
> > > +
> > > +	if (cpus_have_const_cap(ARM64_HAS_STAGE2_FWB)) {
> > >  		vcpu->arch.hcr_el2 |= HCR_FWB;
> > > +	} else {
> > > +		/*
> > > +		 * For non-FWB CPUs, we trap VM ops (HCR_EL2.TVM) until M+C
> > > +		 * get set in SCTLR_EL1 such that we can detect when the guest
> > > +		 * MMU gets turned off and do the necessary cache maintenance
> > > +		 * then.
> > > +		 */
> > > +		vcpu->arch.hcr_el2 &= ~HCR_TVM;
> > 
> > Don't we want to set the bit here, so we're consistent with the
> > previous behaviour and the comment? Because with this patch, we
> > never set HCR_EL2.TVM...
> 
> Of course you're right. This is how I plan to fix it:
> 
> diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
> index 47c774c2d18b..7b835337f78b 100644
> --- a/arch/arm64/include/asm/kvm_emulate.h
> +++ b/arch/arm64/include/asm/kvm_emulate.h
> @@ -63,7 +63,7 @@ static inline void vcpu_reset_hcr(struct kvm_vcpu *vcpu)
>  		 * MMU gets turned on and do the necessary cache maintenance
>  		 * then.
>  		 */
> -		vcpu->arch.hcr_el2 &= ~HCR_TVM;
> +		vcpu->arch.hcr_el2 |= HCR_TVM;
>  	}

Ouch, yes. That was as suggested for v1, and I missed it when saying my
R-B held. :(

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
