Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D553A3ED9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 22:13:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=koI7m3U+O9QNimvjeIXBuNgvSu27p6HDUZam/s0VXis=; b=GHWN6kft6LSekX
	+tBsMWzaiNAlrw4JfDmDE3HCi6XlDZdruyLzc4ne3zEpDf8wDjCYxxYUXYy24smtl1QH0/66ndSSa
	bP8SaZk+PhlzQjnIZcWYmWVO2KzCiS6GsgL4MvXrCDZWH9l0lRFZBqmMivQSG81gumFU569PuzjB/
	OoB7cOrWbycUw4NVHlrg9bYZjpnP4Q29E03gV8nfXtCWSVqb9x/8zVINmkFgdzRRcBxFhfmGq9U1C
	k2NfCpiNAoepffuDzflHnOXafQRFemprXTQssqzZURK3OgUvLA05Kahi6eZ1DXlPre9ztt+LURakL
	N1b4qutqtZHeYMGUcG7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3nH3-000471-Rz; Fri, 30 Aug 2019 20:13:33 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3nGq-00046f-6Y
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 20:13:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1BD59ACC3;
 Fri, 30 Aug 2019 20:13:18 +0000 (UTC)
Date: Fri, 30 Aug 2019 22:13:15 +0200
From: Michal =?UTF-8?B?U3VjaMOhbmVr?= <msuchanek@suse.de>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] Revert "asm-generic: Remove unneeded
 __ARCH_WANT_SYS_LLSEEK macro"
Message-ID: <20190830221315.4b3b8a74@kitsune.suse.cz>
In-Reply-To: <CAK8P3a16=ktJm5B3c5-XS7SqVuHBY5+E2FwVUqbdOdWK-AUgSA@mail.gmail.com>
References: <bb6d25c6baae315d05b571d8c508f0e8fa90027c.1567188299.git.msuchanek@suse.de>
 <20190830194651.31043-1-msuchanek@suse.de>
 <CAK8P3a16=ktJm5B3c5-XS7SqVuHBY5+E2FwVUqbdOdWK-AUgSA@mail.gmail.com>
Organization: SUSE Linux
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_131320_534350_14854366 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
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
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Firoz Khan <firoz.khan@linaro.org>, linux-xtensa@linux-xtensa.org,
 Vasily Gorbik <gor@linux.ibm.com>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>, Borislav Petkov <bp@alien8.de>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Howells <dhowells@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Christian Brauner <christian@brauner.io>,
 Chris Zankel <chris@zankel.net>, Michal Simek <monstr@monstr.eu>,
 Parisc List <linux-parisc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, "David S.
 Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 30 Aug 2019 21:54:43 +0200
Arnd Bergmann <arnd@arndb.de> wrote:

> On Fri, Aug 30, 2019 at 9:46 PM Michal Suchanek <msuchanek@suse.de> wrote:
> >
> > This reverts commit caf6f9c8a326cffd1d4b3ff3f1cfba75d159d70b.
> >
> > Maybe it was needed after all.
> >
> > When CONFIG_COMPAT is disabled on ppc64 the kernel does not build.
> >
> > There is resistance to both removing the llseek syscall from the 64bit
> > syscall tables and building the llseek interface unconditionally.
> >
> > Link: https://lore.kernel.org/lkml/20190828151552.GA16855@infradead.org/
> > Link: https://lore.kernel.org/lkml/20190829214319.498c7de2@naga/
> >
> > Signed-off-by: Michal Suchanek <msuchanek@suse.de>  
> 
> This seems like the right idea in principle.
> 
> > index 5bbf587f5bc1..2f3c4bb138c4 100644
> > --- a/fs/read_write.c
> > +++ b/fs/read_write.c
> > @@ -331,7 +331,7 @@ COMPAT_SYSCALL_DEFINE3(lseek, unsigned int, fd, compat_off_t, offset, unsigned i
> >  }
> >  #endif
> >
> > -#if !defined(CONFIG_64BIT) || defined(CONFIG_COMPAT)
> > +#ifdef __ARCH_WANT_SYS_LLSEEK
> >  SYSCALL_DEFINE5(llseek, unsigned int, fd, unsigned long, offset_high,
> >                 unsigned long, offset_low, loff_t __user *, result,
> >                 unsigned int, whence)  
> 
> However, only reverting the patch will now break all newly added
> 32-bit architectures that don't define __ARCH_WANT_SYS_LLSEEK:
> at least nds32 and riscv32 come to mind, not sure if there is another.

AFAICT nds32 never had the syscall. Its headers were added without
__ARCH_WANT_SYS_LLSEEK before the define was removed.

The new architecture csky should be handled.

> 
> I think the easiest way however would be to combine the two checks
> above and make it
> 
> #if !defined(CONFIG_64BIT) || defined(CONFIG_COMPAT) ||
> defined(__ARCH_WANT_SYS_LLSEEK)
> 
> and then only set __ARCH_WANT_SYS_LLSEEK for powerpc.

Yes, that limits the use of __ARCH_WANT_SYS_LLSEEK, does not require
resurrecting the old headers, and may fix some architectures like nds32
that forgot to add it.

Thanks

Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
