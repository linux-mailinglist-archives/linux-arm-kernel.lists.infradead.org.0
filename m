Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E67CD415D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:34:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKAh0iCAz5sk/0x1Z8uJAETLwkwAT1Y6Heck4i+0y4U=; b=uICuxm3V6yKm9K
	oUSqS9iTAOpVaFx6oqXOPGrjWCB9eiyol5uajMxqco3YVgr0FtSU0IT6oLyRiYtil/lg9+T6u0Ph0
	SAFYxBfFEVumBcqXCPlmYoUR6a7H8LyPkpAhKmKR9PX9d1R1TK+HJaQJaKKT+hlvi9dzt5SmOT7LH
	BtZjZ8Abn66rCjIFYFCP7xt2UN2NwlHXkmUoxShg1LGdKc/W/dHkXMlfAkigG2xWSQoYF3rIApU13
	hz8sC5IoIB/+Co60umNH31V7C8p1SloRDB/TpZteGY4YIV6TDPL9O38S/g4WGZVXolzD6Sp/R4EwM
	GofC9WRlasGeGJ1yo+Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIv3Q-0004ku-9G; Fri, 11 Oct 2019 13:34:00 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIv3H-0004jx-9c
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 13:33:52 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iIv3A-000788-Pa; Fri, 11 Oct 2019 15:33:44 +0200
Date: Fri, 11 Oct 2019 14:33:43 +0100
From: Marc Zyngier <maz@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: Relax CPU features sanity checking on heterogeneous architectures
Message-ID: <20191011143343.541da66c@why>
In-Reply-To: <20191011105010.GA29364@lakrids.cambridge.arm.com>
References: <b3606e76af42f7ecf65b1bfc2a5ed30a@codeaurora.org>
 <20191011105010.GA29364@lakrids.cambridge.arm.com>
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
X-CRM114-CacheID: sfid-20191011_063351_484903_35FDADC7 
X-CRM114-Status: GOOD (  10.45  )
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

On Fri, 11 Oct 2019 11:50:11 +0100
Mark Rutland <mark.rutland@arm.com> wrote:

> Hi,
> 
> On Fri, Oct 11, 2019 at 11:19:00AM +0530, Sai Prakash Ranjan wrote:
> > On latest QCOM SoCs like SM8150 and SC7180 with big.LITTLE arch, below
> > warnings are observed during bootup of big cpu cores.  
> 
> For reference, which CPUs are in those SoCs?
> 
> > SM8150:
> > 
> > [    0.271177] CPU features: SANITY CHECK: Unexpected variation in
> > SYS_ID_AA64PFR0_EL1. Boot CPU: 0x00000011112222, CPU4: 0x00000011111112  
> 
> The differing fields are EL3, EL2, and EL1: the boot CPU supports
> AArch64 and AArch32 at those exception levels, while the secondary only
> supports AArch64.
> 
> Do we handle this variation in KVM?

We do, at least at vcpu creation time (see kvm_reset_vcpu). But if one
of the !AArch32 CPU comes in late in the game (after we've started a
guest), all bets are off (we'll schedule the 32bit guest on that CPU,
enter the guest, immediately take an Illegal Exception Return, and
return to userspace with KVM_EXIT_FAIL_ENTRY).

Not sure we could do better, given the HW. My preference would be to
fail these CPUs if they aren't present at boot time.

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
