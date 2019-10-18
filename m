Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96394DC071
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 11:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ldayQCyMVKQ46nuVm+WRxPxkuX1YW3r9fDJltuHWU9U=; b=S+EKxvVfg2GuTC
	PZpourDZR/0QskLFZeHGgdLNhiyxzvyG40H+HculHOAQRgB6LiE2o6udtqzvvu8BtSRvFIKnjnzdN
	4JYGBwvg6MsLJzmKZRFeBbmiWfkg+CEymxSi2G1JhNZlOBTxB39xOXG/rDBgsQclINYh33aG4qP1x
	+xBhGHfa8iYlblFq3N43PdT0lElE4GnGHcK7koF6aBKiE+q8egGdYuEsv3poNRQDgjuI6T+afqwe5
	tinsl5FWHphoyQf2HH3yLNoRqMwPIfj8acUlSe8P9UiXUUyNycDoivwAO2ojG88Nyj+0mxIihTm/S
	K/BS5w4ATeRlJBYVCATg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLO8V-0003lB-VD; Fri, 18 Oct 2019 09:01:28 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLO8N-0003jQ-IQ
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 09:01:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B6653E8;
 Fri, 18 Oct 2019 02:01:07 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D87763F718; Fri, 18 Oct 2019 02:01:05 -0700 (PDT)
Date: Fri, 18 Oct 2019 10:01:03 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: Relax CPU features sanity checking on heterogeneous architectures
Message-ID: <20191018090103.GC19734@arrakis.emea.arm.com>
References: <b3606e76af42f7ecf65b1bfc2a5ed30a@codeaurora.org>
 <20191011105010.GA29364@lakrids.cambridge.arm.com>
 <20191011143343.541da66c@why>
 <20191011135431.GB33537@lakrids.cambridge.arm.com>
 <aee2d915-3801-cc35-2a37-0c7d0ad7488e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aee2d915-3801-cc35-2a37-0c7d0ad7488e@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_020119_694840_AB080A3C 
X-CRM114-Status: GOOD (  26.59  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>, rnayak@codeaurora.org,
 suzuki.poulose@arm.com, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 linux-arm-msm@vger.kernel.org, andrew.murray@arm.com, will@kernel.org,
 Dave.Martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 04:39:23PM -0500, Jeremy Linton wrote:
> On 10/11/19 8:54 AM, Mark Rutland wrote:
> > On Fri, Oct 11, 2019 at 02:33:43PM +0100, Marc Zyngier wrote:
> > > On Fri, 11 Oct 2019 11:50:11 +0100
> > > Mark Rutland <mark.rutland@arm.com> wrote:
> > > > On Fri, Oct 11, 2019 at 11:19:00AM +0530, Sai Prakash Ranjan wrote:
> > > > > On latest QCOM SoCs like SM8150 and SC7180 with big.LITTLE arch, below
> > > > > warnings are observed during bootup of big cpu cores.
> > > > 
> > > > For reference, which CPUs are in those SoCs?
> > > > 
> > > > > SM8150:
> > > > > 
> > > > > [    0.271177] CPU features: SANITY CHECK: Unexpected variation in
> > > > > SYS_ID_AA64PFR0_EL1. Boot CPU: 0x00000011112222, CPU4: 0x00000011111112
> > > > 
> > > > The differing fields are EL3, EL2, and EL1: the boot CPU supports
> > > > AArch64 and AArch32 at those exception levels, while the secondary only
> > > > supports AArch64.
> > > > 
> > > > Do we handle this variation in KVM?
> > > 
> > > We do, at least at vcpu creation time (see kvm_reset_vcpu). But if one
> > > of the !AArch32 CPU comes in late in the game (after we've started a
> > > guest), all bets are off (we'll schedule the 32bit guest on that CPU,
> > > enter the guest, immediately take an Illegal Exception Return, and
> > > return to userspace with KVM_EXIT_FAIL_ENTRY).
> > 
> > Ouch. We certainly can't remove the warning untill we deal with that
> > somehow, then.

Luckily, qemu refuses to start a guest on two different CPU types.

> > > Not sure we could do better, given the HW. My preference would be to
> > > fail these CPUs if they aren't present at boot time.

That's my preference as well.

> > I agree; I think we need logic to check the ID register fields against
> > their EXACT, {LOWER,HIGHER}_SAFE, etc rules regardless of whether we
> > have an associated cap. That can then abort a late onlining of a CPU
> > which violates those rules w.r.t. the finalised system value.
> 
> Except one of the cases is the user who doesn't care about aarch32 @ el2/1
> and just wants to add another core to their 64-bit "clean" OS.
> 
> So my $.02 is the online should only fail if someone has actually started a
> 32-bit guest on the machine.

I don't really think it's worth the hassle. This could even be racy
(32-bit guest starting at the same time with a CPU being onlined), so it
needs extra care.

If you have such platform, just make sure that you don't have
incompatible CPUs coming up late (during boot it should be fine).

> > I suspect that we may want to split the notion of
> > safe-for-{user,kernel-guest} in the feature tables, as if nothing else
> > it will force us to consider those cases separately when adding new
> > stuff.
> 
> As i'm sure everyone knows, this is all going to happen again with el0
> support. I wonder if some of this more "advanced" functionality should be
> buried behind EXPERT. At least on ACPI its possible to tell at early boot if
> the machine is heterogeneous (not necessarily in which ways) and just
> automatically sanitize away 32-bit support and some of the stickier things
> when a heterogeneous machine is detected.

We should improve (remove) the warnings for things we know the kernel
can handled during boot. For example, 32-bit not available on all CPUs
during boot should be fine as we just disable the feature. However, late
onlining of a CPU that does not support the already advertised features
should be blocked.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
