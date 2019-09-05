Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4CFA9CEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:25:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PTC41mOAYujRtnckaoBWanI3zjmktlUHs6pvxI916Zk=; b=mj3L0VinSlaL4g
	k9WNPFySsXpvOuqSxN5jOyVZ0uCUY66Q8On0kZ2IIRaNjVsPPSzRInCvE3KgedB0g03x2XoMTiUkK
	zGzgIYex6k6atqbeca7hJrJOkbMZo8jLemDZJ3mviZCZGunSCqM2XBeglOzZPyViKIpChznP3gjOt
	NltPJudfJTG1cln8Ol/Txe5A6x7AknlsGkg2navhfAheyEzrMpwFHPGNltb7x3ojnvWfIaiECcoCG
	sgV3xcknG0M3ZcEwIHfqoKlVl9I++jHofA3AIslsaGzFkLUxp3XNN4jS9NCA+q/VJtiGJJckiaSxr
	PGAB4g8Cn1Owc+WlMUWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5n4x-0005Kl-Jc; Thu, 05 Sep 2019 08:25:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5n4l-0004wt-B1
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 08:25:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0EF7C337;
 Thu,  5 Sep 2019 01:25:05 -0700 (PDT)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.144.41])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 94E2A3F67D;
 Thu,  5 Sep 2019 01:25:04 -0700 (PDT)
Date: Thu, 5 Sep 2019 10:25:03 +0200
From: Christoffer Dall <christoffer.dall@arm.com>
To: Peter Maydell <peter.maydell@linaro.org>
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
Message-ID: <20190905082503.GB4320@e113682-lin.lund.arm.com>
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
 <86r24vrwyh.wl-maz@kernel.org>
 <CAFEAcA-mc6cLmRGdGNOBR0PC1f_VBjvTdAL6xYtKjApx3NoPgQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFEAcA-mc6cLmRGdGNOBR0PC1f_VBjvTdAL6xYtKjApx3NoPgQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_012507_430447_1E4C8368 
X-CRM114-Status: GOOD (  18.97  )
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
Cc: Daniel P =?utf-8?B?LiBCZXJyYW5nw6k=?= <berrange@redhat.com>,
 Marc Zyngier <maz@kernel.org>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Hajnoczi <stefanha@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>, kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 09:16:54AM +0100, Peter Maydell wrote:
> On Thu, 5 Sep 2019 at 09:04, Marc Zyngier <maz@kernel.org> wrote:
> > How can you tell that the access would fault? You have no idea at that
> > stage (the kernel doesn't know about the MMIO ranges that userspace
> > handles). All you know is that you're faced with a memory access that
> > you cannot emulate in the kernel. Injecting a data abort at that stage
> > is not something that the architecture allows.
> 
> To be fair, locking up the whole CPU (which is effectively
> what the kvm_err/ENOSYS is going to do to the VM) isn't
> something the architecture allows either :-)
> 
> > Of course, the best thing would be to actually fix the guest so that
> > it doesn't use non-emulatable MMIO accesses. In general, that the sign
> > of a bug in low-level accessors.
> 
> This is true, but the problem is that barfing out to userspace
> makes it harder to debug the guest because it means that
> the VM is immediately destroyed, whereas AIUI if we
> inject some kind of exception then (assuming you're set up
> to do kernel-debug via gdbstub) you can actually examine
> the offending guest code with a debugger because at least
> your VM is still around to inspect...
> 

Is it really going to be easier to debug a guest that sees behavior
which may not be architecturally correct?  For example, seeing a data
abort on an access to an MMIO region because the guest used a strange
instruction?

I appreaciate that the current way we handle this is confusing and has
led many people down a rabbit hole, so we should do better.

Would a better approach not be to return to userspace saying, "we can't
handle this in the kernel, you decide", without printing the dubious
kernel error message.  Then user space could suspend the VM and print a
lenghty explanation of all the possible problems there could be, or
re-inject something back into the guest, or whatever, for a particular
environment.

Thoughts?


Thanks,

    Christoffer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
