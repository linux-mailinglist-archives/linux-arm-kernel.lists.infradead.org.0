Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FA21295DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 13:10:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pLDEBlSZSDXzb2g0BcBQyUEY8fz8a+OGUQdL0f0rIc0=; b=NLXbh8y5eLhGJ0
	YpSs1lKdudbiFD8zJuNONFrhz0ZKf8vz9zRudGE4C5oOmr5r7HeZOJlx8/OjtmalZg5UQNy3Pnms+
	odExU7/DMXT7+Qi5FJ8W/xTHRrbzR/FTOi6YoaIFcLV63A+XLzEyMgKJd0MtSIJXh9rwJiXsw6R9N
	QSnwFqppc36YVnGNThfKYjCAfmkhvz8GCITJ4ha0QPoowWbqVNCVQYXAtyRYN4K9nb1vMC7IkLKu/
	cm1oli+HaByN4vatCIU9fsJ3LEhkM4v4Uuod23OuSvU83fVmn22l5Na7pW6K93msxKHTV24AoQe0q
	hQDGlw/zrl/IAwe8gCxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijMXQ-0000vu-6P; Mon, 23 Dec 2019 12:10:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijMXF-0000RK-TL
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 12:10:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C11BA1FB;
 Mon, 23 Dec 2019 04:10:04 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 36A063F68F;
 Mon, 23 Dec 2019 04:10:04 -0800 (PST)
Date: Mon, 23 Dec 2019 12:10:02 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 15/18] perf: arm_spe: Handle guest/host exclusion flags
Message-ID: <20191223121002.GB42593@e119886-lin.cambridge.arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-16-andrew.murray@arm.com>
 <865zi8imr7.wl-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <865zi8imr7.wl-maz@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_041006_007815_02727EB3 
X-CRM114-Status: GOOD (  20.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kvm@vger.kernel.org, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Dec 22, 2019 at 12:10:52PM +0000, Marc Zyngier wrote:
> On Fri, 20 Dec 2019 14:30:22 +0000,
> Andrew Murray <andrew.murray@arm.com> wrote:
> > 
> > A side effect of supporting the SPE in guests is that we prevent the
> > host from collecting data whilst inside a guest thus creating a black-out
> > window. This occurs because instead of emulating the SPE, we share it
> > with our guests.
> > 
> > Let's accurately describe our capabilities by using the perf exclude
> > flags to prevent !exclude_guest and exclude_host flags from being used.
> > 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > ---
> >  drivers/perf/arm_spe_pmu.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/perf/arm_spe_pmu.c b/drivers/perf/arm_spe_pmu.c
> > index 2d24af4cfcab..3703dbf459de 100644
> > --- a/drivers/perf/arm_spe_pmu.c
> > +++ b/drivers/perf/arm_spe_pmu.c
> > @@ -679,6 +679,9 @@ static int arm_spe_pmu_event_init(struct perf_event *event)
> >  	if (attr->exclude_idle)
> >  		return -EOPNOTSUPP;
> >  
> > +	if (!attr->exclude_guest || attr->exclude_host)
> > +		return -EOPNOTSUPP;
> > +
> 
> I have the opposite approach. If the host decides to profile the
> guest, why should that be denied? If there is a black hole, it should
> take place in the guest. Today, the host does expect this to work, and
> there is no way that we unconditionally allow it to regress.

That seems reasonable.

Upon entering the guest we'd have to detect if the host is using SPE, and if
so choose not to restore the guest registers. Instead we'd have to trap them
and let the guest read/write emulated values until the host has finished with
SPE - at which time we could restore the guest SPE registers to hardware.

Does that approach make sense?

Thanks,

Andrew Murray

> 
> 	M.
> 
> -- 
> Jazz is not dead, it just smells funny.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
