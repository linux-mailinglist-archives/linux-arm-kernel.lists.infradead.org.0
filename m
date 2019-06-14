Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAE845B35
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 13:11:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Krn+PmvnWgSQXK+8BO0gbEugXnIQgb7IIIGN0Wzg+iY=; b=opuSIbmd93Fi84
	FoJf6zA+c6ayTpKu7ozD+DrieW4jKs2eUozwOgfalcBN9P0D5kINi3lP1z3+pGzK4AqcpYI0O4Y59
	nnewFopw2ton/lXthmMa+mc0ulTT0K4WrnF3RMEQevlUwj43X0TSXwNzTwAiSDxfpV0sVeaafOxeD
	2LfDiwbCG5bNRsFdzB4IeAlmftxHQImlTgM8REb+YZ4ciaupTVAo6rww45ESiDMXJjpXmVQnZJ6j1
	7GXbUfL1K82Jjv6xNqshlZ+3JduWds+eNTCuzoG7zclUeLaeWnKzcbMovcZ+7sksZpfjOx4Ibsr/s
	B/mBKxG7Z1wb5uvAi7aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbk76-0000Qk-6b; Fri, 14 Jun 2019 11:11:20 +0000
Received: from galois.linutronix.de ([2a01:7a0:2:106d:700::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbk6v-0000OM-9F
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 11:11:10 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hbk6l-0000IX-6H; Fri, 14 Jun 2019 13:10:59 +0200
Date: Fri, 14 Jun 2019 13:10:58 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v6 03/19] kernel: Unify update_vsyscall implementation
In-Reply-To: <20190530141531.43462-4-vincenzo.frascino@arm.com>
Message-ID: <alpine.DEB.2.21.1906141307430.1722@nanos.tec.linutronix.de>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-4-vincenzo.frascino@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_041109_482518_CB8E85AD 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:7a0:2:106d:700:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 linux-kselftest@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 May 2019, Vincenzo Frascino wrote:
> +
> +	if (__arch_use_vsyscall(vdata)) {
> +		vdata[CS_HRES_COARSE].cycle_last	=
> +						tk->tkr_mono.cycle_last;
> +		vdata[CS_HRES_COARSE].mask		=
> +						tk->tkr_mono.mask;
> +		vdata[CS_HRES_COARSE].mult		=
> +						tk->tkr_mono.mult;

These line breaks make it really hard to read. Can you fold in the patch
below please?

Thanks,

	tglx
8<-----------
--- a/kernel/vdso/vsyscall.c
+++ b/kernel/vdso/vsyscall.c
@@ -11,6 +11,66 @@
 #include <vdso/helpers.h>
 #include <vdso/vsyscall.h>
 
+static inline void udpate_vdata(struct vdso_data *vdata, struct timekeeper *tk)
+{
+	struct vdso_timestamp *vdso_ts;
+	u64 nsec;
+
+	vdata[CS_HRES_COARSE].cycle_last	= tk->tkr_mono.cycle_last;
+	vdata[CS_HRES_COARSE].mask		= tk->tkr_mono.mask;
+	vdata[CS_HRES_COARSE].mult		= tk->tkr_mono.mult;
+	vdata[CS_HRES_COARSE].shift		= tk->tkr_mono.shift;
+	vdata[CS_RAW].cycle_last		= tk->tkr_raw.cycle_last;
+	vdata[CS_RAW].mask			= tk->tkr_raw.mask;
+	vdata[CS_RAW].mult			= tk->tkr_raw.mult;
+	vdata[CS_RAW].shift			= tk->tkr_raw.shift;
+
+	/* CLOCK_REALTIME */
+	vdso_ts		=  &vdata[CS_HRES_COARSE].basetime[CLOCK_REALTIME];
+	vdso_ts->sec	= tk->xtime_sec;
+	vdso_ts->nsec	= tk->tkr_mono.xtime_nsec;
+
+	/* CLOCK_MONOTONIC */
+	vdso_ts		= &vdata[CS_HRES_COARSE].basetime[CLOCK_MONOTONIC];
+	vdso_ts->sec	= tk->xtime_sec + tk->wall_to_monotonic.tv_sec;
+
+	nsec = tk->tkr_mono.xtime_nsec;
+	nsec += ((u64)tk->wall_to_monotonic.tv_nsec << tk->tkr_mono.shift);
+	while (nsec >= (((u64)NSEC_PER_SEC) << tk->tkr_mono.shift)) {
+		nsec -= (((u64)NSEC_PER_SEC) << tk->tkr_mono.shift);
+		vdso_ts->sec++;
+	}
+	vdso_ts->nsec	= nsec;
+
+	/* CLOCK_MONOTONIC_RAW */
+	vdso_ts		= &vdata[CS_RAW].basetime[CLOCK_MONOTONIC_RAW];
+	vdso_ts->sec	= tk->raw_sec;
+	vdso_ts->nsec	= tk->tkr_raw.xtime_nsec;
+
+	/* CLOCK_BOOTTIME */
+	vdso_ts		= &vdata[CS_HRES_COARSE].basetime[CLOCK_BOOTTIME];
+	vdso_ts->sec	= tk->xtime_sec + tk->wall_to_monotonic.tv_sec;
+	nsec = tk->tkr_mono.xtime_nsec;
+	nsec += ((u64)(tk->wall_to_monotonic.tv_nsec +
+		       ktime_to_ns(tk->offs_boot)) << tk->tkr_mono.shift);
+	while (nsec >= (((u64)NSEC_PER_SEC) << tk->tkr_mono.shift)) {
+		nsec -= (((u64)NSEC_PER_SEC) << tk->tkr_mono.shift);
+		vdso_ts->sec++;
+	}
+	vdso_ts->nsec	= nsec;
+
+	/* CLOCK_TAI */
+	vdso_ts		= &vdata[CS_HRES_COARSE].basetime[CLOCK_TAI];
+	vdso_ts->sec	= tk->xtime_sec + (s64)tk->tai_offset;
+	vdso_ts->nsec	= tk->tkr_mono.xtime_nsec;
+
+	/*
+	 * Read without the seqlock held by clock_getres().
+	 * Note: No need to have a second copy.
+	 */
+	WRITE_ONCE(vdata[CS_HRES_COARSE].hrtimer_res, hrtimer_resolution);
+}
+
 void update_vsyscall(struct timekeeper *tk)
 {
 	struct vdso_data *vdata = __arch_get_k_vdso_data();
@@ -32,92 +92,23 @@ void update_vsyscall(struct timekeeper *
 	vdata[CS_RAW].clock_mode		= __arch_get_clock_mode(tk);
 
 	/* CLOCK_REALTIME_COARSE */
-	vdso_ts			=
-			&vdata[CS_HRES_COARSE].basetime[CLOCK_REALTIME_COARSE];
-	vdso_ts->sec		= tk->xtime_sec;
-	vdso_ts->nsec		= tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift;
+	vdso_ts		= &vdata[CS_HRES_COARSE].basetime[CLOCK_REALTIME_COARSE];
+	vdso_ts->sec	= tk->xtime_sec;
+	vdso_ts->nsec	= tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift;
+
 	/* CLOCK_MONOTONIC_COARSE */
-	vdso_ts			=
-			&vdata[CS_HRES_COARSE].basetime[CLOCK_MONOTONIC_COARSE];
-	vdso_ts->sec		= tk->xtime_sec + tk->wall_to_monotonic.tv_sec;
-	nsec			= tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift;
-	nsec			= nsec + tk->wall_to_monotonic.tv_nsec;
+	vdso_ts		= &vdata[CS_HRES_COARSE].basetime[CLOCK_MONOTONIC_COARSE];
+	vdso_ts->sec	= tk->xtime_sec + tk->wall_to_monotonic.tv_sec;
+	nsec		= tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift;
+	nsec		= nsec + tk->wall_to_monotonic.tv_nsec;
 	while (nsec >= NSEC_PER_SEC) {
 		nsec = nsec - NSEC_PER_SEC;
 		vdso_ts->sec++;
 	}
-	vdso_ts->nsec		= nsec;
+	vdso_ts->nsec	= nsec;
 
-	if (__arch_use_vsyscall(vdata)) {
-		vdata[CS_HRES_COARSE].cycle_last	=
-						tk->tkr_mono.cycle_last;
-		vdata[CS_HRES_COARSE].mask		=
-						tk->tkr_mono.mask;
-		vdata[CS_HRES_COARSE].mult		=
-						tk->tkr_mono.mult;
-		vdata[CS_HRES_COARSE].shift		=
-						tk->tkr_mono.shift;
-		vdata[CS_RAW].cycle_last		=
-						tk->tkr_raw.cycle_last;
-		vdata[CS_RAW].mask			=
-						tk->tkr_raw.mask;
-		vdata[CS_RAW].mult			=
-						tk->tkr_raw.mult;
-		vdata[CS_RAW].shift			=
-						tk->tkr_raw.shift;
-		/* CLOCK_REALTIME */
-		vdso_ts			=
-			&vdata[CS_HRES_COARSE].basetime[CLOCK_REALTIME];
-		vdso_ts->sec		= tk->xtime_sec;
-		vdso_ts->nsec		= tk->tkr_mono.xtime_nsec;
-		/* CLOCK_MONOTONIC */
-		vdso_ts			=
-			&vdata[CS_HRES_COARSE].basetime[CLOCK_MONOTONIC];
-		vdso_ts->sec		= tk->xtime_sec +
-					  tk->wall_to_monotonic.tv_sec;
-		nsec			= tk->tkr_mono.xtime_nsec;
-		nsec			= nsec +
-					  ((u64)tk->wall_to_monotonic.tv_nsec <<
-					  tk->tkr_mono.shift);
-		while (nsec >= (((u64)NSEC_PER_SEC) << tk->tkr_mono.shift)) {
-			nsec = nsec -
-			       (((u64)NSEC_PER_SEC) << tk->tkr_mono.shift);
-			vdso_ts->sec++;
-		}
-		vdso_ts->nsec		= nsec;
-		/* CLOCK_MONOTONIC_RAW */
-		vdso_ts			=
-			&vdata[CS_RAW].basetime[CLOCK_MONOTONIC_RAW];
-		vdso_ts->sec		= tk->raw_sec;
-		vdso_ts->nsec		= tk->tkr_raw.xtime_nsec;
-		/* CLOCK_BOOTTIME */
-		vdso_ts			=
-			&vdata[CS_HRES_COARSE].basetime[CLOCK_BOOTTIME];
-		vdso_ts->sec		= tk->xtime_sec +
-					  tk->wall_to_monotonic.tv_sec;
-		nsec			= tk->tkr_mono.xtime_nsec;
-		nsec			= nsec +
-					  ((u64)(tk->wall_to_monotonic.tv_nsec +
-					  ktime_to_ns(tk->offs_boot)) <<
-					  tk->tkr_mono.shift);
-		while (nsec >= (((u64)NSEC_PER_SEC) << tk->tkr_mono.shift)) {
-			nsec = nsec -
-				(((u64)NSEC_PER_SEC) << tk->tkr_mono.shift);
-			vdso_ts->sec++;
-		}
-		vdso_ts->nsec		= nsec;
-		/* CLOCK_TAI */
-		vdso_ts			=
-			&vdata[CS_HRES_COARSE].basetime[CLOCK_TAI];
-		vdso_ts->sec		= tk->xtime_sec + (s64)tk->tai_offset;
-		vdso_ts->nsec		= tk->tkr_mono.xtime_nsec;
-
-		/*
-		 * Read without the seqlock held by clock_getres().
-		 * Note: No need to have a second copy.
-		 */
-		WRITE_ONCE(vdata[CS_HRES_COARSE].hrtimer_res, hrtimer_resolution);
-	}
+	if (__arch_use_vsyscall(vdata))
+		update_vdata(vdata, tk);
 
 	__arch_update_vsyscall(vdata, tk);
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
