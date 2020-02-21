Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B49B0168596
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 18:51:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r507n0Iuw44DFYsgKxI6MhZ+hT0qWjrKO5iehynbnEA=; b=mVy11HLMVa4X63
	37jAqC4z9VtzPi3Doabwku3FduHleZBDqHDPtKZ3aviRrPRRjtqCrtuan7HhpbTh0xCsKboYP+YNF
	kRINWce5cC3utlXz0CQOGQyvnr6BQN09hdiK924RWm76g1YJQ66dwAI/5skuNyGj2VdngFcOm6UY/
	tMnK7+vmPkfuJ9YeBoQfrUEi/IjoIClQ3E1eEWRW3AD2S6vo2r6vzLUWlfS0FUbkgRB1z16N8Kc6t
	GI78bDwS+2rZfSUfSqFvdklxtVNZU3fq4UYaRbS4WTS13OD09Q8Yoz7GXbB49ASGAF9+noo3DXYnX
	dJBf4YSSaeYw+WVf3YUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5CSY-0003rj-Oy; Fri, 21 Feb 2020 17:51:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5CQF-0000Sw-G1
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 17:49:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BCDA930E;
 Fri, 21 Feb 2020 09:49:06 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F21073F6CF;
 Fri, 21 Feb 2020 09:49:05 -0800 (PST)
Date: Fri, 21 Feb 2020 17:49:03 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 3/3] arm64: perf: Support new DT compatibles
Message-ID: <20200221174903.GB27382@lakrids.cambridge.arm.com>
References: <cover.1582300927.git.robin.murphy@arm.com>
 <6dbd695863346bda1e5d2133643ffade6227bd9a.1582300927.git.robin.murphy@arm.com>
 <20200221171558.GA27382@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221171558.GA27382@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_094907_777026_7FF9CC76 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 05:15:59PM +0000, Mark Rutland wrote:
> On Fri, Feb 21, 2020 at 04:04:58PM +0000, Robin Murphy wrote:
> > Add support for matching the new PMUs. For now, this just wires them up
> > as generic PMUv3 such that people writing DTs for new SoCs can do the
> > right thing, and at least have architectural and raw events be usable.
> > We can come back and fill in event maps for sysfs and/or perf tools at
> > a later date.
> > 
> > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> 
> Thanks for this, it looks fine to me:
> 
> Acked-by: Mark Rutland <mark.rutland@arm.com>

Argh, this isn't quite right, sorry. :/

> > ---
> >  arch/arm64/kernel/perf_event.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> > index e40b65645c86..28ce582e049e 100644
> > --- a/arch/arm64/kernel/perf_event.c
> > +++ b/arch/arm64/kernel/perf_event.c
> > @@ -1105,11 +1105,19 @@ static int armv8_vulcan_pmu_init(struct arm_pmu *cpu_pmu)
> >  
> >  static const struct of_device_id armv8_pmu_of_device_ids[] = {
> >  	{.compatible = "arm,armv8-pmuv3",	.data = armv8_pmuv3_init},
> > +	{.compatible = "arm,cortex-a34-pmu",	.data = armv8_pmuv3_init},

Unfortunately, these need their own .data so that they can be given
appropriate names under sysfs.

We're stuck doing that forever for DT, though at least we learned for
ACPI...

Mark.

> >  	{.compatible = "arm,cortex-a35-pmu",	.data = armv8_a35_pmu_init},
> >  	{.compatible = "arm,cortex-a53-pmu",	.data = armv8_a53_pmu_init},
> > +	{.compatible = "arm,cortex-a55-pmu",	.data = armv8_pmuv3_init},
> >  	{.compatible = "arm,cortex-a57-pmu",	.data = armv8_a57_pmu_init},
> > +	{.compatible = "arm,cortex-a65-pmu",	.data = armv8_pmuv3_init},
> >  	{.compatible = "arm,cortex-a72-pmu",	.data = armv8_a72_pmu_init},
> >  	{.compatible = "arm,cortex-a73-pmu",	.data = armv8_a73_pmu_init},
> > +	{.compatible = "arm,cortex-a75-pmu",	.data = armv8_pmuv3_init},
> > +	{.compatible = "arm,cortex-a76-pmu",	.data = armv8_pmuv3_init},
> > +	{.compatible = "arm,cortex-a77-pmu",	.data = armv8_pmuv3_init},
> > +	{.compatible = "arm,neoverse-e1-pmu",	.data = armv8_pmuv3_init},
> > +	{.compatible = "arm,neoverse-n1-pmu",	.data = armv8_pmuv3_init},
> >  	{.compatible = "cavium,thunder-pmu",	.data = armv8_thunder_pmu_init},
> >  	{.compatible = "brcm,vulcan-pmu",	.data = armv8_vulcan_pmu_init},
> >  	{},
> > -- 
> > 2.23.0.dirty
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
