Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BE1D4251
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:07:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/A0wt2aOM1Ma9vjaFkRV19eQulaqsRjn7P1ZaZpKcQ=; b=Hd4uSSBbZaPLaz
	dK/zbTkpMYWi82tlWxvOgTbQIXOKX5hjinj/jW/ZfLk/kL/2HnfCf/Oiy1XZ7Z7PmEGjdVYPXP31a
	6Z1bWrsoxdgQeTyaRbjjq4r7NqFAiSLYXR1CY5WyyEvZ5Hcs49+lWCf+7YGO80FepQtX1YetWpW35
	L+VzMZu6cAMHQyHeavRoZu9SElwbU/m8EQi7fmbbXh+Z87izlp8WK+2hnX/7/gINe7n1VPW2dQHN0
	sjn5ffMP7FH6YRaaChzOikGWw8BaC4WmdEPObvfmiwfGgwUV7WuSYZIdjioi/mbEJTAaNxcNHPaS2
	XIa8Qfkkm5//NEHaBS1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIva8-00055M-6I; Fri, 11 Oct 2019 14:07:48 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvYh-0003o9-CG
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:06:21 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iIvYa-0007hw-Ao; Fri, 11 Oct 2019 16:06:12 +0200
Date: Fri, 11 Oct 2019 15:06:10 +0100
From: Marc Zyngier <maz@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: Relax CPU features sanity checking on heterogeneous architectures
Message-ID: <20191011150610.4e528a2d@why>
In-Reply-To: <20191011135431.GB33537@lakrids.cambridge.arm.com>
References: <b3606e76af42f7ecf65b1bfc2a5ed30a@codeaurora.org>
 <20191011105010.GA29364@lakrids.cambridge.arm.com>
 <20191011143343.541da66c@why>
 <20191011135431.GB33537@lakrids.cambridge.arm.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: mark.rutland@arm.com, saiprakash.ranjan@codeaurora.org,
 rnayak@codeaurora.org, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
 andrew.murray@arm.com, will@kernel.org, Dave.Martin@arm.com,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_070619_655125_3633C1CA 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 rnayak@codeaurora.org, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
 andrew.murray@arm.com, will@kernel.org, Dave.Martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 11 Oct 2019 14:54:31 +0100
Mark Rutland <mark.rutland@arm.com> wrote:

> On Fri, Oct 11, 2019 at 02:33:43PM +0100, Marc Zyngier wrote:
> > On Fri, 11 Oct 2019 11:50:11 +0100
> > Mark Rutland <mark.rutland@arm.com> wrote:
> >   
> > > Hi,
> > > 
> > > On Fri, Oct 11, 2019 at 11:19:00AM +0530, Sai Prakash Ranjan wrote:  
> > > > On latest QCOM SoCs like SM8150 and SC7180 with big.LITTLE arch, below
> > > > warnings are observed during bootup of big cpu cores.    
> > > 
> > > For reference, which CPUs are in those SoCs?
> > >   
> > > > SM8150:
> > > > 
> > > > [    0.271177] CPU features: SANITY CHECK: Unexpected variation in
> > > > SYS_ID_AA64PFR0_EL1. Boot CPU: 0x00000011112222, CPU4: 0x00000011111112    
> > > 
> > > The differing fields are EL3, EL2, and EL1: the boot CPU supports
> > > AArch64 and AArch32 at those exception levels, while the secondary only
> > > supports AArch64.
> > > 
> > > Do we handle this variation in KVM?  
> > 
> > We do, at least at vcpu creation time (see kvm_reset_vcpu). But if one
> > of the !AArch32 CPU comes in late in the game (after we've started a
> > guest), all bets are off (we'll schedule the 32bit guest on that CPU,
> > enter the guest, immediately take an Illegal Exception Return, and
> > return to userspace with KVM_EXIT_FAIL_ENTRY).  
> 
> Ouch. We certainly can't remove the warning untill we deal with that
> somehow, then.

Indeed. Same thing applies for hot-removing the AArch32-capable CPUs,
by the way. You'd end-up in a situation where guests can't run, despite
the initial contract that we're happy that configuration.

> > Not sure we could do better, given the HW. My preference would be to
> > fail these CPUs if they aren't present at boot time.  
> 
> I agree; I think we need logic to check the ID register fields against
> their EXACT, {LOWER,HIGHER}_SAFE, etc rules regardless of whether we
> have an associated cap. That can then abort a late onlining of a CPU
> which violates those rules w.r.t. the finalised system value.
> 
> I suspect that we may want to split the notion of
> safe-for-{user,kernel-guest} in the feature tables, as if nothing else
> it will force us to consider those cases separately when adding new
> stuff.

Probably. There are bizarre overlaps, in the sense that some
capabilities (such as this AArch32 EL1 support) are firmly kernel
related, and yet have a direct impact on userspace. KVM blurs the lines
in "interesting" ways... :-(.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
