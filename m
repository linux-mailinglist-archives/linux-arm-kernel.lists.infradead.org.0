Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A511A4686
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 14:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRs0RrkCpdMg9Q2AKKG5YqJBT3n4cdO3SXLRDNMlVeo=; b=ClvT8fJFt37QJm
	nCXFex/GpA8/laxezqjOyBEzM1nLmtKYPD4aJRaut2jEZ1HEbdzJqvCb/mbcabSsJ7D4jN/gjKx6F
	+xdEzPM//myjQwgsvAfMI/vQ/5vxxu5j5ZeX2uGCw5walhwbc4zrU6S7vS+ZDXuM6hxcI381KgYMv
	/U0N55f4lv6KYcfPT8pfGTc3/72pM+sMRiwWyyx+nsyogApb0HJBSSyrn0u5lnz5x/B5cyhi7/hUX
	zaTVrI98YnIj2FxghcMz+wSLZ0WhgbbmmZZR6AiFUP8vsQRUWFKtnJY59Iw5XZ+oEnLzm67N6tbBb
	G4KWUjowcnZomLKjMh5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMt9M-0003vR-Cp; Fri, 10 Apr 2020 12:52:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMt9E-0003u4-JR
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 12:52:42 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C7BAE20769;
 Fri, 10 Apr 2020 12:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586523159;
 bh=+tK1G8/YCJG+rNtFQbFqXIFBjrvfB0e8dfWiL/dTRbo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=2HDDYnPLhLHkf2dQKH2JWbYduhZe9x8iQLU//3mSJ9Le1sN/+dsHuJPVH6iJLnqE7
 FzyzMWpOR2jTRDRDMzzHrSBuwspYHGv0SY5n6Qk48sbMR9fsqrse/YmqKcrZuJ/+4Z
 uRL3vLndKgh1hZs5R42m1qbWtGXRbFrw+EbTsShs=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jMt9B-002B0y-II; Fri, 10 Apr 2020 13:52:37 +0100
Date: Fri, 10 Apr 2020 13:52:35 +0100
From: Marc Zyngier <maz@kernel.org>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH RFCv1 0/7] Support Async Page Fault
Message-ID: <d2882e806ad2f9793437160093c8d3fa@kernel.org>
In-Reply-To: <20200410085820.758686-1-gshan@redhat.com>
References: <20200410085820.758686-1-gshan@redhat.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: gshan@redhat.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, james.morse@arm.com,
 catalin.marinas@arm.com, will@kernel.org, mark.rutland@arm.com,
 suzuki.poulose@arm.com, sudeep.holla@arm.com, drjones@redhat.com,
 eric.auger@redhat.com, shan.gavin@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_055240_701647_4A479A0D 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, drjones@redhat.com, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, eric.auger@redhat.com, james.morse@arm.com,
 shan.gavin@gmail.com, sudeep.holla@arm.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Gavin,

On 2020-04-10 09:58, Gavin Shan wrote:
> There are two stages of page faults and the stage one page fault is
> handled by guest itself. The guest is trapped to host when the page
> fault is caused by stage 2 page table, for example missing. The guest
> is suspended until the requested page is populated. To populate the
> requested page can be costly and might be related to IO activities
> if the page was swapped out previously. In this case, the guest has
> to suspend for a few of milliseconds at least, regardless of the
> overall system load.
> 
> The series adds support to asychornous page fault to improve above
> situation. If it's costly to populate the requested page, a signal
> (PAGE_NOT_PRESENT) is sent to guest so that the faulting process can
> be rescheduled if it can be. Otherwise, it is put into power-saving
> mode. Another signal (PAGE_READY) is sent to guest once the requested
> page is populated so that the faulting process can be waken up either
> from either waiting state or power-saving state.
> 
> In order to fulfil the control flow and convey signals between host
> and guest. A IMPDEF system register (SYS_ASYNC_PF_EL1) is introduced.
> The register accepts control block's physical address, plus requested
> features. Also, the signal is sent using data abort with the specific
> IMPDEF Data Fault Status Code (DFSC). The specific signal is stored
> in the control block by host, to be consumed by guest.
> 
> Todo
> ====
> * CONFIG_KVM_ASYNC_PF_SYNC is disabled for now because the exception
>   injection can't work in nested mode. It might be something to be
>   improved in future.
> * KVM_ASYNC_PF_SEND_ALWAYS is disabled even with CONFIG_PREEMPTION
>   because it's simply not working reliably.
> * Tracepoints, which should something to be done in short term.
> * kvm-unit-test cases.
> * More testing and debugging are needed. Sometimes, the guest can be
>   stuck and the root cause needs to be figured out.

Let me add another few things:

- KVM/arm is (supposed to be) an architectural hypervisor. It means
  that one of the design goal is to have as few differences as possible
  from the actual hardware. I'm not keen on deviating from it (next
  thing you know, you'll add all the PV horror from Xen, HV, VMware...). 

- The idea of butchering the arm64 mm subsystem to handle a new exotic
  style of exceptions is not something I am looking forward to. We
  might as well PV the whole MMU, Xen style, and be done with it. I'll
  let the arm64 maintainers comment on this though.

- We don't add IMPDEF sysregs, period. That's reserved for the HW. If
  you want to trap, there's the HVC instruction to that effect.

- If this is such a great improvement, where are the performance
  numbers?

- The fact that it apparently cannot work with nesting nor with
  preemption tends to indicate that it isn't future proof.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
