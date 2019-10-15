Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3DED728E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 11:52:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3chMDsIU5+h3vTZomSOTuzZgGIra3ffVuwwKos8u4Zg=; b=T9StCPwLudVUCM
	EXHBaAs7YKTpPHINRhiU696/Nm9xQ8tDVvKTQuXPYL5vJm2ZY1HGiQ6iWx9mH6gO2KsZ6Gdk/7Qho
	UiA5lvN5X164O0TA5q9HA7EXELMfIz1GCz8W4Ma2BqY4xQ+vhhjizJjj9I1vzxXSt5B9gcWnwlP7C
	AQOd/paOknr+iUntjrWACw4ulVIYvnKJc/+m7Rha5APjaxbW5HzggNzFZKwuXUYITX4PuhAX6ousI
	FV+pWEodQo5gXEI3MJNrhzboDPOT10/mCQqrL45fCMQLrvGsTWID3PIxSqQzlukR0sNfZb03KC/vu
	VvzKLwVox2cTgg/QyCFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKJVK-0007wi-Gs; Tue, 15 Oct 2019 09:52:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKJVA-0007wI-PI
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 09:52:26 +0000
Received: by mail-wr1-x443.google.com with SMTP id j18so23008532wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 02:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kUv+jbQ6sA3ILwnXcSwb49q5EyrlDX4mVKsVLguHMmA=;
 b=wkV7eEs+to/QY5bvJp/AEk6but1NCSZiLFX7wX5B7T+Tnf0bR/7Rjyonx8ZgJmKvLt
 TDLset7/oWfQTw0wPJhCNg8eQjOF93XpW3cujEPWpeerfyo87isjCdWTKH85mTRVlEqo
 oGJQo13/6KtKKhNsl5I33ZipP3F6Eo3gUf/A2UINAKrgbSvKZlHaoPC1o6KYQ/paTl7K
 njIW4K/KDxCeBYiG6/+vS9Gd+xiWcEtx8dEM/cz+CDlfl6inbGSw83GEs8Xd579UspQq
 VmMnfoGtxLvyRNrfgQ0tVfeb5F+YVzbgOsGzjxHv4MmzD0/ajemMVQOBHCug7PqOo9+4
 V7vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kUv+jbQ6sA3ILwnXcSwb49q5EyrlDX4mVKsVLguHMmA=;
 b=Df0Kol96cidAqU1EfBCbswNoPEsw2wzjTKWrnL5RuhbB9hJCp9CSJpodjQ+hUMmYgg
 XDtLurAmqjFjch+HnUEAmZkBUg54tiPA64Wj7oQbv+PwwyamSUuzWLY2S+wuqfMLi8sG
 /4H8+ar5SHCW1RTXeB6F6TaCyo4UM94wRMnsvD3JyGqX+8LIF9u6+hvAEQqOQly5yRBq
 F1lIpGYZYQhcuF3r1h0n3yJB0MrDCq1HtTdKrwmDpbW9nePTSEvc+0YwqAqt7TJs4eo/
 Z6uhLy5X0U5YjFJRBfs/4C/kG5tFMx+1vjQ58D1DvfsPKAETU6UUg4w5qucpNd8oLm81
 GVIg==
X-Gm-Message-State: APjAAAUepF6H9pkwd7NQCbIF16qA4K7RNssoRYbyERx4xpFj/Hvcht2m
 DtG21WxZ+nD+E5bm9VfuuMGWhJEpaNk8z6J7vjbKADSKJI8Vug==
X-Google-Smtp-Source: APXvYqxp6JuomjYQWylOXgkp7jnukknifCdqtFnGK/fZ9Cju84Q0VTtUwqS0LcSTEXb301Zb4f+yPr3iFUL/qcUbL3M=
X-Received: by 2002:a5d:43c9:: with SMTP id v9mr29013622wrr.200.1571133143010; 
 Tue, 15 Oct 2019 02:52:23 -0700 (PDT)
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
 <CAKv+Gu83oa3+DKNFowVkE=mZfLorAvGQ3GVPiZtsXzQBcsMCWg@mail.gmail.com>
 <2764d8ed-0796-64cc-e3c6-356ba6e67967@arm.com>
