Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CF31C37C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hD+G7RPrY72PVvA4FDp0RsA0cEWoDQB9xk5NTox3RvU=; b=fLiju5HQRvQbdhwEoHtD5DPEb
	kwxhqJo7W/gbs6cuCSjIpLUjUqD/FXcMvKZ6cAwbzmsfEI2spMzrKZSqhwCUAmxNJLsY9FcmWx/hz
	ZBRtNnFzhUNOK8Nc4ioVjWwwZUtnEPSweZald1w4zhjPG0HSJDGNfvZQzg+o+8CgygELVBHZsk3Gy
	ZrrUnoX3euOfIhh0iFRcEOpqRXsDX1BdbHY3/q9BsmLtUrRzHLIx5nridJ6hyOaWXIwAmIFLdz0WT
	bY2QWrEa7OqqdkuIrFDqBK8TLMgC9LscwCT/1Xi8TYIOWF853QBAHWc5RpeKmvFIFvTpFbafzTFZp
	eD5brhZ7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZ27-0005LU-Gh; Mon, 04 May 2020 11:13:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZ21-0005Kj-0p
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 11:13:06 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FFD520735;
 Mon,  4 May 2020 11:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588590784;
 bh=H+eWWBmOdHYwgV1hxjICbdT0SmXkwIQM1HukWJhJhaQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JXtsNst8qPfUoymUcSb2aJ7efwwHHt5abGSADfoMFSa/wJxx67CvdNNH6JIDepCHa
 CaiOgLDqspw7FoH2xarryUYG7VPqYbqIDbqYqialpyT2j6SD953fy48gumgW7wXcBc
 TrlfVJ/TCUdLq5sWHLlsPnCy7IOxwRIbSGj7e06Y=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jVZ1y-0091Ra-9G; Mon, 04 May 2020 12:13:02 +0100
MIME-Version: 1.0
Date: Mon, 04 May 2020 12:13:02 +0100
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3] arm64: Unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
In-Reply-To: <20200504105539.GA4879@willie-the-truck>
References: <20200504094858.108917-1-ascull@google.com>
 <20200504105539.GA4879@willie-the-truck>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <7b3cc0b0a3fa6d08d8c8413e4498d485@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: will@kernel.org, ascull@google.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 james.morse@arm.com, suzuki.poulose@arm.com, steven.price@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_041305_085575_89C3DFD4 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Steven Price <steven.price@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Scull <ascull@google.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-04 11:55, Will Deacon wrote:
> On Mon, May 04, 2020 at 10:48:58AM +0100, Andrew Scull wrote:
>> Errata 1165522, 1319367 and 1530923 each allow TLB entries to be
>> allocated as a result of a speculative AT instruction. In order to
>> avoid mandating VHE on certain affected CPUs, apply the workaround to
>> both the nVHE and the VHE case for all affected CPUs.
>> 
>> Signed-off-by: Andrew Scull <ascull@google.com>
>> CC: Marc Zyngier <maz@kernel.org>
>> CC: James Morse <james.morse@arm.com>
>> CC: Suzuki K Poulose <suzuki.poulose@arm.com>
>> CC: Will Deacon <will@kernel.org>
>> CC: Steven Price <steven.price@arm.com>
>> ---
>> From v2 <20200422161346.67325-1-ascull@google.com>:
>>  - const_cap -> final_cap merge correction
>>  - based on 5.7 rc4
>> ---
>>  arch/arm64/Kconfig                | 39 
>> ++++++++++++++-----------------
>>  arch/arm64/include/asm/cpucaps.h  | 15 ++++++------
>>  arch/arm64/include/asm/kvm_host.h |  4 ----
>>  arch/arm64/include/asm/kvm_hyp.h  |  2 +-
>>  arch/arm64/kernel/cpu_errata.c    | 25 +++++++++-----------
>>  arch/arm64/kvm/hyp/switch.c       |  6 ++---
>>  arch/arm64/kvm/hyp/sysreg-sr.c    |  6 +++--
>>  arch/arm64/kvm/hyp/tlb.c          | 11 +++++----
>>  8 files changed, 50 insertions(+), 58 deletions(-)
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> We'll probably run into some trivial conflicts with the arm64 tree, but
> I'm happy to put this on a branch if it helps. Marc?

I'd rather we avoid the conflicts by not repainting all the capabilities
and just leave a capability unused until the next one fills in the slot.
But otherwise, I'll take a stable branch.

Also the current state of the KVM/arm tree is a bit crap as none of the
fixes have made it into Linus' tree yet, and I don't have a good base
for the current queue (the welcome-home branch could create havoc).

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
