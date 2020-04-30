Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8B81BF5A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 12:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHpITXFcWlUCgoKuGa7mryaeBOJUZnthosv0ZOSPKdM=; b=qkGbetJbmIMzmP
	e9jHElyd0AIRHVnu/PbP/yjcR/Km6lb3KxK3NyYL+kGN9NziT632fK4+1Ia1n9t+6gVMEBpxlO7PE
	wPTYb/Sd4sAQvZWE4gSVZS6uxrpA/QWh4BiKtwnUEn7Xh647F++VTbwNd6loUBY70sL+pvbVvqmT/
	8xFHJlHMPcGdlqtwhHulrb6SKDpojOUhrFVbkAkp8RHxZg9Q+Vn35WeTIaja+G0CwEPiZ5EiPMkFt
	A+/F6mSTrz6T9oy0bJRfvl3n0Myfj7LAoU80fVKIFo/Lz4kATL2QOHtkNwHvJ2L2XSGc2xcy487lR
	Ik2rYuIXJ4yi0ZfkpyPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU6Yz-000714-NA; Thu, 30 Apr 2020 10:37:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU6Yq-0006zw-5v
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 10:36:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B27C61063;
 Thu, 30 Apr 2020 03:36:53 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A03223F68F;
 Thu, 30 Apr 2020 03:36:49 -0700 (PDT)
Date: Thu, 30 Apr 2020 11:36:46 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Jianyong Wu <Jianyong.Wu@arm.com>
Subject: Re: [RFC PATCH v11 5/9] psci: Add hypercall service for ptp_kvm.
Message-ID: <20200430103646.GB39784@C02TD0UTHF1T.local>
References: <20200421032304.26300-1-jianyong.wu@arm.com>
 <20200421032304.26300-6-jianyong.wu@arm.com>
 <20200421095736.GB16306@C02TD0UTHF1T.local>
 <ab629714-c08c-2155-dd13-ad25e7f60b39@arm.com>
 <20200424103953.GD1167@C02TD0UTHF1T.local>
 <b53b0a47-1fe6-ad92-05f4-80d50980c587@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b53b0a47-1fe6-ad92-05f4-80d50980c587@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_033656_307883_90F80171 
X-CRM114-Status: GOOD (  27.20  )
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
 Haibo Xu <Haibo.Xu@arm.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
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

On Tue, Apr 28, 2020 at 07:14:52AM +0100, Jianyong Wu wrote:
> On 2020/4/24 6:39 PM, Mark Rutland wrote:
> > On Fri, Apr 24, 2020 at 03:50:22AM +0100, Jianyong Wu wrote:
> >> On 2020/4/21 5:57 PM, Mark Rutland wrote:
> >>> On Tue, Apr 21, 2020 at 11:23:00AM +0800, Jianyong Wu wrote:
> >>>> diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
> >>>> index 550dfa3e53cd..a5309c28d4dc 100644
> >>>> --- a/virt/kvm/arm/hypercalls.c
> >>>> +++ b/virt/kvm/arm/hypercalls.c
> >>>> @@ -62,6 +66,44 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
> >>>>    if (gpa != GPA_INVALID)
> >>>>    val = gpa;
> >>>>    break;
> >>>> +/*
> >>>> + * This serves virtual kvm_ptp.
> >>>> + * Four values will be passed back.
> >>>> + * reg0 stores high 32-bit host ktime;
> >>>> + * reg1 stores low 32-bit host ktime;
> >>>> + * reg2 stores high 32-bit difference of host cycles and cntvoff;
> >>>> + * reg3 stores low 32-bit difference of host cycles and cntvoff.
> >>>> + */
> >>>> +case ARM_SMCCC_HYP_KVM_PTP_FUNC_ID:
> >>> Shouldn't the host opt-in to providing this to the guest, as with other
> >>> features?
> >> er, do you mean that "ARM_SMCCC_HV_PV_TIME_XXX" as "opt-in"? if so, I
> >> think this
> >>
> >> kvm_ptp doesn't need a buddy. the driver in guest will call this service
> >> in a definite way.
> > I mean that when creating the VM, userspace should be able to choose
> > whether the PTP service is provided to the guest. The host shouldn't
> > always provide it as there may be cases where doing so is undesireable.
> >
> I think I have implemented in patch 9/9 that userspace can get the info
> that if the host offers the kvm_ptp service. But for now, the host
> kernel will always offer the kvm_ptp capability in the current
> implementation. I think x86 follow the same behavior (see [1]). so I
> have not considered when and how to disable this kvm_ptp service in
> host. Do you think we should offer this opt-in?

I think taht should be opt-in, yes.

[...]

> > It's also not clear to me what notion of host time is being exposed to
> > the guest (and consequently how this would interact with time changes on
> > the host, time namespaces, etc). Having some description of that would
> > be very helpful.
> 
> sorry to have not made it clear.
> 
> Time will not change in host and only time in guest will change to sync
> with host. host time is the target that time in guest want to adjust to.
> guest need to get the host time then compute the different of the time
> in guest and host, so the guest can adjust the time base on the difference.

I understood that host time wouldn't change here, but what was not clear
is which notion of host time is being exposed to the guest.

e.g. is that a raw monotonic clock, or one subject to periodic adjument,
or wall time in the host? What is the epoch of the host time?

> I will add the base principle of time sync service in guest using
> kvm_ptp in commit message.

That would be great; thanks!

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
