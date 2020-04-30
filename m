Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F2E1C03EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 19:34:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dOhFnp/9gvOtfgkQfFyiKKgjeS7LezZuSpML5XWwSzg=; b=Yk9wwuFVwyHztGQjyyBTSP9yh
	soQAgn+1Pig/icV+pF+QVR/jAUDJkAyFjsCCEH85jA1tnEKGi5cur+vlAjqmIFA3KGHsGi9/y6hZ2
	+Nt8Hdn9QOK1gbQvqE1V4kMS2E3eLNEJC6tSYUac1jEOo07wMqjH4iU3v+/rrc5268kw8JBVZo5xr
	8wRtyqoT+p+Sme7D6WHBHAA6tDL+e9OV6YYdMrLc5lmGXC7Ea7MmqvDTop8XhPOSo563gnZ7zP21v
	BvbSOho7t24IJivZZQQmFitVFP/zILrkj3U6BQCpQ/xCBtf4RNC83nSHCd8NpFw5mlznNgtB1a2hS
	7zEtf9/Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUD4U-0005I7-2n; Thu, 30 Apr 2020 17:34:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUD4I-0005Gx-T6
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 17:33:53 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5073420731;
 Thu, 30 Apr 2020 17:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588268030;
 bh=7OyWguI2rc8GY3pA0j9peooBQlK7C47Glh0LtwePdIk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=uZQ0OiesVFY93yX2EfPV0iDC0FtwkI9adRQbqtcv9aFNMXPHmIlaCF/kJGAX1TUIj
 AFklv3y61RLexW0fOo3TbXxWPuLsoNpc/HsHCj45LEZHK5ssnvfyHEVi/0oWa3vLk1
 KT29VYG7slez9Z2zJI4CTxEsaC9TugxUPaI135NM=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jUD4G-0088DI-K4; Thu, 30 Apr 2020 18:33:48 +0100
MIME-Version: 1.0
Date: Thu, 30 Apr 2020 18:33:48 +0100
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: perf_event: Fix time_offset for arch timer
In-Reply-To: <20200430161815.GE25258@willie-the-truck>
References: <20200320093545.28227-1-leo.yan@linaro.org>
 <20200430145823.GA25258@willie-the-truck>
 <4d924f705245c797a19d3a73eb0c1ba0@kernel.org>
 <20200430160436.GC13575@hirez.programming.kicks-ass.net>
 <20200430161815.GE25258@willie-the-truck>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <79ba3f5f9af951b2de52b8eb9e1bc25f@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: will@kernel.org, peterz@infradead.org, leo.yan@linaro.org,
 mark.rutland@arm.com, mingo@redhat.com, acme@kernel.org,
 alexander.shishkin@linux.intel.com, jolsa@redhat.com, namhyung@kernel.org,
 catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, mathieu.poirier@linaro.org,
 mike.leach@linaro.org, Al.Grant@arm.com, James.Clark@arm.com,
 tglx@linutronix.de
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_103350_968051_03C17DCE 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <Al.Grant@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, James Clark <James.Clark@arm.com>,
 Leo Yan <leo.yan@linaro.org>, Namhyung Kim <namhyung@kernel.org>,
 tglx@linutronix.de, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-30 17:18, Will Deacon wrote:
> On Thu, Apr 30, 2020 at 06:04:36PM +0200, Peter Zijlstra wrote:
>> On Thu, Apr 30, 2020 at 04:29:23PM +0100, Marc Zyngier wrote:
>> 
>> > I wonder if we could/should make __sched_clock_offset available even when
>> > CONFIG_HAVE_UNSTABLE_SCHED_CLOCK isn't defined. It feels like it would
>> > help with this particular can or worm...
>> 
>> Errrgh. __sched_clock_offset is only needed on x86 because we 
>> transition
>> from one clock device to another on boot. It really shouldn't exist on
>> anything sane.
> 
> I think we still transition from jiffies on arm64, because we don't 
> register
> with sched_clock until the timer driver probes. Marc, is that right?

Indeed. The clocksource is only available relatively late, as we need to
discover the details of the platform and enable the various workarounds
(because nobody can get a simple 64bit counter right). So it is only at
that stage that we transition to it.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
