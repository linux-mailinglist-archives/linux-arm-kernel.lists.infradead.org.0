Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE08DE498
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 16:22:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c/tsYf1CX5Mip+eL1tQfHb3ZlowqxSR3RBVkMmqzRLQ=; b=YG27hXjC2ITKYW
	e68Xux0v4p5YGQgaUC2Y0P50Qt0N7xxhzkrvZk4W2VZ0lQ26ztdrbHXWxb1rpdR6W9t0IDDkjn4bL
	Ge40xAhP0dU4SJ+Ua3HRKWAcp9EwnUSTiWJtKQBkZot//SWbOygGz1AOD3TUKpFSDlyzBiPbk58QL
	zfOlTCIwwm0WV+FqsWxX68/UCasQh0hQ8ImY162jV/IhqwPSTz6iuSjqz/ZPo+gD5pNOQnSn34tza
	ekWY9pFw0vDWrGLrbAtebE67KViGqgiwF45sFi5rCN0OIwe0zSJKiZF136t53u/MWbR5qfJbj57id
	6Lqtbh0p2F10JPEIsqQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7Au-0007e2-KR; Mon, 29 Apr 2019 14:22:32 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7Am-0007d6-7e
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 14:22:26 +0000
Received: by mail-pg1-x543.google.com with SMTP id 85so5237559pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 07:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q2RFfAyrf9RFoM43ktNZPcHmGWgFL8fnuov2nkBPWS8=;
 b=nSUn3qnawAssSs6MaxKqsGt7m2rQuwz8iuV7UDRO4XwagTQcUwQLKJChDfpo2Y42Xk
 dLm04wkPLwmDDcGlfi33gt+mgTjEgazJ0pWoNgMCBCgvVwv5SPNGO+R0wOTcgS/YyTDI
 MMCTRBCf6Y5X7Op946XZIErDxOVRLAN1uJUSs6b8aMjiipEdz924r1uFPAVVEONFnBC1
 eRjcEW3uL1UMy4VUvg8gNA4Pg7nsW7DCRDuZC0iLpBAnBGkKHCDzwyf3Uq04LayvwlmL
 Hgpedt4edzE9KmfV/TNfyjqaPwOmLbR2KI1O6u2H+6Cx6SK8d3Pu0MrHeMD38gdpjP27
 JeSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q2RFfAyrf9RFoM43ktNZPcHmGWgFL8fnuov2nkBPWS8=;
 b=sjBxTCi1sR04JWd0iKR2ZlLHCelpWBU+Qf4d78i9sE4sU+ufMTo0f7qIgKlsYsbGfT
 uE6X/JF/mPdMJoGHJWdf41XqzkhMY3r8D+YH85sYhtrXay+7f1TAPKdkhMuo1LkQd6Ms
 2lHrHLSawm2QjKJjB9C6t8CREYROkcPr3GGS/Cpac3/z5UggX07FPSZesfpSxMWINfOZ
 AoUjiEBAZG5eSoud4s0JsB6vGeR1ZbgCv4Pd1hrlEfyirMmwVZ2zn0hMEUNbvY6L4f9v
 rtYYAcgJ51XfwUxZnUBua+yDtH56kXaWB3BCocoozj/2ubsk6gUvsW3wU2kThC1z3d8Z
 8uug==
X-Gm-Message-State: APjAAAUztjLHoWodLNuQL8xHY+T8uaWlvTby1rU+AJ3teYmuuqmrSW4g
 W048AeEe7imKLb3/yB3R5UxNdx/eL3wWIbHLCzDn1Q==
