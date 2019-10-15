Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0039D80C4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 22:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PUhRzUXZTsKo67oRn4KM7hurrsLw6NozEOA5UyqC7AQ=; b=uU+b2HaaZth/n/
	/Qfhyk1R7xEffYMfnpLxigXbkf99w4+nXw+nPcqed2NvSF/sAxrSDf9qT+9vRnm4E59U4eBlczLZB
	UHKvryuOG4A+g2AJNwXXbfDTLSc6cnOpy2jl232dmlbITvA23wXPKNN/d5j5JRWTly8LCFP/cj15l
	/DsHqLQ1CSCtgAMEpLuegQifOKoaCOIFuiCsevvR48x/QDUbxgMQKK0dDol0ydVd2QGhBk3S1WUMU
	CbfwImktQSFecDTjIWXCjvhKwv0oi0CanWUthW0BRJI445o3opDu6mZIequSYUSE5O27nDnxZgaat
	gAdm1fh7DCHwAI5g5whg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKTBv-0007wG-MU; Tue, 15 Oct 2019 20:13:11 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKTBl-0007vJ-Ds
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 20:13:03 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iKTBb-0007eQ-LO; Tue, 15 Oct 2019 22:12:51 +0200
Date: Tue, 15 Oct 2019 22:12:50 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Jianyong Wu <jianyong.wu@arm.com>
Subject: Re: [PATCH v5 3/6] timekeeping: Add clocksource to
 system_time_snapshot
In-Reply-To: <20191015104822.13890-4-jianyong.wu@arm.com>
Message-ID: <alpine.DEB.2.21.1910152047490.2518@nanos.tec.linutronix.de>
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-4-jianyong.wu@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_131301_613915_3212CFAF 
X-CRM114-Status: GOOD (  23.80  )
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
Cc: Mark.Rutland@arm.com, justin.he@arm.com, kvm@vger.kernel.org,
 suzuki.poulose@arm.com, maz@kernel.org, richardcochran@gmail.com,
 yangbo.lu@nxp.com, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, Kaly.Xin@arm.com, john.stultz@linaro.org,
 netdev@vger.kernel.org, pbonzini@redhat.com, nd@arm.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Steve.Capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 15 Oct 2019, Jianyong Wu wrote:

> Sometimes, we need check current clocksource outside of
> timekeeping area. Add clocksource to system_time_snapshot then
> we can get clocksource as well as system time.

This changelog is telling absolutely nothing WHY anything outside of the
timekeeping core code needs access to the current clocksource. Neither does
it tell why it is safe to provide the pointer to random callers.

> +/*
> + * struct system_time_snapshot - simultaneous raw/real time capture with
> + *	counter value
> + * @sc:		Contains clocksource and clocksource counter value to produce
> + * 	the system times
> + * @real:	Realtime system time
> + * @raw:	Monotonic raw system time
> + * @clock_was_set_seq:	The sequence number of clock was set events
> + * @cs_was_changed_seq:	The sequence number of clocksource change events
> + */
> +struct system_time_snapshot {
> +	struct system_counterval_t sc;
> +	ktime_t		real;
> +	ktime_t		raw;
> +	unsigned int	clock_was_set_seq;
> +	u8		cs_was_changed_seq;
> +};
> +
>  /*
>   * Get cross timestamp between system clock and device clock
>   */
> diff --git a/kernel/time/timekeeping.c b/kernel/time/timekeeping.c
> index 44b726bab4bd..66ff089605b3 100644
> --- a/kernel/time/timekeeping.c
> +++ b/kernel/time/timekeeping.c
> @@ -983,7 +983,8 @@ void ktime_get_snapshot(struct system_time_snapshot *systime_snapshot)
>  		nsec_raw  = timekeeping_cycles_to_ns(&tk->tkr_raw, now);
>  	} while (read_seqcount_retry(&tk_core.seq, seq));
>  
> -	systime_snapshot->cycles = now;
> +	systime_snapshot->sc.cycles = now;
> +	systime_snapshot->sc.cs = tk->tkr_mono.clock;

The clock pointer can change right after the store, the underlying data can
be freed .....

Looking at the rest of the patch set the actual usage site is:

> +       case ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID:
> +               ktime_get_snapshot(&systime_snapshot);
> +               if (!is_arm_arch_counter(systime_snapshot.sc.cs))
> +                       return kvm_psci_call(vcpu);

and that function does:

> +bool is_arm_arch_counter(void *cs)

void *? Type safety is overrated, right? The type is well known....

+{
+       return (struct clocksource *)cs == &clocksource_counter;

That nonsensical typecast does not make up for that.

+}

