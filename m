Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD17668B73
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 15:41:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mf0fT2okHyp1X7wdtW1cBZ2Rx4LUBuYzqFXQyRc8jX0=; b=ZuFNQeytL2RrmI
	nbTjtSBpWh1aUzHAwZWkn1chcU0eHA/+zKqMKjAZjAkMWnX/hyCikotiE8/K6YKdMoDvuIwJ5/Z1r
	5BPeGSIacKGaRdvdbRm5IsFsx1r1Ec1HQ+eLEFLvbvbPFMssmjuHQozpq2UfD99vemmYET394b4zb
	nh6YivrtlJwYT0DSYm90u/eYkL8HvHWXJxIgskDfIo9GEDAtb+dFxlY6J7kOPljROvXhO/hCOQ8PO
	Gks2RKswM7uZxeBMA2Cv9kW359qj9YbnCXxQvh+7R3n05oU7LYE82s147wVMMcKBw+9ykxJTJV2oV
	SB/LSeUsQRQGUHvixWAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn1EG-0007BV-DC; Mon, 15 Jul 2019 13:41:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1E4-0007Af-Ck
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 13:41:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 242E228;
 Mon, 15 Jul 2019 06:41:03 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 390B03F71F;
 Mon, 15 Jul 2019 06:41:02 -0700 (PDT)
Date: Mon, 15 Jul 2019 14:41:00 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Guoheyi <guoheyi@huawei.com>
Subject: Re: [RFC] Add virtual SDEI support in qemu
Message-ID: <20190715134059.GJ2790@e103592.cambridge.arm.com>
References: <1b0aa6b2-80b1-a72e-6849-7323c3b9c6bc@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1b0aa6b2-80b1-a72e-6849-7323c3b9c6bc@huawei.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_064108_477782_E8BE34A3 
X-CRM114-Status: GOOD (  15.56  )
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, qemu-arm@nongnu.org,
 qemu-devel@nongnu.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jul 13, 2019 at 05:53:57PM +0800, Guoheyi wrote:
> Hi folks,
> 
> Do it make sense to implement virtual SDEI in qemu? So that we can have the
> standard way for guest to handle NMI watchdog, RAS events and something else
> which involves SDEI in a physical ARM64 machine.
> 
> My basic idea is like below:
> 
> 1. Change a few lines of code in kvm to allow unhandled SMC invocations
> (like SDEI) to be sent to qemu, with exit reason of KVM_EXIT_HYPERCALL, so
> we don't need to add new API.

So long as KVM_EXIT_HYPERCALL reports sufficient information so that
userspace can identify the cause as an SMC and retrieve the SMC
immediate field, this seems feasible.

For its own SMCCC APIs, KVM exclusively uses HVC, so rerouting SMC to
userspace shouldn't conflict.

This bouncing of SMCs to userspace would need to be opt-in, otherwise
old userspace would see exits that it doesn't know what to do with.

> 2. qemu handles supported SDEI calls just as the spec says for what a
> hypervisor should do for a guest OS.
> 
> 3. For interrupts bound to hypervisor, qemu should stop injecting the IRQ to
> guest through KVM, but jump to the registered event handler directly,
> including context saving and restoring. Some interrupts like virtual timer
> are handled by kvm directly, so we may refuse to bind such interrupts to
> SDEI events.

Something like that.

Interactions between SDEI and PSCI would need some thought: for example,
after PSCI_CPU_ON, the newly online cpu needs to have SDEs masked.

One option (suggested to me by James Morse) would be to allow userspace
to disable in the in-kernel PSCI implementation and provide its own
PSCI to the guest via SMC -- in which case userspace that wants to
implement SDEI would have to implement PSCI as well.

There may be reasons why this wouldn't work ... I haven't thought about
it in depth.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
