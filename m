Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B53C16A399
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 11:12:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIcq1bxvoCukFfQpR6n7Xt6X7FiJT4gSILI+pysHEK8=; b=gFRsBKNM7K0QBp
	U+xrMEf6/o7gSUreTwMJpRQvHR2VNk/fDfyJNGj8awZ1T4C7woYXtahpO4eXJjVleBdBMMJwcirLv
	JjCGcOlkd9dMAfGRqu1iRk/8b8qrwj9YJt9JVcSIaBPFilnyuqi9QkZRAlOakfZe9R6qrRRnVirAX
	WfByEwW5O8+g6/kLIk7AkVPQ3nOYVJTmkg/RPGF9Kvm8gpeGU16wvMz7PBKbqn/x1PbFgEWat5974
	qeOYG7CZLIL1kt6LPJ8ZN/wLahpiHjGuCL0qkoLcgBnrFSKVy3MfgaCS+DUR8+eKi/on0CIAX/dlv
	E6hfPBxMgODpUWY5LpCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6AjJ-0003AA-8v; Mon, 24 Feb 2020 10:12:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6AjA-00039l-P4
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 10:12:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C7FB430E;
 Mon, 24 Feb 2020 02:12:39 -0800 (PST)
Received: from [192.168.1.161] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 48CF83F703;
 Mon, 24 Feb 2020 02:12:37 -0800 (PST)
Subject: Re: [PATCH v2 0/3] Fix arm_arch_timer clockmode when vDSO disabled
To: Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>
References: <20200221181849.40351-1-vincenzo.frascino@arm.com>
 <20200222104005.6fc4019d@why> <87h7zg4adw.fsf@nanos.tec.linutronix.de>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <8d93d59b-f7fd-ec88-f915-0460c823992e@arm.com>
Date: Mon, 24 Feb 2020 10:12:52 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <87h7zg4adw.fsf@nanos.tec.linutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_021240_860199_1555ACF0 
X-CRM114-Status: GOOD (  15.13  )
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
Cc: linux-arch@vger.kernel.org, Mark.Rutland@arm.com, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 luto@kernel.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/24/20 9:12 AM, Thomas Gleixner wrote:
> Marc Zyngier <maz@kernel.org> writes:
>> On Fri, 21 Feb 2020 18:18:46 +0000
>> Vincenzo Frascino <vincenzo.frascino@arm.com> wrote:
>>>
>>> This patch series addresses the issue defining a default arch clockmode
>>> for arm and arm64 and using it to initialize the arm_arch_timer.
>>
>> arm only. arm64 is just fine.
> 
> Right. ARM64 unconditionaly enables VDSO
> 
>>
>> This doesn't apply to -rc2, and is rather against next.
> 
> More precise it's against tip timers/core which has the VDSO changes
> which caused this fallout.
>

Agree, I will fix it in the next iteration.

>>> Vincenzo Frascino (3):
>>>   arm: clocksource: Add VDSO default clockmode
>>>   arm64: clocksource: Add VDSO default clockmode
>>>   clocksource: Fix arm_arch_timer clockmode when vDSO disabled
>>
>> Please squash the three patches into a single one. There is zero point
>> in having 3 patches for something that small.
> 
> I really don't see why we need all this redefine foo. What's wrong with
> the obvious?
> 
> --- a/drivers/clocksource/arm_arch_timer.c
> +++ b/drivers/clocksource/arm_arch_timer.c
> @@ -69,7 +69,12 @@ static enum arch_timer_ppi_nr arch_timer
>  static bool arch_timer_c3stop;
>  static bool arch_timer_mem_use_virtual;
>  static bool arch_counter_suspend_stop;
> +
> +#ifdef CONFIG_GENERIC_GETTIMEOFDAY
>  static enum vdso_clock_mode vdso_default = VDSO_CLOCKMODE_ARCHTIMER;
> +#else
> +static enum vdso_clock_mode vdso_default = VDSO_CLOCKMODE_NONE;
> +#endif
>  
>  static cpumask_t evtstrm_available = CPU_MASK_NONE;
>  static bool evtstrm_enable = IS_ENABLED(CONFIG_ARM_ARCH_TIMER_EVTSTREAM);
> 

Nothing, I agree :) I think we over engineered here a bit.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
