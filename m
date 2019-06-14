Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA21E45CA3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:21:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ThDpIrz5ijmUSjnoenE1OIOOgXwilcxmQ0h7O4iqa9s=; b=geqQf2v1FCAjux
	AEq4KDqaNzimXigRBV3ydo30CMziO5Q9uJfXNUxmKLqLue9Szh1TrWRAc998ISy4fW8tPR4Yoig+P
	OZzfRi+W4SpfCDfaSh1cm8gLNGNRcf1evpDvdks+vpegL/n7iOjdCWrZLESwBXV+O2ZZU2QhxyrZx
	5+u9Eq440iHXz0gO3Ovs/eMxfMXkAqYwkX22fej+n+Igae6kInsAUcxxLAAmPmWeFrtTHUvGj064i
	hbe5tRAjOmhldp0OxK6aoqRE+GU5fL0fHzOHzo5cJhMjK/t67L5h17ZcKZT3jLiLJ+gj4pNHKVY90
	qhnXMWUf2WIoL0vTArSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hblCd-0004eI-RW; Fri, 14 Jun 2019 12:21:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl6H-0004vl-0p
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:14:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7972B2B;
 Fri, 14 Jun 2019 05:14:30 -0700 (PDT)
Received: from [192.168.1.18] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F11DD3F246;
 Fri, 14 Jun 2019 05:14:27 -0700 (PDT)
Subject: Re: [PATCH v6 03/19] kernel: Unify update_vsyscall implementation
To: Thomas Gleixner <tglx@linutronix.de>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-4-vincenzo.frascino@arm.com>
 <alpine.DEB.2.21.1906141307430.1722@nanos.tec.linutronix.de>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <a69e48a2-575d-255c-2653-d3e99b7ba760@arm.com>
Date: Fri, 14 Jun 2019 13:15:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1906141307430.1722@nanos.tec.linutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051433_191117_BF4D451F 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arch@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 linux-kselftest@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

