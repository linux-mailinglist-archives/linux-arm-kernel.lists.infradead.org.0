Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9490E1A32F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 13:09:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKiyvTDAG9Pm9bNDbb9umM6UtrCfma/C1/KPtYDGWxQ=; b=MK1RKt5Wm7EO9b
	YZJAUZ01JS/L22AEcGrnZubtU+4sltiULj4XnlozUBvyuzb6BCL4yl/T3mwJXcT6mjJRinQI7HNvM
	ULiqIjmLg30W9P+RDSkbFVk2gS7qSquJNH2WXCYOTlmEmrhQy3RuxAYLsrWw9shVS2McJRlcGHqFV
	wmD/+GyeRV7w7E74BB1+B+UJj7HyvpJh26pqMHrdO3yXMlIBnKTzwQegtwg7v0FNi368hoOfpk1UU
	oOjDcI+l/SxrMsj5FrD+DcitBsSf1pbcqIE9uk88YeTMRVbUehxEHKU/G/K3O6+Qwl6ETKx10E9cf
	qF3sIRAMNUQ+5v9If+iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMV3S-0004kn-8r; Thu, 09 Apr 2020 11:09:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMV3J-0004kA-Oz
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 11:08:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D39B731B;
 Thu,  9 Apr 2020 04:08:56 -0700 (PDT)
Received: from bogus (unknown [10.37.12.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 92A433F73D;
 Thu,  9 Apr 2020 04:08:50 -0700 (PDT)
Date: Thu, 9 Apr 2020 12:08:43 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH] sched/arm64: store cpu topology before notify_cpu_starting
Message-ID: <20200409110843.GA8451@bogus>
References: <855831b59e1b3774b11c3e33050eac4cc4639f06.1583332765.git.vpillai@digitalocean.com>
 <20200401114215.36640-1-cj.chengjian@huawei.com>
 <jhjwo6zjq5m.mognet@arm.com> <20200409095941.GA25948@bogus>
 <jhj5ze9t0er.mognet@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <jhj5ze9t0er.mognet@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_040857_898006_D5CAD084 
X-CRM114-Status: GOOD (  25.92  )
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
Cc: joelaf@google.com, Cheng Jian <cj.chengjian@huawei.com>,
 peterz@infradead.org, fweisbec@gmail.com, huawei.libin@huawei.com,
 joel@joelfernandes.org, mingo@kernel.org, aubrey.li@linux.intel.com,
 naravamudan@digitalocean.com, aaron.lwe@gmail.com,
 torvalds@linux-foundation.org, jdesfossez@digitalocean.com, w.f@huawei.com,
 pawan.kumar.gupta@linux.intel.com, pjt@google.com, kerrnel@google.com,
 keescook@chromium.org, xiexiuqi@huawei.com, vpillai@digitalocean.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, pauld@redhat.com,
 mgorman@techsingularity.net, linux-kernel@vger.kernel.org,
 aubrey.intel@gmail.com, Sudeep Holla <sudeep.holla@arm.com>,
 pbonzini@redhat.com, tim.c.chen@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 09, 2020 at 11:32:12AM +0100, Valentin Schneider wrote:
>
> On 09/04/20 10:59, Sudeep Holla wrote:
> > On Wed, Apr 01, 2020 at 02:23:33PM +0100, Valentin Schneider wrote:
> >>
> >> (+LAKML, +Sudeep)
> >>
> >
> > Thanks Valentin.
> >
> >> On Wed, Apr 01 2020, Cheng Jian wrote:
> >> > when SCHED_CORE enabled, sched_cpu_starting() uses thread_sibling as
> >> > SMT_MASK to initialize rq->core, but only after store_cpu_topology(),
> >> > the thread_sibling is ready for use.
> >> >
> >> >       notify_cpu_starting()
> >> >           -> sched_cpu_starting()	# use thread_sibling
> >> >
> >> >       store_cpu_topology(cpu)
> >> >           -> update_siblings_masks	# set thread_sibling
> >> >
> >> > Fix this by doing notify_cpu_starting later, just like x86 do.
> >> >
> >>
> >> I haven't been following the sched core stuff closely; can't this
> >> rq->core assignment be done in sched_cpu_activate() instead? We already
> >> look at the cpu_smt_mask() in there, and it is valid (we go through the
> >> entirety of secondary_start_kernel() before getting anywhere near
> >> CPUHP_AP_ACTIVE).
> >>
> >
> > I too came to same conclusion. Did you see any issues ? Or is it
> > just code inspection in parity with x86 ?
> >
>
> With mainline this isn't a problem; with the core scheduling stuff there is
> an expectation that we can use the SMT masks in sched_cpu_starting().
>

Ah, OK. I prefer this to be specified in the commit message as it is not
obvious.

> >> I don't think this breaks anything, but without this dependency in
> >> sched_cpu_starting() then there isn't really a reason for this move.
> >>
> >
> > Based on the commit message, had a quick look at x86 code and I agree
> > this shouldn't break anything. However the commit message does make
> > complete sense to me, especially reference to sched_cpu_starting
> > while smt_masks are accessed in sched_cpu_activate. Or am I missing
> > to understand something here ?
>
> As stated above, it's not a problem for mainline, and AIUI we can change
> the core scheduling bits to only use the SMT mask in sched_cpu_activate()
> instead, therefore not requiring any change in the arch code.
>

Either way is fine. If it is already set expectation that SMT masks needs
to be set before sched_cpu_starting, then let us just stick with that.

> I'm not aware of any written rule that the topology masks should be usable
> from a given hotplug state upwards, only that right now we need them in
> sched_cpu_(de)activate() for SMT scheduling - and that is already working
> fine.
>

Sure, we can at-least document as part of this change even if it is just
in ARM64 so that someone need not wonder the same in future.

> So really this should be considering as a simple neutral cleanup; I don't
> really have any opinion on picking it up or not.

I am fine with the change too, just need some tweaking in the commit
message.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
