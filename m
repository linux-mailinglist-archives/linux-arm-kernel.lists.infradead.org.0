Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 972F51355B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=94WOy9s4enWZbKCPb9sBl+qOWDB08hmL5FHlKU3sKcg=; b=ioGR8xAS+auFsBsdIW9IXS0WL
	+LeN8ISQLYcO+szORvGGVGlAbLUvinbvCYres+NbjsQoVq0WRbOvpymamURcwqBoR0ymRmmOzzbkX
	LE1pgHDZA5IH13e7YD/9chfZqdP7KnnIu4IkYcmYP0srhHZsiQTiCl+O+9Qju/Ap68lkgRAY64Kn8
	7+Qye/hAQg21/RR0KKADOP31/on3s/B8p/1enPoP4louI7KpRj+YGKbAbYFpCRYwiRJ8zZP/BCtkT
	R5rwxqjM/qvqs94YGK82/9brOb3GaH7uQ9tbaog4u1v1mGxr8OtzqkRxwE2XNtFxXYK1Uoa1NLlNn
	LElONmzdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipU3L-0007f6-Ri; Thu, 09 Jan 2020 09:24:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipU3D-0007dw-8o
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:24:25 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D035C2067D;
 Thu,  9 Jan 2020 09:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578561863;
 bh=rE6HvUtSt3u7eFMLFuQdxwt/rQxpTj8qvddqpd/Tfmw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CQUWhqf3v3AKgd0rgE/z8fLOzbtHFnOVWJGwlYTCD9ZRkW+K7ncBJQ1X5x2G6uiAp
 xhFIvBoEYSnJp+lkiRdhL3iEgUS/ai40djaz+mpKwy2Q8xR2PnNvFb1Wa0X58CawEa
 nHNKNJKJ3ianXNJ4RY1AWarcH6YATfN7OMHmZtvY=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1ipU3B-0002RW-3a; Thu, 09 Jan 2020 09:24:21 +0000
MIME-Version: 1.0
Date: Thu, 09 Jan 2020 09:24:20 +0000
From: Marc Zyngier <maz@kernel.org>
To: Jianyong Wu <Jianyong.Wu@arm.com>
Subject: Re: [RFC PATCH v9 7/8] ptp: arm64: Enable ptp_kvm for arm64
In-Reply-To: <HE1PR0801MB1676EE12CF0DB7C5BB8CC62DF4390@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191210034026.45229-1-jianyong.wu@arm.com>
 <20191210034026.45229-8-jianyong.wu@arm.com>
 <ca162efb3a0de530e119f5237c006515@kernel.org>
 <HE1PR0801MB1676EE12CF0DB7C5BB8CC62DF4390@HE1PR0801MB1676.eurprd08.prod.outlook.com>
Message-ID: <ee801dacbf4143e8d41807d5bfad1409@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: Jianyong.Wu@arm.com, netdev@vger.kernel.org,
 yangbo.lu@nxp.com, john.stultz@linaro.org, tglx@linutronix.de,
 pbonzini@redhat.com, sean.j.christopherson@intel.com, richardcochran@gmail.com,
 Mark.Rutland@arm.com, will@kernel.org, Suzuki.Poulose@arm.com,
 Steven.Price@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, Steve.Capper@arm.com, Kaly.Xin@arm.com, Justin.He@arm.com,
 nd@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_012423_350334_6F7AE8D5 
