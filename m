Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF981C192D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 17:15:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJo8QGdG5sJUz9AtlZNIoXSxSY9jc55tl20Y3wGL6F4=; b=GfccKi+hevBeBg
	M/GYBMmwd388Roy53pv2l+r8NZU6XxJ5mezQATBrvlRzmiJMdmCQpAZYsRcA/7uxl4ZBUjGxlY3Hc
	DR+WJ23YNX5HUv4FLWwb9on7v16ygKFYycj5CoqH9wxRaKbCkS+bWwIEcFhUL5OOjJp0p7WpXTjHh
	ZwzM9KMSAAXGhThoQbHrh8r9M6MmhWzRBFFIpRQqvdbWzkl2z8AZAnkickncUgGKz6IkKRToUYRbj
	E0onS57qAm2edJHDyZ15Tv1ckHMKDF6CgVuFqNWgHrIUICeEdY8MHS2Ck9U/+F5NfIf8JTmS3U1kx
	NDDdddC710h5aVe2Kv1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXNZ-0003NO-OK; Fri, 01 May 2020 15:15:05 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXNP-0003MQ-1R
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 15:14:57 +0000
Received: by mail-pf1-x444.google.com with SMTP id x77so1711090pfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 08:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yQtu6NmXor3q3T6BriJjM2xAXvKakbFot/IDS62A53k=;
 b=AnssK3oQX/IfypkPcOHYRgC5b2ILRpf7weo3QvCU8osdrQ4UixwDziPlE9sq6IADSJ
 WsuvtzehOhBQmcjvezEcByHhKPwpgRb8JS3SrcfeDXASJcsoqmU1vy3q+zvAYT4cFWYi
 23b8KP7xmlQAa+U6M+x+E7rjc7x4yhdgn/GxUr5Q848vDqjfzV2nVg/m+CwYK43lEwx9
 yTfw9/cKw/+L/07rZgKXViH/+s69gk8q8jz4EGh7et2U4rzxJ25yJLDKRSeuDMtuIuNE
 kdJpFfYT+Of61eVBIovgQs6uiUYouJxCPWa9iyd0MEGbF9ub6iosy7onTNvNfw8c26Qi
 EsGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yQtu6NmXor3q3T6BriJjM2xAXvKakbFot/IDS62A53k=;
 b=nf9HQGLFylPkFQzGCG+afs/q3OyNFXqoXjh7W4QizBt23mGp8QDvnzCvo6HSJQ9yHf
 RGLaiCLKy8BcXwr0+KqQOvBVmIOJGioM+8er+dzTFdEoBQXWIiIJH2UNTi6aqBvIWg9B
 2Ke4kkRJ72veaW85HZKALDA1Y3Wd5q/ZnRI13B+8GLnVmOqApSFJ/HWy17PaYiamenrS
 XHcF+OTIPW3Bw2nKgFRCmy6TmYNPe4uasZDnhvnHLeHaKKmWIrvI7ryqaX/TVUO3TzKB
 Q7p1ltSJw/4pLTNn8iEMZYuTjpWo2O1kdeoVrrAyxcEKFJEBs0h1LHiI3mIWZMyPHhDL
 OghA==
X-Gm-Message-State: AGi0PuZiRXR+eRUb2KeU58Gy2m+/1V24/9femRRzgHV5+/dkqS+CmVuc
 qPmZm22XF+KnvK4hwT2y5s6QaQ==
X-Google-Smtp-Source: APiQypJEAT6s/4NmYITjEAj0Q1DJtgRXvDxJ9r5Z9c09X9UlRpF8ugS3SZBoEk4catarH+S94Jx7uA==
X-Received: by 2002:a62:ab16:: with SMTP id p22mr4439784pff.216.1588346093263; 
 Fri, 01 May 2020 08:14:53 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([2600:3c01::f03c:91ff:fe8a:bb03])
 by smtp.gmail.com with ESMTPSA id z190sm2502141pfz.84.2020.05.01.08.14.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 May 2020 08:14:52 -0700 (PDT)
Date: Fri, 1 May 2020 23:14:48 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: perf_event: Fix time_offset for arch timer
Message-ID: <20200501151448.GA9650@leoy-ThinkPad-X240s>
References: <20200320093545.28227-1-leo.yan@linaro.org>
 <20200430145823.GA25258@willie-the-truck>
 <4d924f705245c797a19d3a73eb0c1ba0@kernel.org>
 <20200430160436.GC13575@hirez.programming.kicks-ass.net>
 <20200430161815.GE25258@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430161815.GE25258@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_081455_117537_9403B76A 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Hi all,

On Thu, Apr 30, 2020 at 05:18:15PM +0100, Will Deacon wrote:
> On Thu, Apr 30, 2020 at 06:04:36PM +0200, Peter Zijlstra wrote:
> > On Thu, Apr 30, 2020 at 04:29:23PM +0100, Marc Zyngier wrote:
> > 
> > > I wonder if we could/should make __sched_clock_offset available even when
> > > CONFIG_HAVE_UNSTABLE_SCHED_CLOCK isn't defined. It feels like it would
> > > help with this particular can or worm...
> > 
> > Errrgh. __sched_clock_offset is only needed on x86 because we transition
> > from one clock device to another on boot. It really shouldn't exist on
> > anything sane.
> 
> I think we still transition from jiffies on arm64, because we don't register
> with sched_clock until the timer driver probes. Marc, is that right?
> 
> > Let me try and understand your particular problem better.
> 
> I think the long and short of it is that userspace needs a way to convert
> the raw counter cycles into a ns value that can be compared against values
> coming out of sched_clock. To do this accurately, I think it needs the
> cycles value at the point when sched_clock was initialised.

Will's understanding is exactly what I want to resolve in this patch.

The background info is for the ARM SPE [1] decoding with perf tool, if
the timestamp is enabled, it uses the generic timer's counter as
timestamp source.  SPE trace data only contains the raw counter cycles,
as Will mentioned, the perf tool needs to convert it to a coordinate
value with sched_clock.  This is why this patch tries to calculate the
offset between the raw counter's ns value and sched_clock, eventually
this offset value will be used by SPE's decoding code in Perf tool to
calibrate a 'correct' timestamp.

Based on your suggestions, I will use __sched_clock_offset to resolve
the accuracy issue in patch v2.  (I noticed Peter suggested to use a
new API for wrapping clock_data structure, IIUC, __sched_clock_offset
is more straightforward for this case).

Please correct if I miss anything.  Thank you for reviewing and
suggestions!

Thanks,
Leo

[1] https://lkml.org/lkml/2020/1/23/571

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
