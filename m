Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02521122E30
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 15:11:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LxhVzuR2n/wI8q33JaRgqlGq+OCYj+BjfHX7MzhizI0=; b=jykclhyZbn6Rdq
	02nKEEHiCkdgAfngQM/QzDkDfNcd9/zsdZhr6DVgF1m5Vg6lkdC83Ll+Iv7Ks780hcIfr/499z4GX
	UIoI16Y0tXCIM22TWCpRmErjOrNpxWsyrRYRMWdbTkwVlh8OtLOZugiQNzP3fkR3d7gucBr1VfIcQ
	ksIjqNXSzzED77CHJCHe1CeQ5wFebGYqVoysKNstnY/V4n3IYvDviAWi3slMOV9Vm+gCVKShKxPQ7
	UUOzLfWbUGZ/oo6TQhs7KjRhxHXJJ3Wu1ALUMkxy3gaqZDFOhheAZ093eHYhFw69ShqF+UykrvXtP
	I5qFSZJwYS39kBJvQLUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihDYz-00085t-Mq; Tue, 17 Dec 2019 14:11:01 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDYp-00085m-Pb
 for linux-arm-kernel@bombadil.infradead.org; Tue, 17 Dec 2019 14:10:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NU89d8R3gu38BXtEWYFAE1R5MspGNajzMjWsud1XviY=; b=V39HoX4/FYvNvFd+u+fqYDZXNo
 DIKLN43T1wFWedlYY+B40IIn1xqDfokhFVcgxm+KL3CgGMUvM9b/aj+2DSG3RKChroTSAuX0iweHS
 XgbcOISaKAKrIT0TGaqwSTc7wM1rCxT6ymOn2pMXY0UoVVgFxC9p/2DJ1O40YXbRLnUdODZ31UabX
 bh6bucP9DKmk7gj/VF/O8/1DBjy277bLYy+iN/DmV1cwmr7aDXXFll4xLIY5+thyCBaN1olvifHEL
 IpB7j7u8kB+y20q2D0MelWiLhABfSV8Fmq2g5IQZvn/Q2XTkAWI+PWYktN66821WX3Du+lioO36pI
 p7lHBeRw==;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDZF-0004wo-Ho
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 14:11:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576591820;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NU89d8R3gu38BXtEWYFAE1R5MspGNajzMjWsud1XviY=;
 b=OEHlrpD3CsST22+zUsjz8agT56N4WqeiCJ99jLSIl4QyZOnh9R1xipKAErKoKpb+iGSJD8
 oPprrREH24wn9uiIWqn1NMJSnsCYrAotHwjYK86nhYfQlmTkbBUHuC1Bwl/irk4DHjBHao
 mqVL6XVhMjaurVBqB5fu3Bv0E7z53GQ=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-250-zSd5RCnQPsCaH_iOr2hqVA-1; Tue, 17 Dec 2019 09:10:19 -0500
Received: by mail-wr1-f70.google.com with SMTP id f10so5423743wro.14
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 06:10:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=l+9uMkP5RS2E3iz9PV+jjXlyXbFKuV9GLhcKuu5FhcU=;
 b=Lkt+6HnF5N/xv/odui82MrUSDbP8ghVaTJH0XLlhUk+Om49KNFmWlcvsH87jaIN+z1
 zkuS1qwRo7ZT1PPrtfjpCQXsOzADRad98z3sgPf6928tLlDmx+Cebbn+SmxA9vbIOKDu
 iElMpXPX3BEyWWJAP0RevZGK4YQIEZzFLI/edkxbTqQGAahB1BVOuDe32y0kYSYub/Nr
 spo9mTNAiEn98sLZ83sj8FYfksy0Qm3Ls7cVmw77P2hePfbLNMvPfI/td/IMT3XA5mFJ
 0EQNOcXoEHPOwSqHtK/KLp9x3MtsuqFtgEaLLSQSQXGKQsRvMEi7TRac7CwiWKABRSeX
 tdog==
X-Gm-Message-State: APjAAAX09SIhRbKfRVhyTV6d+BxiGZXPOXiCThtkKtLrqvd8krNz0Eo+
 bUzUwRtYKpc5MiVTdu7YteEuWhlAk5UpL3TFEFWhUDvkD0aoniLQyUaYCnE6Q1PvhdfTspVcCer
 mX1g3KW6ahfAc3PUIEd14v1CPzRd4p3r20I8=
X-Received: by 2002:adf:f2d0:: with SMTP id d16mr38825218wrp.314.1576591817686; 
 Tue, 17 Dec 2019 06:10:17 -0800 (PST)
X-Google-Smtp-Source: APXvYqwaELcthklaxQ6wLgDx/YlEXj3opzNJiBv6389QDhORMgwNtbPpUtXb75P8pH2ZWl6IiqNKdg==
X-Received: by 2002:adf:f2d0:: with SMTP id d16mr38825179wrp.314.1576591817477; 
 Tue, 17 Dec 2019 06:10:17 -0800 (PST)
Received: from vitty.brq.redhat.com (nat-pool-brq-t.redhat.com.
 [213.175.37.10])
 by smtp.gmail.com with ESMTPSA id o194sm3248953wme.45.2019.12.17.06.10.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 06:10:16 -0800 (PST)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Boqun Feng <boqun.feng@gmail.com>
