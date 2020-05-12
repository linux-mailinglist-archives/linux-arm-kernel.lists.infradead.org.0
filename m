Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FD81CED1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 08:38:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M7zK9mRF2Vir+zyHcE1dDjj2hcMKvWrIK6bE2QXkX64=; b=fmjetjFlcvvwNb
	8L/g1fwj2NO24O0+gSIVIBUyKnf4s11gIhlUB2EaT5LJCQySNXJNbDssLd7EpgcaiJ9kFCvaJYcd1
	Tu0WhfmxuL7CtSaeRLVadGSsneNHij9Yl5pS4rIczX4NJgDIJ2PemSVHsMPAg022Hsy+X7CE91uhA
	8eMyDi/LKswZelAv/K3k7UuXdmRFDkmK/4GeusF1SB3H7tMoRWmJ1ERzHcHZPXBAe12oc65akyjyN
	vVEpOgQH/fhDux+7PVOpC9KEwp9BxX7nXwmayoMD6qhFuYu96JG8Z3xQlQWQG1TOgBCtu/fOL7t+F
	rg7aEzjT/J8A7LTiRMpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYOYc-0007kS-47; Tue, 12 May 2020 06:38:26 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYOYS-0007jb-FM
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 06:38:18 +0000
Received: by mail-pf1-x442.google.com with SMTP id y25so5914375pfn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 23:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QVp/H5vK1lwJMxz1Tuv0jzbRm/AB7w7GAQub55XuNrw=;
 b=F643G+sjdAIO+h9mo6OtW2S6CZd1iA+QN5WBdXV9zGRi5tcZGajhOCcQQVRcmJ5li5
 Upg9aNEunWw0GJvdpqPombkvyK6QZKAZ+55GNGPnati7XhCn23EoHJjiXyAlNCf974BB
 OZPjBzImZIerq+3dZ+PeS1GzDJDWZdazz9E1Rp2cXQAu39Cfsn4UywyA6SMK8Ex8NwcW
 ZPJ5NiRyVfmS2ySSijsFByBkwLRUHvxSHIh7VmgEnd4uaJJBECx2BVHYRmcv7A+5CgRC
 pW+UEFGCePiJtArRz2vfLGLjQeYY6mVDne5HYIgP7MkM5jU9S8tXEDieG3gToLYBkO7n
 0CJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QVp/H5vK1lwJMxz1Tuv0jzbRm/AB7w7GAQub55XuNrw=;
 b=HG/pdbRwxx144oPUxT/tXkEzyGhWOOUEV58gDa16ir/lLWmMXEq+3xLfiSdzv5YFEO
 emEeyROmi/9ZWh55Qimzzt+EdtBg0lMbPUkUU1qHzTGfT0A5ZYiXEfwbaT4jPnQj9Old
 X/iXXzXAlGQVfXULADnx+XOhKZ9BkjMtD0DEcNvrQ0wxXHhZyNZxAkyKQ1v8MQ5ivFkT
 A8WmfO7gqwo4YeWCDUDmlT59n+H0w3lycXE/9g5hhF/g+CDfHmPUtovfc03LHMY7Sol0
 4uSB3xuXDYbOBdDDePjRGNgmXzOjpSt8wBLdX9/28ncvlBct31SGIRSTi+nH+SKhdHTT
 L5Hg==
X-Gm-Message-State: AGi0PubDdtcUDexCEAuHz/GsQQ5ykWKRYmShhn7O0e3rdP5vWPVlcxJn
 ZfrcoH2yOJrMvF7ABLUiYJY6sA==
X-Google-Smtp-Source: APiQypLBuU+nD5LrMumbJLMS2ysqhuVlJ2lIgqjQzMgV49TwuzjyR/HNPSYuk0vSKvzrb8DhgKEhUQ==
X-Received: by 2002:a63:5250:: with SMTP id s16mr12868185pgl.115.1589265494672; 
 Mon, 11 May 2020 23:38:14 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([2600:3c01::f03c:91ff:fe8a:bb03])
 by smtp.gmail.com with ESMTPSA id v127sm10885941pfv.77.2020.05.11.23.38.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 11 May 2020 23:38:13 -0700 (PDT)
Date: Tue, 12 May 2020 14:38:12 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v2 0/3] arm64: perf_event: Fix time offset prior to epoch
Message-ID: <20200512063812.GA20352@leoy-ThinkPad-X240s>
References: <20200505135544.6003-1-leo.yan@linaro.org>
 <20200511092200.GF2957@hirez.programming.kicks-ass.net>
 <20200511092519.GA3001@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511092519.GA3001@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_233816_523174_0703695C 
