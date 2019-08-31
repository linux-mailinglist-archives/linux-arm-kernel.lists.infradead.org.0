Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A105AA44A7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 15:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IOeXdvjDbZrfZ13N4GTun0Gu5DyLbo4qgEBCsXnmh6o=; b=l3VJQTEE1FiwC3
	Cu5WGR2yYaPG4GyJJog+6wugLyGsn0Vfht+dDdWy8lVsSBOPof2gEQ4/qXoCOdXoBeAIGY/oVpoFh
	ftO3LwPWNSeP9iZBS1Iy0Yy1Z4D2a5EeWGiRmSvIPmpexZ5wv4O1SoLD7HiQmbpAcASgBCiLMMYh4
	NStq6o4n0+grb5nI6kQnsAPSig7Yw9cR+a9rajweYC2RFHXyWAy/Ee1YoNoJBcCnPW7F7mcQaHZgj
	Dq6sYKTn1YDLAv1fuSxtH5d2rjTGq9eATGK2w06w1vg1VXpGgQn2x1rlu5FJ44OGyfYZb09fdBvqM
	TqditgGavkizYiH3NPWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i43gN-0004fK-1H; Sat, 31 Aug 2019 13:44:47 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i43gA-0004ev-3b
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 13:44:35 +0000
Received: by mail-qk1-f195.google.com with SMTP id m2so8666197qkd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 31 Aug 2019 06:44:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yKQ0PtOpimerpfwUZQ0AVI+0q4zKx7NSCWvGQeyvj/E=;
 b=fm9+VT2peqFeMJLgJ6AX2w8S4J3QZAWdJlQ91XgQMKWWNyG/ZMJgsWx8YC+6x7t1BJ
 u0DITqh5gHofVsYKPX9+tc7OW3aMqg4m1D5QGUaCGqcq8Qn3uUbyWPqGKBzs/9Tjir+c
 NblvFVPENPGr0RrJ22pb9nLyn1lB826qmAjQS4kwB84Tl5JxhR//mjOPf5MaW0E5/V1Q
 Edue+H3M7amfgMIm+gIFV70nIMv/0NGLePKVPqA2DHbcYs55l5wH3EkF2lAcHk2ZIU2i
 XX04ZW1Uhx9GX+jPXTqeJ9EPcAZUsWrW/QLEilEZaTqUHrNxHYVdsrqAL5ou8izjwV7k
 IhGQ==
X-Gm-Message-State: APjAAAXEksuylKvOjahq1eos8cSNwdeuayRrtYkSLo+7v1s78Qa3oNjy
 0MJm2wGcZaoeGAT4Ma9PNbgOIhnpokZVZjKQG5A=
X-Google-Smtp-Source: APXvYqzvQKLXv/QwTv79vw4xcoOPJdykiLQM5oAmOnHzltxqMEZES/cELbHD1aJ5HyP17Gf0brtSiNR2jm5vufNd1Ww=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr20263217qka.3.1567259072836; 
 Sat, 31 Aug 2019 06:44:32 -0700 (PDT)
MIME-Version: 1.0
References: <bb6d25c6baae315d05b571d8c508f0e8fa90027c.1567188299.git.msuchanek@suse.de>
 <20190830194651.31043-1-msuchanek@suse.de>
 <CAK8P3a16=ktJm5B3c5-XS7SqVuHBY5+E2FwVUqbdOdWK-AUgSA@mail.gmail.com>
 <20190831083849.GA24644@infradead.org>
In-Reply-To: <20190831083849.GA24644@infradead.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 31 Aug 2019 15:44:15 +0200
Message-ID: <CAK8P3a2xDT1FC-vA3S55_TYt_g+wZHHg4cCGLdWd=Sk7Hmg-bA@mail.gmail.com>
Subject: Re: [PATCH] Revert "asm-generic: Remove unneeded
 __ARCH_WANT_SYS_LLSEEK macro"
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_064434_154026_77BA8356 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: Rich Felker <dalias@libc.org>, Linux-sh list <linux-sh@vger.kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux <sparclinux@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 the arch/x86 maintainers <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Christian Brauner <christian@brauner.io>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Firoz Khan <firoz.khan@linaro.org>, Michal Suchanek <msuchanek@suse.de>,
 linux-xtensa@linux-xtensa.org, Vasily Gorbik <gor@linux.ibm.com>,
 Chris Zankel <chris@zankel.net>, Nitesh Kataria <nitesh.kataria@linaro.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>, Borislav Petkov <bp@alien8.de>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 David Howells <dhowells@redhat.com>, Michal Simek <monstr@monstr.eu>,
 Parisc List <linux-parisc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 31, 2019 at 10:39 AM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Fri, Aug 30, 2019 at 09:54:43PM +0200, Arnd Bergmann wrote:
> > > -#if !defined(CONFIG_64BIT) || defined(CONFIG_COMPAT)
> > > +#ifdef __ARCH_WANT_SYS_LLSEEK
> > >  SYSCALL_DEFINE5(llseek, unsigned int, fd, unsigned long, offset_high,
> > >                 unsigned long, offset_low, loff_t __user *, result,
> > >                 unsigned int, whence)
> >
> > However, only reverting the patch will now break all newly added
> > 32-bit architectures that don't define __ARCH_WANT_SYS_LLSEEK:
> > at least nds32 and riscv32 come to mind, not sure if there is another.
> >
> > I think the easiest way however would be to combine the two checks
> > above and make it
> >
> > #if !defined(CONFIG_64BIT) || defined(CONFIG_COMPAT) ||
> > defined(__ARCH_WANT_SYS_LLSEEK)
> >
> > and then only set __ARCH_WANT_SYS_LLSEEK for powerpc.
>
> I'd much rather introduce a CONFIG_SYS_LLSEEK Kconfig symbol, selected
> by CONFIG_64BIT and CONFIG_COMPAT by default, plus manually by powerpc.

The reason we currently use  __ARCH_WANT_SYS_* for all the other conditional
system calls is that these macros can be put into the uapi file for use by
include/uapi/asm/unistd.h, which is not possible with CONFIG_*
symbols.

This is not a problem for llseek, but it would be slightly inconsistent.

Nitesh is trying to convert include/uapi/asm/unistd.h into syscall.tbl format,
after that is done, we can probably change all the __ARCH_WANT_SYS_*
into config symbols.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