Subject: Re: [RFC 6/6] arm64: hyperv: Enable vDSO
In-Reply-To: <20191216001922.23008-7-boqun.feng@gmail.com>
References: <20191216001922.23008-1-boqun.feng@gmail.com>
 <20191216001922.23008-7-boqun.feng@gmail.com>
Date: Tue, 17 Dec 2019 15:10:16 +0100
Message-ID: <87y2vb82lz.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-MC-Unique: zSd5RCnQPsCaH_iOr2hqVA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_141117_710627_4304E070 
X-CRM114-Status: GOOD (  20.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, linux-hyperv@vger.kernel.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, linux-kernel@vger.kernel.org,
 Michael Kelley <mikelley@microsoft.com>,
 Stefano Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org,
 Thomas Gleixner <tglx@linutronix.de>, "K. Y. Srinivasan" <kys@microsoft.com>,
 Will Deacon <will@kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Boqun Feng <boqun.feng@gmail.com> writes:

> Similar to x86, add a new vclock_mode VCLOCK_HVCLOCK, and reuse the
> hv_read_tsc_page() for userspace to read tsc page clocksource.
>
> Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
> ---
>  arch/arm64/include/asm/clocksource.h       |  3 ++-
>  arch/arm64/include/asm/mshyperv.h          |  2 +-
>  arch/arm64/include/asm/vdso/gettimeofday.h | 19 +++++++++++++++++++
>  3 files changed, 22 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/include/asm/clocksource.h b/arch/arm64/include/asm/clocksource.h
> index fbe80057468c..c6acd45fe748 100644
> --- a/arch/arm64/include/asm/clocksource.h
> +++ b/arch/arm64/include/asm/clocksource.h
> @@ -4,7 +4,8 @@
>  
>  #define VCLOCK_NONE	0	/* No vDSO clock available.		*/
>  #define VCLOCK_CNTVCT	1	/* vDSO should use cntvcnt		*/
> -#define VCLOCK_MAX	1
> +#define VCLOCK_HVCLOCK	2	/* vDSO should use vread_hvclock()	*/
> +#define VCLOCK_MAX	2
>  
>  struct arch_clocksource_data {
>  	int vclock_mode;
> diff --git a/arch/arm64/include/asm/mshyperv.h b/arch/arm64/include/asm/mshyperv.h
> index 0afb00e3501d..7c85dd816dca 100644
> --- a/arch/arm64/include/asm/mshyperv.h
> +++ b/arch/arm64/include/asm/mshyperv.h
> @@ -90,7 +90,7 @@ extern void hv_get_vpreg_128(u32 reg, struct hv_get_vp_register_output *result);
>  #define hv_set_reference_tsc(val) \
>  		hv_set_vpreg(HV_REGISTER_REFERENCE_TSC, val)
>  #define hv_set_clocksource_vdso(val) \
> -		((val).archdata.vclock_mode = VCLOCK_NONE)
> +		((val).archdata.vclock_mode = VCLOCK_HVCLOCK)
>  
>  #if IS_ENABLED(CONFIG_HYPERV)
>  #define hv_enable_stimer0_percpu_irq(irq)	enable_percpu_irq(irq, 0)
> diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
> index e6e3fe0488c7..7e689b903f4d 100644
> --- a/arch/arm64/include/asm/vdso/gettimeofday.h
> +++ b/arch/arm64/include/asm/vdso/gettimeofday.h
> @@ -67,6 +67,20 @@ int clock_getres_fallback(clockid_t _clkid, struct __kernel_timespec *_ts)
>  	return ret;
>  }
>  
> +#ifdef CONFIG_HYPERV_TIMER
> +/* This will override the default hv_get_raw_timer() */
> +#define hv_get_raw_timer() __arch_counter_get_cntvct()
> +#include <clocksource/hyperv_timer.h>
> +
> +extern struct ms_hyperv_tsc_page
> +_hvclock_page __attribute__((visibility("hidden")));
> +
> +static u64 vread_hvclock(void)
> +{
> +	return hv_read_tsc_page(&_hvclock_page);
> +}
> +#endif

The function is almost the same on x86 (&_hvclock_page ->
&hvclock_page), would it maybe make sense to move this to arch neutral
clocksource/hyperv_timer.h?

> +
>  static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
>  {
>  	u64 res;
> @@ -78,6 +92,11 @@ static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
>  	if (clock_mode == VCLOCK_NONE)
>  		return __VDSO_USE_SYSCALL;
>  
> +#ifdef CONFIG_HYPERV_TIMER
> +	if (likely(clock_mode == VCLOCK_HVCLOCK))
> +		return vread_hvclock();

I'm not sure likely() is justified here: it'll make ALL builds which
enable CONFIG_HYPERV_TIMER (e.g. distro kernels) to prefer
VCLOCK_HVCLOCK, even if the kernel is not running on Hyper-V.

> +#endif
> +
>  	/*
>  	 * This isb() is required to prevent that the counter value
>  	 * is speculated.

-- 
Vitaly


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
