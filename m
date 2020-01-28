Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8207714B329
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 12:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0n5eHbEGdQf6+1o+QKGPEYR/+wRxCKPp6Ry6qxUSXQ=; b=NVw0gUGYZZ0cvD
	QNMyS4Q/WwZLvlNK7VbswJXF59ceH1s0mHXlyACTk52MBtFu+MfJSSEIi5U04YM+jbVwK4iukkTcV
	joSs/SNykjqNHu0IY1BR7hk6fKty9mH6p5HOk2pwQvq4hhF7Q1U7BteqT023cSclwiTA/x0iU7ZV3
	9omi4offHVObhEjTyAFuKRtZApb4R3WB4t2/5nfqWcXoApoBIBuwZ5x0aSenv/GWe+losUr6cGmsW
	uBXEHEX+/fth4UnB8waI7lG9Uz9Nqa70I42FYA3JL21lczqFfBZfLOIKZbxihDWjHmcpcE8lCQOKL
	1/WsGSu0a2mY20f+Sd8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwObn-0005hh-Ru; Tue, 28 Jan 2020 11:00:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwObN-0005VH-SQ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 11:00:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DAF1C30E;
 Tue, 28 Jan 2020 03:00:08 -0800 (PST)
Received: from localhost (unknown [10.1.198.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 784D43F52E;
 Tue, 28 Jan 2020 03:00:08 -0800 (PST)
Date: Tue, 28 Jan 2020 11:00:07 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH v2 1/6] arm64: add support for the AMU extension v1
Message-ID: <20200128110007.GA17411@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-2-ionela.voinescu@arm.com>
 <05b1981b-cf4d-d990-5155-6ed3fadcca92@arm.com>
 <20200123183207.GB20475@arm.com>
 <00d852b0-d456-efc3-5bfa-31524168344b@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00d852b0-d456-efc3-5bfa-31524168344b@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_030013_989518_6C7102C0 
X-CRM114-Status: GOOD (  22.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 sudeep.holla@arm.com, will@kernel.org, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Valentin,

On Friday 24 Jan 2020 at 12:00:25 (+0000), Valentin Schneider wrote:
> On 23/01/2020 18:32, Ionela Voinescu wrote:
> [...]
> > and later we can use information in
> > AMCGCR_EL0 to get the number of architected counters (n) and
> > AMEVTYPER0<n>_EL0 to find out the type. The same logic would apply to
> > the auxiliary counters.
> > 
> 
> Good, I think that's all we'll really need. I've not gone through the whole
> series (yet!) so I might've missed AMCGCR being used.
>

No, it's not used later in the patches either, specifically because
this is version 1 and we should be able to rely on these first 4
architected counters for all future versions of the AMU implementation.

> >>> @@ -1150,6 +1152,59 @@ static bool has_hw_dbm(const struct arm64_cpu_capabilities *cap,
> >>>  
> >>>  #endif
> >>>  
> >>> +#ifdef CONFIG_ARM64_AMU_EXTN
> >>> +
> >>> +/*
> >>> + * This per cpu variable only signals that the CPU implementation supports
> >>> + * the Activity Monitors Unit (AMU) but does not provide information
> >>> + * regarding all the events that it supports.
> >>> + * When this amu_feat per CPU variable is true, the user of this feature
> >>> + * can only rely on the presence of the 4 fixed counters. But this does
> >>> + * not guarantee that the counters are enabled or access to these counters
> >>> + * is provided by code executed at higher exception levels.
> >>> + *
> >>> + * Also, to ensure the safe use of this per_cpu variable, the following
> >>> + * accessor is defined to allow a read of amu_feat for the current cpu only
> >>> + * from the current cpu.
> >>> + *  - cpu_has_amu_feat()
> >>> + */
> >>> +static DEFINE_PER_CPU_READ_MOSTLY(u8, amu_feat);
> >>> +
> >>
> >> Why not bool?
> >>
> > 
> > I've changed it from bool after a sparse warning about expression using
> > sizeof(bool) and found this is due to sizeof(bool) being compiler
> > dependent. It does not change anything but I thought it might be a good
> > idea to define it as 8-bit unsigned and rely on fixed size.
> > 
> 
> I believe conveying the intent (a truth value) is more important than the
> underlying storage size in this case. It mostly matters when dealing with
> aggregates, but here it's just a free-standing variable.
> 
> We already have a few per-CPU boolean variables in arm64/kernel/fpsimd.c
> and the commits aren't even a year old, so I'd go for ignoring sparse this
> time around.
>

Will do!

Thanks,
Ionela.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
