Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9914B6548E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 12:34:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/drdyBhlUAtFGax6KZPkAPXWsORABsRR+nerqbnbNyM=; b=ckPE0OyHYe9YhI
	ZxSIK2o/63G4OZ3TZx4HI/SArp3zgGAN303m7ZPqaEA7cJ90/PUf4nzYk4xHGM+fvCLiQZdXKM7VB
	LmB73SsJy1FNPupQCijBtwW8CCi/CzFtSZ6l5NGXG7nWhylmQ8i1C/GAfImXvFAUlyJCB/f9kH8e/
	X45oBGFBbGDRicUbMmDJyhtBUs/ziPIeW6Q8W3DgHEfWinGH3FU8IsamHeUbi10JT4pUmBT0em0VO
	1KR0A7gKvOsumqCgLnd9cYpiyBqLsXHEQmRdoOD0u3h0//Xbjg67wdfjnAPU38XsV5OlccCDv6cNm
	AeeXG+5x/6V8dc3foXfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlWPb-0004uP-14; Thu, 11 Jul 2019 10:34:51 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlWPT-0004tb-It
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 10:34:45 +0000
Received: from [5.158.153.55] (helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hlWPJ-0003zg-TT; Thu, 11 Jul 2019 12:34:34 +0200
Date: Thu, 11 Jul 2019 12:34:27 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] arm64: vdso: Fix ABI regression in compat vdso
In-Reply-To: <20190711094505.rwy6t6wu2cvmvwr6@willie-the-truck>
Message-ID: <alpine.DEB.2.21.1907111232000.1889@nanos.tec.linutronix.de>
References: <20190621095252.32307-11-vincenzo.frascino@arm.com>
 <20190710140119.23417-1-vincenzo.frascino@arm.com>
 <20190711094505.rwy6t6wu2cvmvwr6@willie-the-truck>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_033443_764070_ABC9A15F 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Thu, 11 Jul 2019, Will Deacon wrote:

> On Wed, Jul 10, 2019 at 03:01:19PM +0100, Vincenzo Frascino wrote:
> > Prior to the introduction of Unified vDSO support and compat layer for
> > vDSO on arm64, AT_SYSINFO_EHDR was not defined for compat tasks.
> > In the current implementation, AT_SYSINFO_EHDR is defined even if the
> > compat vdso layer is not built and this causes a regression in the
> > expected behavior of the ABI.
> > 
> > Restore the ABI behavior making sure that AT_SYSINFO_EHDR for compat
> > tasks is defined only when CONFIG_COMPAT_VDSO is enabled.
> > 
> > Reported-by: John Stultz <john.stultz@linaro.org>
> > Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> > ---
> >  arch/arm64/include/asm/elf.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/include/asm/elf.h b/arch/arm64/include/asm/elf.h
> > index 3c7037c6ba9b..b618017205a3 100644
> > --- a/arch/arm64/include/asm/elf.h
> > +++ b/arch/arm64/include/asm/elf.h
> > @@ -202,7 +202,7 @@ typedef compat_elf_greg_t		compat_elf_gregset_t[COMPAT_ELF_NGREG];
> >  ({									\
> >  	set_thread_flag(TIF_32BIT);					\
> >   })
> > -#ifdef CONFIG_GENERIC_COMPAT_VDSO
> > +#ifdef CONFIG_COMPAT_VDSO
> >  #define COMPAT_ARCH_DLINFO						\
> >  do {									\
> >  	/*								\
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> I can take this at -rc1 via arm64 unless tglx plans to send it during the
> rest of the merge window. Please let me know.

I had no plan to pick it up, but if you want I can route it through timer
urgents so it hits Linus tree before rc1.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
