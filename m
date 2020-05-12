Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B2C1CF15D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:19:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cCnyREA6xQIc3sIZRIs3yNr1B1wTMuOIajMNrKbUpiA=; b=LDKK6R2ZK3rl9N
	OWWFmlUvvw1NHvf8QMmA8RgFhVW2Z8IDoHxEKUGl3sPg8UzF3A2wdQcQcT5oPWbn50crfzY3qq8sJ
	uNcxzBSEj1LNqVeKH7F2s3DSN3EcEzoECrER3+OpZ/Vphc9HSUdV0arQCB2QOxKQdoIcT89ApLa9/
	esl59eQkHq6u8ESJRuPI1/E4a09C/hn8qo4LFHmpFMzWxPHZzQXG0K6ViRIPfmqr7HfwSvAQJOiyd
	Rkgdr9LnJdEkp9M5/0UfcBCae38WEi0XfBJtmiFou2+SljxgAkdlYHqzeovq54sJu4lHQXBpeFxYF
	KRO47d6Pvs+aAGzM7uHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYR4Y-0004kJ-2m; Tue, 12 May 2020 09:19:34 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYR4L-0004k1-Er; Tue, 12 May 2020 09:19:21 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id E8A75300261;
 Tue, 12 May 2020 11:19:18 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id CBCD3203AA832; Tue, 12 May 2020 11:19:18 +0200 (CEST)
Date: Tue, 12 May 2020 11:19:18 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v2 0/3] arm64: perf_event: Fix time offset prior to epoch
Message-ID: <20200512091918.GH2978@hirez.programming.kicks-ass.net>
References: <20200505135544.6003-1-leo.yan@linaro.org>
 <20200511092200.GF2957@hirez.programming.kicks-ass.net>
 <20200511092519.GA3001@hirez.programming.kicks-ass.net>
 <20200512063812.GA20352@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512063812.GA20352@leoy-ThinkPad-X240s>
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

On Tue, May 12, 2020 at 02:38:12PM +0800, Leo Yan wrote:
> @@ -1165,28 +1166,26 @@ device_initcall(armv8_pmu_driver_init)
>  void arch_perf_update_userpage(struct perf_event *event,
>  			       struct perf_event_mmap_page *userpg, u64 now)
>  {
> +	struct clock_read_data *rd;
> +	unsigned int seq;
>  
>  	/*
>  	 * Internal timekeeping for enabled/running/stopped times
>  	 * is always computed with the sched_clock.
>  	 */
>  	userpg->cap_user_time = 1;
> +	userpg->cap_user_time_zero = 1;
>  
> +	do {
> +		rd = sched_clock_read_begin(&seq);
> +
> +		userpg->time_mult = rd->mult;
> +		userpg->time_shift = rd->shift;
> +		userpg->time_zero = rd->epoch_ns;
> +
> +		userpg->time_zero -= (rd->epoch_cyc * rd->mult) >> rd->shift;

Damn, I think this is broken vs the counter wrapping.

So what the sched_clock code does is:

	cyc_to_ns((cyc - rd->epoch_cyc) & rd->sched_clock_mask, rd->mult, rd->shift)

But because the perf interface assumes a simple linear relation, we
can't express that properly.

Now, your arm64 counter is 56 bits, so wrapping is rare, but still, we
should probably fix that. And that probably needs an ABI extention
*sigh*.

> +
> +	} while (sched_clock_read_retry(seq));
> +
> +	userpg->time_offset = userpg->time_zero - now;
>  }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
