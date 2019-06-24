Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3CD4FE4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 02:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fa+ZSLyx/fVBW+ohWfSyrYp71J84RRwbYAQ+fvX5uUA=; b=s86qYTBjkQ+Nw1
	7cLZdI5cF5CXjZjAHabCPELe+Be2FKtGgW+IQ65aQDHiulldpaVdiO1/SdvAhrHeLRQgwVzQtuizc
	xpie59H9svyY13kyJ9GXjjFrd4mT2b7QZ3ZRX2B1YYfLaINNXHVnlBsRVW/ZBYf2W7EMs4qrKq3ls
	/VKw3gz01uKler7mNtX3GQ3uVx+DhA4XqCF1Ttan0V+yJxVU0z75oPHII32jwCAm+wcygeFf/QcXw
	DTbnispJbVPErgTPjaNG7sdfw1ISV4GK3GfEJgawz2NTPDZ1pnVqh4/OomxIoYEoYDTo5pjIwlP/v
	w2gKFJbniApgQ7s+Eb+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfCwV-0003AG-MN; Mon, 24 Jun 2019 00:34:43 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfCwI-00039p-7A
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 00:34:31 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hfCwE-0000Q9-46; Mon, 24 Jun 2019 02:34:26 +0200
Date: Mon, 24 Jun 2019 02:34:24 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v7 00/25] Unify vDSOs across more architectures
In-Reply-To: <20190621095252.32307-1-vincenzo.frascino@arm.com>
Message-ID: <alpine.DEB.2.21.1906240142000.32342@nanos.tec.linutronix.de>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_173430_404801_99DF5A10 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andy Lutomirski <luto@kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, linux-kselftest@vger.kernel.org,
 Shuah Khan <shuah@kernel.org>, linux-arch@vger.kernel.org,
 Dmitry Safonov <dima@arista.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Sasha Levin <sashal@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Andre Przywara <andre.przywara@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Michael Kelley <mikelley@microsoft.com>,
 Peter Collingbourne <pcc@google.com>,
 LAK <linux-arm-kernel@lists.infradead.org>, Andrei Vagin <avagin@openvz.org>,
 Huw Davies <huw@codeweavers.com>, LKML <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Shijith Thotton <sthotton@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Vincenzo,

On Fri, 21 Jun 2019, Vincenzo Frascino wrote:
> vDSO (virtual dynamic shared object) is a mechanism that the Linux
> kernel provides as an alternative to system calls to reduce where
> possible the costs in terms of cycles.
> This is possible because certain syscalls like gettimeofday() do
> not write any data and return one or more values that are stored
> in the kernel, which makes relatively safe calling them directly
> as a library function.
> 
> Even if the mechanism is pretty much standard, every architecture
> in the last few years ended up implementing their own vDSO library
> in the architectural code.

....
 
> This implementation contains the portings to the common library for: arm64,
> compat mode for arm64, arm, mips, x86_64, x32, compat mode for x86_64 and
> i386.

I picked up the core implementation and the ARM64 and x86 conversion. I did
some refinements in several places, coding style, naming conventions,
comments and changelogs including subject prefixes. Please double check!

I did not merge the ARM and MIPS parts as they lack any form of
acknowlegment from their maintainers. Please talk to those folks. If they
ack/review the changes then I can pick them up and they go into 5.3 or they
have to go in a later cycle. Nevertheless it was well worth the trouble to
have those conversions done to confirm that the new common library fits a
bunch of different architectures.

As you can see from the commit dates, this has soaked for some time in a
WIP branch and I did extensive regression testing. So far so good.

Thanks a lot for going through several iterations. It's a very much
appreciated effort!

Especially with the upcoming time namespaces this will avoid a lot of
duplicated and pointlessly different horrors all over the architecture
space. Any architecture which wants to gain that support needs to convert
to the generic VDSO first.

As you have become the dude who knows almost everything about VDSO
including all the nasty pitfalls, I propose the patch below.

Thanks,

	tglx

8<------------
Subject: MAINTAINERS: Add entry for the generic VDSO library
From: Thomas Gleixner <tglx@linutronix.de>
Date: Mon, 24 Jun 2019 02:03:50 +0200

Asign the following folks in alphabetic order:

 - Andy for being the VDSO wizard of x86 and in general. He's also the
   performance monitor of choice and the code in the generic library is
   heavily influenced by his previous x86 VDSO work.

 - Thomas for being the dude who has to deal with any form of time(r)
   nonsense anyway

 - Vincenzo for being the poor sod who went through all the different
   architecture implementations in order to unify them. A lot of knowledge
   gained from VDSO implementation details to the intricacies of taming the
   build system.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 MAINTAINERS |   12 ++++++++++++
 1 file changed, 12 insertions(+)

--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6665,6 +6665,18 @@ L:	kvm@vger.kernel.org
 S:	Supported
 F:	drivers/uio/uio_pci_generic.c
 
+GENERIC VDSO LIBRARY:
+M:	Andy Lutomirksy <luto@kernel.org>
+M:	Thomas Gleixner <tglx@linutronix.de>
+M:	Vincenzo Frascino <vincenzo.frascino@arm.com>
+L:	linux-kernel@vger.kernel.org
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git timers/vdso
+S:	Maintained
+F:	lib/vdso
+F:	kernel/time/vsyscall.c
+F:	include/vdso
+F:	include/asm-generic/vdso/vsyscall.h
+
 GENWQE (IBM Generic Workqueue Card)
 M:	Frank Haverkamp <haver@linux.ibm.com>
 S:	Supported

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
