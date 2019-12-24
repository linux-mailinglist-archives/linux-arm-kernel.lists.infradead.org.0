Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE07612A174
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 13:55:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M23pnsSzLVUMWL7F01upjyoKCq4IsaKL3CJqlNeq0A4=; b=lDkRpfqila1EEy
	Uq/2eqPNxNmNdQc1xBM+UtFPzie+6IegdwtzjlY/QKZe4r5KrS6aZODNJtJMNBfPS05g3lB8Y45bw
	4Lcl+Sch2QKUJDafspsGpchyd3e+n+9RmLzQFbwzI4zS8YP1htY3BuYhxwV1GIQdxje6HGmz8ErYl
	Rzp56o/jBj6u0BquwmcqPi0vYVbH5RiacI8K8HFoPAI95Or8xOChlHFc2akvPSDDBDo2MRuJH8tsG
	wA9zwaCCHVbPMasIl9FNGES1O2yPOW55CipxgqUJIo0kdOMdatDU8+xfRGseqffNQyvfnEq0grWkm
	i++IN16Iwna9NVEgpeIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijjiG-0008Bj-D2; Tue, 24 Dec 2019 12:55:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijji9-0008B4-2m
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 12:54:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 171021FB;
 Tue, 24 Dec 2019 04:54:52 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F5C43F534;
 Tue, 24 Dec 2019 04:54:51 -0800 (PST)
Date: Tue, 24 Dec 2019 12:54:49 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2 00/18] arm64: KVM: add SPE profiling support
Message-ID: <20191224125449.GL42593@e119886-lin.cambridge.arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220175524.GC25258@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220175524.GC25258@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_045453_166993_909AF605 
X-CRM114-Status: GOOD (  24.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kvm@vger.kernel.org, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 05:55:25PM +0000, Mark Rutland wrote:
> Hi Andrew,
> 
> On Fri, Dec 20, 2019 at 02:30:07PM +0000, Andrew Murray wrote:
> > This series implements support for allowing KVM guests to use the Arm
> > Statistical Profiling Extension (SPE).
> > 
> > It has been tested on a model to ensure that both host and guest can
> > simultaneously use SPE with valid data. E.g.
> > 
> > $ perf record -e arm_spe/ts_enable=1,pa_enable=1,pct_enable=1/ \
> >         dd if=/dev/zero of=/dev/null count=1000
> > $ perf report --dump-raw-trace > spe_buf.txt
> 
> What happens if I run perf record on the VMM, or on the CPU(s) that the
> VMM is running on? i.e.
> 
> $ perf record -e arm_spe/ts_enable=1,pa_enable=1,pct_enable=1/ \
>         lkvm ${OPTIONS_FOR_GUEST_USING_SPE}
> 

By default perf excludes the guest, so this works as expected, just recording
activity of the process when it is outside the guest. (perf report appears
to give valid output).

Patch 15 currently prevents using perf to record inside the guest.


> ... or:
> 
> $ perf record -a -c 0 -e arm_spe/ts_enable=1,pa_enable=1,pct_enable=1/ \
>         sleep 1000 &
> $ taskset -c 0 lkvm ${OPTIONS_FOR_GUEST_USING_SPE} &
> 
> > As we save and restore the SPE context, the guest can access the SPE
> > registers directly, thus in this version of the series we remove the
> > trapping and emulation.
> > 
> > In the previous series of this support, when KVM SPE isn't supported
> > (e.g. via CONFIG_KVM_ARM_SPE) we were able to return a value of 0 to
> > all reads of the SPE registers - as we can no longer do this there isn't
> > a mechanism to prevent the guest from using SPE - thus I'm keen for
> > feedback on the best way of resolving this.
> 
> When not providing SPE to the guest, surely we should be trapping the
> registers and injecting an UNDEF?

Yes we should, I'll update the series.


> 
> What happens today, without these patches?
> 

Prior to this series MDCR_EL2_TPMS is set and E2PB is unset resulting in all
SPE registers being trapped (with NULL handlers).


> > It appears necessary to pin the entire guest memory in order to provide
> > guest SPE access - otherwise it is possible for the guest to receive
> > Stage-2 faults.
> 
> AFAICT these patches do not implement this. I assume that's what you're
> trying to point out here, but I just want to make sure that's explicit.

That's right.


> 
> Maybe this is a reason to trap+emulate if there's something more
> sensible that hyp can do if it sees a Stage-2 fault.

Yes it's not really clear to me at the moment what to do about this.

Thanks,

Andrew Murray

> 
> Thanks,
> Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
