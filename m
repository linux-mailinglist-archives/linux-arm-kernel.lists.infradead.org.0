Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0328F1BBE71
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:03:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQ6RR0k5+LJiPdRd6rbcN1FUdQcM0xhcnSc9rti8cXw=; b=Wkg6+3Rkp2pMeA
	StNhz2nhGurMA4XP6D/W2vMVFEjVNyz2lv/kbwi+lD72SylZRQmnIGTBOQHRBBEq1Tt23Ktflm+r4
	se3zrTZtkZW3eRL9DV5yCxHFUO2nefzrGI2pdS3G+m1aeQSQ3w5nuXkCh2I6LrsUrogv03LeKoizD
	e1zI//DfRiXYeqJgYP0RagXACNvF8P8RA+aKHRbK2mKpV5QYr0pblEBICKN6QMzNghZ/cNAdvKHjQ
	g7IfUjB3f9L+f7LMLQZ4XGDXOt1xvwALfmm2oRY9MXCDYczI03IE2W5inkRAtPG9cReK6w7iJb2qp
	PqaWwVgKOgr58WY9JqyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTPtD-0004cY-8t; Tue, 28 Apr 2020 13:03:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTPt3-0004bl-4m
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 13:02:58 +0000
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
 [209.85.166.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 88A0D206A1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 13:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588078975;
 bh=FtEmvVv2Ym3NLbD9eJyWB+9wCM4pJxw+o1Ql+MxJgHE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=MNu2ZeXb2/EwiLbORMrFKzWbUocRmz89crig3KRCdXaZM2+3gxRw8xwVC5ww3QbBq
 VGMcUNPNPuMYJhLXih7FJDSo8Od6hH2DCHcQ0mPR5kWDcPCT5xEjCpfKyfyRHAR3Ns
 S3DcDnFIOxDn5TjqaQiTbLLTt6egwp0rRy+em3ec=
Received: by mail-io1-f47.google.com with SMTP id c2so7849415iow.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 06:02:55 -0700 (PDT)
X-Gm-Message-State: AGi0PubPAb/egpvp1qf4JNFsMEEe4vIj3zmIeN9Maa3HHK20eVvyQELA
 vrLNC8Iap8qSXVJ8YYVUkGhFOot7BUHKuf7lx+Q=
X-Google-Smtp-Source: APiQypLzQ94VHS1VKL14YCY1CF5N3itNUWNsifF0DmC41kQsoLOAHJJq2ZaJ7jXIzbRvzeFEUJihXvbgIc3gNlhP1eE=
X-Received: by 2002:a02:969a:: with SMTP id w26mr16743417jai.71.1588078974950; 
 Tue, 28 Apr 2020 06:02:54 -0700 (PDT)
MIME-Version: 1.0
References: <d8baa0e5-0e20-9f58-5e79-34a272f86d1d@infradead.org>
 <20200427203520.GA23186@willie-the-truck>
 <c3c48a79-6a0c-2bae-16a8-507f05ee5473@arm.com>
 <CAMj1kXHoEbG_Ff21Qs1eQJ=3zuqE_RuMzVWbmopv5FP52pqJgQ@mail.gmail.com>
 <20200428124353.GB6791@willie-the-truck>
In-Reply-To: <20200428124353.GB6791@willie-the-truck>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 28 Apr 2020 15:02:43 +0200
X-Gmail-Original-Message-ID: <CAMj1kXH=fZHb5DcWZ+J735zU+LqwdUU2fUYk4XQoh3ZFE+WYTw@mail.gmail.com>
Message-ID: <CAMj1kXH=fZHb5DcWZ+J735zU+LqwdUU2fUYk4XQoh3ZFE+WYTw@mail.gmail.com>
Subject: Re: [PATCH] arm64/vdso: Remove unused makefile variable
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_060257_234307_E191AB17 
X-CRM114-Status: GOOD (  29.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Geoff Levand <geoff@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Apr 2020 at 14:43, Will Deacon <will@kernel.org> wrote:
>
> On Tue, Apr 28, 2020 at 01:52:55PM +0200, Ard Biesheuvel wrote:
> > On Tue, 28 Apr 2020 at 12:45, Vincenzo Frascino
> > <vincenzo.frascino@arm.com> wrote:
> > > On 4/27/20 9:35 PM, Will Deacon wrote:
> > > > [+Vincenzo]
> > > >
> > > > On Fri, Apr 24, 2020 at 08:58:49AM -0700, Geoff Levand wrote:
> > > >> The vdso makefile variable VDSO_LDFLAGS is defined, but never used,
> > > >> so remove it.
> > > >>
> > > >> Signed-off-by: Geoff Levand <geoff@infradead.org>
> > > >> ---
> > > >>
> > > >> Hi,
> > > >>
> > > >> This seems to be left over from a code cleanup that missed it.
> > > >
> > > > While I agree that this isn't used, I'm wondering why '-Bsymbolic' is used
> > > > to link the compat vDSO but not the native one. It seems weird to differ
> > > > in this regard.
> > > >
> > > > Vincenzo? Looks like you added this unused variable in 28b1a824a4f44
> > > > ("arm64: vdso: Substitute gettimeofday() with C implementation").
> > > >
> > >
> > > My understanding is that "-Bsymbolic" is required by both compat and normal vdso
> > > because when the shared library is built it adds a flag in the dynamic section
> > > of the binary called DT_SYMBOLIC which alters the dynamic linker's symbol
> > > resolution algorithm to search for references for a symbol inside the library
> > > first and then into the executable.
> > >
> >
> > DT_SYMBOLIC doesn't (or shouldn't) change the dynamic linking
> > behavior. It informs the linker that ELF symbol preemption may not
> > work, since the .so has bound internal references to its exported
> > symbols to the internal versions directly, rather than allowing the
> > application to supersede (i.e., 'preempt') them. This is an obscure
> > feature that isn't really relevant for the VDSO, since we carefully
> > control what we export from the .so anyway (via the linker script's
> > VERSIONS section)
> >
> > > This becomes useful for example when an executable built with -fPIC is trying to
> > > call a public vDSO function from assembly (bl symbol).
> > >
> > > The issue here seems to be that I used VDSO_LDFLAGS instead of ldflags-y. I can
> > > post a patch and Cc stable. Adding Geoff as Reported-by.
> > >
> >
> > I think it can be removed.
>
> Hmm, so I did a little bit more digging because -Bsymbolic is used to link
> the vDSO on arm, mips, sparc and x86. Commit 6f121e548f83 ("x86, vdso:
> Reimplement vdso.so preparation in build-time C") suggests that it's a good
> idea to prevent any unexpected dynamic relocations appearing in the vDSO
> object.
>

In the x86 case, there are internal calls to the exported routines,
and without Bsymbolic, those are routed via a GOT/PLT so that the
application can override those symbols. For instance, under the normal
ELF symbol preemption rules, the x86 VDSO should use the application's
version of __kernel_vsyscall() if it exists as a global symbol, and so
the interposable dynamic relocation is made to point to the
application's version of the symbol. That is why x86 needs -Bsymbolic.

That issue does not exist on arm64, as far as I can tell. It doesn't
really hurt either to have the option, but it would be good to perhaps
annotate why we are keeping it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
