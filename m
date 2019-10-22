Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF78E0C8D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 21:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+MxC7zxxunKWWx3Avj8EF/fimpYSYc3YRiWg1FafZVk=; b=M6BEzxeJMCalgk
	ZZVk5ojAzBLb8GDX0aJwOayl0jQH+6JcstssvBL3Y8v0vLTmGYaaMALSJCSN99POUr0oX/vKmOXJJ
	IF8A0Vr67qpcSfaht+XYptKLGFIgnQp62quFKSOCd0Z4wBfrOh4UMO1+bYcvOSG548Hso0fRpP7Zl
	K/0P4cRi2N1TfVSoAqU62Yr7aNSYdoTJoQxhylcth/9eAI6BFocfuaXYTpD/tWdk0GWurmz4mlI/r
	tp5VYGRlBPEOot+Y4TWaZI86pftlWIeZARKCmkQ3FWS1cPX4t2z/Z42xV2iTBVZdeRL9brsGo2Deo
	C3V0eJubFvxnMlrB55bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMznX-0000uU-9X; Tue, 22 Oct 2019 19:26:27 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMznM-0000tj-Vo
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 19:26:18 +0000
Received: by mail-ua1-x944.google.com with SMTP id k24so5263899uag.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 12:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NTGK4hML4ErU1yKOstvLOpiuT4DQy76v/C1+bofd9Cw=;
 b=BdV4+MNeQ9Io6FliaBVrpzdd/Nr1h8xWmmKPqLZavn/hHAkGLeJ2uet5e2jLmOj9uw
 02VQSR42rlo3yyUxFWTBfUTG3kVtJp3J8w5R83ssOsenjeWTSoQZInKliiV+bqAG6hAA
 Cr0weCMeiEXT18hJy2vPqHUUe6n/7iKNV049vCXj2gJk8nyiep6jgB1jyPz0y6wDHnrH
 rp0x4DaWxgo9yWNjpZs5w6HMi+jVBQ6IUSdEhuv49ICHNrBPrHc5lLVdYfbNEBO09Rzu
 SMDk455vF04OVHUuXspa8XLEm5+OmO4KDEHRSmANl4blw+d+0MpTjuEcoQ56sSkWU7a6
 4HCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NTGK4hML4ErU1yKOstvLOpiuT4DQy76v/C1+bofd9Cw=;
 b=XDx5kiDM8X9rGjoShwupbeVthkimJRj6pyyt1oqFqCxzwuJ9lm+F9hzt/QNvlm+IC/
 r6BaBNj+LyE/C/u1jbDQBV9ttDw9c3PS6Y8kADzeZSUoNbmYDzrNOaOOK3lruKzR2lBY
 4v+39PwrFhMJVv+vH9Hud/FTG5c8t6SLXffxKEiEvsC4PZRrPlQM0n2N89QFH25zoNyS
 J0wkKmLGpv566G0Lg1YW3lBFO+KfqObcBvcmtBqdvYzXDl1/QL2m8TleVhzUjd2hqMKp
 RhYaCtiG82UAUv9gwZMmdD0hJxAgE7Ps9X1MdI1SLTztC1ma6mAi79Yj0VZTVRNITQow
 e1rQ==
X-Gm-Message-State: APjAAAUG+nAhSAYzoqCAS9NbgY3m0iR9m6NNPc25/6nx+JQ2e5+sheYm
 gkdLTDyceJg6rS6xXRybHMbK+XZ6fJGRzdxovfcPmA==
X-Google-Smtp-Source: APXvYqyhEGmciM5Qsci/BRxLCe2CZGxby7wB0F2s67O2j0nanCSBoYG8VKU/rHobm0lJBKjWBGnRu61RnSLD1gIaItA=
X-Received: by 2002:ab0:5981:: with SMTP id g1mr2987226uad.98.1571772374889;
 Tue, 22 Oct 2019 12:26:14 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
 <20191022162826.GC699@lakrids.cambridge.arm.com>
In-Reply-To: <20191022162826.GC699@lakrids.cambridge.arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Tue, 22 Oct 2019 12:26:02 -0700
Message-ID: <CABCJKudxvS9Eehr0dEFUR4H44K-PUULbjrh0i=pP_r5MGrKptA@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_122617_048138_EDE24F89 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 9:28 AM Mark Rutland <mark.rutland@arm.com> wrote:
> I think it would be preferable to follow the example of CC_FLAGS_FTRACE
> so that this can be filtered out, e.g.
>
> ifdef CONFIG_SHADOW_CALL_STACK
> CFLAGS_SCS := -fsanitize=shadow-call-stack
> KBUILD_CFLAGS += $(CFLAGS_SCS)
> export CC_FLAGS_SCS
> endif

Sure, SGTM.

> > +choice
> > +     prompt "Return-oriented programming (ROP) protection"
> > +     default ROP_PROTECTION_NONE
> > +     help
> > +       This option controls kernel protections against return-oriented
> > +       programming (ROP) attacks.
>
> Are we expecting more options here in future?

Yes, I believe we'd be interested in seeing PAC support too once
hardware is more readily available.

> I think it would be better to ./make that depend on !SHADOW_CALL_STACK, as
> it's plausible that we can add a different ROP protection mechanism that
> is compatible with kretprobes.

OK, I can change that and remove the choice. We can always add it back
when other alternatives are added.

> > +config SHADOW_CALL_STACK
> > +     bool "Clang Shadow Call Stack"
> > +     depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> > +     depends on CC_IS_CLANG && CLANG_VERSION >= 70000
>
> Is there a reason for an explicit version check rather than a
> CC_HAS_<feature> check? e.g. was this available but broken in prior
> versions of clang?

No, this feature was added in Clang 7. However,
-fsanitize=shadow-call-stack might require architecture-specific
flags, so a simple $(cc-option, -fsanitize=shadow-call-stack) in
arch/Kconfig is not going to work. I could add something like this to
arch/arm64/Kconfig though:

select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
...
config CC_HAVE_SHADOW_CALL_STACK
       def_bool $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)

And then drop CC_IS_CLANG and version check entirely. Thoughts?

> > +#define SCS_GFP                      (GFP_KERNEL | __GFP_ZERO)
>
> Normally GFP_ is a prefix. For consistency, GFP_SCS would be preferable.

Ack.

> > +extern unsigned long init_shadow_call_stack[];
>
> Do we need this exposed here? IIUC this is only assigned by assembly in
> arch code.

True, it's not needed.

> [...]
>
> > +void scs_set_init_magic(struct task_struct *tsk)
> > +{
> > +     scs_save(tsk);
> > +     scs_set_magic(tsk);
> > +     scs_load(tsk);
> > +}
>
> Can we initialize this at compile time instead?

We can. I'll change this and drop the function.


Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
