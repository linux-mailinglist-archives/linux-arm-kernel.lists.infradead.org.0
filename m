Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC66F7A83
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 19:09:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QHZXA6FJFMvHLJUh7gjYYQcLCY5XXbpxseGwFFVDEqA=; b=ZP9p4Nq44eFFPI
	EqQe2KGCLlXKEST8f51X9QdEfbYp8kmxMvl0LgkONr05m2gxI8hGT83JuPoHzwtuEaFyqlZgsY7fE
	dkhB9GKAuTnOUW6bkId7aM7Jz5d8+8+P0LIRDOETcYR9BbxVTW3cYaDqd4+INeBrPSUFDpNgHqCz6
	g1RI1A6Vbxxq2SOR7j+CgRjMekcHB6CCyM6c9ntOVsXG258Bppi5lEm3pWVHbUs+cV/HyefT7mD0h
	nY8WUKe/jPHXJweKrms9ZmUdem/FiJUu4If+XhfDUhvOy8z9DGHgP/jXbAZvFTPLwExmRBLcOvHBq
	Ol/W1+7SK1JCqHOOLEdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUE7j-0005uX-7Z; Mon, 11 Nov 2019 18:09:11 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUE7c-0005tq-Tp
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 18:09:06 +0000
Received: by mail-ot1-f65.google.com with SMTP id r24so11978526otk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 10:09:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pB6c4pFOe94ggxtiHB2kKLTOBOYOEpvnXnv9wnKmZAU=;
 b=VjRgitfI0YR74an80pAFcLU4AzcpEAY1qM/M+sYdoXGPTRHMZ5XFgaRcN5MR+B/FuN
 8C3hn3pYehXsDMICdrJMs/WGLKcwzKaitkskX14iEKJBqrJDhjnjpaBIGqTdG084tLqx
 jNkC/u2oPWYVwHL5lNo+OXje+5yabmCiTFKPbjbEIrgc90GqE6Bm2HXQXBwZ98qMdavN
 vHJ2oGAv0Edg3PWKiBIbzjIykUjcQjeRtVqzZKkwlcEJ8nbePZqOqjLHbbErgf0p1rwp
 r2c5PPL1dA4yIB2BySKDo+pFY0kmee68qaNHra67vsU/IcGEyqeg8DS7g7jgFYmW5W2H
 LcPg==
X-Gm-Message-State: APjAAAWD6mr56/TA4B+c8Lyl8uK5ACsQ1bp5oTRvmtYSO1JXJED5RMNi
 /jM5JXUl7fAPohlHZOIg/cFJ15P7oKxtCDRnE/c=
X-Google-Smtp-Source: APXvYqwz3yURFWyrc4txNYG5Aijjty7ogMGADNC5Z1wYd4gVa5brKlAgJqkxDayccnlPhvVhacX5bel06VJjIpOaGlc=
X-Received: by 2002:a05:6830:2363:: with SMTP id
 r3mr22934879oth.39.1573495742542; 
 Mon, 11 Nov 2019 10:09:02 -0800 (PST)
MIME-Version: 1.0
References: <20191011000609.29728-1-keescook@chromium.org>
 <20191011000609.29728-12-keescook@chromium.org>
 <CAMuHMdXfPyti1wFBb0hhf3CeDSQ=zVv7cV-taeYCmDswMQkXPQ@mail.gmail.com>
 <201911110922.17A2112B0@keescook>
In-Reply-To: <201911110922.17A2112B0@keescook>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 11 Nov 2019 19:08:51 +0100
Message-ID: <CAMuHMdUJ8QPvqf51nVmOg1Zm20SNT7pXR72z=qmco=ecwawZ7A@mail.gmail.com>
Subject: Re: [PATCH v2 11/29] vmlinux.lds.h: Replace RODATA with RO_DATA
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_100904_961367_AC64A31A 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux-Arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Michal Simek <monstr@monstr.eu>,
 the arch/x86 maintainers <x86@kernel.org>,
 "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 linux-c6x-dev@linux-c6x.org, Arnd Bergmann <arnd@arndb.de>,
 linux-xtensa@linux-xtensa.org, Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Borislav Petkov <bp@alien8.de>,
 Parisc List <linux-parisc@vger.kernel.org>, Andy Lutomirski <luto@kernel.org>,
 alpha <linux-alpha@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rick Edgecombe <rick.p.edgecombe@intel.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kees,

On Mon, Nov 11, 2019 at 6:23 PM Kees Cook <keescook@chromium.org> wrote:
> On Mon, Nov 11, 2019 at 05:58:06PM +0100, Geert Uytterhoeven wrote:
> > On Fri, Oct 11, 2019 at 2:07 AM Kees Cook <keescook@chromium.org> wrote:
> > > There's no reason to keep the RODATA macro: replace the callers with
> > > the expected RO_DATA macro.
> > >
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > ---
> > >  arch/alpha/kernel/vmlinux.lds.S      | 2 +-
> > >  arch/ia64/kernel/vmlinux.lds.S       | 2 +-
> > >  arch/microblaze/kernel/vmlinux.lds.S | 2 +-
> > >  arch/mips/kernel/vmlinux.lds.S       | 2 +-
> > >  arch/um/include/asm/common.lds.S     | 2 +-
> > >  arch/xtensa/kernel/vmlinux.lds.S     | 2 +-
> > >  include/asm-generic/vmlinux.lds.h    | 4 +---
> > >  7 files changed, 7 insertions(+), 9 deletions(-)
> >
> > Somehow you missed:
> >
> >     arch/m68k/kernel/vmlinux-std.lds:  RODATA
> >     arch/m68k/kernel/vmlinux-sun3.lds:      RODATA
>
> Argh. I've sent a patch; sorry and thanks for catching this. For my own
> cross-build testing, which defconfig targets will hit these two linker
> scripts?

vmlinux-sun3.lds: sun3_defconfig
vmlinux-std.lds: All other classic 680x0 targets with an MMU, e.g. plain
                 defconfig aka multi_defconfig.

> > Leading to build failures in next-20191111:
> >
> >     /opt/cross/kisskb/gcc-4.6.3-nolibc/m68k-linux/bin/m68k-linux-ld:./arch/m68k/kernel/vmlinux.lds:29:
> > syntax error
> >     make[1]: *** [/kisskb/src/Makefile:1075: vmlinux] Error 1
> >
> > Reported-by: noreply@ellerman.id.au
> > http://kisskb.ellerman.id.au/kisskb/buildresult/14022846/

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
