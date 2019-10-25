Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C37E4851
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 12:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nPzilkHIts5bG1SMOLX2pzflc9iA2SvjPGmf703ZE1Y=; b=t9YqKps71ZLtUD
	k0Ic295I6mL+GYGhVYYoFltbTrXUKoq3dja+o1gxZMRXfeerFqKavXVptbe/OmLzZmHW8owKA1lsG
	pU3PULgub8XRuxovGqV1WUWoTD9NG++myViVL8P/X8tPV5uxh7ibuMTKft/WGXZwtMcMuSsY/JmVF
	akXWSidZwvAVshN3yNijI8BsA/jXRtg6Vv2+d8z7MeV/ISAyEHMSIMyTh0N/96i/mfW94M7B2wKA9
	zKJBmRmDpwzHl+++QbaD56VoScEaeoTErpoxPyLhXPkH1MChaO3q4n8iVVU+UHTN501Tj3+x+gPas
	Yd0OSJubHGVscpD5CXkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNwb6-00068o-1J; Fri, 25 Oct 2019 10:13:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNwaB-0005WQ-Jk
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 10:12:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6F65028;
 Fri, 25 Oct 2019 03:12:32 -0700 (PDT)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 026823F6C4;
 Fri, 25 Oct 2019 03:12:31 -0700 (PDT)
Date: Fri, 25 Oct 2019 12:12:30 +0200
From: Christoffer Dall <christoffer.dall@arm.com>
To: Shannon Zhao <shannon.zhao@linux.alibaba.com>
Subject: Re: [PATCH RFC 0/7] Support KVM being compiled as a kernel module on
 arm64
Message-ID: <20191025101230.GJ2652@e113682-lin.lund.arm.com>
References: <1571912870-18471-1-git-send-email-shannon.zhao@linux.alibaba.com>
 <8cbd81d6-4ab8-9d2a-5162-8782201cd13d@arm.com>
 <c17e8b0f32902a0811cc6a4ed71e607e@www.loen.fr>
 <18653462-38dc-cce1-d0a1-2a7e891163da@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <18653462-38dc-cce1-d0a1-2a7e891163da@linux.alibaba.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_031235_742560_A3ED2A43 
X-CRM114-Status: GOOD (  31.68  )
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
Cc: suzuki.poulose@arm.com, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 10:48:46AM +0800, Shannon Zhao wrote:
> 
> 
> On 2019/10/24 21:41, Marc Zyngier wrote:
> > On 2019-10-24 11:58, James Morse wrote:
> > > Hi Shannon,
> > > 
> > > On 24/10/2019 11:27, Shannon Zhao wrote:
> > > > Curently KVM ARM64 doesn't support to compile as a kernel module. It's
> > > > useful to compile KVM as a module.
> > > 
> > > > For example, it could reload kvm without rebooting host machine.
> > > 
> > > What problem does this solve?
> > > 
> > > KVM has some funny requirements that aren't normal for a module. On
> > > v8.0 hardware it must
> > > have an idmap. Modules don't usually expect their code to be
> > > physically contiguous, but
> > > KVM does. KVM influences they way some of the irqchip stuff is set up
> > > during early boot
> > > (EOI mode ... not that I understand it).
> > 
> > We change the EOImode solely based on how we were booted (EL2 or not).
> > KVM doesn't directly influences that (it comes in the picture much
> > later).
> > 
> > > (I think KVM-as-a-module on x86 is an artifact of how it was developed)
> > > 
> > > 
> > > > This patchset support this feature while there are some limitations
> > > > to be solved. But I just send it out as RFC to get more suggestion and
> > > > comments.
> > > 
> > > > Curently it only supports for VHE system due to the hyp code section
> > > > address variables like __hyp_text_start.
> > > 
> > > We still need to support !VHE systems, and we need to do it with a
> > > single image.
> > > 
> > > 
> > > > Also it can't call
> > > > kvm_update_va_mask when loading kvm module and kernel panic with below
> > > > errors. So I make kern_hyp_va into a nop funtion.
> > > 
> > > Making this work for the single-Image on v8.0 is going to be a
> > > tremendous amount of work.
> > > What is the payoff?
> > 
> > I can only agree. !VHE is something we're going to support for the
> > foreseeable
> > future (which is roughly equivalent to "forever"), and modules have
> > properties
> > that are fundamentally incompatible with the way KVM works with !VHE.
> > 
> Yes, with this patchset we still support !VHE system with built-in KVM.
> While for VHE system we could support kernel module and check at module init
> to avoid wrong usage of kvm module on !VHE systems.
> 
> > If the only purpose of this work is to be able to swap KVM implementations
> > in a development environment, then it really isn't worth the effort.
> > 
> Making KVM as a kernel module has many advantages both for development and
> real use environment. For example, we can backport and update KVM codes
> independently and don't need to recompile kernel. Also making KVM as a
> kernel module is a basic for kvm hot upgrade feature without shutdown VMs
> and hosts. This is very important for Cloud Service Provider to provides
> non-stop services for its customers.
> 
But KVM on arm64 is pretty intertwined with the rest of the kernel, and
things like the arch timers, for example, really depend on the exact
semantics of how the rest of the kernel changes.  I fear that you'd end
up back-porting patches that depend on changes to irqchip and timers in
the core code, and you'll get even more oddly-defined behavior in the
wild.

How would you manage that, and how would the end result be a more stable
environment than what you have today?

Also, I'm curious if you expect to find more bugs in the hypervisor
itself than in the rest of the kernel, because it's only in the former
case you can avoid a reboot of the host, and all things considered this
would appear to only help in a small fraction of the cases where you
have to patch things?


Thanks,

    Christoffer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