X-CRM114-Status: GOOD (  31.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Justin He <Justin.He@arm.com>,
 kvm@vger.kernel.org, Suzuki Poulose <Suzuki.Poulose@arm.com>,
 netdev@vger.kernel.org, richardcochran@gmail.com,
 Steve Capper <Steve.Capper@arm.com>, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, Steven Price <Steven.Price@arm.com>,
 Kaly Xin <Kaly.Xin@arm.com>, john.stultz@linaro.org, yangbo.lu@nxp.com,
 pbonzini@redhat.com, tglx@linutronix.de, nd <nd@arm.com>, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-09 05:59, Jianyong Wu wrote:
> Hi Marc,
> 
>> -----Original Message-----
>> From: Marc Zyngier <maz@kernel.org>
>> Sent: Tuesday, January 7, 2020 5:29 PM
>> To: Jianyong Wu <Jianyong.Wu@arm.com>
>> Cc: netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
>> tglx@linutronix.de; pbonzini@redhat.com; 
>> sean.j.christopherson@intel.com;
>> richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>;
>> will@kernel.org; Suzuki Poulose <Suzuki.Poulose@arm.com>; Steven Price
>> <Steven.Price@arm.com>; linux-kernel@vger.kernel.org; linux-arm-
>> kernel@lists.infradead.org; kvmarm@lists.cs.columbia.edu;
>> kvm@vger.kernel.org; Steve Capper <Steve.Capper@arm.com>; Kaly Xin
>> <Kaly.Xin@arm.com>; Justin He <Justin.He@arm.com>; nd <nd@arm.com>
>> Subject: Re: [RFC PATCH v9 7/8] ptp: arm64: Enable ptp_kvm for arm64
>> 
>> On 2019-12-10 03:40, Jianyong Wu wrote:
>> > Currently in arm64 virtualization environment, there is no mechanism
>> > to keep time sync between guest and host. Time in guest will drift
>> > compared with host after boot up as they may both use third party time
>> > sources to correct their time respectively. The time deviation will be
>> > in order of milliseconds but some scenarios ask for higher time
>> > precision, like in cloud envirenment, we want all the VMs running in
>> > the host aquire the same level accuracy from host clock.
>> >
>> > Use of kvm ptp clock, which choose the host clock source clock as a
>> > reference clock to sync time clock between guest and host has been
>> > adopted by x86 which makes the time sync order from milliseconds to
>> > nanoseconds.
>> >
>> > This patch enable kvm ptp on arm64 and we get the similar clock drift
>> > as found with x86 with kvm ptp.
>> >
>> > Test result comparison between with kvm ptp and without it in arm64
>> > are as follows. This test derived from the result of command 'chronyc
>> > sources'. we should take more cure of the last sample column which
>> > shows the offset between the local clock and the source at the last
>> > measurement.
>> >
>> > no kvm ptp in guest:
>> > MS Name/IP address   Stratum Poll Reach LastRx Last sample
>> >
>> ==========================================================
>> ==============
>> > ^* dns1.synet.edu.cn      2   6   377    13  +1040us[+1581us] +/-
>> > 21ms
>> > ^* dns1.synet.edu.cn      2   6   377    21  +1040us[+1581us] +/-
>> > 21ms
>> > ^* dns1.synet.edu.cn      2   6   377    29  +1040us[+1581us] +/-
>> > 21ms
>> > ^* dns1.synet.edu.cn      2   6   377    37  +1040us[+1581us] +/-
>> > 21ms
>> > ^* dns1.synet.edu.cn      2   6   377    45  +1040us[+1581us] +/-
>> > 21ms
>> > ^* dns1.synet.edu.cn      2   6   377    53  +1040us[+1581us] +/-
>> > 21ms
>> > ^* dns1.synet.edu.cn      2   6   377    61  +1040us[+1581us] +/-
>> > 21ms
>> > ^* dns1.synet.edu.cn      2   6   377     4   -130us[ +796us] +/-
>> > 21ms
>> > ^* dns1.synet.edu.cn      2   6   377    12   -130us[ +796us] +/-
>> > 21ms
>> > ^* dns1.synet.edu.cn      2   6   377    20   -130us[ +796us] +/-
>> > 21ms
>> >
>> > in host:
>> > MS Name/IP address   Stratum Poll Reach LastRx Last sample
>> >
>> ==========================================================
>> ==============
>> > ^* 120.25.115.20          2   7   377    72   -470us[ -603us] +/-
>> > 18ms
>> > ^* 120.25.115.20          2   7   377    92   -470us[ -603us] +/-
>> > 18ms
>> > ^* 120.25.115.20          2   7   377   112   -470us[ -603us] +/-
>> > 18ms
>> > ^* 120.25.115.20          2   7   377     2   +872ns[-6808ns] +/-
>> > 17ms
>> > ^* 120.25.115.20          2   7   377    22   +872ns[-6808ns] +/-
>> > 17ms
>> > ^* 120.25.115.20          2   7   377    43   +872ns[-6808ns] +/-
>> > 17ms
>> > ^* 120.25.115.20          2   7   377    63   +872ns[-6808ns] +/-
>> > 17ms
>> > ^* 120.25.115.20          2   7   377    83   +872ns[-6808ns] +/-
>> > 17ms
>> > ^* 120.25.115.20          2   7   377   103   +872ns[-6808ns] +/-
>> > 17ms
>> > ^* 120.25.115.20          2   7   377   123   +872ns[-6808ns] +/-
>> > 17ms
>> >
>> > The dns1.synet.edu.cn is the network reference clock for guest and
>> > 120.25.115.20 is the network reference clock for host. we can't get
>> > the clock error between guest and host directly, but a roughly
>> > estimated value will be in order of hundreds of us to ms.
>> >
>> > with kvm ptp in guest:
>> > chrony has been disabled in host to remove the disturb by network
>> > clock.
>> >
>> > MS Name/IP address         Stratum Poll Reach LastRx Last sample
>> >
>> ==========================================================
>> ==============
>> > * PHC0                    0   3   377     8     -7ns[   +1ns] +/-
>> > 3ns
>> > * PHC0                    0   3   377     8     +1ns[  +16ns] +/-
>> > 3ns
>> > * PHC0                    0   3   377     6     -4ns[   -0ns] +/-
>> > 6ns
>> > * PHC0                    0   3   377     6     -8ns[  -12ns] +/-
>> > 5ns
>> > * PHC0                    0   3   377     5     +2ns[   +4ns] +/-
>> > 4ns
>> > * PHC0                    0   3   377    13     +2ns[   +4ns] +/-
>> > 4ns
>> > * PHC0                    0   3   377    12     -4ns[   -6ns] +/-
>> > 4ns
>> > * PHC0                    0   3   377    11     -8ns[  -11ns] +/-
>> > 6ns
>> > * PHC0                    0   3   377    10    -14ns[  -20ns] +/-
>> > 4ns
>> > * PHC0                    0   3   377     8     +4ns[   +5ns] +/-
>> > 4ns
>> >
>> > The PHC0 is the ptp clock which choose the host clock as its source
>> > clock. So we can be sure to say that the clock error between host and
>> > guest is in order of ns.
>> >
>> > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
>> > ---
>> >  drivers/clocksource/arm_arch_timer.c | 22 ++++++++++++
>> >  drivers/ptp/Kconfig                  |  2 +-
>> >  drivers/ptp/ptp_kvm_arm64.c          | 53
>> ++++++++++++++++++++++++++++
>> >  3 files changed, 76 insertions(+), 1 deletion(-)  create mode 100644
>> > drivers/ptp/ptp_kvm_arm64.c
>> >
>> > diff --git a/drivers/clocksource/arm_arch_timer.c
>> > b/drivers/clocksource/arm_arch_timer.c
>> > index 277846decd33..72260b66f02e 100644
>> > --- a/drivers/clocksource/arm_arch_timer.c
>> > +++ b/drivers/clocksource/arm_arch_timer.c
>> > @@ -1636,3 +1636,25 @@ static int __init arch_timer_acpi_init(struct
>> > acpi_table_header *table)  }  TIMER_ACPI_DECLARE(arch_timer,
>> > ACPI_SIG_GTDT, arch_timer_acpi_init);  #endif
>> > +
>> > +#if IS_ENABLED(CONFIG_PTP_1588_CLOCK_KVM)
>> > +#include <linux/arm-smccc.h>
>> > +int kvm_arch_ptp_get_crosststamp(unsigned long *cycle, struct
>> > timespec64 *ts,
>> > +			      struct clocksource **cs)
>> > +{
>> > +	struct arm_smccc_res hvc_res;
>> > +	ktime_t ktime_overall;
>> > +
>> > +
>> 	arm_smccc_1_1_invoke(ARM_SMCCC_VENDOR_HYP_KVM_PTP_FU
>> NC_ID, &hvc_res);
>> > +	if ((long)(hvc_res.a0) < 0)
>> > +		return -EOPNOTSUPP;
>> > +
>> > +	ktime_overall = hvc_res.a0 << 32 | hvc_res.a1;
>> > +	*ts = ktime_to_timespec64(ktime_overall);
>> > +	*cycle = hvc_res.a2 << 32 | hvc_res.a3;
>> 
>> So why isn't that just a read of the virtual counter, given that what 
>> you do in
>> the hypervisor seems to be "cntpct - cntvoff"?
>> 
>> What am I missing here?
>> 
> We need get clock time and counter cycle at the same time, so we can't
> just read virtual counter
> at guest and must get it from host.

See my comment in my reply to patch #6: *Must* seems like a very strong 
word,
and you don't explain *why* that's better than just computing the total 
hypercall
cost. Hint: given the frequency of the counter (in the few MHz range) vs 
the
frequency of a CPU (in the multiple GHz range, and with an IPC close 
enough to 1),
I doubt that you'll see the counter making much progress across a 
hypercall.

> 
>> > +	*cs = &clocksource_counter;
>> > +
>> > +	return 0;
>> > +}
>> > +EXPORT_SYMBOL_GPL(kvm_arch_ptp_get_crosststamp);
>> > +#endif
>> > diff --git a/drivers/ptp/Kconfig b/drivers/ptp/Kconfig index
>> > 9b8fee5178e8..3c31ff8eb05f 100644
>> > --- a/drivers/ptp/Kconfig
>> > +++ b/drivers/ptp/Kconfig
>> > @@ -110,7 +110,7 @@ config PTP_1588_CLOCK_PCH  config
>> > PTP_1588_CLOCK_KVM
>> >  	tristate "KVM virtual PTP clock"
>> >  	depends on PTP_1588_CLOCK
>> > -	depends on KVM_GUEST && X86
>> > +	depends on KVM_GUEST && X86 || ARM64 && ARM_ARCH_TIMER
>> >  	default y
>> >  	help
>> >  	  This driver adds support for using kvm infrastructure as a PTP
>> > diff --git a/drivers/ptp/ptp_kvm_arm64.c b/drivers/ptp/ptp_kvm_arm64.c
>> > new file mode 100644 index 000000000000..f3f957117865
>> > --- /dev/null
>> > +++ b/drivers/ptp/ptp_kvm_arm64.c
>> > @@ -0,0 +1,53 @@
>> > +// SPDX-License-Identifier: GPL-2.0-only
>> > +/*
>> > + *  Virtual PTP 1588 clock for use with KVM guests
>> > + *  Copyright (C) 2019 ARM Ltd.
>> > + *  All Rights Reserved
>> > + */
>> > +
>> > +#include <linux/kernel.h>
>> > +#include <linux/err.h>
>> > +#include <asm/hypervisor.h>
>> > +#include <linux/module.h>
>> > +#include <linux/psci.h>
>> > +#include <linux/arm-smccc.h>
>> > +#include <linux/timecounter.h>
>> > +#include <linux/sched/clock.h>
>> > +#include <asm/arch_timer.h>
>> > +
>> > +int kvm_arch_ptp_init(void)
>> > +{
>> > +	struct arm_smccc_res hvc_res;
>> > +
>> > +
>> 	arm_smccc_1_1_invoke(ARM_SMCCC_VENDOR_HYP_KVM_PTP_FU
>> NC_ID,
>> > +			     &hvc_res);
>> > +	if ((long)(hvc_res.a0) < 0)
>> > +		return -EOPNOTSUPP;
>> > +
>> > +	return 0;
>> > +}
>> > +
>> > +int kvm_arch_ptp_get_clock_generic(struct timespec64 *ts,
>> > +				   struct arm_smccc_res *hvc_res) {
>> > +	ktime_t ktime_overall;
>> > +
>> > +
>> 	arm_smccc_1_1_invoke(ARM_SMCCC_VENDOR_HYP_KVM_PTP_FU
>> NC_ID,
>> > +				  hvc_res);
>> > +	if ((long)(hvc_res->a0) < 0)
>> > +		return -EOPNOTSUPP;
>> > +
>> > +	ktime_overall = hvc_res->a0 << 32 | hvc_res->a1;
>> > +	*ts = ktime_to_timespec64(ktime_overall);
>> > +
>> > +	return 0;
>> > +}
>> > +
>> > +int kvm_arch_ptp_get_clock(struct timespec64 *ts) {
>> > +	struct arm_smccc_res hvc_res;
>> > +
>> > +	kvm_arch_ptp_get_clock_generic(ts, &hvc_res);
>> > +
>> > +	return 0;
>> > +}
>> 
>> I also wonder why this is all arm64 specific, while everything should 
>> also work
>> just fine on 32bit.
>> 
> ptp_kvm is a feature for cloud computing to keep time consistency from
> container to container and to host on server,

Cloud computing? Never heard of that. Will probably never catch on.

> So we focus it on arm64. Also I have never tested it on arm32 machine
> ( we lack of arm32 machine)

I'm sure your employer can provide you with such a box. I can probably
even tell you which cupboard they are stored in... ;-)

> Do you think it's necessary to enable ptp_kvm on arm32? If so, I can do 
> that.

I can't see why we wouldn't, given that it should be a zero effort task
(none of the code here is arch specific).

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
