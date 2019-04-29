Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55126E7F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 18:42:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9ON8oRi1gcTVrNNqNVt8mRs5kymrVT+eC6UAx0B8jE=; b=p+dZHHHJ0rhit2
	qD9G/VhQtALwJ0foL+uU67YAI2Knhi908HFO08AeUVsl6LpK96jRrcSDuzbDNXaevnly7UPtiVhU3
	SQ0XX6/uKsbCugteqBZaPZhhfzpMyg8/3ZzxeS2WeKe1aQQsgbriKMwJrMTDRCE3SPBcQ13HWjgxC
	ebjK7eTSiDlTokttQjEIGMhzSFji5uy1kS3/Ikn0M9LyU49JM05j8C7LGNPAu76Z5+BEyZ+AR9Le/
	NQvPii1CGrqAoRGHibl1dgtWLii9TPWQsQU87Wy8KYZm2y2xECIbXvJjlX2BJXrTRVNGZYJGY5rXW
	ZOOu4eW5wZIVFVrwU8HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9Ll-00016C-Uu; Mon, 29 Apr 2019 16:41:53 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9Lf-00015p-4b
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 16:41:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E17980D;
 Mon, 29 Apr 2019 09:41:44 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D6BAC3F5AF;
 Mon, 29 Apr 2019 09:41:43 -0700 (PDT)
Date: Mon, 29 Apr 2019 17:41:42 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v13 7/8] arm64: KVM: avoid isb's by using direct
 pmxevtyper sysreg
Message-ID: <20190429164141.GE22493@e119886-lin.cambridge.arm.com>
References: <20190409192217.23459-1-andrew.murray@arm.com>
 <20190409192217.23459-8-andrew.murray@arm.com>
 <c4a836ec-9e0b-2957-22ec-73d0625ce8cb@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c4a836ec-9e0b-2957-22ec-73d0625ce8cb@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_094147_186654_C0FCD97E 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, julien.thierry@arm.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, christoffer.dall@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 15, 2019 at 02:49:41PM +0100, Suzuki K Poulose wrote:
> 
> 
> On 09/04/2019 20:22, Andrew Murray wrote:
> > Upon entering or exiting a guest we may modify multiple PMU counters to
> > enable of disable EL0 filtering. We presently do this via the indirect
> > PMXEVTYPER_EL0 system register (where the counter we modify is selected
> > by PMSELR). With this approach it is necessary to order the writes via
> > isb instructions such that we select the correct counter before modifying
> > it.
> > 
> > Let's avoid potentially expensive instruction barriers by using the
> > direct PMEVTYPER<n>_EL0 registers instead.
> > 
> > As the change to counter type relates only to EL0 filtering we can rely
> > on the implicit instruction barrier which occurs when we transition from
> > EL2 to EL1 on entering the guest. On returning to userspace we can, at the
> > latest, rely on the implicit barrier between EL2 and EL0. We can also
> > depend on the explicit isb in armv8pmu_select_counter to order our write
> > against any other kernel changes by the PMU driver to the type register as
> > a result of preemption.
> > 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > ---
> >   arch/arm64/kvm/pmu.c | 84 ++++++++++++++++++++++++++++++++++++++------
> >   1 file changed, 74 insertions(+), 10 deletions(-)
> > 
> > diff --git a/arch/arm64/kvm/pmu.c b/arch/arm64/kvm/pmu.c
> > index 3407a529e116..4d55193ccc71 100644
> > --- a/arch/arm64/kvm/pmu.c
> > +++ b/arch/arm64/kvm/pmu.c
> > @@ -91,6 +91,74 @@ void __hyp_text __pmu_switch_to_host(struct kvm_cpu_context *host_ctxt)
> >   		write_sysreg(pmu->events_host, pmcntenset_el0);
> >   }
> > +#define PMEVTYPER_READ_CASE(idx)				\
> > +	case idx:						\
> > +		return read_sysreg(pmevtyper##idx##_el0)
> > +
> > +#define PMEVTYPER_WRITE_CASE(idx)				\
> > +	case idx:						\
> > +		write_sysreg(val, pmevtyper##idx##_el0);	\
> > +		break
> > +
> > +#define PMEVTYPER_CASES(readwrite)				\
> > +	PMEVTYPER_##readwrite##_CASE(0);			\
> > +	PMEVTYPER_##readwrite##_CASE(1);			\
> > +	PMEVTYPER_##readwrite##_CASE(2);			\
> > +	PMEVTYPER_##readwrite##_CASE(3);			\
> > +	PMEVTYPER_##readwrite##_CASE(4);			\
> > +	PMEVTYPER_##readwrite##_CASE(5);			\
> > +	PMEVTYPER_##readwrite##_CASE(6);			\
> > +	PMEVTYPER_##readwrite##_CASE(7);			\
> > +	PMEVTYPER_##readwrite##_CASE(8);			\
> > +	PMEVTYPER_##readwrite##_CASE(9);			\
> > +	PMEVTYPER_##readwrite##_CASE(10);			\
> > +	PMEVTYPER_##readwrite##_CASE(11);			\
> > +	PMEVTYPER_##readwrite##_CASE(12);			\
> > +	PMEVTYPER_##readwrite##_CASE(13);			\
> > +	PMEVTYPER_##readwrite##_CASE(14);			\
> > +	PMEVTYPER_##readwrite##_CASE(15);			\
> > +	PMEVTYPER_##readwrite##_CASE(16);			\
> > +	PMEVTYPER_##readwrite##_CASE(17);			\
> > +	PMEVTYPER_##readwrite##_CASE(18);			\
> > +	PMEVTYPER_##readwrite##_CASE(19);			\
> > +	PMEVTYPER_##readwrite##_CASE(20);			\
> > +	PMEVTYPER_##readwrite##_CASE(21);			\
> > +	PMEVTYPER_##readwrite##_CASE(22);			\
> > +	PMEVTYPER_##readwrite##_CASE(23);			\
> > +	PMEVTYPER_##readwrite##_CASE(24);			\
> > +	PMEVTYPER_##readwrite##_CASE(25);			\
> > +	PMEVTYPER_##readwrite##_CASE(26);			\
> > +	PMEVTYPER_##readwrite##_CASE(27);			\
> > +	PMEVTYPER_##readwrite##_CASE(28);			\
> > +	PMEVTYPER_##readwrite##_CASE(29);			\
> > +	PMEVTYPER_##readwrite##_CASE(30)
> > +
> 
> Don't we need case 31 and deal with the PMCCFILTR, instead of WARN_ON(1)
> below ?
> 
> Otherwise,
> 
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Yes we do - I'll add this, thanks for spotting.

Thanks,

Andrew Murray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
