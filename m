Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4AD19D450
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EZGbwKS9+beOOq5pPIoFYQDKXHd58GWU3U9yvTcszCA=; b=ZqJjECj7UiZKdT9uIpiXfdBya
	GfTxQ3++Edz1DEWdKlGyUfcRBwqa+7rXl6DYEN8wi3Pq0gqlZtElbY59XlpZbiweIKDxDvSNYU5Mp
	EFxs2aVTLKSaVcG9M+iq2+Y+EIl+Ytz0cuE/KdlqNDjyfr8QCp4kBmDtBw5N8nJceUFENMgRs92hj
	nH+Yn1zJsVQqMnlQI1IHw9B323Yxf4UGtlgFqeTi8TAbXcmSKEFdDEVu7Yx4wPtVFdf5IE14mAB27
	VC7F86y/FJsm86/IVYRex5k5uEx2f4U2tMFu2r0Q0DL2fbbmQIq5p0K8q9oz0U0onqD/f+prtWX/n
	kAUJeBYIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIxC-0005rX-GY; Fri, 03 Apr 2020 09:49:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIx1-0005qL-IE
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 09:49:25 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2143120721;
 Fri,  3 Apr 2020 09:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585907363;
 bh=j1rkDLXbFQAE/NXmh6XeWqF89l3i4DAQuEfAW/sV8Ow=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JUwLEjAP/pm4XrUlhIYrO7dX/3zyEWWkp4gYZaa13i9Z9Ypw/WSesM3RnSwO2RddZ
 HSE5qcPuGNBdWOnbNJ5VCBtYorLve5luyRh+VOuMs0MuBo1MOXf0BtKq1O3JKP1ubd
 SbbBLDWhdUDMDS+EBoU/560XkGUZhe1Tz/oqVgOE=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jKIwz-000Sgj-BG; Fri, 03 Apr 2020 10:49:21 +0100
MIME-Version: 1.0
Date: Fri, 03 Apr 2020 10:49:21 +0100
From: Marc Zyngier <maz@kernel.org>
To: George Cherian <gcherian@marvell.com>
Subject: Re: [PATCH v2 00/94] KVM: arm64: ARMv8.3/8.4 Nested Virtualization
 support
In-Reply-To: <MN2PR18MB2686F84659A6A994ECDF8031C5C70@MN2PR18MB2686.namprd18.prod.outlook.com>
References: <MN2PR18MB2686F84659A6A994ECDF8031C5C70@MN2PR18MB2686.namprd18.prod.outlook.com>
Message-ID: <780021a37fbd0185f848566b894feb97@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: gcherian@marvell.com, Dave.Martin@arm.com,
 alexandru.elisei@arm.com, andre.przywara@arm.com, christoffer.dall@arm.com,
 james.morse@arm.com, jintack@cs.columbia.edu, julien.thierry.kdev@gmail.com,
 kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com,
 areddy3@marvell.com, gkulkarni@marvell.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_024923_663940_D8D1E144 
X-CRM114-Status: GOOD (  18.79  )
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
Cc: kvmarm@lists.cs.columbia.edu, Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 kvm@vger.kernel.org, suzuki.poulose@arm.com, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, Anil Kumar Reddy H <areddy3@marvell.com>,
 alexandru.elisei@arm.com, jintack@cs.columbia.edu,
 julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-03 10:36, George Cherian wrote:
