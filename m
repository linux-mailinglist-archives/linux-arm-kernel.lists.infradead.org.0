Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C05168599
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 18:52:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NumOqutTzHvW7BK+4F9dTkk8iSa5vgMnxF06HjtUL8A=; b=PzLtgwADpnQyFb
	dgfPYlmLbSJCaI58cMsiE2A3a9f0cFgCCBCgjuZp+vBb3q3ofB15hrGgj4ooPG89BzVPZteIE78iz
	p2m2PKkqS347LdVM7p0gOv9gmXzD27otl4wiM0UyyyQrlWfAX4x1S4xHduV/Fnl5O/6/lT6cevqB7
	zqY3EjfMWSSm6ulzk/z+QPJvTKTW7zOIvignXkzcOLqGnixIxgKtza4CLgRdeg4Lc04wfKCrsO36v
	bnQFTWEtkaxtmk+CPcl4sIgR6gkvKT/RGYotIdKxHzrMZM4eRvDmde5C0ZEe9P40IeBYbLQ4zFG23
	N1ak2zeBSLsQtF+GXN7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5CT3-0004K8-Nc; Fri, 21 Feb 2020 17:52:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5CSE-0003n0-21
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 17:51:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E589C30E;
 Fri, 21 Feb 2020 09:51:08 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0C39F3F6CF;
 Fri, 21 Feb 2020 09:51:07 -0800 (PST)
Date: Fri, 21 Feb 2020 17:51:05 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 3/3] arm64: perf: Support new DT compatibles
Message-ID: <20200221175105.GC27382@lakrids.cambridge.arm.com>
References: <cover.1582300927.git.robin.murphy@arm.com>
 <6dbd695863346bda1e5d2133643ffade6227bd9a.1582300927.git.robin.murphy@arm.com>
 <20200221173847.2e9789af@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221173847.2e9789af@donnerap.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_095110_205692_2164DDE9 
X-CRM114-Status: GOOD (  20.75  )
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
Cc: will@kernel.org, devicetree@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 catalin.marinas@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 05:38:47PM +0000, Andre Przywara wrote:
> On Fri, 21 Feb 2020 16:04:58 +0000
> Robin Murphy <robin.murphy@arm.com> wrote:
> 
> Hi,
> 
> > Add support for matching the new PMUs. For now, this just wires them up
> > as generic PMUv3 such that people writing DTs for new SoCs can do the
> > right thing, and at least have architectural and raw events be usable.
> > We can come back and fill in event maps for sysfs and/or perf tools at
> > a later date.
> 
> as mentioned already in a reply to another patch:
> 
> Is that really the right way? Isn't that calling for the intended usage of a compatible fall-back string?
> So that a machine can just ship DTBs with for instance:
> 	"arm,neoverse-n1-pmu", "arm,armv8-pmuv3";
> and that would magically work with all older and newer kernels already, without any patch?
> 
> As it stands right now (with a single compatible), only newer kernels could use the PMU on those SoCs (ignoring tedious backports not reaching every user).
> 
> All that would be needed for that is to officially allow two compatible strings in the binding.
> 
> Cheers,
> Andre.
> 
> P.S. Still thinking about dropping those compatible strings at all and using the MIDR somehow, because then also ACPI users would benefit from core specific events.

For ACPI we've said that the way forward is the userspace mappings, so
that's already solved (and to a much greater degree than we could do
within the kernel).

The names for DT are an unfortunate legacy thing that we simply have to
carry on with going forward in for the UAPI under sysfs.

I don't want to go mapping MIDRs to names, and open other worm cans.

Thanksm
Mark.

>  
> > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
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
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