On 6/14/19 12:10 PM, Thomas Gleixner wrote:
> On Thu, 30 May 2019, Vincenzo Frascino wrote:
>> +
>> +	if (__arch_use_vsyscall(vdata)) {
>> +		vdata[CS_HRES_COARSE].cycle_last	=
>> +						tk->tkr_mono.cycle_last;
>> +		vdata[CS_HRES_COARSE].mask		=
>> +						tk->tkr_mono.mask;
>> +		vdata[CS_HRES_COARSE].mult		=
>> +						tk->tkr_mono.mult;
> 
> These line breaks make it really hard to read. Can you fold in the patch
> below please?
> 

Thanks for this. I will do it in v7.

> Thanks,
> 
> 	tglx
> 8<-----------
> --- a/kernel/vdso/vsyscall.c
> +++ b/kernel/vdso/vsyscall.c
> @@ -11,6 +11,66 @@
>  #include <vdso/helpers.h>
>  #include <vdso/vsyscall.h>
>  
> +static inline void udpate_vdata(struct vdso_data *vdata, struct timekeeper *tk)
> +{
> +	struct vdso_timestamp *vdso_ts;
> +	u64 nsec;
> +
> +	vdata[CS_HRES_COARSE].cycle_last	= tk->tkr_mono.cycle_last;
> +	vdata[CS_HRES_COARSE].mask		= tk->tkr_mono.mask;
> +	vdata[CS_HRES_COARSE].mult		= tk->tkr_mono.mult;
> +	vdata[CS_HRES_COARSE].shift		= tk->tkr_mono.shift;
> +	vdata[CS_RAW].cycle_last		= tk->tkr_raw.cycle_last;
> +	vdata[CS_RAW].mask			= tk->tkr_raw.mask;
> +	vdata[CS_RAW].mult			= tk->tkr_raw.mult;
> +	vdata[CS_RAW].shift			= tk->tkr_raw.shift;
> +
> +	/* CLOCK_REALTIME */
> +	vdso_ts		=  &vdata[CS_HRES_COARSE].basetime[CLOCK_REALTIME];
> +	vdso_ts->sec	= tk->xtime_sec;
> +	vdso_ts->nsec	= tk->tkr_mono.xtime_nsec;
> +
> +	/* CLOCK_MONOTONIC */
> +	vdso_ts		= &vdata[CS_HRES_COARSE].basetime[CLOCK_MONOTONIC];
> +	vdso_ts->sec	= tk->xtime_sec + tk->wall_to_monotonic.tv_sec;
> +
> +	nsec = tk->tkr_mono.xtime_nsec;
> +	nsec += ((u64)tk->wall_to_monotonic.tv_nsec << tk->tkr_mono.shift);
> +	while (nsec >= (((u64)NSEC_PER_SEC) << tk->tkr_mono.shift)) {
> +		nsec -= (((u64)NSEC_PER_SEC) << tk->tkr_mono.shift);
> +		vdso_ts->sec++;
> +	}
> +	vdso_ts->nsec	= nsec;
> +
> +	/* CLOCK_MONOTONIC_RAW */
> +	vdso_ts		= &vdata[CS_RAW].basetime[CLOCK_MONOTONIC_RAW];
> +	vdso_ts->sec	= tk->raw_sec;
> +	vdso_ts->nsec	= tk->tkr_raw.xtime_nsec;
> +
> +	/* CLOCK_BOOTTIME */
> +	vdso_ts		= &vdata[CS_HRES_COARSE].basetime[CLOCK_BOOTTIME];
> +	vdso_ts->sec	= tk->xtime_sec + tk->wall_to_monotonic.tv_sec;
> +	nsec = tk->tkr_mono.xtime_nsec;
> +	nsec += ((u64)(tk->wall_to_monotonic.tv_nsec +
> +		       ktime_to_ns(tk->offs_boot)) << tk->tkr_mono.shift);
> +	while (nsec >= (((u64)NSEC_PER_SEC) << tk->tkr_mono.shift)) {
> +		nsec -= (((u64)NSEC_PER_SEC) << tk->tkr_mono.shift);
> +		vdso_ts->sec++;
> +	}
> +	vdso_ts->nsec	= nsec;
> +
> +	/* CLOCK_TAI */
> +	vdso_ts		= &vdata[CS_HRES_COARSE].basetime[CLOCK_TAI];
> +	vdso_ts->sec	= tk->xtime_sec + (s64)tk->tai_offset;
> +	vdso_ts->nsec	= tk->tkr_mono.xtime_nsec;
> +
> +	/*
> +	 * Read without the seqlock held by clock_getres().
> +	 * Note: No need to have a second copy.
> +	 */
> +	WRITE_ONCE(vdata[CS_HRES_COARSE].hrtimer_res, hrtimer_resolution);
> +}
> +
>  void update_vsyscall(struct timekeeper *tk)
>  {
>  	struct vdso_data *vdata = __arch_get_k_vdso_data();
> @@ -32,92 +92,23 @@ void update_vsyscall(struct timekeeper *
>  	vdata[CS_RAW].clock_mode		= __arch_get_clock_mode(tk);
>  
>  	/* CLOCK_REALTIME_COARSE */
> -	vdso_ts			=
> -			&vdata[CS_HRES_COARSE].basetime[CLOCK_REALTIME_COARSE];
> -	vdso_ts->sec		= tk->xtime_sec;
> -	vdso_ts->nsec		= tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift;
> +	vdso_ts		= &vdata[CS_HRES_COARSE].basetime[CLOCK_REALTIME_COARSE];
> +	vdso_ts->sec	= tk->xtime_sec;
> +	vdso_ts->nsec	= tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift;
> +
>  	/* CLOCK_MONOTONIC_COARSE */
> -	vdso_ts			=
> -			&vdata[CS_HRES_COARSE].basetime[CLOCK_MONOTONIC_COARSE];
> -	vdso_ts->sec		= tk->xtime_sec + tk->wall_to_monotonic.tv_sec;
> -	nsec			= tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift;
> -	nsec			= nsec + tk->wall_to_monotonic.tv_nsec;
> +	vdso_ts		= &vdata[CS_HRES_COARSE].basetime[CLOCK_MONOTONIC_COARSE];
> +	vdso_ts->sec	= tk->xtime_sec + tk->wall_to_monotonic.tv_sec;
> +	nsec		= tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift;
> +	nsec		= nsec + tk->wall_to_monotonic.tv_nsec;
>  	while (nsec >= NSEC_PER_SEC) {
>  		nsec = nsec - NSEC_PER_SEC;
>  		vdso_ts->sec++;
>  	}
> -	vdso_ts->nsec		= nsec;
> +	vdso_ts->nsec	= nsec;
>  
> -	if (__arch_use_vsyscall(vdata)) {
> -		vdata[CS_HRES_COARSE].cycle_last	=
> -						tk->tkr_mono.cycle_last;
> -		vdata[CS_HRES_COARSE].mask		=
> -						tk->tkr_mono.mask;
> -		vdata[CS_HRES_COARSE].mult		=
> -						tk->tkr_mono.mult;
> -		vdata[CS_HRES_COARSE].shift		=
> -						tk->tkr_mono.shift;
> -		vdata[CS_RAW].cycle_last		=
> -						tk->tkr_raw.cycle_last;
> -		vdata[CS_RAW].mask			=
> -						tk->tkr_raw.mask;
> -		vdata[CS_RAW].mult			=
> -						tk->tkr_raw.mult;
> -		vdata[CS_RAW].shift			=
> -						tk->tkr_raw.shift;
> -		/* CLOCK_REALTIME */
> -		vdso_ts			=
> -			&vdata[CS_HRES_COARSE].basetime[CLOCK_REALTIME];
> -		vdso_ts->sec		= tk->xtime_sec;
> -		vdso_ts->nsec		= tk->tkr_mono.xtime_nsec;
> -		/* CLOCK_MONOTONIC */
> -		vdso_ts			=
> -			&vdata[CS_HRES_COARSE].basetime[CLOCK_MONOTONIC];
> -		vdso_ts->sec		= tk->xtime_sec +
> -					  tk->wall_to_monotonic.tv_sec;
> -		nsec			= tk->tkr_mono.xtime_nsec;
> -		nsec			= nsec +
> -					  ((u64)tk->wall_to_monotonic.tv_nsec <<
> -					  tk->tkr_mono.shift);
> -		while (nsec >= (((u64)NSEC_PER_SEC) << tk->tkr_mono.shift)) {
> -			nsec = nsec -
> -			       (((u64)NSEC_PER_SEC) << tk->tkr_mono.shift);
> -			vdso_ts->sec++;
> -		}
> -		vdso_ts->nsec		= nsec;
> -		/* CLOCK_MONOTONIC_RAW */
> -		vdso_ts			=
> -			&vdata[CS_RAW].basetime[CLOCK_MONOTONIC_RAW];
> -		vdso_ts->sec		= tk->raw_sec;
> -		vdso_ts->nsec		= tk->tkr_raw.xtime_nsec;
> -		/* CLOCK_BOOTTIME */
> -		vdso_ts			=
> -			&vdata[CS_HRES_COARSE].basetime[CLOCK_BOOTTIME];
> -		vdso_ts->sec		= tk->xtime_sec +
> -					  tk->wall_to_monotonic.tv_sec;
> -		nsec			= tk->tkr_mono.xtime_nsec;
> -		nsec			= nsec +
> -					  ((u64)(tk->wall_to_monotonic.tv_nsec +
> -					  ktime_to_ns(tk->offs_boot)) <<
> -					  tk->tkr_mono.shift);
> -		while (nsec >= (((u64)NSEC_PER_SEC) << tk->tkr_mono.shift)) {
> -			nsec = nsec -
> -				(((u64)NSEC_PER_SEC) << tk->tkr_mono.shift);
> -			vdso_ts->sec++;
> -		}
> -		vdso_ts->nsec		= nsec;
> -		/* CLOCK_TAI */
> -		vdso_ts			=
> -			&vdata[CS_HRES_COARSE].basetime[CLOCK_TAI];
> -		vdso_ts->sec		= tk->xtime_sec + (s64)tk->tai_offset;
> -		vdso_ts->nsec		= tk->tkr_mono.xtime_nsec;
> -
> -		/*
> -		 * Read without the seqlock held by clock_getres().
> -		 * Note: No need to have a second copy.
> -		 */
> -		WRITE_ONCE(vdata[CS_HRES_COARSE].hrtimer_res, hrtimer_resolution);
> -	}
> +	if (__arch_use_vsyscall(vdata))
> +		update_vdata(vdata, tk);
>  
>  	__arch_update_vsyscall(vdata, tk);
>  
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
