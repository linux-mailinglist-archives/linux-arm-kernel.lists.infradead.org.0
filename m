Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2058175D33
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 15:33:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7SwD9mbxC7l/OqS6mV5EwTAfQSaI63y1HnUBt5QGka8=; b=SvifCvIlQwRa8d
	Tv7asRBjqoNBi4Q4IFd8B7/PJfU2bB6fReDN1eV4uXYBnSW6Ek9jofRNyRN7/L5/BC2nZ7IEJY/1D
	+I7a+2m3XT4ZgJeOaTrStI3qVPSKk6Lb+cQ2yHWr4JnTlUM/3nIjVN9FX66X3NuPW+KEm3p/xr0q2
	tU5gb499oYQMHrZ1/bVBVPfQIHj+jSghr4hK482dlV37Ei9gYxfdOGvxZvADyabUn7FKeqzbh8X+7
	Q+K9ENnYvPcftCT8hlDMlXhFTFKOkNEGLqC89PsVAQNw0oHiEAdLYUMryPih7z+stwLlFibmN0Y2f
	LiaPuhykkmA/Fxatkq+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8m7p-0006Vm-NK; Mon, 02 Mar 2020 14:32:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8m7h-0006V6-GF
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 14:32:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B9ADA101E;
 Mon,  2 Mar 2020 06:32:43 -0800 (PST)
Received: from localhost (e108754-lin.cambridge.arm.com [10.1.198.53])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 599AC3F534;
 Mon,  2 Mar 2020 06:32:43 -0800 (PST)
Date: Mon, 2 Mar 2020 14:32:42 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v5 3/7] arm64/kvm: disable access to AMU registers from
 kvm guests
Message-ID: <20200302143242.GB15709@arm.com>
References: <20200226132947.29738-1-ionela.voinescu@arm.com>
 <20200226132947.29738-4-ionela.voinescu@arm.com>
 <46b89d0c9704e0a0fb7a4ac2a1fb5b7a@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <46b89d0c9704e0a0fb7a4ac2a1fb5b7a@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_063245_584260_A2EC7205 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, pkondeti@codeaurora.org,
 catalin.marinas@arm.com, linux-pm@vger.kernel.org, linux-doc@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, dietmar.eggemann@arm.com,
 peterz@infradead.org, mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, will@kernel.org,
 valentin.schneider@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Thursday 27 Feb 2020 at 19:58:32 (+0000), Marc Zyngier wrote:
[..]
> >  static bool trap_ptrauth(struct kvm_vcpu *vcpu,
> >  			 struct sys_reg_params *p,
> >  			 const struct sys_reg_desc *rd)
> > @@ -1078,8 +1092,10 @@ static u64 read_id_reg(const struct kvm_vcpu
> > *vcpu,
> >  			 (u32)r->CRn, (u32)r->CRm, (u32)r->Op2);
> >  	u64 val = raz ? 0 : read_sanitised_ftr_reg(id);
> > 
> > -	if (id == SYS_ID_AA64PFR0_EL1 && !vcpu_has_sve(vcpu)) {
> > -		val &= ~(0xfUL << ID_AA64PFR0_SVE_SHIFT);
> > +	if (id == SYS_ID_AA64PFR0_EL1) {
> > +		if (!vcpu_has_sve(vcpu))
> > +			val &= ~(0xfUL << ID_AA64PFR0_SVE_SHIFT);
> > +		val &= ~(0xfUL << ID_AA64PFR0_AMU_SHIFT);
> 
> This will definitely conflict with some of the ongoing rework I have[1].
> I'm happy to provide this as a stable branch for you to rebase on top,
> or use an arm64 provided branch to rebase my stoff on top.
> 
> Just let me know how you want to proceed.
> 

Sure, a stable branch with this would be great. I'll wait for a reply
from Catalin for [1/7] and I'll rebase on top of your provided branch
when it's clear whether other changes are needed to this set.

Much appreciated,
Ionela.

> Thanks,
> 
>         M.
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/commit/?h=kvm-arm64/debug-fixes-5.6&id=454fb7398d3626328f7f771c07d21e894e4e1a3b
> -- 
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
