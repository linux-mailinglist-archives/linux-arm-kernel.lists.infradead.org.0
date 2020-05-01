Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 284451C1A63
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 18:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qh0SQM6XV9yQxxCJe1ZAaryHI3PKsnaKFmkvRDsNcPg=; b=KKgd9/CsfRaRyn
	7xEfDtucVTMFxUTKKdYDwhEOnEG8Tuo6X7tv8HgCkcgMQjB8Ev0/BY0yrlv6w4KlOlhOxUb+BpK7U
	r0aM3Mei4lFByNl9xzlbLAaKhYSo2DVF5xZgjr8OWfX46gTEEQZ55TZfnQAAR/T+gBa7hB6m1LC/Y
	W3JAy7pbSZOo9mHPUeQqPlxMlfE5RQ7LJITb6KcbnolGpogp3QYERRjCF3HvRC+j2L9zSOIMeWOXA
	TWi8kNSEvk8+vT+cc3l7QvvvVjqxIpzWseqcdADlALjIsf7WmVdwvDofGR5638VUnmZixZQoHSFL3
	dbu2oDRqA1QzRmE/GPwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUYGH-0007lm-OD; Fri, 01 May 2020 16:11:37 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUYFf-0007FL-3a
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 16:11:01 +0000
Received: by mail-pl1-x643.google.com with SMTP id b6so513676plz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 09:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xdO5wD3Bx1i8JRnNljwYHSueh/B8sCLYrPuXu53UeUc=;
 b=vqZ6OC7HOM6GWFUeSf8I3NezyvilDwd9mxilvXgb5nGWSB0MUuVyqxArXNA0FuQwVH
 NsonTpK6dUjqBPyS0dST+qeFfh544JfNVraL6s0Ce7+yflbncUd5idFUxIROyrSQVx0Q
 m/yc/xukAAxaT/FrC3iHSOvu/rlYicvvEltN+9qCl3MyR7oWYaFPCZ3tAZ3sgotNfFiK
 ZYnA1ZMOLG20DH2b/8FVZQjAjAs4brvOG5/0LuqLDod2DJEpVC4Bn+EPddxMVhaNcRfz
 JayxHhqf6g4hGjqDab/kught3AssPwgs1prh65+MjNJx35zzitSlRT0okzPhB4h4K8vK
 MAcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xdO5wD3Bx1i8JRnNljwYHSueh/B8sCLYrPuXu53UeUc=;
 b=knYaqjNrhYxgSa2Mbw8ShOt4aROdd2AWpW0z5WN0XY7Rzjxgul8FyHcug4d3YsGZlI
 QcHrYIpqNIPXk3Ziw80JUtUnOSTK3gJXtMtddqE006TQr8wZUBlU5Cq8a7E1VF885w00
 9858IjoHv680y6Z00R4oZzSDV8jitrxTJNtG9vEhCGJBifJRCJ5Ec4DNqg6mfoTanOTu
 IQr5hYoJlzDIme+zKGQkDUzF6G6GgkI0ZpzPhUjpk1YHP5+aWljH2LVd+3BdYJ5qWmiR
 YdO+Gy40RB7nO6LXpKVbQ0qMwxl9NZN4/mxEjnI3EXOJxUZ9EdZ5waWZ6ONmZI2BG+RY
 kgpg==
X-Gm-Message-State: AGi0PuaDlJZmbw0G1d/k6N0od4QqZfXSitFzlcM9mv5z3PgUnQ8H17v1
 97l4MJ8OTuALFB9WOWwQ3X4RIg==
X-Google-Smtp-Source: APiQypL4+6fWY4XfVQC3YneLOyCw4Dw7j8fSl0sS5EdWkvEyOa5dhirJ8xL1ol975BMqqobgDTPb1Q==
X-Received: by 2002:a17:90a:fa8d:: with SMTP id
 cu13mr340518pjb.27.1588349458185; 
 Fri, 01 May 2020 09:10:58 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([2600:3c01::f03c:91ff:fe8a:bb03])
 by smtp.gmail.com with ESMTPSA id y14sm2553223pff.205.2020.05.01.09.10.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 May 2020 09:10:57 -0700 (PDT)
Date: Sat, 2 May 2020 00:10:50 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: perf_event: Fix time_offset for arch timer
Message-ID: <20200501161050.GA16001@leoy-ThinkPad-X240s>
References: <20200320093545.28227-1-leo.yan@linaro.org>
 <20200430145823.GA25258@willie-the-truck>
 <4d924f705245c797a19d3a73eb0c1ba0@kernel.org>
 <20200430160436.GC13575@hirez.programming.kicks-ass.net>
 <20200430161815.GE25258@willie-the-truck>
 <20200501151448.GA9650@leoy-ThinkPad-X240s>
 <20200501152609.GA17646@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501152609.GA17646@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_091059_192531_A69ACDC6 
X-CRM114-Status: GOOD (  24.05  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2600:3c01:0:0:f03c:91ff:fe8a:bb03 listed in] [zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <Al.Grant@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, James Clark <James.Clark@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 tglx@linutronix.de, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 04:26:09PM +0100, Will Deacon wrote:

[...]

> > > > Let me try and understand your particular problem better.
> > > 
> > > I think the long and short of it is that userspace needs a way to convert
> > > the raw counter cycles into a ns value that can be compared against values
> > > coming out of sched_clock. To do this accurately, I think it needs the
> > > cycles value at the point when sched_clock was initialised.
> > 
> > Will's understanding is exactly what I want to resolve in this patch.
> > 
> > The background info is for the ARM SPE [1] decoding with perf tool, if
> > the timestamp is enabled, it uses the generic timer's counter as
> > timestamp source.  SPE trace data only contains the raw counter cycles,
> > as Will mentioned, the perf tool needs to convert it to a coordinate
> > value with sched_clock.  This is why this patch tries to calculate the
> > offset between the raw counter's ns value and sched_clock, eventually
> > this offset value will be used by SPE's decoding code in Perf tool to
> > calibrate a 'correct' timestamp.
> > 
> > Based on your suggestions, I will use __sched_clock_offset to resolve
> > the accuracy issue in patch v2.  (I noticed Peter suggested to use a
> > new API for wrapping clock_data structure, IIUC, __sched_clock_offset
> > is more straightforward for this case).
> > 
> > Please correct if I miss anything.  Thank you for reviewing and
> > suggestions!
> 
> I don't think you can use __sched_clock_offset without selecting
> HAVE_UNSTABLE_SCHED_CLOCK, and we really don't want to do that just
> for this. So Peter's idea about exposing what we need is better, although
> you'll probably need to take care with the switch-over from jiffies.
> 
> It needs some thought, but one possibility would be to introduce a new
> variant of sthe ched_clock_register() function that returns the cycle
> offset, and then we could fish that out of the timer driver.

Thanks a lot for you and Marc for correction.

> If we're
> crossing all the 'i's and dotting all the 't's then we'd want to disable the
> perf userpage if sched_clock changes clocksource too (a bit like we do for
> the vDSO).

To be honest, one thing is not clear for me is how the perf tool to
update the arch timer's parameters in the middle of tracing after
disable and re-enable per userpage.  I will note for this and look
into detailed implementation for this part.

Thanks for sharing comprehensive thoughts!

Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
