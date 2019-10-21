Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAF1DE81E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GU05en/3JdH8vvkcE49KUYFduMEBRBzeY1q/ulUNWSA=; b=J2XjhHGE3hpHqm
	wq/+s4FqmffOYvhqDWgBJ/4QaiE8V+vQFlNN5YpaUUozhD2Ij4/XzAwqIkVRZjWaScKaIIBr2MPZ2
	udRSbRIF265HyCHv7NVwkmuXK38aru0ROZPiTdw4b+mzhhffBak8om2h7YnqeSdsTcx0S4KS6mSw7
	wkeonNUn0/ci9amvVNNXzV6QKzJfmc0VMzOU0mEQR1PyClCp+m1ByZIEvHYfx7BK+b/UPzZckYFCG
	ixOPBsdZfuvpuXEn8FjA1IVrjghM7pezXXjZbvw8ZXKzbWTKqOjEfp6y7wYVvWM1lZ57AsywiSm/B
	h4a4Mj8qAOyZ3fa5Aneg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMU3X-00049m-9h; Mon, 21 Oct 2019 09:32:51 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMU3K-00048h-Ud
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:32:40 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iMU3B-0005rj-Ie; Mon, 21 Oct 2019 11:32:29 +0200
Date: Mon, 21 Oct 2019 11:32:29 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Andy Lutomirski <luto@kernel.org>
Subject: Re: [PATCH] lib/vdso: Use __arch_use_vsyscall() to indicate fallback
In-Reply-To: <CALCETrXik5bzj-jQyHgqkzXqhYVJzedyD6WqBS+m+zmzKzCcDQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1910211027540.1904@nanos.tec.linutronix.de>
References: <1571367619-13573-1-git-send-email-chenhc@lemote.com>
 <CALCETrWXRgkQOJGRqa_sOLAG2zhjsEX6b86T2VTsNYN9ECRrtA@mail.gmail.com>
 <CAAhV-H6VkW5-hMOrzAQeyHT4pYGExZR6eTRbPHSPK50GAkigCw@mail.gmail.com>
 <alpine.DEB.2.21.1910191156240.2098@nanos.tec.linutronix.de>
 <CALCETrXik5bzj-jQyHgqkzXqhYVJzedyD6WqBS+m+zmzKzCcDQ@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_023239_131414_0B91FC79 
X-CRM114-Status: GOOD (  27.03  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>, "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, Huacai Chen <chenhc@lemote.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 20 Oct 2019, Andy Lutomirski wrote:
> On Sat, Oct 19, 2019 at 3:01 AM Thomas Gleixner <tglx@linutronix.de> wrote:
> > __arch_use_vsyscall() is a pointless exercise TBH. The VDSO data should be
> > updated unconditionally so all the trivial interfaces like time() and
> > getres() just work independently of the functions which depend on the
> > underlying clocksource.
> >
> > This functions have a fallback operation already:
> >
> > Let __arch_get_hw_counter() return U64_MAX and the syscall fallback is
> > invoked.
> >
> 
> My thought was that __arch_get_hw_counter() could return last-1 to
> indicate failure, which would allow the two checks to be folded into
> one check.  Or we could continue to use U64_MAX and rely on the fact
> that (s64)U64_MAX < 0, not worry about the cycle counter overflowing,
> and letting cycles < last catch it.

This is not an overflow catch. It's solely to deal with the fact that on
X86 you can observe (cycles < last) on multi socket systems under rare
circumstances. Any other architecture does not have that issue AFAIK.

The wraparound of clocksources with a smaller width than 64bit is handled
by:

    delta = (cycles - last) & mask;

which operates on unsigned values for obvious reasons.

> (And we should change it to return s64 at some point regardless -- all
> the math is signed, so the underlying types should be too IMO.)

See above. delta is guaranteed to be >= 0 and the mult/shift is not signed
either. All the base values which are in the VDSO are unsigned as well.

The weird typecast there:

    if ((s64)cycles < 0)

could as well be

    if (cycles == U64_MAX)

but the typecasted version creates better code.

I tried to fold the two operations (see patch below) and on all machines I
tested on (various generations of Intel and AMD) the result is slower than
what we have now by a couple of cycles, which is a lot for these functions
(i.e. between 3-5%). I'm sure I tried that before and ended up with the
existing code as the fastest variant.

Why? That's subject to speculation :)

Thanks,

	tglx

8<----------
 arch/x86/include/asm/vdso/gettimeofday.h |   39 ++++++-------------------------
 lib/vdso/gettimeofday.c                  |   23 +++---------------
 2 files changed, 13 insertions(+), 49 deletions(-)

--- a/arch/x86/include/asm/vdso/gettimeofday.h
+++ b/arch/x86/include/asm/vdso/gettimeofday.h
@@ -235,10 +235,14 @@ static u64 vread_hvclock(void)
 }
 #endif
 
