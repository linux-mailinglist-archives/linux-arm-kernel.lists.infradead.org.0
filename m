Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D71DF586EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 18:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pERCn/BFHXJxQ2wASy4YOXyMw9Bb9X1BTKiXrcEG6TA=; b=ZD/i/dL6VcPwXX
	KQnX6qtDY+KiI6zb5dhw1XfkH6q8mveqGhE9/WN05s6CSIOmHedjK22njaL8T/OnEf3tetIOtBbUI
	DJ5B06buJApyo0frv62wqY8S6EuuyegsMqo6iUwBCR29Z3kTwbE/0gUpu8rMwx6HgHIbDd80g0uow
	vPcdDLUuXyeGDuC3r2sp+Ot4kV3PChYkf7Cm8DctNhgrc3kRoMaUJTHAVlHmLWPgDUMRz8ZuelziO
	3lI2SmG+cl2DnfwwojESkGBexdT4iWmp9xdfhvm1Qhg46yu4zrYxh4L/hcDS5dWf7Lj1XuBccVKcJ
	jU3JKD8h2E8kyowamSoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXAn-0002lA-6v; Thu, 27 Jun 2019 16:22:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXAZ-0002jP-1V
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 16:22:44 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B7A32080C;
 Thu, 27 Jun 2019 16:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561652562;
 bh=XANE2VhVUGz0tCaYce+E3tgK+iSMPwffhn6oVDGjCZw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LVg0EcdyXbOBXgTkd2XcOQaBxPyrPhiaqbNwgyqfwF/QwNgvl6UCKJ50T0o/RjiC4
 sDeBKd+ZeEM/5/qPs4soGGqNMWpA0kr7j5WkTng2+O1OeDYYMcO0fMrlHY7/x17Kli
 kVFw/fJcFWHDzB35wrdWFUO0CZj8yp0b4LBvKvtA=
Date: Thu, 27 Jun 2019 17:22:37 +0100
From: Will Deacon <will@kernel.org>
To: Ganapatrao Kulkarni <gkulkarni@marvell.com>
Subject: Re: [PATCH 1/2] Documentation: perf: Update documentation for
 ThunderX2 PMU uncore driver
Message-ID: <20190627162236.y3wb5sle6yjbwtzm@willie-the-truck>
References: <1560534144-13896-1-git-send-email-gkulkarni@marvell.com>
 <1560534144-13896-2-git-send-email-gkulkarni@marvell.com>
 <20190627100118.nfveq4oktomqybtx@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627100118.nfveq4oktomqybtx@willie-the-truck>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_092243_117234_D8F17222 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "corbet@lwn.net" <corbet@lwn.net>, "gklkml16@gmail.com" <gklkml16@gmail.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "Will.Deacon@arm.com" <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Robert.Richter@cavium.com" <Robert.Richter@cavium.com>,
 "jnair@caviumnetworks.com" <jnair@caviumnetworks.com>,
 "Jan.Glauber@cavium.com" <Jan.Glauber@cavium.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 11:01:18AM +0100, Will Deacon wrote:
> On Fri, Jun 14, 2019 at 05:42:45PM +0000, Ganapatrao Kulkarni wrote:
> > From: Ganapatrao Kulkarni <ganapatrao.kulkarni@marvell.com>
> > 
> > Add documentation for Cavium Coherent Processor Interconnect (CCPI2) PMU.
> > 
> > Signed-off-by: Ganapatrao Kulkarni <gkulkarni@marvell.com>
> > ---
> >  Documentation/perf/thunderx2-pmu.txt | 20 +++++++++++---------
> >  1 file changed, 11 insertions(+), 9 deletions(-)
> > 
> > diff --git a/Documentation/perf/thunderx2-pmu.txt b/Documentation/perf/thunderx2-pmu.txt
> > index dffc57143736..62243230abc3 100644
> > --- a/Documentation/perf/thunderx2-pmu.txt
> > +++ b/Documentation/perf/thunderx2-pmu.txt
> > @@ -2,24 +2,26 @@ Cavium ThunderX2 SoC Performance Monitoring Unit (PMU UNCORE)
> >  =============================================================
> >  
> >  The ThunderX2 SoC PMU consists of independent, system-wide, per-socket
> > -PMUs such as the Level 3 Cache (L3C) and DDR4 Memory Controller (DMC).
> > +PMUs such as the Level 3 Cache (L3C), DDR4 Memory Controller (DMC) and
> > +Cavium Coherent Processor Interconnect (CCPI2).
> >  
> >  The DMC has 8 interleaved channels and the L3C has 16 interleaved tiles.
> >  Events are counted for the default channel (i.e. channel 0) and prorated
> >  to the total number of channels/tiles.
> >  
> > -The DMC and L3C support up to 4 counters. Counters are independently
> > -programmable and can be started and stopped individually. Each counter
> > -can be set to a different event. Counters are 32-bit and do not support
> > -an overflow interrupt; they are read every 2 seconds.
> > +The DMC, L3C support up to 4 counters and CCPI2 support up to 8 counters.
> 
> The DMC and L3C support up to 4 counters, while the CCPI2 supports up to 8
> counters.
> 
> > +Counters are independently programmable and can be started and stopped
> > +individually. Each counter can be set to a different event. DMC and L3C
> > +Counters are 32-bit and do not support an overflow interrupt; they are read
> 
> Counters -> counters
> 
> > +every 2 seconds. CCPI2 counters are 64-bit.
> 
> Assuming CCPI2 also doesn't support an overflow interrupt, I'd reword these
> two sentences as:
> 
>   None of the counters support an overflow interrupt and therefore sampling
>   events are unsupported. The DMC and L3C counters are 32-bit and read every
>   2 seconds. The CCPI2 counters are 64-bit and assumed not to overflow in
>   normal operation.

Mark reminded me that these are system PMUs and therefore sampling is
unsupported irrespective of the presence of an overflow interrupt, so you
can drop that part from the text.

Sorry for the confusion,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
