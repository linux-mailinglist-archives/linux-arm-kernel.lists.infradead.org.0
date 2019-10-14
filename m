Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 321A2D67D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 18:57:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9LeVToymWwWGIZ+UmrgSY6CfJhLISr3+j87oqQPnw0=; b=WCa2CdJf43MkGx
	6PqqHqbJFytD42mwCL57lqBwUi6OeVKcF0W8rSrxuLAMvdu7GiQ5VIYDgZUcx40mDjVLk7tFz3+r3
	+4r5MGMEd+6nhY31l/l/1HXWikwqm9ljqHz0bS+2smU2bJH4sFFCCwDW0M5em3J0pLJ8Akzd7b5ER
	WPBX0/Fmi8a7STUyzPtFjMo9iKp9R/4OI1Z+D1Lctl/QAZ2Hz22FkE2iGAg/TgVtHR1YOmbEqdUj3
	kEMwYparjydeKzCR7sTQnSZTBM1pK8G3PEv0ozHmoYPEw60DxpcpQHksD2m02IJi3lVrC1Zj8/TOL
	rsBEuaCRaUopspadZnuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK3fP-0002C4-6K; Mon, 14 Oct 2019 16:57:55 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK3fE-0002BT-UY
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 16:57:46 +0000
Received: by mail-wm1-x344.google.com with SMTP id 3so17466750wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 09:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=llON5toOWi2bZ+EE1q0Z/QUJpndkKf2DNgWPmwYksfQ=;
 b=ZzgD3Jbn2ktYUCG1ShTxDW6V90lyllgeMmDKv8Ub8GF0rxsJxYn5YqATRlKmu+4GsV
 vgx5YoGWzta0LlB6m9iz3FsiCGANPQv23KuM5zEC+HrcUXXhRxk7QOkGiq5KC55RjCPw
 O+gK8mChRm2vA7ly4iOLv7RIs8Ey2Kp+Jrlk8XIBLwCceOR4KFVqfYYf9hNupQ5fwRRN
 1e1+6wbAKix07wTye8AyGnZ5EnhmgWVD7C5vpAZbikYCnjmyv8gOn+xm5H5RmA90urNk
 dXW1nejEkqDyZ7u7+uBx9PQ55IGedX/rq9ZWSEXN6BiRLBUH2U50wqk1Gbcgg2VRJ1PV
 v46A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=llON5toOWi2bZ+EE1q0Z/QUJpndkKf2DNgWPmwYksfQ=;
 b=ctwim2+rNbIaxYYDDi2QHJ5WpPt6h+hkoOYkTSA+N8LpKL6Q57ql838T568a5roID/
 J5vY0BhbVWERqwyFZdlO/R1DfHj6/L8nkmelzz+V1SsJZDV9mB9P5h7a9nT4PUyS71th
 LzMXuLft3lRQaDVo1Q56/FTJ+xbgqJUkKWt4Lzjx7txxrKBQjGIoaWxqFfSbiEwdr69e
 ODxpODiieu92qqfVPaT7iAlO/jJjzS6KXKuCGfLOxAllzKkjCb7j8s+P+Mjahh5mHLnr
 vFghjf8qHP9u8TNlniMgjvU5Caom6pTHEIfA19WegddOPODe+6X3wCvFfiekh923tNDB
 1Y+A==
X-Gm-Message-State: APjAAAV/w/RrZr9Dfn+9nLEB0Z0l0pdcRpXpCYkmyNYmU5Cti/zaXQQr
 lxX8szDIdUFmqwUcpnEcHZ0lFSSV0k850/aTnCXf6w==
X-Google-Smtp-Source: APXvYqxWnHQOjzcs7wXVKeBx8Rfnrc4denkCs9byW/mRpcJYeegYV/fsEXUw6MvLUzIFiNdhTH5aFimyaebe3sK4AFU=
X-Received: by 2002:a1c:a9c5:: with SMTP id s188mr14432821wme.61.1571072262432; 
 Mon, 14 Oct 2019 09:57:42 -0700 (PDT)
MIME-Version: 1.0
References: <20191010171517.28782-1-suzuki.poulose@arm.com>
 <20191010171517.28782-2-suzuki.poulose@arm.com>
 <20191011113620.GG27757@arm.com>
 <4ba5c423-4e2a-d810-cd36-32a16ad42c91@arm.com>
 <20191011142137.GH27757@arm.com>
 <418b0c4b-cbcd-4263-276d-1e9edc5eee0b@arm.com>
 <20191014145204.GS27757@arm.com>
 <12e002e7-42e8-c205-e42c-3348359d2f98@arm.com>
 <20191014155009.GM24047@e103592.cambridge.arm.com>
In-Reply-To: <20191014155009.GM24047@e103592.cambridge.arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 14 Oct 2019 18:57:30 +0200
Message-ID: <CAKv+Gu83oa3+DKNFowVkE=mZfLorAvGQ3GVPiZtsXzQBcsMCWg@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: cpufeature: Fix the type of no FP/SIMD
 capability
