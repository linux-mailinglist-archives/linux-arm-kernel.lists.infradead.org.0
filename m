Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A00811B722C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 12:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VEYti35cPIak0OIiWZVDOb44YyRRHSceGkKcWLUfoHI=; b=fkaawp2CxrEBvH
	VsQggSuD9mxC6C2FMfRc0ZIMRobBlxaUsOEfP80oQ9rFEjUsx+MwjVzV5hThTUritsL+XYvEI7S/S
	hJioYtMTv8O1GDKVRULtoEf7BDnsP3fy6DuOiK2AxnREVKPoDriRkbwiVUcuCsGpA3OaRTHcBxEkZ
	bs2p35xW05R1hgekdGTQ/uZwRyubcbsBw4J12hb15wxRjA0iwubHDvZgd8otgAVhwcgClvs2nTis0
	wXh+OLXOlVjcF91MBsR9yi0qMyLA885EDguuXERJ3zXWZJGm9na7mteI9yDkW61qpwTAIGjSEelHl
	Y8ZpPrl2ksrYhowSMt9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRvks-0007Sm-Bs; Fri, 24 Apr 2020 10:40:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRvkY-0006NG-N9
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 10:40:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9ABDC1FB;
 Fri, 24 Apr 2020 03:40:00 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E0C53F6CF;
 Fri, 24 Apr 2020 03:39:56 -0700 (PDT)
Date: Fri, 24 Apr 2020 11:39:53 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Jianyong Wu <Jianyong.Wu@arm.com>
Subject: Re: [RFC PATCH v11 5/9] psci: Add hypercall service for ptp_kvm.
Message-ID: <20200424103953.GD1167@C02TD0UTHF1T.local>
References: <20200421032304.26300-1-jianyong.wu@arm.com>
 <20200421032304.26300-6-jianyong.wu@arm.com>
 <20200421095736.GB16306@C02TD0UTHF1T.local>
 <ab629714-c08c-2155-dd13-ad25e7f60b39@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ab629714-c08c-2155-dd13-ad25e7f60b39@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_034002_859613_DF875CAA 
X-CRM114-Status: GOOD (  22.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "maz@kernel.org" <maz@kernel.org>, Justin He <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 Steven Price <Steven.Price@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, nd <nd@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 03:50:22AM +0100, Jianyong Wu wrote:
> On 2020/4/21 5:57 PM, Mark Rutland wrote:
> > On Tue, Apr 21, 2020 at 11:23:00AM +0800, Jianyong Wu wrote:
> >> diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
> >> index 550dfa3e53cd..a5309c28d4dc 100644
> >> --- a/virt/kvm/arm/hypercalls.c
> >> +++ b/virt/kvm/arm/hypercalls.c

> >> @@ -62,6 +66,44 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
> >>   if (gpa != GPA_INVALID)
> >>   val = gpa;
> >>   break;
> >> +/*
> >> + * This serves virtual kvm_ptp.
> >> + * Four values will be passed back.
> >> + * reg0 stores high 32-bit host ktime;
> >> + * reg1 stores low 32-bit host ktime;
> >> + * reg2 stores high 32-bit difference of host cycles and cntvoff;
> >> + * reg3 stores low 32-bit difference of host cycles and cntvoff.
> >> + */
> >> +case ARM_SMCCC_HYP_KVM_PTP_FUNC_ID:
> > Shouldn't the host opt-in to providing this to the guest, as with other
> > features?
> 
> er, do you mean that "ARM_SMCCC_HV_PV_TIME_XXX" as "opt-in"? if so, I
> think this
> 
> kvm_ptp doesn't need a buddy. the driver in guest will call this service
> in a definite way.

I mean that when creating the VM, userspace should be able to choose
whether the PTP service is provided to the guest. The host shouldn't
always provide it as there may be cases where doing so is undesireable.

> >> +/*
> >> + * system time and counter value must captured in the same
> >> + * time to keep consistency and precision.
> >> + */
> >> +ktime_get_snapshot(&systime_snapshot);
> >> +if (systime_snapshot.cs_id != CSID_ARM_ARCH_COUNTER)
> >> +break;
> >> +arg[0] = upper_32_bits(systime_snapshot.real);
> >> +arg[1] = lower_32_bits(systime_snapshot.real);
> > Why exactly does the guest need the host's real time? Neither the cover
> > letter nor this commit message have explained that, and for those of us
> > unfamliar with PTP it would be very helpful to know that to understand
> > what's going on.
> 
> oh, sorry, I should have added more background knowledge here.
> 
> just give some hints here:
> 
> the kvm_ptp targets to sync guest time with host. some services in user
> space
> 
> like chrony can do time sync by inputing time(in kvm_ptp also clock
> counter sometimes) from
> 
> remote clocksource(often network clocksource). This kvm_ptp driver can
> offer a interface for
> 
> those user space service in guest to get the host time to do time sync
> in guest.

I think it would be very helpful for the commit message and/or cover
letter to have a high-level desctiption of what PTP is meant to do, and
an outline of the algorithmm (clearly splitting the host and guest
bits).

It's also not clear to me what notion of host time is being exposed to
the guest (and consequently how this would interact with time changes on
the host, time namespaces, etc). Having some description of that would
be very helpful.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
