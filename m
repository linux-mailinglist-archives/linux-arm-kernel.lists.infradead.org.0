Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D1D1C0205
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:18:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArtLQpcpxmutLkXcFkKd/mfdpTCiM3BDdOomCTaMXdk=; b=llxRALtuZBNEVJ
	be/22JbnS+w8NiCZ79jJRDgIDc9KQpehWrAViOxYorxjzx0A0Bgr6B7qQ863asZB4EOtJmCFBSrHh
	nNXZkCA9KW8zHnJiXWp1J/u2nJPIKlkM7XOHadGH1PUSo6Xh27mYvt6hEXlY3oEbNZ4bY1AYUt7Tb
	+Dx8QPcl4AG+YflwD0q785ZCFqF2SWaP38YAt3wG1g7gyNL8zXbvKo84Fg2/HjP908qd39syP5gDd
	tm4atzfIIpTs45nYeDR0aRhSiHSH9s3hkiaerBJ6XCVnQwI/77N8m06Ra+xj3tiNo9ipgjxd7MRX5
	64qcGXBTDXcqLwH3CLig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBtQ-0003TG-H2; Thu, 30 Apr 2020 16:18:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBtG-0003Sd-27
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:18:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE94220873;
 Thu, 30 Apr 2020 16:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588263501;
 bh=5R1P59XWFriRjxe5e4BwtfyFc/8B5tCSKlTVbm120WY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FWbHYicdfPDjjYeJPc0wx5uyaSBePyMtYHG2jq9/y3Rlj3rPkum04ZiSQO0BYAPhV
 G23qhA6RGP/lsaiuQobgqfndHcI8FOhOFgn7t8uKNyIQHmNPGohnUTGMARV8YBFbd6
 Cvzu10wcz3BXUOIM4uUTYofcgbV5A4wsexskA3rI=
Date: Thu, 30 Apr 2020 17:18:15 +0100
From: Will Deacon <will@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] arm64: perf_event: Fix time_offset for arch timer
Message-ID: <20200430161815.GE25258@willie-the-truck>
References: <20200320093545.28227-1-leo.yan@linaro.org>
 <20200430145823.GA25258@willie-the-truck>
 <4d924f705245c797a19d3a73eb0c1ba0@kernel.org>
 <20200430160436.GC13575@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430160436.GC13575@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_091822_127589_2D5DCF07 
X-CRM114-Status: GOOD (  11.23  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 James Clark <James.Clark@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Al Grant <Al.Grant@arm.com>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, tglx@linutronix.de,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 06:04:36PM +0200, Peter Zijlstra wrote:
> On Thu, Apr 30, 2020 at 04:29:23PM +0100, Marc Zyngier wrote:
> 
> > I wonder if we could/should make __sched_clock_offset available even when
> > CONFIG_HAVE_UNSTABLE_SCHED_CLOCK isn't defined. It feels like it would
> > help with this particular can or worm...
> 
> Errrgh. __sched_clock_offset is only needed on x86 because we transition
> from one clock device to another on boot. It really shouldn't exist on
> anything sane.

I think we still transition from jiffies on arm64, because we don't register
with sched_clock until the timer driver probes. Marc, is that right?

> Let me try and understand your particular problem better.

I think the long and short of it is that userspace needs a way to convert
the raw counter cycles into a ns value that can be compared against values
coming out of sched_clock. To do this accurately, I think it needs the
cycles value at the point when sched_clock was initialised.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