In-Reply-To: <2764d8ed-0796-64cc-e3c6-356ba6e67967@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 15 Oct 2019 11:52:11 +0200
Message-ID: <CAKv+Gu8wH3HTso+vVMaEUPWAqwg+WrJ5mMo14Detvy5HSd_JOg@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: cpufeature: Fix the type of no FP/SIMD
 capability
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_025224_832576_E42DAD10 
X-CRM114-Status: GOOD (  33.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "will@kernel.org" <will@kernel.org>, Dave P Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 15 Oct 2019 at 11:44, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
>
>
> On 14/10/2019 17:57, Ard Biesheuvel wrote:
> > On Mon, 14 Oct 2019 at 17:50, Dave P Martin <Dave.Martin@arm.com> wrote:
> >>
> >> On Mon, Oct 14, 2019 at 04:45:40PM +0100, Suzuki K Poulose wrote:
> >>>
> >>>
> >>> On 14/10/2019 15:52, Dave Martin wrote:
> >>>> On Fri, Oct 11, 2019 at 06:28:43PM +0100, Suzuki K Poulose wrote:
> >>>>>
> >>>>>
> >>>>> On 11/10/2019 15:21, Dave Martin wrote:
> >>>>>> On Fri, Oct 11, 2019 at 01:13:18PM +0100, Suzuki K Poulose wrote: > Hi Dave
> >>>>>>>
> >>>>>>> On 11/10/2019 12:36, Dave Martin wrote:
> >>>>>>>> On Thu, Oct 10, 2019 at 06:15:15PM +0100, Suzuki K Poulose wrote:
> >>>>>>>>> The NO_FPSIMD capability is defined with scope SYSTEM, which implies
> >>>>>>>>> that the "absence" of FP/SIMD on at least one CPU is detected only
> >>>>>>>>> after all the SMP CPUs are brought up. However, we use the status
> >>>>>>>>> of this capability for every context switch. So, let us change
> >>>>>>>>> the scop to LOCAL_CPU to allow the detection of this capability
> >>>>>>>>> as and when the first CPU without FP is brought up.
> >>>>>>>>>
> >>>>>>>>> Also, the current type allows hotplugged CPU to be brought up without
> >>>>>>>>> FP/SIMD when all the current CPUs have FP/SIMD and we have the userspace
> >>>>>>>>> up. Fix both of these issues by changing the capability to
> >>>>>>>>> BOOT_RESTRICTED_LOCAL_CPU_FEATURE.
> >>>>>>>>>
> >>>>>>>>> Fixes: 82e0191a1aa11abf ("arm64: Support systems without FP/ASIMD")
> >>>>>>>>> Cc: Will Deacon <will@kernel.org>
> >>>>>>>>> Cc: Mark Rutland <mark.rutland@arm.com>
> >>>>>>>>> Cc: Catalin Marinas <catalin.marinas@arm.com>
> >>>>>>>>> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> >>>>>>>>> ---
> >>>>>>>>>    arch/arm64/kernel/cpufeature.c | 2 +-
> >>>>>>>>>    1 file changed, 1 insertion(+), 1 deletion(-)
> >>>>>>>>>
> >>>>>>>>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> >>>>>>>>> index 9323bcc40a58..0f9eace6c64b 100644
> >>>>>>>>> --- a/arch/arm64/kernel/cpufeature.c
> >>>>>>>>> +++ b/arch/arm64/kernel/cpufeature.c
> >>>>>>>>> @@ -1361,7 +1361,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
> >>>>>>>>>         {
> >>>>>>>>>                 /* FP/SIMD is not implemented */
> >>>>>>>>>                 .capability = ARM64_HAS_NO_FPSIMD,
> >>>>>>>>> -              .type = ARM64_CPUCAP_SYSTEM_FEATURE,
> >>>>>>>>> +              .type = ARM64_CPUCAP_BOOT_RESTRICTED_CPU_LOCAL_FEATURE,
> >>>>>>>>
> >>>>>>>> ARM64_HAS_NO_FPSIMD is really a disability, not a capability.
> >>>>>>>>
> >>>>>>>> Although we have other things that smell like this (CPU errata for
> >>>>>>>> example), I wonder whether inverting the meaning in the case would
> >>>>>>>> make the situation easier to understand.
> >>>>>>>
> >>>>>>> Yes, it is indeed a disability, more on that below.
> >>>>>>>
> >>>>>>>>
> >>>>>>>> So, we'd have ARM64_HAS_FPSIMD, with a minimum (signed) feature field
> >>>>>>>> value of 0.  Then this just looks like an ARM64_CPUCAP_SYSTEM_FEATURE
> >>>>>>>> IIUC.  We'd just need to invert the sense of the check in
> >>>>>>>> system_supports_fpsimd().
> >>>>>>>
> >>>>>>> This is particularly something we want to avoid with this patch. We want
> >>>>>>> to make sure that we have the up-to-date status of the disability right
> >>>>>>> when it happens. i.e, a CPU without FP/SIMD is brought up. With SYSTEM_FEATURE
> >>>>>>> you have to wait until we bring all the CPUs up. Also, for HAS_FPSIMD,
> >>>>>>> you must wait until all the CPUs are up, unlike the negated capability.
> >>>>>>
> >>>>>> I don't see why waiting for the random defective early CPU to come up is
> >>>>>> better than waiting for all the early CPUs to come up and then deciding.
> >>>>>>
> >>>>>> Kernel-mode NEON aside, the status of this cap should not matter until
> >>>>>> we enter userspace for the first time.
> >>>>>>
> >>>>>> The only issue is if e.g., crypto drivers that can use kernel-mode NEON
> >>>>>> probe for it before all early CPUs are up, and so cache the wrong
> >>>>>> decision.  The current approach doesn't cope with that anyway AFAICT.
> >>>>>
> >>>>> This approach does in fact. With LOCAL_CPU scope, the moment a defective
> >>>>> CPU turns up, we mark the "capability" and thus the kernel cannot use
> >>>>> the neon then onwards, unlike the existing case where we have time till
> >>>>> we boot all the CPUs (even when the boot CPU may be defective).
> >>>>
> >>>> I guess that makes sense.
> >>>>
> >>>> I'm now wondering what happens if anything tries to use kernel-mode NEON
> >>>> before SVE is initialised -- which doesn't happen until cpufeatures
> >>>> configures the system features.
> >>>>
> >>>> I don't think your proposed change makes anything worse here, but it may
> >>>> need looking into.
> >>>
> >>> We could throw in a WARN_ON() in kernel_neon() to make sure that the SVE
> >>> is initialised ?
> >>
> >> Could do, at least as an experiment.
> >>
> >> Ard, do you have any thoughts on this?
> >>
> >
> > All in-kernel NEON code checks whether the NEON is usable, so I'd
> > expect that check to return 'false' if it is too early in the boot for
> > the NEON to be used at all.
>
> Ok. That implies, we need a check to make sure SVE set up is complete,
> which we don't at the moment, as we default to assume FP/SIMD is available.
>
> "system_can_use_fpsimd()" instead of the "system_supports_fpsimd() where
> the former should indicate:
>
>   system_supports_fpsimd() && sve_setup_complete()
>
> Where the sve_setup_complete() can itself be a static key, initialized
> very early if we have !CONFIG_SVE. Otherwise, set from sve_setup().
>
>
> Thoughts ?

Yes, that sounds reasonable. If we fold that into the implementation
of may_use_simd(), we shouldn't need any other changes to the clients
AFAICT

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