-static inline u64 __arch_get_hw_counter(s32 clock_mode)
+static inline u64 __arch_get_hw_counter(s32 clock_mode, u64 last, u64 mask)
 {
+	/*
+	 * Mask operation is not required as all VDSO clocksources are
+	 * 64bit wide.
+	 */
 	if (clock_mode == VCLOCK_TSC)
-		return (u64)rdtsc_ordered();
+		return (u64)rdtsc_ordered() - last;
 	/*
 	 * For any memory-mapped vclock type, we need to make sure that gcc
 	 * doesn't cleverly hoist a load before the mode check.  Otherwise we
@@ -248,13 +252,13 @@ static inline u64 __arch_get_hw_counter(
 #ifdef CONFIG_PARAVIRT_CLOCK
 	if (clock_mode == VCLOCK_PVCLOCK) {
 		barrier();
-		return vread_pvclock();
+		return vread_pvclock() - last;
 	}
 #endif
 #ifdef CONFIG_HYPERV_TIMER
 	if (clock_mode == VCLOCK_HVCLOCK) {
 		barrier();
-		return vread_hvclock();
+		return vread_hvclock() - last;
 	}
 #endif
 	return U64_MAX;
@@ -265,33 +269,6 @@ static __always_inline const struct vdso
 	return __vdso_data;
 }
 
-/*
- * x86 specific delta calculation.
- *
- * The regular implementation assumes that clocksource reads are globally
- * monotonic. The TSC can be slightly off across sockets which can cause
- * the regular delta calculation (@cycles - @last) to return a huge time
- * jump.
- *
- * Therefore it needs to be verified that @cycles are greater than
- * @last. If not then use @last, which is the base time of the current
- * conversion period.
- *
- * This variant also removes the masking of the subtraction because the
- * clocksource mask of all VDSO capable clocksources on x86 is U64_MAX
- * which would result in a pointless operation. The compiler cannot
- * optimize it away as the mask comes from the vdso data and is not compile
- * time constant.
- */
-static __always_inline
-u64 vdso_calc_delta(u64 cycles, u64 last, u64 mask, u32 mult)
-{
-	if (cycles > last)
-		return (cycles - last) * mult;
-	return 0;
-}
-#define vdso_calc_delta vdso_calc_delta
-
 #endif /* !__ASSEMBLY__ */
 
 #endif /* __ASM_VDSO_GETTIMEOFDAY_H */
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -26,34 +26,21 @@
 #include <asm/vdso/gettimeofday.h>
 #endif /* ENABLE_COMPAT_VDSO */
 
-#ifndef vdso_calc_delta
-/*
- * Default implementation which works for all sane clocksources. That
- * obviously excludes x86/TSC.
- */
-static __always_inline
-u64 vdso_calc_delta(u64 cycles, u64 last, u64 mask, u32 mult)
-{
-	return ((cycles - last) & mask) * mult;
-}
-#endif
-
 static int do_hres(const struct vdso_data *vd, clockid_t clk,
 		   struct __kernel_timespec *ts)
 {
 	const struct vdso_timestamp *vdso_ts = &vd->basetime[clk];
-	u64 cycles, last, sec, ns;
+	u64 delta, sec, ns;
 	u32 seq;
 
 	do {
 		seq = vdso_read_begin(vd);
-		cycles = __arch_get_hw_counter(vd->clock_mode);
-		ns = vdso_ts->nsec;
-		last = vd->cycle_last;
-		if (unlikely((s64)cycles < 0))
+		delta = __arch_get_hw_counter(vd->clock_mode, vd->cycle_last,
+					      vd->mask);
+		if (unlikely((s64)delta < 0))
 			return -1;
 
-		ns += vdso_calc_delta(cycles, last, vd->mask, vd->mult);
+		ns = vdso_ts->nsec + delta * vd->mult;
 		ns >>= vd->shift;
 		sec = vdso_ts->sec;
 	} while (unlikely(vdso_read_retry(vd, seq)));





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
