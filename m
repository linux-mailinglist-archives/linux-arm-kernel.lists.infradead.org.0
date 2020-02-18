Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA46161E39
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 01:38:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pD141/8CUy/QlnhhYO8770++f54XILGqfwQXoESW8yw=; b=jIRynrmLzyHphx
	9u/E6CWBg3aAGQb454pnLYtbiR2Yl9PfDxHcODgcSvX6tscehpPs991x7aMPA/RNGBUs7uYThx1oK
	s32bs9HjRPQuiRJwpy+1UohACKskxehl6kg7TLJpYEImgXRbgoQY3rrXl/yIU4zAOQ9VzUVcqLxYa
	8Bp1WouUPLqRTwNdvJCivbwByn2Sf2dDITLjDLscn47nZmToQdCUt8mo5nrLlvE0HQD8F58GpT5Gn
	wESykB2Rlz5/gkveBhlpI03PLhNqmdiUlJ3JsrQ/XvLma9HXyDqG7rkMe0XLtNZyptWLK4sMBTNSI
	LQhMldxCDX/l9o46hMtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3qua-0008D9-DT; Tue, 18 Feb 2020 00:38:52 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3quT-0008Ch-84
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 00:38:47 +0000
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com
 [209.85.222.54]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 01I0c8nj022535
 for <linux-arm-kernel@lists.infradead.org>; Tue, 18 Feb 2020 09:38:08 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 01I0c8nj022535
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1581986289;
 bh=bXAWFIIjdJAenzl5qtU8X4SaqZRjl4s+1pBIgQ3Mwak=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZD4OIc9z8+KmZoxwuYLbRMyLrVlt4A0e4LuGQUeFnk3BJXfOFPk8zDxKJtOSVGSHV
 EJSrFCCAG/VTkd7AtKl3VF/rGzCZI8MhKlGatseJY8iOvZo5rTgy6cs8UGU9TlgmlS
 JvwOauPscnZFjTJiR6VDUHeWtT4VWJrkbASrZi5OEjctu9BR4RPS5s1TktCmgmG3fh
 MzQgqE91HyE/gHkX5pp7neRcfFYoHZ2tB6bYrPhO9mKKHujNQAbrkSMJ5kAtng8WAI
 Xmm3NH8SOgo4EdmBOpAss3zzHFyqGmgtocOTA97O5fdAxKhpoFpGnjwzKvWh+UP/sK
 IcxSYUqirolMg==
X-Nifty-SrcIP: [209.85.222.54]
Received: by mail-ua1-f54.google.com with SMTP id a33so6818380uad.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 16:38:08 -0800 (PST)
X-Gm-Message-State: APjAAAX6pGWkT46N+0Rxyys94ydq7exCtH7KYafSDa0eluRPc7PKluKV
 iLpwuzBj77E3OtBQt0OJuvjnscDzFyqARfMSNQQ=
X-Google-Smtp-Source: APXvYqzOw1ovi899OwyLnlGE5fhlo6l0EDI8XKdkLBMX2ZcZO2qZvkDWaI/p+TlsSH24146JLZ93P8DJNlReV4uvcSI=
X-Received: by 2002:ab0:2ea6:: with SMTP id y6mr9294241uay.25.1581986287690;
 Mon, 17 Feb 2020 16:38:07 -0800 (PST)
MIME-Version: 1.0
References: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
 <1581931668-11559-16-git-send-email-amit.kachhap@arm.com>
 <CAK7LNARTD88U1ZBxMU3fCDb1KxF=PavhgoUzqTt6ar9-+7eMQA@mail.gmail.com>
 <7b2b8e5a-c276-4dfe-3fac-afc03cda4e3d@arm.com>
In-Reply-To: <7b2b8e5a-c276-4dfe-3fac-afc03cda4e3d@arm.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 18 Feb 2020 09:37:31 +0900
X-Gmail-Original-Message-ID: <CAK7LNASELe0+MhpU-huL-jCmxsCofs-OKz_1xYYLgJtuM5bomg@mail.gmail.com>
Message-ID: <CAK7LNASELe0+MhpU-huL-jCmxsCofs-OKz_1xYYLgJtuM5bomg@mail.gmail.com>
Subject: Re: [PATCH v5 15/17] kconfig: Add support for 'as-option'
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_163845_513174_B13C943B 
X-CRM114-Status: GOOD (  21.21  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Feb 17, 2020 at 7:16 PM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
> Hi,
>
> On 17/02/2020 09:39, Masahiro Yamada wrote:
> > Hi.
> >
> > On Mon, Feb 17, 2020 at 6:29 PM Amit Daniel Kachhap
> > <amit.kachhap@arm.com> wrote:
> >>
> >> From: Vincenzo Frascino <vincenzo.frascino@arm.com>
> >>
> >> Currently kconfig does not have a feature that allows to detect if the
> >> used assembler supports a specific compilation option.
> >>
> >> Introduce 'as-option' to serve this purpose in the context of Kconfig:
> >>
> >>         config X
> >>                 def_bool $(as-option,...)
> >>
> >> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> >> Cc: linux-kbuild@vger.kernel.org
> >> Acked-by: Masahiro Yamada <masahiroy@kernel.org>
> >> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> >> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> >> ---
> >>  scripts/Kconfig.include | 4 ++++
> >>  1 file changed, 4 insertions(+)
> >>
> >> diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> >> index 85334dc..374e251 100644
> >> --- a/scripts/Kconfig.include
> >> +++ b/scripts/Kconfig.include
> >> @@ -35,6 +35,10 @@ ld-option = $(success,$(LD) -v $(1))
> >>  # Return y if the assembler supports <instr>, n otherwise
> >>  as-instr = $(success,printf "%b\n" "$(1)" | $(CC) $(CLANG_FLAGS) -c -x assembler -o /dev/null -)
> >>
> >> +# $(as-option,<flag>)
> >> +# Return y if the assembler supports <flag>, n otherwise
> >> +as-option =$(success, $(CC) $(CLANG_FLAGS) $(1) -c -x assembler /dev/null -o /dev/zero)
> >> +
> >
> >
> > I am still not convinced with using /dev/zero here.
> >
>
> Could you please elaborate a bit more?


I am just not familiar with this usage of /dev/zero.


The behavior of /dev/null is clear.
The read/write to /dev/null is described in the standard:
https://pubs.opengroup.org/onlinepubs/009695399/basedefs/xbd_chap10.html

I just do not know whether the write to /dev/zero is
the defined-behavior or not.


Masahiro Yamada


>
> >
> > Does this work?
> >
> > as-option = $(success, cat /dev/null | $(CC) $(CLANG_FLAGS) $(1) -c -x
> > assembler -o /dev/null -)
> >
>
> I will try and get back to you.



Masahiro Yamada


>
> >
> > [1] Could you insert as-option between ld-option and as-instr ?
> >
>
> Sure, I will do it in the next version.
>
> > [2] Could you add some comments to explain why
> >      /dev/null -o /dev/null does not work?
> >
> >
>
> Comments are always a good think :) I will do in the next version.
>
> >
> >
> >
> >>  # check if $(CC) and $(LD) exist
> >>  $(error-if,$(failure,command -v $(CC)),compiler '$(CC)' not found)
> >>  $(error-if,$(failure,command -v $(LD)),linker '$(LD)' not found)
> >> --
> >> 2.7.4
> >>
> >
> >
>
> --
> Regards,
> Vincenzo
--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
