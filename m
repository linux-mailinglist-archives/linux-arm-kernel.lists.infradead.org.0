Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C561EE669
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 16:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ezCkA0fo+hgJInhh/jeupQHFuQ2J5FHySNjlxVxYKbs=; b=Ow9jELzty7HbgF
	QoHq3PMXcF1X5Und7ishatzaFd6lKHH9eZ6GCFR11FeJNu19NPMSgcJ/ApCmVLel978pDoJ6Xqv8S
	+wcjxJaKH/63TWfybcFO1zTvpF85oSfkyj2AhQX7MoZC4PX332o07soPUtqblAr0tNK7XMl7kd6tK
	ddQRg19z4SdE7s9hEw3u0J9itsHfakorvqVpmTXfqEMA2Me9I1+BD6YbwpFZp1iN7sZjBKrla65Xy
	b20LWpv5pJemvE4ipGQVIt62NkknUzlzJ/w2gqlOh1ocgCaYYMbgCpykfo4Dl0lR7f4WT/nznu+lx
	w/yQt3esz7fUHTklIVFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqdu-0007CJ-P3; Thu, 04 Jun 2020 14:14:50 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqdo-0007Bf-09
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 14:14:45 +0000
Received: by mail-lj1-x243.google.com with SMTP id m18so7483796ljo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 07:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JFfRFTCW6FlgjlqwGn/P6j5CtXdNMxPx5d48a8cUyd4=;
 b=EEECY9X2ZdOdKHgdpzGf+DMwJvZiLd517zxt2dbS2nKm3skzGPqTgtp413UgMfvu0Z
 ySVazhwi/YFYlUV4XnFzNegdZNUnbuIoZjvesCvFjNLr65TFhoUJDtKunjSbLIdKe1Ij
 T9U0pl+DeA8gNiHYV54V1mtUWojw8ar7qhEqIKQJkpZOJbirv3Ko8C7M9ApwFuifCCyM
 2BCbFSH7yCa2YARYKYiQjagjZ6ntYCRHhZ+z6FtDWrarTmrlseFb6Ofe5PTMn80MgGMT
 w8bNH0WNfPllBGNPWsHRyTCLuuEd5VP4NkFuiuk4k8s1Iz/61glv2Kv2yiGh6FU/aHnF
 JmxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JFfRFTCW6FlgjlqwGn/P6j5CtXdNMxPx5d48a8cUyd4=;
 b=OXetP3oBHY/RUkAqCNoJPielbfFTgl/Ryma/1NzPRfU9Obl1EKJUypyMfc7/MC/Tv+
 a9ik9fzAeaoF0YA1wAtYlHlrGIhFd1Ido4B2bKDF0dMuNP03NmxYGOxU9+aUcONUDBJm
 2aJUkjK0CfMjqQZtOHsxeno0DN8iKHTA+DPzEoXymVCjxtNdlJ8erJqW4741xfo+1Ci2
 XGMaSYrJJ5Dfv1sEtjd1S1sRn/UiadCCTjRzUmsbmy2z7oPoXDLlsCAfZ1JfN6hspWKR
 KYHGmMAvAW72amc9l4UsZqwtcHK3ozQJY3dVn1cm7reuWmX1zaORjEQnou+6GQfeZmXz
 a3Yg==
X-Gm-Message-State: AOAM531rN6Tkjqc6Qsvo2bsRioo0ETyHP3qCo8TDLdWqv/fVRBwQgUVz
 5J3K/MsevKLnP1gHuIkUsGaLyfD/Nork/xT0QjUVWQ==
X-Google-Smtp-Source: ABdhPJwh9Avfez2jE0mRwOtdOdTV4d94V9o8AmvMHNcT4N8KwBQZsul+bYwmwvBngke6YqzEcWV2C1L9uJeApYHNb1k=
X-Received: by 2002:a2e:541e:: with SMTP id i30mr2143909ljb.156.1591280081782; 
 Thu, 04 Jun 2020 07:14:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200604134957.505389-1-alex.popov@linux.com>
 <20200604134957.505389-6-alex.popov@linux.com>
 <20200604135806.GA3170@willie-the-truck>
In-Reply-To: <20200604135806.GA3170@willie-the-truck>
From: Jann Horn <jannh@google.com>
Date: Thu, 4 Jun 2020 16:14:15 +0200
Message-ID: <CAG48ez0H_+EBd1wekk2oddSzLsgzincyZb_dB+s5atudB23YyA@mail.gmail.com>
Subject: Re: [PATCH 5/5] gcc-plugins/stackleak: Don't instrument
 vgettimeofday.c in arm64 VDSO
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_071444_056459_EC3DD085 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Sven Schnelle <svens@stackframe.org>, Naohiro Aota <naohiro.aota@wdc.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>, Emese Revfy <re.emese@gmail.com>,
 PaX Team <pageexec@freemail.hu>, Iurii Zaikin <yzaikin@google.com>,
 Mathias Krause <minipli@googlemail.com>,
 Alexander Popov <alex.popov@linux.com>, Kees Cook <keescook@chromium.org>,
 linux-kbuild@vger.kernel.org, Alexander Monakov <amonakov@ispras.ru>,
 Michal Marek <michal.lkml@markovi.net>, Thomas Gleixner <tglx@linutronix.de>,
 Peter Collingbourne <pcc@google.com>, Laura Abbott <labbott@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, notify@kernel.org,
 Florian Weimer <fweimer@redhat.com>, gcc@gcc.gnu.org,
 Brad Spengler <spender@grsecurity.net>,
 kernel list <linux-kernel@vger.kernel.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 4, 2020 at 3:58 PM Will Deacon <will@kernel.org> wrote:
> On Thu, Jun 04, 2020 at 04:49:57PM +0300, Alexander Popov wrote:
> > Don't try instrumenting functions in arch/arm64/kernel/vdso/vgettimeofday.c.
> > Otherwise that can cause issues if the cleanup pass of stackleak gcc plugin
> > is disabled.
> >
> > Signed-off-by: Alexander Popov <alex.popov@linux.com>
> > ---
> >  arch/arm64/kernel/vdso/Makefile | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> > index 3862cad2410c..9b84cafbd2da 100644
> > --- a/arch/arm64/kernel/vdso/Makefile
> > +++ b/arch/arm64/kernel/vdso/Makefile
> > @@ -32,7 +32,8 @@ UBSAN_SANITIZE                      := n
> >  OBJECT_FILES_NON_STANDARD    := y
> >  KCOV_INSTRUMENT                      := n
> >
> > -CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny -fasynchronous-unwind-tables
> > +CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny -fasynchronous-unwind-tables \
> > +             $(DISABLE_STACKLEAK_PLUGIN)
>
> I can pick this one up via arm64, thanks. Are there any other plugins we
> should be wary of? It looks like x86 filters out $(GCC_PLUGINS_CFLAGS)
> when building the vDSO.

Maybe at some point we should replace exclusions based on
GCC_PLUGINS_CFLAGS and KASAN_SANITIZE and UBSAN_SANITIZE and
OBJECT_FILES_NON_STANDARD and so on with something more generic...
something that says "this file will not be built into the normal
kernel, it contains code that runs in realmode / userspace / some
similarly weird context, and none of our instrumentation
infrastructure is available there"...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
