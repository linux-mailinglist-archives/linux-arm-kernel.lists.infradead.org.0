Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A064A435D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 10:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=peouAZsaNkZ3lHdv0uuM3b2xFFSjaKBjbALdPxt63UY=; b=VBYvPVhpR7+f8+
	zIsl/kIayh0DdFZtEHocdYkCCHkyWXC8XucnxlU+whcyORLouv9FUU2Q1BuBxfeAsFdIMi672PlEb
	TWIrwp0CtwyPc0cam0ucGGWMkvViNQ9FFj3WBA3Ui0F6Rv09MBVcTSeBBqcb2D/3uOCBZqtRb0Jz+
	HeaVg4fDwABAp2+YeIB1G6Y1Br7zuqPS7d87zIl3YeA5/BXNT57oCn7ruCxoHDv4grnLJQqXY1ddV
	wgltl2KQS+WqZGN2cv/QcnOQea/Tji0FQoLXwEd3U7yyxZruLsHoZNt5q0Wn7A7YQK4N0nUXsKLt0
	fSoTJnRm0J45KcQfTwWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3yuh-0006RS-Ck; Sat, 31 Aug 2019 08:39:15 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3yuH-0006RE-Bs; Sat, 31 Aug 2019 08:38:49 +0000
Date: Sat, 31 Aug 2019 01:38:49 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] Revert "asm-generic: Remove unneeded
 __ARCH_WANT_SYS_LLSEEK macro"
Message-ID: <20190831083849.GA24644@infradead.org>
References: <bb6d25c6baae315d05b571d8c508f0e8fa90027c.1567188299.git.msuchanek@suse.de>
 <20190830194651.31043-1-msuchanek@suse.de>
 <CAK8P3a16=ktJm5B3c5-XS7SqVuHBY5+E2FwVUqbdOdWK-AUgSA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a16=ktJm5B3c5-XS7SqVuHBY5+E2FwVUqbdOdWK-AUgSA@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
 Chris Zankel <chris@zankel.net>, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Borislav Petkov <bp@alien8.de>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Thomas Gleixner <tglx@linutronix.de>,
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

On Fri, Aug 30, 2019 at 09:54:43PM +0200, Arnd Bergmann wrote:
> > -#if !defined(CONFIG_64BIT) || defined(CONFIG_COMPAT)
> > +#ifdef __ARCH_WANT_SYS_LLSEEK
> >  SYSCALL_DEFINE5(llseek, unsigned int, fd, unsigned long, offset_high,
> >                 unsigned long, offset_low, loff_t __user *, result,
> >                 unsigned int, whence)
> 
> However, only reverting the patch will now break all newly added
> 32-bit architectures that don't define __ARCH_WANT_SYS_LLSEEK:
> at least nds32 and riscv32 come to mind, not sure if there is another.
> 
> I think the easiest way however would be to combine the two checks
> above and make it
> 
> #if !defined(CONFIG_64BIT) || defined(CONFIG_COMPAT) ||
> defined(__ARCH_WANT_SYS_LLSEEK)
> 
> and then only set __ARCH_WANT_SYS_LLSEEK for powerpc.

I'd much rather introduce a CONFIG_SYS_LLSEEK Kconfig symbol, selected
by CONFIG_64BIT and CONFIG_COMPAT by default, plus manually by powerpc.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