X-Google-Smtp-Source: APXvYqyjdyjRGlJ4AtmMgCZd/Nm8Zu8D+p70gtT5fOtGOIKXAcrI3uZOPLT4eOOdJOYGY3S3MZtVzM6xnMJJE/TXbvw=
X-Received: by 2002:a62:51c5:: with SMTP id
 f188mr24041707pfb.239.1556547740003; 
 Mon, 29 Apr 2019 07:22:20 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1553093420.git.andreyknvl@google.com>
 <44ad2d0c55dbad449edac23ae46d151a04102a1d.1553093421.git.andreyknvl@google.com>
 <20190322114357.GC13384@arrakis.emea.arm.com>
 <CAAeHK+xE-ywfpVHRhBJVGiqOe0+BYW9awUa10ZP4P6Ggc8nxMg@mail.gmail.com>
 <20190328141934.38960af0@gandalf.local.home>
 <20190329103039.GA44339@arrakis.emea.arm.com>
 <CAAeHK+xe-zWn8WpCxUxBB2tXL8oiLkshkPi1J3Ly87mACaA4-A@mail.gmail.com>
 <20190426141742.GB54863@arrakis.emea.arm.com>
In-Reply-To: <20190426141742.GB54863@arrakis.emea.arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 29 Apr 2019 16:22:08 +0200
Message-ID: <CAAeHK+xx_kB_U_ws8eUHOE8SkhGCcERNVcJoaMYbP9TGb+q2tg@mail.gmail.com>
Subject: Re: [PATCH v13 04/20] mm,
 arm64: untag user pointers passed to memory syscalls
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_072224_276953_39FB1100 
X-CRM114-Status: GOOD (  26.43  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Eric Dumazet <edumazet@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Ingo Molnar <mingo@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Lee Smith <Lee.Smith@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 26, 2019 at 4:17 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Tue, Apr 02, 2019 at 02:47:34PM +0200, Andrey Konovalov wrote:
> > On Fri, Mar 29, 2019 at 11:30 AM Catalin Marinas
> > <catalin.marinas@arm.com> wrote:
> > > On Thu, Mar 28, 2019 at 02:19:34PM -0400, Steven Rostedt wrote:
> > > > On Thu, 28 Mar 2019 19:10:07 +0100
> > > > Andrey Konovalov <andreyknvl@google.com> wrote:
> > > >
> > > > > > > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > > > > > > ---
> > > > > > >  ipc/shm.c      | 2 ++
> > > > > > >  mm/madvise.c   | 2 ++
> > > > > > >  mm/mempolicy.c | 5 +++++
> > > > > > >  mm/migrate.c   | 1 +
> > > > > > >  mm/mincore.c   | 2 ++
> > > > > > >  mm/mlock.c     | 5 +++++
> > > > > > >  mm/mmap.c      | 7 +++++++
> > > > > > >  mm/mprotect.c  | 1 +
> > > > > > >  mm/mremap.c    | 2 ++
> > > > > > >  mm/msync.c     | 2 ++
> > > > > > >  10 files changed, 29 insertions(+)
> > > > > >
> > > > > > I wonder whether it's better to keep these as wrappers in the arm64
> > > > > > code.
> > > > >
> > > > > I don't think I understand what you propose, could you elaborate?
> > > >
> > > > I believe Catalin is saying that instead of placing things like:
> > > >
> > > > @@ -1593,6 +1593,7 @@ SYSCALL_DEFINE3(shmat, int, shmid, char __user *, shmaddr, int, shmflg)
> > > >       unsigned long ret;
> > > >       long err;
> > > >
> > > > +     shmaddr = untagged_addr(shmaddr);
> > > >
> > > > To instead have the shmaddr set to the untagged_addr() before calling
> > > > the system call, and passing the untagged addr to the system call, as
> > > > that goes through the arm64 architecture specific code first.
> > >
> > > Indeed. For example, we already have a SYSCALL_DEFINE6(mmap, ...) in
> > > arch/arm64/kernel/sys.c, just add the untagging there. We could do
> > > something similar for the other syscalls. I don't mind doing this in the
> > > generic code but if it's only needed for arm64, I'd rather keep the
> > > generic changes to a minimum.
> >
> > Do I understand correctly, that I'll need to add ksys_ wrappers for
> > each of the memory syscalls, and then redefine them in
> > arch/arm64/kernel/sys.c with arm64_ prefix, like it is done for the
> > personality syscall right now? This will require generic changes as
> > well.
>
> Yes. My aim is to keep the number of untagged_addr() calls in the
> generic code to a minimum (rather than just keeping the generic code
> changes small).

OK, will do in v14 (despite it still being unclear whether we should
do untagging here or not).

>
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
