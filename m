Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E119CA3EB2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 21:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jveFXNZorzGX3171Nmeeim3q/TcKIy+qelXK+yiAthM=; b=DxsvPW1Lx+xXMI
	Q8qI55ami9pVR4TQDCRS0bzP/hVCcY73MQcighXR/K/M6P7AKoiQ4yu274qKakaLVAyed/uJx8686
	DtOGpL8T8Hx12+bhVICptDS93Y7RW041aKlXjGhZ7+0XSIcrH8Py3Sxg/vFEqOORR5MKFXWR6dS2u
	Ba3rCZJBPMHv81PBMUIsp6LHuWQYp25GKCtM4RBlOEh8VEmwM918V8uQcxd8QWyTQ3yLAYEJrkLuG
	V4mgcu12hs1/djAeGO9HUX4Gbve5TUuNwMgZ6uC+tJze6L3LY9Wlrc6pi7emy3yJhHAvkDaFFf52J
	koCVfxmjRp5l0Qxlpsgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3mzK-0007IP-BL; Fri, 30 Aug 2019 19:55:14 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3mz7-0006l1-1r
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 19:55:02 +0000
Received: by mail-qt1-f195.google.com with SMTP id u34so8936243qte.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 12:55:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ExU5G+PwI9dTS56j9hO/oLGwcWM1/TUToUkPYA9x6Bc=;
 b=ITI9mnv9Tt6CsqwQAjangXH6g4a/n9sTnyqbKlwKTaq+PLuiO4PtY88/ODw4N+L0wF
 b1TLAPi8Xg9c1c3BQODmtN01XAcoJwGv5SpsoLvBGCGNj1DYZp/L9u8UjpmOsPBecZpe
 Jeuek+xZAjGUyQPXiT0c5/WGYLZBQJLWStH/6lVxmugAtBHEZInWYVbVNLMCQUmK/9fH
 tqMJht+a24JgX17OHgIfkYDz+gkbfQDFiuDKyKMWTvHKYQ/S7IgCNtpirm0GVcf2TGdS
 kvXWqbl4QJKm7nuA0xl1sQ+FMd9eVvPOEi6celbxOVyzLq5o8FWZwtz0OEXcWFtat3DJ
 EbBQ==
X-Gm-Message-State: APjAAAXQ17ayjgc/OomzQ6iba9UWKtGnssmldRLeofpbJKmDbQvYDrVi
 78seYmsq5Esto1gyQuBIJnokMo04ThDvxG5gD5w=
X-Google-Smtp-Source: APXvYqwZY0gn6CH3cRH9igUuAGm82SVhxnyEC96W1blIExgbWnZWteDT8KBRfurqfy13BwkBPO9mQLpqWeGxo4iJWnI=
X-Received: by 2002:a05:6214:80b:: with SMTP id
 df11mr4657098qvb.45.1567194899620; 
 Fri, 30 Aug 2019 12:54:59 -0700 (PDT)
MIME-Version: 1.0
References: <bb6d25c6baae315d05b571d8c508f0e8fa90027c.1567188299.git.msuchanek@suse.de>
 <20190830194651.31043-1-msuchanek@suse.de>
In-Reply-To: <20190830194651.31043-1-msuchanek@suse.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 30 Aug 2019 21:54:43 +0200
Message-ID: <CAK8P3a16=ktJm5B3c5-XS7SqVuHBY5+E2FwVUqbdOdWK-AUgSA@mail.gmail.com>
Subject: Re: [PATCH] Revert "asm-generic: Remove unneeded
 __ARCH_WANT_SYS_LLSEEK macro"
To: Michal Suchanek <msuchanek@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_125501_100636_C24159D0 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 9:46 PM Michal Suchanek <msuchanek@suse.de> wrote:
>
> This reverts commit caf6f9c8a326cffd1d4b3ff3f1cfba75d159d70b.
>
> Maybe it was needed after all.
>
> When CONFIG_COMPAT is disabled on ppc64 the kernel does not build.
>
> There is resistance to both removing the llseek syscall from the 64bit
> syscall tables and building the llseek interface unconditionally.
>
> Link: https://lore.kernel.org/lkml/20190828151552.GA16855@infradead.org/
> Link: https://lore.kernel.org/lkml/20190829214319.498c7de2@naga/
>
> Signed-off-by: Michal Suchanek <msuchanek@suse.de>

This seems like the right idea in principle.

> index 5bbf587f5bc1..2f3c4bb138c4 100644
> --- a/fs/read_write.c
> +++ b/fs/read_write.c
> @@ -331,7 +331,7 @@ COMPAT_SYSCALL_DEFINE3(lseek, unsigned int, fd, compat_off_t, offset, unsigned i
>  }
>  #endif
>
> -#if !defined(CONFIG_64BIT) || defined(CONFIG_COMPAT)
> +#ifdef __ARCH_WANT_SYS_LLSEEK
>  SYSCALL_DEFINE5(llseek, unsigned int, fd, unsigned long, offset_high,
>                 unsigned long, offset_low, loff_t __user *, result,
>                 unsigned int, whence)

However, only reverting the patch will now break all newly added
32-bit architectures that don't define __ARCH_WANT_SYS_LLSEEK:
at least nds32 and riscv32 come to mind, not sure if there is another.

I think the easiest way however would be to combine the two checks
above and make it

#if !defined(CONFIG_64BIT) || defined(CONFIG_COMPAT) ||
defined(__ARCH_WANT_SYS_LLSEEK)

and then only set __ARCH_WANT_SYS_LLSEEK for powerpc.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
