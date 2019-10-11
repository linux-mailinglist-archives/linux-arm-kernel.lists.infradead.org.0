Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B47CBD41D9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:54:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNoC7Ja+BaefKMrz8kwK6MJTzUcQEE2xorLtumphUms=; b=AK95wjEkWZLQeQ
	6H3RIWJfisLOzUmUnPHrbYrQMcz6mTx6yq2VFEiwxROiyIyD68Zgu8PhgJK5QnRrNPyyJBGem3Atl
	GSPS+J4ngRgP2hFlnIBVudzLqhU9m+qLAavxEEpqfu98K7Qlj7AghBmjvIzqYRBheF/dmixTdbpxR
	IylRPD32fXi27mbsZAdTT9ML9rgO42LU/jQo9q+ftqibHTVW0G8LR/WlvfzKBqUyzOzdnrwjE1M8H
	rO/rzPD/leqezrW7fW68M5+9iL6+uZqXTP5KAmqaCXfSO+IchH+RJlLPqYiVfdu9Q1PlT/ChhksUI
	8E+rzKW17KTcPfidTrYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvNW-00053X-0E; Fri, 11 Oct 2019 13:54:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvNM-00052b-17
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 13:54:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 57196337;
 Fri, 11 Oct 2019 06:54:35 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A545F3F68E;
 Fri, 11 Oct 2019 06:54:33 -0700 (PDT)
Date: Fri, 11 Oct 2019 14:54:31 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: Relax CPU features sanity checking on heterogeneous architectures
Message-ID: <20191011135431.GB33537@lakrids.cambridge.arm.com>
References: <b3606e76af42f7ecf65b1bfc2a5ed30a@codeaurora.org>
 <20191011105010.GA29364@lakrids.cambridge.arm.com>
 <20191011143343.541da66c@why>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011143343.541da66c@why>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_065436_115225_D79EE86C 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Fri, Oct 11, 2019 at 02:33:43PM +0100, Marc Zyngier wrote:
> On Fri, 11 Oct 2019 11:50:11 +0100
> Mark Rutland <mark.rutland@arm.com> wrote:
> 
> > Hi,
> > 
> > On Fri, Oct 11, 2019 at 11:19:00AM +0530, Sai Prakash Ranjan wrote:
> > > On latest QCOM SoCs like SM8150 and SC7180 with big.LITTLE arch, below
> > > warnings are observed during bootup of big cpu cores.  
> > 
> > For reference, which CPUs are in those SoCs?
> > 
> > > SM8150:
> > > 
> > > [    0.271177] CPU features: SANITY CHECK: Unexpected variation in
> > > SYS_ID_AA64PFR0_EL1. Boot CPU: 0x00000011112222, CPU4: 0x00000011111112  
> > 
> > The differing fields are EL3, EL2, and EL1: the boot CPU supports
> > AArch64 and AArch32 at those exception levels, while the secondary only
> > supports AArch64.
> > 
> > Do we handle this variation in KVM?
> 
> We do, at least at vcpu creation time (see kvm_reset_vcpu). But if one
> of the !AArch32 CPU comes in late in the game (after we've started a
> guest), all bets are off (we'll schedule the 32bit guest on that CPU,
> enter the guest, immediately take an Illegal Exception Return, and
> return to userspace with KVM_EXIT_FAIL_ENTRY).

Ouch. We certainly can't remove the warning untill we deal with that
somehow, then.

> Not sure we could do better, given the HW. My preference would be to
> fail these CPUs if they aren't present at boot time.

I agree; I think we need logic to check the ID register fields against
their EXACT, {LOWER,HIGHER}_SAFE, etc rules regardless of whether we
have an associated cap. That can then abort a late onlining of a CPU
which violates those rules w.r.t. the finalised system value.

I suspect that we may want to split the notion of
safe-for-{user,kernel-guest} in the feature tables, as if nothing else
it will force us to consider those cases separately when adding new
stuff.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