>> -----Original Message-----
>> From: Marc Zyngier <maz@kernel.org>
>> Sent: Friday, April 3, 2020 1:32 PM
>> To: George Cherian <gcherian@marvell.com>
>> Cc: Dave.Martin@arm.com; alexandru.elisei@arm.com;
>> andre.przywara@arm.com; christoffer.dall@arm.com;
>> james.morse@arm.com; jintack@cs.columbia.edu;
>> julien.thierry.kdev@gmail.com; kvm@vger.kernel.org;
>> kvmarm@lists.cs.columbia.edu; linux-arm-kernel@lists.infradead.org;
>> suzuki.poulose@arm.com; Anil Kumar Reddy H <areddy3@marvell.com>;
>> Ganapatrao Kulkarni <gkulkarni@marvell.com>
>> Subject: Re: [PATCH v2 00/94] KVM: arm64: ARMv8.3/8.4 Nested
>> Virtualization support
>> 
>> 
>> ----------------------------------------------------------------------
>> Hi George,
>> 
>> On 2020-04-03 08:27, George Cherian wrote:
>> > Hi Marc,
>> >
>> > On 2/11/20 9:48 AM, Marc Zyngier wrote:
>> >> This is a major rework of the NV series that I posted over 6 months
>> >> ago[1], and a lot has changed since then:
>> >>
>> >> - Early ARMv8.4-NV support
>> >> - ARMv8.4-TTL support in host and guest
>> >> - ARMv8.5-GTG support in host and guest
>> >> - Lots of comments addressed after the review
>> >> - Rebased on v5.6-rc1
>> >> - Way too many patches
>> >>
>> >> In my defence, the whole of the NV code is still smaller that the
>> >> 32bit KVM/arm code I'm about to remove, so I feel less bad inflicting
>> >> this on everyone! ;-)
>> >>
>> >> >From a functionality perspective, you can expect a L2 guest to work,
>> >> but don't even think of L3, as we only partially emulate the
>> >> ARMv8.{3,4}-NV extensions themselves. Same thing for vgic, debug,
>> >> PMU, as well as anything that would require a Stage-1 PTW. What we
>> >> want to achieve is that with NV disabled, there is no performance
>> >> overhead and no regression.
>> >>
>> >> The series is roughly divided in 5 parts: exception handling, memory
>> >> virtualization, interrupts and timers for ARMv8.3, followed by the
>> >> ARMv8.4 support. There are of course some dependencies, but you'll
>> >> hopefully get the gist of it.
>> >>
>> >> For the most courageous of you, I've put out a branch[2]. Of course,
>> >> you'll need some userspace. Andre maintains a hacked version of
>> >> kvmtool[3] that takes a --nested option, allowing the guest to be
>> >> started at EL2. You can run the whole stack in the Foundation model.
>> >> Don't be in a hurry ;-).
>> >>
>> > The full series was tested on both Foundation model as well as Marvell
>> > ThunderX3
>> > Emulation Platform.
>> > Basic boot testing done for Guest Hypervisor and Guest Guest.
>> >
>> > Tested-by:  George Cherian <george.cherian@marvell.com>
>> 
>> Thanks for having given this a go.
>> 
>> However, without more details, it is pretty hard to find out what you 
>> have
>> tested.
>> What sort of guest have you booted, with what configuration, what
>> workloads did you run in the L2 guests and what are the architectural
>> features that TX3 implements?
>> 
> 
> We have tried the following configurations and tests (GH - Guest
> Hypervisor GG- Guest Guest).
> 1 - configuration: Host:8cpus/4GB Mem, GH:4vcpus/3GB, GG: 2vcpus/2GB
> Ran hackbench and Large Malloc tests (1GB allocations) across HOST,GH 
> and GG.
> 
> 2 - configuration: Host:8cpus/4GB Mem, GH:1vcpu/3GB, GG: 1vcpu/2GB
> Ran hackbench and Large Malloc tests across HOST,GH and GG. Host:
> 
> We used QEMU for all these testing.

Interesting. So you have added NV support to QEMU? Please be aware that
the userspace side is pretty incomplete and subject to changes.

> TX3 implements v8.4 Enhanced Nested Virtualization Support.

Hmm. Ok. This doesn't really answer my question in terms of what other
features the CPU has that would be affected by NV, but I guess that's
all we'll get at this point.

Thanks,

         M.

> 
>> The last point is specially important, as the NV architecture spans 
>> two major
>> revisions of the architecture and affects tons of other extensions 
>> that are
>> themselves optional. Without any detail on that front, I have no idea 
>> what
>> the coverage of your testing is.
>> 
>> Thanks,
>> 
>>          M.
>> --
>> Jazz is not dead. It just smells funny...

-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
