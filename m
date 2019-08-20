Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1659E9656E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3P93OgOODIPh5upr56B9xVZRxX3VC7VvxeFjn8BGd1M=; b=At3HslpvOmvNSO
	YEgcVEc/dI7ELUllc9MZDsvIqRsErxhhOKB8/4ZQaoqn6OBykAx4AK5y6WM4DUriQ405hyn5Hk4l2
	udkqpR4F74fUr5TVfJq9tTmBTEke76k8T27LUFk0n+yfBMUkbLsC6g198hu3ZbUsQrbz45Nuql75/
	qDr/Ocb1KDIUalGV2Ie9rrRv3hzT6JWmc9gOQc8iSrpGY8zE677+8wzavc7/qf/4X5uXxNVvN4u0T
	AlhqipNnnU2inn/ErvuxSDvWQHCyvMOyNR9a3O9MojqVEUGZKla+3m77wvZuUtQ7ExL/RS7wVW3T8
	JPQFX99/C2fWYuSGDGbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06Or-0002A3-RM; Tue, 20 Aug 2019 15:50:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i06OV-00022C-Iw
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:50:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CE53928;
 Tue, 20 Aug 2019 08:49:58 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 94A0E3F246;
 Tue, 20 Aug 2019 08:49:57 -0700 (PDT)
Date: Tue, 20 Aug 2019 16:49:55 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [PATCH v3 2/5] arm64: cpufeature: Add feature to detect
 heterogeneous systems
Message-ID: <20190820154955.GB43412@lakrids.cambridge.arm.com>
References: <20190816125934.18509-1-raphael.gault@arm.com>
 <20190816125934.18509-3-raphael.gault@arm.com>
 <20190820152316.GA38082@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820152316.GA38082@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_084959_666700_1D708B39 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, acme@kernel.org,
 mingo@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 04:23:17PM +0100, Mark Rutland wrote:
> Hi Raphael,
> 
> On Fri, Aug 16, 2019 at 01:59:31PM +0100, Raphael Gault wrote:
> > This feature is required in order to enable PMU counters direct
> > access from userspace only when the system is homogeneous.
> > This feature checks the model of each CPU brought online and compares it
> > to the boot CPU. If it differs then it is heterogeneous.
> 
> It would be worth noting that this patch prevents heterogeneous CPUs
> being brought online late if the system was uniform at boot time.

Looking again, I think I'd misunderstood how
ARM64_CPUCAP_OPTIONAL_FOR_LATE_CPU was dealt with, but we do have a
problem in this area.

[...]

> 
> > +		.capability = ARM64_HAS_HETEROGENEOUS_PMU,
> > +		.type = ARM64_CPUCAP_SCOPE_LOCAL_CPU | ARM64_CPUCAP_OPTIONAL_FOR_LATE_CPU,
> > +		.matches = has_heterogeneous_pmu,
> > +	},

I had a quick chat with Will, and we concluded that we must permit late
onlining of heterogeneous CPUs here as people are likely to rely on
late CPU onlining on some heterogeneous systems.

I think the above permits that, but that also means that we need some
support code to fail gracefully in that case (e.g. without sending
a SIGILL to unaware userspace code).

That means that we'll need the counter emulation code that you had in
previous versions of this patch (e.g. to handle potential UNDEFs when a
new CPU has fewer counters than the previously online CPUs).

Further, I think the context switch (and event index) code needs to take
this cap into account, and disable direct access once the system becomes
heterogeneous.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
