Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B17265A949
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 08:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bL638YPS43FY8GOikz/DpwO9KleyyTWkKKRrJ/Zfx8M=; b=Dz/O48ZdXPb+oO
	YWxIewnlADcbvwFLmmXVwqdOR4WUY9Gair/rDxBbxL4stVSqRxN0ZjiEAUDaNnUGDyLTc+YJj38Ww
	4+CjgaXkBR2f7hrB8iYR33GZv7kLb3upxwgwL7iUJOLy0gTilJVQIHRGBo57SblBu4YqktRI+78z2
	vBNjJA5Ph1kOJJJqxTQGHP1I2s7hvE/ZWj7VLMlSNPEqgeyURNoCSG0ydfY4sXr13NvzO9ul39Svv
	GwmebMHWu84SMhdQIjdoWzC5qJvJvg4XDIfuYhuGeh1//0tGGCTM7PQ+Vy3ejr+1tegg5dM7XuRSP
	JtSWVCUF0v1rCvJWa5fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh7CS-00080k-P6; Sat, 29 Jun 2019 06:51:04 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh7C1-0007zM-2d
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 06:50:39 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hh7Bi-0000oE-Eq; Sat, 29 Jun 2019 08:50:18 +0200
Date: Sat, 29 Jun 2019 08:50:16 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Michael Kelley <mikelley@microsoft.com>
Subject: Re: [PATCH v4 1/2] Drivers: hv: Create Hyper-V clocksource driver
 from existing clockevents code
In-Reply-To: <1561746758-23216-2-git-send-email-mikelley@microsoft.com>
Message-ID: <alpine.DEB.2.21.1906290827340.1802@nanos.tec.linutronix.de>
References: <1561746758-23216-1-git-send-email-mikelley@microsoft.com>
 <1561746758-23216-2-git-send-email-mikelley@microsoft.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_235037_578079_077E8DEC 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>,
 "rkrcmar@redhat.com" <rkrcmar@redhat.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "vincenzo.frascino@arm.com" <vincenzo.frascino@arm.com>,
 "shuah@kernel.org" <shuah@kernel.org>, "sashal@kernel.org" <sashal@kernel.org>,
 "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 KY Srinivasan <kys@microsoft.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "olaf@aepfle.de" <olaf@aepfle.de>, "arnd@arndb.de" <arnd@arndb.de>,
 "0x7f454c46@gmail.com" <0x7f454c46@gmail.com>, "bp@alien8.de" <bp@alien8.de>,
 "apw@canonical.com" <apw@canonical.com>,
 Sunil Muthuswamy <sunilmut@microsoft.com>, "pcc@google.com" <pcc@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "huw@codeweavers.com" <huw@codeweavers.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ralf@linux-mips.org" <ralf@linux-mips.org>,
 "salyzyn@android.com" <salyzyn@android.com>,
 "paul.burton@mips.com" <paul.burton@mips.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>, vkuznets <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Micheal,

On Fri, 28 Jun 2019, Michael Kelley wrote:

> [PATCH v4 1/2] Drivers: hv: Create Hyper-V clocksource driver from existing clockevents code

As this creates a new clocksource driver, please use the

   'clocksource/drivers: '

prefix and provide a more concise summary phrase. Something like:

   'clocksource/drivers: Make Hyper-V clocksource ISA agnostic'

The longer explanation is already in the changelog.