So while the access to the pointer is actually safe, this is not going to
happen simply because you modify a generic interface in a way which will
lead the next developer to insane assumptions about the validity of that
pointer.

While the kernel is pretty lax in terms of isolation due to the nature of
the programming language, this does not justify to expose critical
internals of core code to random callers. Guess why most of the timekeeping
internals are carefully shielded from external access.

Something like the completely untested (not even compiled) patch below
gives you access to the information you need and allows to reuse the
mechanism for other purposes without adding is_$FOO_timer() all over the
place.

Thanks,

	tglx

8<--------------
--- a/include/linux/clocksource.h
+++ b/include/linux/clocksource.h
@@ -9,6 +9,7 @@
 #ifndef _LINUX_CLOCKSOURCE_H
 #define _LINUX_CLOCKSOURCE_H
 
+#include <linux/clocksource_ids.h>
 #include <linux/types.h>
 #include <linux/timex.h>
 #include <linux/time.h>
@@ -49,6 +50,10 @@ struct module;
  *			400-499: Perfect
  *				The ideal clocksource. A must-use where
  *				available.
+ * @id:			Defaults to CSID_GENERIC. The id value is captured
+ *			in certain snapshot functions to allow callers to
+ *			validate the clocksource from which the snapshot was
+ *			taken.
  * @read:		returns a cycle value, passes clocksource as argument
  * @enable:		optional function to enable the clocksource
  * @disable:		optional function to disable the clocksource
@@ -91,6 +96,7 @@ struct clocksource {
 	const char *name;
 	struct list_head list;
 	int rating;
+	enum clocksource_ids id;
 	int (*enable)(struct clocksource *cs);
 	void (*disable)(struct clocksource *cs);
 	unsigned long flags;
--- /dev/null
+++ b/include/linux/clocksource_ids.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_CLOCKSOURCE_IDS_H
+#define _LINUX_CLOCKSOURCE_IDS_H
+
+/* Enum to give clocksources a unique identifier */
+enum clocksource_ids {
+	CSID_GENERIC		= 0,
+	CSID_ARM_ARCH_COUNTER,
+	CSID_MAX,
+};
+
+#endif
--- a/include/linux/timekeeping.h
+++ b/include/linux/timekeeping.h
@@ -2,6 +2,7 @@
 #ifndef _LINUX_TIMEKEEPING_H
 #define _LINUX_TIMEKEEPING_H
 
+#include <linux/clocksource_ids.h>
 #include <linux/errno.h>
 
 /* Included from linux/ktime.h */
@@ -228,15 +229,17 @@ extern void timekeeping_inject_sleeptime
  * @cycles:	Clocksource counter value to produce the system times
  * @real:	Realtime system time
  * @raw:	Monotonic raw system time
+ * @cs_id:	The id of the current clocksource which produced the snapshot
  * @clock_was_set_seq:	The sequence number of clock was set events
  * @cs_was_changed_seq:	The sequence number of clocksource change events
  */
 struct system_time_snapshot {
-	u64		cycles;
-	ktime_t		real;
-	ktime_t		raw;
-	unsigned int	clock_was_set_seq;
-	u8		cs_was_changed_seq;
+	u64			cycles;
+	ktime_t			real;
+	ktime_t			raw;
+	enum clocksource_ids	cs_id;
+	unsigned int		clock_was_set_seq;
+	u8			cs_was_changed_seq;
 };
 
 /*
--- a/kernel/time/clocksource.c
+++ b/kernel/time/clocksource.c
@@ -921,6 +921,9 @@ int __clocksource_register_scale(struct
 
 	clocksource_arch_init(cs);
 
+	if (WARN_ON_ONCE((unsigned int)cs->id >= CSID_MAX))
+		cs->id = CSID_GENERIC;
+
 	/* Initialize mult/shift and max_idle_ns */
 	__clocksource_update_freq_scale(cs, scale, freq);
 
--- a/kernel/time/timekeeping.c
+++ b/kernel/time/timekeeping.c
@@ -979,6 +979,7 @@ void ktime_get_snapshot(struct system_ti
 	do {
 		seq = read_seqcount_begin(&tk_core.seq);
 		now = tk_clock_read(&tk->tkr_mono);
+		systime_snapshot->cs_id = tk->tkr_mono.clock->id;
 		systime_snapshot->cs_was_changed_seq = tk->cs_was_changed_seq;
 		systime_snapshot->clock_was_set_seq = tk->clock_was_set_seq;
 		base_real = ktime_add(tk->tkr_mono.base,




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
