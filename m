Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CFB83E01
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 01:47:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oH2Wbe457VCdwojqqj5Gp9zzblhHaw8m/Qy569D0lg0=; b=ia6Srod/d9vDe8
	9i3D/Bl64aDabDXunqcl6vMsJGQ36AuwcN3MmkoIvyXo7gwmm0tyH16l/SsBsWO0IDpo8Tjm6MnIY
	YC6KwEwkTUgy1vXJqNHrXHHjIFZ8eLKLxXrH5iqdKWkFrsPTSy5uXCFrbhqMARcbaeGlP7RBLnZ70
	D3OfUYrW2SSeyZuZO2FJmc0M7Uz0fPzDGSCuELt8lLtnGzUKSL5FmAH4cvm9G0uUcXuFVxvyv+hYn
	FgahY2gMq9L7ti436/hap14cbFWUVMk4Yl1VnloMAsIC5knmju5Vhr31M0Ta1UD2CDI/+LKmHEBRw
	CrY9VKCriE8QmqBIsx7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv9BD-0008Uq-2g; Tue, 06 Aug 2019 23:47:47 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv9B1-0008UN-R0
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 23:47:37 +0000
Received: by mail-pl1-x643.google.com with SMTP id az7so38466909plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 16:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aV5lAZFWsn30YUfYsELPUhW9S7mbkBmRP/hMNyYfqZs=;
 b=QUNWt01CtP+JdCmJJ4WW2Q0JVrwuxUjYP+BU04t7/lwNtSyaj7fp4ARqT1u988ocxe
 /UObh3p56rdRMtSzXrW/x5WUsvCAT1UxbpK3Pj5YRZIPxGPUrtwcySbu5D40F8FHquTJ
 yzRjNu3BjSrsjTftnkv9EwV9lB7bTiW9KTR8mMiTBkzwnn2W1UUOMk8ZLorYGDGp9cRG
 FIjlcv07TGe2znXNVjyvfbWeGSGGVfiVhcye/gzMjw8JAdJVDzW1PnI3zKAC6Th4vEHw
 eYk7gka/9KWzV7uMriJv4ZPS8IHXRt7evXzjlZEhrxm2AniEcBtwBYwPw3bjxIGt3k4v
 WDfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aV5lAZFWsn30YUfYsELPUhW9S7mbkBmRP/hMNyYfqZs=;
 b=hpWsjJHNLYh3IKv3fqH+oT83Q5bk48bBWyfJikW2SOot0XF5VUD0CqbE4CIRMRz+mE
 x9bpPBVPiinqdDoj9z92a3WMz/v+1t21LK/fcIVRWHv6ocojQtiecaWhJQQ2S6ks6KzT
 X8Ess0DmekGr3dQibPun3GM6RyGFxfmRCPWeiXAXUfVbXwJiGSKw649lu4bIs/iKN6Dq
 xQhEh6uDZruhgBfEZP8j/gp1FnkTdQQGLmx+yK8b2aTGu9uEunXMw2ieIb/J+P/cCBt1
 0sfXVsdeQbkdxQly3WjSWbIC4Uxpj17Q107IvmB+qQ/C58aC1PmPMyXivNdzgWRPkonV
 tz+w==
X-Gm-Message-State: APjAAAX+5ZU5W4KQyYiIP0wISDIqdHE164Ca9w7PZw5TfOhvxWHbt9Nz
 5OtzEcttggI0QtTuH0L4+F65yvZpLZVkQSu9DdL6nR6+Q5A/EA==
X-Google-Smtp-Source: APXvYqxmT/aPAOAzrVmvcxwS+LFf8BI5WKEDF6VhBt2NpdkKbMIHBW1K7KgCZpnwz+BImRvjKBjgZKocRnwkofPEOJM=
X-Received: by 2002:a17:902:9f93:: with SMTP id
 g19mr5425132plq.223.1565135254602; 
 Tue, 06 Aug 2019 16:47:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190806183918.41078-1-broonie@kernel.org>
 <CAKwvOdkvFowCWP6cpKoMOz+EWojBXJWs3TzuTvn4180sVu4ayw@mail.gmail.com>
In-Reply-To: <CAKwvOdkvFowCWP6cpKoMOz+EWojBXJWs3TzuTvn4180sVu4ayw@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 6 Aug 2019 16:47:23 -0700
Message-ID: <CAKwvOdkBhuzJ9L6L=+_PxSc4u3soB0VsiNUsjt=J55LgdYddnw@mail.gmail.com>
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_164735_902981_2D6962F8 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tri Vo <trong@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Nathan Huckleberry <nhuck@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 2:25 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Tue, Aug 6, 2019 at 11:39 AM Mark Brown <broonie@kernel.org> wrote:
> >
> > Current boot tests with clang built big endian kernels in KernelCI are
> > showing problems with the kernel being unable to interpret big endian
> > userspace. This is a bug and should be fixed but for now let's prevent
> > these kernels being built, we may end up needing to add a version
> > dependency on the compiler anyway.
> >
> > Signed-off-by: Mark Brown <broonie@kernel.org>
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/628
> Acked-by: Nick Desaulniers <ndesaulniers@google.com>

+Huck
Huck notes that the device eventually boots in qemu, it just takes on
the order of 165 seconds to boot.  What's the timeout on KernelCI?

I think if we can determine why we see:
[  144.626755] request_module: kmod_concurrent_max (0) close to 0
(max_modprobes: 50), for module binfmt-4c46, throttling...
[  149.752826] request_module: modprobe binfmt-4c46 cannot be
processed, kmod busy with 50 threads for more than 5 seconds now

a lot, then we don't actually need to disable this outright when
building w/ Clang?

>
> > ---
> >
> > The clang people (CCed) are aware and looking into this.
> >
> >  arch/arm64/Kconfig | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 990fdcbf05c7..1c32d9889e0f 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -813,6 +813,7 @@ config ARM64_PA_BITS
> >
> >  config CPU_BIG_ENDIAN
> >         bool "Build big-endian kernel"
> > +       depends on !CC_IS_CLANG
> >         help
> >           Say Y if you plan on running a kernel in big-endian mode.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
