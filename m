Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E591CF20E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 12:01:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tP64gFWWNSqtTgqzL4DabL0yWvo2fERfzniY6qy6yoc=; b=acKBZzTt39R3Vx
	3z4EFv55ltTlP9aMjB28/kWzLr6ML9llHxIRgkUyAnubbVCY2h5QmZGclR55DGoudkqII92/4JH2l
	xLjIpezmBtb1dslDyYJY8oP4ivKgU6YYq/Gh1oeRkO5kW1n5HH6IhrH8xxmR8Azwoerr9wHmdBMSU
	V2gZNNyPHQ+hCTdfDJFY/Xy2tne5b+ruDwfCDNFJtrSuSfdrwWMOkUuk7r3kPzyK65eP7H5cEHW/q
	M1Ntq7+ngMOhfTNSwgxMPsWd2tGv2Tigd+kA3a5xkjHGGDo57WiUOBUqIuB1++wiKcEmoBv0xOaQC
	fzDLgoqdJIP5Z/UsMesw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYRjI-0008Ap-RY; Tue, 12 May 2020 10:01:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYRj9-00089e-S9
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 10:01:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5BF391FB;
 Tue, 12 May 2020 03:01:28 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.28.99])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E94313F71E;
 Tue, 12 May 2020 03:01:23 -0700 (PDT)
Date: Tue, 12 May 2020 11:01:14 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v2 0/3] arm64: perf_event: Fix time offset prior to epoch
Message-ID: <20200512100114.GA60359@C02TD0UTHF1T.local>
References: <20200505135544.6003-1-leo.yan@linaro.org>
 <20200511092200.GF2957@hirez.programming.kicks-ass.net>
 <20200511092519.GA3001@hirez.programming.kicks-ass.net>
 <20200512063812.GA20352@leoy-ThinkPad-X240s>
 <20200512091918.GH2978@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512091918.GH2978@hirez.programming.kicks-ass.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_030131_957329_D11D0C08 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Enrico Weigelt <info@metux.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Paul Cercueil <paul@crapouillou.net>,
 Alexios Zavras <alexios.zavras@intel.com>,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 11:19:18AM +0200, Peter Zijlstra wrote:
> On Tue, May 12, 2020 at 02:38:12PM +0800, Leo Yan wrote:
> > @@ -1165,28 +1166,26 @@ device_initcall(armv8_pmu_driver_init)
> >  void arch_perf_update_userpage(struct perf_event *event,
> >  			       struct perf_event_mmap_page *userpg, u64 now)
> >  {
> > +	struct clock_read_data *rd;
> > +	unsigned int seq;
> >  
> >  	/*
> >  	 * Internal timekeeping for enabled/running/stopped times
> >  	 * is always computed with the sched_clock.
> >  	 */
> >  	userpg->cap_user_time = 1;
> > +	userpg->cap_user_time_zero = 1;
> >  
> > +	do {
> > +		rd = sched_clock_read_begin(&seq);
> > +
> > +		userpg->time_mult = rd->mult;
> > +		userpg->time_shift = rd->shift;
> > +		userpg->time_zero = rd->epoch_ns;
> > +
> > +		userpg->time_zero -= (rd->epoch_cyc * rd->mult) >> rd->shift;
> 
> Damn, I think this is broken vs the counter wrapping.
> 
> So what the sched_clock code does is:
> 
> 	cyc_to_ns((cyc - rd->epoch_cyc) & rd->sched_clock_mask, rd->mult, rd->shift)
> 
> But because the perf interface assumes a simple linear relation, we
> can't express that properly.
> 
> Now, your arm64 counter is 56 bits, so wrapping is rare, but still, we
> should probably fix that. And that probably needs an ABI extention
> *sigh*.

FWIW, its's /at least/ 56 bits wide, and the ARM ARM says that it
shouldn't wrap in fewer than 40 years, so no correct implementation
should wrap before the 2050s.

If it's wider than 56 bits, the 56-bit portion could wrap more quickly
than that, so we should probably always treat it as 64-bits.

From ARMv8.6 it's always 64 bits wide @ a nominal 1GHz, and a 64-bit
wrap will take ~584.9 years (with a 56-bit wrap taking ~834 days).

See D11.1.2 "The system counter" in the latest ARM ARM (0487F.b):

https://static.docs.arm.com/ddi0487/fb/DDI0487F_b_armv8_arm.pdf?_ga=2.83012310.1749782910.1589218924-1447552059.1588172444

https://developer.arm.com/docs/ddi0487/latest

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
