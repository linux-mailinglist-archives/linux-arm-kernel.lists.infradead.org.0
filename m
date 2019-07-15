Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEBB68BFC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 15:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+3K6RZfEFUeV+ZtqYKuJCOPlNMJWdK9XKjeqwwEoHc=; b=dgiGGg38/Dj7Q2
	4uVkhjOnqsYWAJCJB0Ff5KT/V44Bh1NprWMNI7VtEcRosvuqhWwRX/5Nd3VSEuGWDXGUvD4ajFDE1
	Dpk7qQs86ItkGOhSTKxZGCTbPpICSrBDfBx2Y+Xh9lOrhj5d+gy2xvt1L7GRzwLYWyQNv2356njVy
	0/yZegByQx1nvJf0/SeCq/Bib2Xv3PlTihniwQc3VBH+3LWKFr4tsmFVeosJ/2/chcpK12X5FQRGT
	jEBJeZd1OewCgQ24mClPw5Stfa6+SZ3yzOyPkSkkHMckNasuiPixc/4ne6q9gtJYATRWoupg28lQ3
	wsT3Q9bofPeM+1U1HdxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn1Ln-00027E-Dw; Mon, 15 Jul 2019 13:49:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1LZ-00025E-EW
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 13:48:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6DBAA28;
 Mon, 15 Jul 2019 06:48:52 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 697233F71F;
 Mon, 15 Jul 2019 06:48:51 -0700 (PDT)
Date: Mon, 15 Jul 2019 14:48:49 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [RFC] Add virtual SDEI support in qemu
Message-ID: <20190715134848.GI56232@lakrids.cambridge.arm.com>
References: <1b0aa6b2-80b1-a72e-6849-7323c3b9c6bc@huawei.com>
 <20190715134059.GJ2790@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715134059.GJ2790@e103592.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_064853_536493_153F8FEC 
X-CRM114-Status: GOOD (  21.31  )
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, qemu-devel@nongnu.org,
 qemu-arm@nongnu.org, Guoheyi <guoheyi@huawei.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 02:41:00PM +0100, Dave Martin wrote:
> On Sat, Jul 13, 2019 at 05:53:57PM +0800, Guoheyi wrote:
> > Hi folks,
> > 
> > Do it make sense to implement virtual SDEI in qemu? So that we can have the
> > standard way for guest to handle NMI watchdog, RAS events and something else
> > which involves SDEI in a physical ARM64 machine.
> > 
> > My basic idea is like below:
> > 
> > 1. Change a few lines of code in kvm to allow unhandled SMC invocations
> > (like SDEI) to be sent to qemu, with exit reason of KVM_EXIT_HYPERCALL, so
> > we don't need to add new API.
> 
> So long as KVM_EXIT_HYPERCALL reports sufficient information so that
> userspace can identify the cause as an SMC and retrieve the SMC
> immediate field, this seems feasible.
> 
> For its own SMCCC APIs, KVM exclusively uses HVC, so rerouting SMC to
> userspace shouldn't conflict.

Be _very_ careful here! In systems without EL3 (and without NV), SMC
UNDEFs rather than trapping to EL2. Given that, we shouldn't build a
hypervisor ABI that depends on SMC.

I am strongly of the opinion that (for !NV) we should always use HVC
here and have KVM appropriately forward calls to userspace, rather than
trying to use HVC/SMC to distinguish handled-by-kernel and
handled-by-userspace events.

For NV, the first guest hypervisor would use SMC to talk to KVM, all
else being the same.

> This bouncing of SMCs to userspace would need to be opt-in, otherwise
> old userspace would see exits that it doesn't know what to do with.
> 
> > 2. qemu handles supported SDEI calls just as the spec says for what a
> > hypervisor should do for a guest OS.
> > 
> > 3. For interrupts bound to hypervisor, qemu should stop injecting the IRQ to
> > guest through KVM, but jump to the registered event handler directly,
> > including context saving and restoring. Some interrupts like virtual timer
> > are handled by kvm directly, so we may refuse to bind such interrupts to
> > SDEI events.
> 
> Something like that.
> 
> Interactions between SDEI and PSCI would need some thought: for example,
> after PSCI_CPU_ON, the newly online cpu needs to have SDEs masked.
> 
> One option (suggested to me by James Morse) would be to allow userspace
> to disable in the in-kernel PSCI implementation and provide its own
> PSCI to the guest via SMC -- in which case userspace that wants to
> implement SDEI would have to implement PSCI as well.

I think this would be the best approach, since it puts userspace in
charge of everything.

However, this interacts poorly with FW-based mitigations that we
implement in hyp. I suspect we'd probably need a mechanism to delegate
that responsibility back to the kernel, and figure out if that has any
interaction with thigns that got punted to userspace...

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
