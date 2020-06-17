Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5998E1FC645
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 08:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Htntj2avf8EnFxxi4xMn2D6BSNVFd673i7DtAJQVqJo=; b=ILCyeo8hQLDATS6/Jqu/RrMaV
	mtPxiRGKKCVlx65QRl2a77SqDNBIXYCSY6A1Wc7qE+R4fVwILVQonFOovqfVtFzDzh4P684HHZORV
	H3+6W9StYXEg5Gju+9+QUevGKUBJyD1WLcs0PJN57xLTAisvwd8y6fDey63sRIQgjvTaRUa52oDD1
	XBTvoJMH7kZgkRyoYNwNjgs12tlLpTraVFDmRl1rBkWrnMfiMh4q9ycq+Pu8Vbyav8rl5tQdH1KHb
	40pJejEpzHd8x97v7k9OmJWZBPaawqTgoJ/4XLLVxdJR9j+AwXK+92H4GYsjx4ag5mNCeRsN/8ZpH
	iRsnQFxFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlRgY-0008Bk-FR; Wed, 17 Jun 2020 06:36:34 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlRgQ-0008BL-61
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 06:36:27 +0000
Received: by mail-pj1-x1041.google.com with SMTP id jz3so523334pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 23:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0hmKmXCxCRcQALPYbnFdxEvUlQkPks6VN/iZhbvkJ4k=;
 b=rvqd9LWWq2oBP1NXSRICoyE7dBDZKyQkKvS24/nayfJSVcjw77MfPsJ5upffBnudoy
 d3z4RpewDF5dAG2sJV4heBbN11HcTwTMsG/0yKMRCgrEt1uoNhlnsJ1io3alqXV8bPUh
 sJhtTJyIPX/m7Av4cc5Aq9oU1fbTCNLw+7F2+qXN5ViVBFq+/MiL6azF9FO85ot1qneD
 Z7aFLXDuUUs9HvUQvx+7BpLXiwtVVEf0CIdQ+dG88byu+EHygjAET3XxEXQrAU1RFpiN
 AlKDCDx+9pgemETMZa8zpUkJ45Zsh+nJaf3vQzZc7n5tBI+aMOSAMIQgQppdVEX0IHFA
 IQXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0hmKmXCxCRcQALPYbnFdxEvUlQkPks6VN/iZhbvkJ4k=;
 b=mZRe+V724b+SXm58xZgG+dbozE/4ukne+4YGCeaB0SxG+M2f9e7f+mQzFlM0uoG3Kx
 3eSGeaeFjgbnv4W+VD8EO5Tb491+1UMQVvmJ/RjQ73w6ZI8e26W1pH4Q33aXDT87crRH
 7eBabslI+0gJFsXVC94JvRlnA7CrAG8Ja1Pd1c/8KKjznx5s7BLV9Hm0Yyuido03XcAy
 ZHrMtF22wjlwh1IYC/7vleFKJ2EYaqh2RH5pvs/gKuHCZe7y0hqx+xX12EvsbMtImolF
 ABQByJlKJu+Z8pK3Ub+RxBQfQ3Oy5Sdyy87YeI2EbJKsGHoSejjTGTlNv6hEkH5825qn
 IO5A==
X-Gm-Message-State: AOAM530BtHO2LVv2ZGHXrROJ0WI4tMUXX0jhWKsdcugCk+akKSFnDxXS
 pGMRFz3IqshIu0UpT74Ee8baOg==
X-Google-Smtp-Source: ABdhPJy43trEBsAiGCPNDdmT5lU7+nqr2aATv0kKhfWgDpMRVWaO3qJBYGDYVT47SIR/M4ppBmqQhg==
X-Received: by 2002:a17:90a:4eca:: with SMTP id
 v10mr6784491pjl.170.1592375785192; 
 Tue, 16 Jun 2020 23:36:25 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
 by smtp.gmail.com with ESMTPSA id i125sm15909001pgd.21.2020.06.16.23.36.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 23:36:24 -0700 (PDT)
Date: Tue, 16 Jun 2020 23:36:21 -0700
From: Fangrui Song <maskray@google.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Message-ID: <20200617063621.vqtplv2l3nnaye22@google.com>
References: <20200615105524.GA2694@willie-the-truck>
 <20200615115337.GG4447@sirena.org.uk>
 <20200615120223.GC2694@willie-the-truck>
 <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
 <20200616173728.GC2129@willie-the-truck>
 <20200616174904.GA3403100@ubuntu-n2-xlarge-x86>
 <20200616175519.GD2129@willie-the-truck>
 <CAKwvOdm_0W5A+=C0uNfFfU2+wb-f4MA2B_P+15KWdGsBqfZ9rg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdm_0W5A+=C0uNfFfU2+wb-f4MA2B_P+15KWdGsBqfZ9rg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_233626_245478_888A7CBD 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Tom Stellard <tstellar@redhat.com>,
 android-kvm@google.com, Catalin Marinas <catalin.marinas@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Mark Brown <broonie@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, daniel.kiss@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2020-06-16, 'Nick Desaulniers' via Clang Built Linux wrote:
>On Tue, Jun 16, 2020 at 10:55 AM Will Deacon <will@kernel.org> wrote:
>>
>> On Tue, Jun 16, 2020 at 10:49:04AM -0700, Nathan Chancellor wrote:
>> > On Tue, Jun 16, 2020 at 06:37:28PM +0100, Will Deacon wrote:
>> > > On Mon, Jun 15, 2020 at 07:31:05AM -0700, Nathan Chancellor wrote:
>> > > > On Mon, Jun 15, 2020 at 01:02:23PM +0100, Will Deacon wrote:
>> > > > > On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
>> > > > > > ([AArch64] Fix BTI instruction emission) should fix this, it's been
>> > > > > > reviewed so should be merged shortly.
>> > > > >
>> > > > > Cheers, that's good to hear. Shall we have a guess at the clang release
>> > > > > that will get the fix, or just disable in-kernel BTI with clang for now?
>> > > > >
>> > > >
>> > > > This will be in clang 11 for sure. Tom, would it be too late to get this
>> > > > in to clang 10.0.1? If it is not, I can open a PR.
>> > >
>> > > Any update on this, please? I'd like to get the kernel fixed this week.
>> > >
>> > The AArch64 backend owner said it should be okay to add to 10.0.1:
>> > https://llvm.org/pr46327
>> >
>> > Tom just needs to pick it, I see no reason to believe that won't happen
>> > this week.
>>
>> Brill, then I'll tentatively queue the diff below...
>>
>> Thanks,
>>
>> Will
>>
>> --->8
>>
>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>> index 31380da53689..4ae2419c14a8 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -1630,6 +1630,8 @@ config ARM64_BTI_KERNEL
>>         depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
>>         # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
>>         depends on !CC_IS_GCC || GCC_VERSION >= 100100
>> +       # https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
>> +       depends on !CC_IS_CLANG || CLANG_VERSION >= 100001
>>         depends on !(CC_IS_CLANG && GCOV_KERNEL)
>>         depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>>         help
>
>That should be fine.
>Acked-by: Nick Desaulniers <ndesaulniers@google.com>

100001 is fine.

Tom has merged it into release/10.x
https://github.com/llvm/llvm-project/commit/bf89c5aeb8915d488fa1c790e1b237b62a49c01f

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
