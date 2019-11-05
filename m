Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2637BEF198
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 01:02:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bxoKuOtsRQCRbzZTFceinTnWXmbJFBNkrtAVLChQflk=; b=Tqh9PmZVMVCxNY
	ihPIrTY7qAf9ABAU4O0WIrBY8UW/QKFKKV1Ptcm27QJGDc8peGnsWHFvdT3bqfMOA7Um8fg0FM45E
	uuFrQKR0x8R3X/AEiL8F2W2vpMvCeLrsK2s8My9KLZRqSKDPb7nxyx/c2xMaQvM1bThMx5CDTgMgE
	Pd6bDWwpScHyFw+YrGfsoVeRLF6WsIlLbeT8Ms/eTMnTOMIkmSYAvBHdCWIOj/wmbrT1FvaWyLTeP
	e4Sg7Vu0NVi1gdUQl2WS8hiUU9YxzU/9nJ4WXfaLwUE7eQyBiQ6Ac2YqqI6uz1FwOAe7bE/tcPRlZ
	GkOImRN9s6+jA7odQOeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRmIy-0007RN-Nu; Tue, 05 Nov 2019 00:02:40 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRmIr-0007Ql-4V
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 00:02:34 +0000
Received: by mail-ua1-x942.google.com with SMTP id s25so1192092uap.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 16:02:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wgpWA2jEqJlvczDoO9RtXFfmusK0XNDziQd8UVfs11k=;
 b=A/SrpqmEvJhiTvT76G/tSSPqak6qEdOAyAD0F4wbDPWu94/+f0jv3efhmZsUUXe6qq
 CybWZB2b/qOXaj/r1Nbyes7WY8VgUjIelgdCzOnhxzWtIMGBD3T63FRfkZ2BE6eRGZIr
 i+vb47qqghQKbHOImu5dkJFEY1uT2BH1eHjRTifgfw5MuC7sgilYydbBLxES9g+KuSIL
 L1WK07dG7pk4sigbooRRP48Y+8xvQtnMOXhJZ3I7J9ghmadqrbCv75YuBU7BR9vJzSEx
 yswAlaOaltIuwCoBGp+vRv4vjVT08L2K0P3ry0DuYv+zs81b3l/ZkUjrhpODm7ydYXfj
 xzig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wgpWA2jEqJlvczDoO9RtXFfmusK0XNDziQd8UVfs11k=;
 b=bYIW0OfKTk0fskKgHO1/t6XsgX2XwhFoN7ct4VINFYkZdtFZPcqbOt81w3exw0y2Bo
 7NEBed+7OqSIGIMN1z7h5a0q2V58btQBYaJHU+kBet+1bWra2ho9YL3SCOt+e7ERRRfd
 kPBxqMvrxdIjS7zhYHOMXGDjbPg/AeM4mo7FKAqKVc7M/2zLRKiiuqqsWBwEo4soaxmo
 bt79Z19NKYTQyPnUeQ0kzkpTbXBNqVeUyB466A4dxnb4iAO1QFjUDIP5A5SXIH7yJxNz
 RKcDu/zEzYk8+oU1qfyvEn9ly6Cr27jIQu2pH1HdaG6RIr20/5cfH87D9BamCOlQFcYA
 D18g==
X-Gm-Message-State: APjAAAVJDiP1bk3E+jnUsSVHqBPrErZTCPXk2vS13MGgYMZSA+inJ/sC
 v/jDI9/7XLZfy8wgQAbZyInoQcvgxpVRP2UtzP3+eQ==
X-Google-Smtp-Source: APXvYqxDpgmQ9n/cnDstvJ7riCGFej5xZ9eZp7xC3KSVKRHhU1yTfVmSiCTnVQNCB9cZ2N32DJmU1C4HUXLbveOO274=
X-Received: by 2002:a9f:3772:: with SMTP id a47mr13452102uae.53.1572912151471; 
 Mon, 04 Nov 2019 16:02:31 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-14-samitolvanen@google.com>
 <02c56a5273f94e9d832182f1b3cb5097@www.loen.fr>
 <CABCJKucVON6uUMH6hVP7RODqH8u63AP3SgTCBWirrS30yDOmdA@mail.gmail.com>
 <CAKwvOdkDbX4zLChH_DKrnOah1sJjTA-e3uZOXUP6nUs-EaJreg@mail.gmail.com>
In-Reply-To: <CAKwvOdkDbX4zLChH_DKrnOah1sJjTA-e3uZOXUP6nUs-EaJreg@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 4 Nov 2019 16:02:16 -0800
Message-ID: <CABCJKueN+Op8xm+L3aSFgCL9BLC8b-WHj3oBYhf1W=OcX2aqCg@mail.gmail.com>
Subject: Re: [PATCH v4 13/17] arm64: preserve x18 when CPU is suspended
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_160233_398340_84680A23 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Marc Zyngier <maz@kernel.org>,
 Jann Horn <jannh@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <dave.martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 4, 2019 at 1:59 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Mon, Nov 4, 2019 at 1:38 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > On Mon, Nov 4, 2019 at 5:20 AM Marc Zyngier <maz@kernel.org> wrote:
> > > >  ENTRY(cpu_do_suspend)
> > > >       mrs     x2, tpidr_el0
> > > > @@ -73,6 +75,9 @@ alternative_endif
> > > >       stp     x8, x9, [x0, #48]
> > > >       stp     x10, x11, [x0, #64]
> > > >       stp     x12, x13, [x0, #80]
> > > > +#ifdef CONFIG_SHADOW_CALL_STACK
> > > > +     str     x18, [x0, #96]
> > > > +#endif
> > >
> > > Do we need the #ifdefery here? We didn't add that to the KVM path,
> > > and I'd feel better having a single behaviour, specially when
> > > NR_CTX_REGS is unconditionally sized to hold 13 regs.
> >
> > I'm fine with dropping the ifdefs here in v5 unless someone objects to this.
>
> Oh, yeah I guess it would be good to be consistent.  Rather than drop
> the ifdefs, would you (Marc) be ok with conditionally setting
> NR_CTX_REGS based on CONFIG_SHADOW_CALL_STACK, and doing so in KVM?
> (So 3 ifdefs, rather than 0)?
>
> Without any conditionals or comments, it's not clear why x18 is being
> saved and restored (unless git blame survives, or a comment is added
> in place of the ifdefs in v6).

True. Clearing the sleep state buffer in cpu_do_resume is also
pointless without CONFIG_SHADOW_CALL_STACK, so if the ifdefs are
removed, some kind of an explanation is needed there.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