To: Dave P Martin <Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_095744_986468_2C61DE65 
X-CRM114-Status: GOOD (  34.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 14 Oct 2019 at 17:50, Dave P Martin <Dave.Martin@arm.com> wrote:
>
> On Mon, Oct 14, 2019 at 04:45:40PM +0100, Suzuki K Poulose wrote:
> >
> >
> > On 14/10/2019 15:52, Dave Martin wrote:
> > > On Fri, Oct 11, 2019 at 06:28:43PM +0100, Suzuki K Poulose wrote:
> > >>
> > >>
> > >> On 11/10/2019 15:21, Dave Martin wrote:
> > >>> On Fri, Oct 11, 2019 at 01:13:18PM +0100, Suzuki K Poulose wrote: > Hi Dave
> > >>>>
> > >>>> On 11/10/2019 12:36, Dave Martin wrote:
> > >>>>> On Thu, Oct 10, 2019 at 06:15:15PM +0100, Suzuki K Poulose wrote:
> > >>>>>> The NO_FPSIMD capability is defined with scope SYSTEM, which implies
> > >>>>>> that the "absence" of FP/SIMD on at least one CPU is detected only
> > >>>>>> after all the SMP CPUs are brought up. However, we use the status
> > >>>>>> of this capability for every context switch. So, let us change
> > >>>>>> the scop to LOCAL_CPU to allow the detection of this capability
> > >>>>>> as and when the first CPU without FP is brought up.
> > >>>>>>
> > >>>>>> Also, the current type allows hotplugged CPU to be brought up without
> > >>>>>> FP/SIMD when all the current CPUs have FP/SIMD and we have the userspace
> > >>>>>> up. Fix both of these issues by changing the capability to
> > >>>>>> BOOT_RESTRICTED_LOCAL_CPU_FEATURE.
> > >>>>>>
> > >>>>>> Fixes: 82e0191a1aa11abf ("arm64: Support systems without FP/ASIMD")
> > >>>>>> Cc: Will Deacon <will@kernel.org>
> > >>>>>> Cc: Mark Rutland <mark.rutland@arm.com>
> > >>>>>> Cc: Catalin Marinas <catalin.marinas@arm.com>
> > >>>>>> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > >>>>>> ---
> > >>>>>>   arch/arm64/kernel/cpufeature.c | 2 +-
> > >>>>>>   1 file changed, 1 insertion(+), 1 deletion(-)
> > >>>>>>
> > >>>>>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> > >>>>>> index 9323bcc40a58..0f9eace6c64b 100644
> > >>>>>> --- a/arch/arm64/kernel/cpufeature.c
> > >>>>>> +++ b/arch/arm64/kernel/cpufeature.c
> > >>>>>> @@ -1361,7 +1361,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
> > >>>>>>        {
> > >>>>>>                /* FP/SIMD is not implemented */
> > >>>>>>                .capability = ARM64_HAS_NO_FPSIMD,
> > >>>>>> -              .type = ARM64_CPUCAP_SYSTEM_FEATURE,
> > >>>>>> +              .type = ARM64_CPUCAP_BOOT_RESTRICTED_CPU_LOCAL_FEATURE,
> > >>>>>
> > >>>>> ARM64_HAS_NO_FPSIMD is really a disability, not a capability.
> > >>>>>
> > >>>>> Although we have other things that smell like this (CPU errata for
> > >>>>> example), I wonder whether inverting the meaning in the case would
> > >>>>> make the situation easier to understand.
> > >>>>
> > >>>> Yes, it is indeed a disability, more on that below.
> > >>>>
> > >>>>>
> > >>>>> So, we'd have ARM64_HAS_FPSIMD, with a minimum (signed) feature field
> > >>>>> value of 0.  Then this just looks like an ARM64_CPUCAP_SYSTEM_FEATURE
> > >>>>> IIUC.  We'd just need to invert the sense of the check in
> > >>>>> system_supports_fpsimd().
> > >>>>
> > >>>> This is particularly something we want to avoid with this patch. We want
> > >>>> to make sure that we have the up-to-date status of the disability right
> > >>>> when it happens. i.e, a CPU without FP/SIMD is brought up. With SYSTEM_FEATURE
> > >>>> you have to wait until we bring all the CPUs up. Also, for HAS_FPSIMD,
> > >>>> you must wait until all the CPUs are up, unlike the negated capability.
> > >>>
> > >>> I don't see why waiting for the random defective early CPU to come up is
> > >>> better than waiting for all the early CPUs to come up and then deciding.
> > >>>
> > >>> Kernel-mode NEON aside, the status of this cap should not matter until
> > >>> we enter userspace for the first time.
> > >>>
> > >>> The only issue is if e.g., crypto drivers that can use kernel-mode NEON
> > >>> probe for it before all early CPUs are up, and so cache the wrong
> > >>> decision.  The current approach doesn't cope with that anyway AFAICT.
> > >>
> > >> This approach does in fact. With LOCAL_CPU scope, the moment a defective
> > >> CPU turns up, we mark the "capability" and thus the kernel cannot use
> > >> the neon then onwards, unlike the existing case where we have time till
> > >> we boot all the CPUs (even when the boot CPU may be defective).
> > >
> > > I guess that makes sense.
> > >
> > > I'm now wondering what happens if anything tries to use kernel-mode NEON
> > > before SVE is initialised -- which doesn't happen until cpufeatures
> > > configures the system features.
> > >
> > > I don't think your proposed change makes anything worse here, but it may
> > > need looking into.
> >
> > We could throw in a WARN_ON() in kernel_neon() to make sure that the SVE
> > is initialised ?
>
> Could do, at least as an experiment.
>
> Ard, do you have any thoughts on this?
>

All in-kernel NEON code checks whether the NEON is usable, so I'd
expect that check to return 'false' if it is too early in the boot for
the NEON to be used at all.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