> +++ b/drivers/clocksource/hyperv_timer.c
> @@ -0,0 +1,191 @@
> +static int hv_ce_set_next_event(unsigned long delta,
> +				struct clock_event_device *evt)
> +{
> +	u64 current_tick;
> +
> +	WARN_ON(!clockevent_state_oneshot(evt));

If at all that wants to be a WARN_ON_ONCE, but there is really no point in
sprinkling these WARN_ONs into functions which are called from generic
infrastructure code.

Generic infrastructure wants to have warnings because the functions are
called from random places.

> +
> +	current_tick = hyperv_cs->read(NULL);
> +	current_tick += delta;
> +	hv_init_timer(0, current_tick);
> +	return 0;
> +}
> +/*
> + * hv_stimer_init - Per-cpu initialization of the clockevent
> + */
> +int hv_stimer_init(unsigned int cpu)
> +{
> +	struct clock_event_device *ce;
> +
> +	if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
> +		ce = per_cpu_ptr(hv_clock_event, cpu);
> +		ce->name = "Hyper-V clockevent";
> +		ce->features = CLOCK_EVT_FEAT_ONESHOT;
> +		ce->cpumask = cpumask_of(cpu);
> +		ce->rating = 1000;
> +		ce->set_state_shutdown = hv_ce_shutdown;
> +		ce->set_state_oneshot = hv_ce_set_oneshot;
> +		ce->set_next_event = hv_ce_set_next_event;
> +
> +		clockevents_config_and_register(ce,
> +						HV_CLOCK_HZ,
> +						HV_MIN_DELTA_TICKS,
> +						HV_MAX_MAX_DELTA_TICKS);
> +	}
> +	return 0;

Why is this returning success if there is no timer available?

> +}
> +EXPORT_SYMBOL_GPL(hv_stimer_init);
> +
> +/*
> + * hv_stimer_cleanup - Per-cpu cleanup of the clockevent
> + */
> +int hv_stimer_cleanup(unsigned int cpu)
> +{
> +	struct clock_event_device *ce;
> +
> +	/* Turn off clockevent device */
> +	if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
> +		ce = per_cpu_ptr(hv_clock_event, cpu);
> +		clockevents_unbind_device(ce, cpu);

Can you please explain why this unbind is needed?

> +		hv_ce_shutdown(ce);
> +	}
> +
> +	return 0;

Why does that function need a return value?

> +}
> +EXPORT_SYMBOL_GPL(hv_stimer_cleanup);
> +
> +/* hv_stimer_alloc - Global initialization of the clockevent and stimer0 */
> +int hv_stimer_alloc(int sint)
> +{
> +	hv_clock_event = alloc_percpu(struct clock_event_device);
> +	if (!hv_clock_event)
> +		return -ENOMEM;
> +
> +	direct_mode_enabled = ms_hyperv.misc_features &
> +			HV_STIMER_DIRECT_MODE_AVAILABLE;
> +	if (direct_mode_enabled &&
> +	    hv_setup_stimer0_irq(&stimer0_irq, &stimer0_vector,
> +				hv_stimer0_isr)) {
> +		free_percpu(hv_clock_event);

Leaves a dangling pointer around.

> +		return -EINVAL;

Hrm. Doesn't hv_setup_stimer0_irq() return a useful return value? -EINVAL
looks pretty strange here.

> +	}
> +
> +	stimer0_message_sint = sint;
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(hv_stimer_alloc);
> +
> +/* hv_stimer_free - Free global resources allocated by hv_stimer_alloc() */
> +void hv_stimer_free(void)
> +{
> +	if (direct_mode_enabled)
> +		hv_remove_stimer0_irq(stimer0_irq);
> +	free_percpu(hv_clock_event);

Again dangling pointer. Also is it guaranteed that stimer0_irq has been set
up when this is invoked? As a general rule, make such functions defensive
then you don't need state tracking at the call site and you can invoke them
unconditionally.

> +}
> +EXPORT_SYMBOL_GPL(hv_stimer_free);
> +
> +/*
> + * Do a global cleanup of clockevents for the cases of kexec and
> + * vmbus exit
> + */
> +void hv_stimer_global_cleanup(void)
> +{
> +	int	cpu;
> +	struct clock_event_device *ce;
> +
> +	if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE)
> +		for_each_present_cpu(cpu) {
> +			ce = per_cpu_ptr(hv_clock_event, cpu);
> +			clockevents_unbind_device(ce, cpu);
> +		}

Please put braces after the if () because the 4 lines following it do not
qualify as a single line statement.

Thanks,

	tglx



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