X-CRM114-Status: GOOD (  28.31  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2600:3c01:0:0:f03c:91ff:fe8a:bb03 listed in] [zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, Enrico Weigelt <info@metux.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Paul Cercueil <paul@crapouillou.net>,
 Alexios Zavras <alexios.zavras@intel.com>,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On Mon, May 11, 2020 at 11:25:19AM +0200, Peter Zijlstra wrote:
> On Mon, May 11, 2020 at 11:22:00AM +0200, Peter Zijlstra wrote:
> 
> > (_completely_ untested)
> > 
> > ---
> >  arch/arm64/kernel/perf_event.c | 27 ++++++++++++++++++---------
> >  include/linux/sched_clock.h    | 28 ++++++++++++++++++++++++++++
> >  kernel/time/sched_clock.c      | 41 +++++++++++++----------------------------
> >  3 files changed, 59 insertions(+), 37 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> > index 4d7879484cec..81a49a916660 100644
> > --- a/arch/arm64/kernel/perf_event.c
> > +++ b/arch/arm64/kernel/perf_event.c
> > @@ -1165,28 +1165,37 @@ device_initcall(armv8_pmu_driver_init)
> >  void arch_perf_update_userpage(struct perf_event *event,
> >  			       struct perf_event_mmap_page *userpg, u64 now)
> >  {
> > -	u32 freq;
> > -	u32 shift;
> > +	struct clock_read_data *rd;
> > +	unsigned int seq;
> >  
> >  	/*
> >  	 * Internal timekeeping for enabled/running/stopped times
> >  	 * is always computed with the sched_clock.
> >  	 */
> > -	freq = arch_timer_get_rate();
> >  	userpg->cap_user_time = 1;
> > +	userpg->cap_user_time_zero = 1;
> > +
> > +	do {
> > +		rd = sched_clock_read_begin(&seq);
> > +
> > +		userpg->time_mult = rd->mult;
> > +		userpg->time_shift = rd->shift;
> > +		userpg->time_offset = rd->epoch_ns;
> 
> 			^^^^^^^ wants to be time_zero
> 
> > +
> > +		userpg->time_zero -= (rd->epoch_cyc * rd->shift) >> rd->shift;
> > +
> > +	} while (sched_clock_read_retry(seq));
> > +
> > +	userpg->time_offset = userpf->time_zero - now;
> >  
> > -	clocks_calc_mult_shift(&userpg->time_mult, &shift, freq,
> > -			NSEC_PER_SEC, 0);
> 
> And that ^^^ was complete crap.
> 
> >  	/*
> >  	 * time_shift is not expected to be greater than 31 due to
> >  	 * the original published conversion algorithm shifting a
> >  	 * 32-bit value (now specifies a 64-bit value) - refer
> >  	 * perf_event_mmap_page documentation in perf_event.h.
> >  	 */
> > -	if (shift == 32) {
> > -		shift = 31;
> > +	if (userpg->time_shift == 32) {
> > +		userpg->time_shift = 31;
> >  		userpg->time_mult >>= 1;
> >  	}
> > -	userpg->time_shift = (u16)shift;
> > -	userpg->time_offset = -now;
> >  }

I have verified this change, it works as expected on my Arm64 board.
Also paste the updated code which makes building success with minor
fixing.

I am not sure how to proceed, will you merge this?  Or you want me to
send out formal patches (or only for the Arm64 part)?

P.s. it's shame I still missed you guys suggestion in prvious thread
even though you have provide enough ifno, and thank you for the helping!

---8<---

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index 4d7879484cec..5a34e9264c5b 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -19,6 +19,7 @@
 #include <linux/of.h>
 #include <linux/perf/arm_pmu.h>
 #include <linux/platform_device.h>
+#include <linux/sched_clock.h>
 #include <linux/smp.h>
 
 /* ARMv8 Cortex-A53 specific event types. */
@@ -1165,28 +1166,26 @@ device_initcall(armv8_pmu_driver_init)
 void arch_perf_update_userpage(struct perf_event *event,
 			       struct perf_event_mmap_page *userpg, u64 now)
 {
-	u32 freq;
-	u32 shift;
+	struct clock_read_data *rd;
+	unsigned int seq;
 
 	/*
 	 * Internal timekeeping for enabled/running/stopped times
 	 * is always computed with the sched_clock.
 	 */
-	freq = arch_timer_get_rate();
 	userpg->cap_user_time = 1;
+	userpg->cap_user_time_zero = 1;
 
-	clocks_calc_mult_shift(&userpg->time_mult, &shift, freq,
-			NSEC_PER_SEC, 0);
-	/*
-	 * time_shift is not expected to be greater than 31 due to
-	 * the original published conversion algorithm shifting a
-	 * 32-bit value (now specifies a 64-bit value) - refer
-	 * perf_event_mmap_page documentation in perf_event.h.
-	 */
-	if (shift == 32) {
-		shift = 31;
-		userpg->time_mult >>= 1;
-	}
-	userpg->time_shift = (u16)shift;
-	userpg->time_offset = -now;
+	do {
+		rd = sched_clock_read_begin(&seq);
+
+		userpg->time_mult = rd->mult;
+		userpg->time_shift = rd->shift;
+		userpg->time_zero = rd->epoch_ns;
+
+		userpg->time_zero -= (rd->epoch_cyc * rd->mult) >> rd->shift;
+
+	} while (sched_clock_read_retry(seq));
+
+	userpg->time_offset = userpg->time_zero - now;
 }
diff --git a/include/linux/sched_clock.h b/include/linux/sched_clock.h
index 0bb04a96a6d4..528718e4ed52 100644
--- a/include/linux/sched_clock.h
+++ b/include/linux/sched_clock.h
@@ -6,6 +6,34 @@
 #define LINUX_SCHED_CLOCK
 
 #ifdef CONFIG_GENERIC_SCHED_CLOCK
+/**
+ * struct clock_read_data - data required to read from sched_clock()
+ *
+ * @epoch_ns:		sched_clock() value at last update
+ * @epoch_cyc:		Clock cycle value at last update.
+ * @sched_clock_mask:   Bitmask for two's complement subtraction of non 64bit
+ *			clocks.
+ * @read_sched_clock:	Current clock source (or dummy source when suspended).
+ * @mult:		Multipler for scaled math conversion.
+ * @shift:		Shift value for scaled math conversion.
+ *
+ * Care must be taken when updating this structure; it is read by
+ * some very hot code paths. It occupies <=40 bytes and, when combined
+ * with the seqcount used to synchronize access, comfortably fits into
+ * a 64 byte cache line.
+ */
+struct clock_read_data {
+	u64 epoch_ns;
+	u64 epoch_cyc;
+	u64 sched_clock_mask;
+	u64 (*read_sched_clock)(void);
+	u32 mult;
+	u32 shift;
+};
+
+extern struct clock_read_data *sched_clock_read_begin(unsigned int *seq);
+extern int sched_clock_read_retry(unsigned int seq);
+
 extern void generic_sched_clock_init(void);
 
 extern void sched_clock_register(u64 (*read)(void), int bits,
diff --git a/kernel/time/sched_clock.c b/kernel/time/sched_clock.c
index fa3f800d7d76..0acaadc3156c 100644
--- a/kernel/time/sched_clock.c
+++ b/kernel/time/sched_clock.c
@@ -19,31 +19,6 @@
 
 #include "timekeeping.h"
 
-/**
- * struct clock_read_data - data required to read from sched_clock()
- *
- * @epoch_ns:		sched_clock() value at last update
- * @epoch_cyc:		Clock cycle value at last update.
- * @sched_clock_mask:   Bitmask for two's complement subtraction of non 64bit
- *			clocks.
- * @read_sched_clock:	Current clock source (or dummy source when suspended).
- * @mult:		Multipler for scaled math conversion.
- * @shift:		Shift value for scaled math conversion.
- *
- * Care must be taken when updating this structure; it is read by
- * some very hot code paths. It occupies <=40 bytes and, when combined
- * with the seqcount used to synchronize access, comfortably fits into
- * a 64 byte cache line.
- */
-struct clock_read_data {
-	u64 epoch_ns;
-	u64 epoch_cyc;
-	u64 sched_clock_mask;
-	u64 (*read_sched_clock)(void);
-	u32 mult;
-	u32 shift;
-};
-
 /**
  * struct clock_data - all data needed for sched_clock() (including
  *                     registration of a new clock source)
@@ -93,6 +68,17 @@ static inline u64 notrace cyc_to_ns(u64 cyc, u32 mult, u32 shift)
 	return (cyc * mult) >> shift;
 }
 
+struct clock_read_data *sched_clock_read_begin(unsigned int *seq)
+{
+	*seq = raw_read_seqcount(&cd.seq);
+	return cd.read_data + (*seq & 1);
+}
+
+int sched_clock_read_retry(unsigned int seq)
+{
+	return read_seqcount_retry(&cd.seq, seq);
+}
+
 unsigned long long notrace sched_clock(void)
 {
 	u64 cyc, res;
@@ -100,13 +86,12 @@ unsigned long long notrace sched_clock(void)
 	struct clock_read_data *rd;
 
 	do {
-		seq = raw_read_seqcount(&cd.seq);
-		rd = cd.read_data + (seq & 1);
+		rd = sched_clock_read_begin(&seq);
 
 		cyc = (rd->read_sched_clock() - rd->epoch_cyc) &
 		      rd->sched_clock_mask;
 		res = rd->epoch_ns + cyc_to_ns(cyc, rd->mult, rd->shift);
-	} while (read_seqcount_retry(&cd.seq, seq));
+	} while (sched_clock_read_retry(seq));
 
 	return res;
 }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
