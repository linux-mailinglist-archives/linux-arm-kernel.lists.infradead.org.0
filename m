Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98AC655C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 13:32:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGMHe4EK9eqRT9qRu4okYK+GesoK0dAJZn0CQtB39iQ=; b=Z6tdGywbL/1iSq
	An3vV4DS6Xzy4JNSHS2HmqIUFtnQp/dL1uwPIOxQxpT1u7m0MtgJbg9lJqfYE4Yq8QdNhnOfWE0oS
	A5gU1hbfuGlPKShqAsUu022vBJrNF5F8tr00uMV3+xCfXimbpW5MiC2V7Hu6k7fR0mbNT1HbG3zC+
	f7Y8Z9f3EfLrm2IgMne3/Gq3to+l+n5iJAHc8yXLrVBRoo1mMe933JeDJE1vvHnh/mBVl/WKYcl6S
	khUS71XwWW8rJfbTG2IVux2hgj/n8WZeHB9gPcEIM4LlUyT1Gw2k7lFKGb8bYq8Z2gSkCAjYUQmwE
	X27c3CIdQKrybrzro0Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlXJn-0000Kh-Ii; Thu, 11 Jul 2019 11:32:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlXJf-0000Jm-Hy
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 11:32:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 442D820665;
 Thu, 11 Jul 2019 11:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562844766;
 bh=s8uYoozdh6txZl5Ipy+chi8ZC2Lp0gQsc+r2gcl/KTI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X1KQY/ZINjJSIFh09hdp2m914Z23PYFAjsktC6vM6BO9qnBGcq9szxI1anh6YPKda
 17FMYC9TApNw8fvbMrRNsWFoMFDaW9iDj8fprhujtNW0b7zZYfhaxMMvbeCerC1Lb1
 Ar8ijqAgm9rYbm4d7j6RdPcYQDPnEGViXYanDGks=
Date: Thu, 11 Jul 2019 12:32:39 +0100
From: Will Deacon <will@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v2] arm64: vdso: Fix ABI regression in compat vdso
Message-ID: <20190711113238.qefdp5zvrjhsmtfu@willie-the-truck>
References: <20190621095252.32307-11-vincenzo.frascino@arm.com>
 <20190710140119.23417-1-vincenzo.frascino@arm.com>
 <20190711094505.rwy6t6wu2cvmvwr6@willie-the-truck>
 <alpine.DEB.2.21.1907111232000.1889@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1907111232000.1889@nanos.tec.linutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_043247_608283_3D2C33A9 
X-CRM114-Status: GOOD (  20.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux@rasmusvillemoes.dk, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-mips@vger.kernel.org, linux-kselftest@vger.kernel.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, shuah@kernel.org,
 linux-arch@vger.kernel.org, 0x7f454c46@gmail.com, daniel.lezcano@linaro.org,
 linux@armlinux.org.uk, arnd@arndb.de, andre.przywara@arm.com,
 john.stultz@linaro.org, luto@kernel.org, pcc@google.com,
 linux-arm-kernel@lists.infradead.org, huw@codeweavers.com,
 linux-kernel@vger.kernel.org, ralf@linux-mips.org, salyzyn@android.com,
 paul.burton@mips.com, sthotton@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 12:34:27PM +0200, Thomas Gleixner wrote:
> On Thu, 11 Jul 2019, Will Deacon wrote:
> > On Wed, Jul 10, 2019 at 03:01:19PM +0100, Vincenzo Frascino wrote:
> > > Prior to the introduction of Unified vDSO support and compat layer for
> > > vDSO on arm64, AT_SYSINFO_EHDR was not defined for compat tasks.
> > > In the current implementation, AT_SYSINFO_EHDR is defined even if the
> > > compat vdso layer is not built and this causes a regression in the
> > > expected behavior of the ABI.
> > > 
> > > Restore the ABI behavior making sure that AT_SYSINFO_EHDR for compat
> > > tasks is defined only when CONFIG_COMPAT_VDSO is enabled.
> > > 
> > > Reported-by: John Stultz <john.stultz@linaro.org>
> > > Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> > > ---
> > >  arch/arm64/include/asm/elf.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/include/asm/elf.h b/arch/arm64/include/asm/elf.h
> > > index 3c7037c6ba9b..b618017205a3 100644
> > > --- a/arch/arm64/include/asm/elf.h
> > > +++ b/arch/arm64/include/asm/elf.h
> > > @@ -202,7 +202,7 @@ typedef compat_elf_greg_t		compat_elf_gregset_t[COMPAT_ELF_NGREG];
> > >  ({									\
> > >  	set_thread_flag(TIF_32BIT);					\
> > >   })
> > > -#ifdef CONFIG_GENERIC_COMPAT_VDSO
> > > +#ifdef CONFIG_COMPAT_VDSO
> > >  #define COMPAT_ARCH_DLINFO						\
> > >  do {									\
> > >  	/*								\
> > 
> > Acked-by: Will Deacon <will@kernel.org>
> > 
> > I can take this at -rc1 via arm64 unless tglx plans to send it during the
> > rest of the merge window. Please let me know.
> 
> I had no plan to pick it up, but if you want I can route it through timer
> urgents so it hits Linus tree before rc1.

I don't think it's urgent, so I'll just queue it along with any other fixes
that show up at -rc1.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
