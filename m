Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AED123F40
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 06:47:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+MjkYZjgPl978/4hkwqiBizpyboJwW63OsBjp/mj6A4=; b=mDl6KPGwS4URzn
	jjx7wh0n/NuzPUHmLICMesDKIzWFl7x63asXBKkkWT8NiLF355NBTXMoZETH0jLSlleYArJT5Tt6O
	VQP2x1Z6a04O6U/c5TWtqWJkaFJS2duRExAyjZG33R5guPsMp9n8PO8ROb3WIHyasB2YnTfTl93MK
	PrBCLVAF6O87tKj3TG+EZAsIYPcYDeSqvDOtfxOrBBLCHHiRDGFjo12u7Z+rSskQL5GRRbQ4VaAMK
	6bkLmfzKuyNMw7WhMWWUQ5KPn2NXUeq+llb9BQcct1MWeuWjg58tvXv4lKaLBoSlsvO5n7/pZDOWP
	K95uZdU6JACnU7FRz5wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihSBb-0004TH-7m; Wed, 18 Dec 2019 05:47:51 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihSBQ-0004Sq-JH
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 05:47:42 +0000
Received: by mail-qk1-x741.google.com with SMTP id x129so601882qke.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 21:47:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rdMMSS5mGXhXxSzn8vN5OSqGco+TdXWURJZsejhpNlU=;
 b=IbnAbj6RtNE27gTD/82fE5rTu6luXBFeErBAampq/mDtF+82hybj1EYlIJDNleRtWb
 Tc4xby6WNKEe1VSWAzvQ40QRBdEwkpaoip/jXm9+Y+0/Tdp34uz38tiuwZMmV3ZpCX+7
 bO+zDh5JQqe502cQCnq8O8hMlBmXcXFxstpyjlB6KqjnSJs6eyObBs9hyl+/FL3Y1wkq
 k9CEZwWyoAAnbiVWo5OLtx6PDUm03DNKDOhovQncKCIVwQztzjY5dDfDcORDypYn1Ciq
 IFdm/4n/bUxaAX34UFIFDcwT7AykhHSdACqkLGLZmGzdHLujESdTVCUvUhxVm2CULKmL
 Uzcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rdMMSS5mGXhXxSzn8vN5OSqGco+TdXWURJZsejhpNlU=;
 b=nscHymqs3wt7TgnbQ3Pv102C5zk5xUxuHHY206NpQcqyKTl1FS08MckHQen6n33Xjk
 x/OaY+bBpU68woYhfQMlG+Qaxs2oqr6uZuQvjMwbyMkAKqirzaLKMAZiqeZ3yWLzfHrY
 gUBY8elqCVwmryfb3qYkSjiKEon3lYps20DeWGk1PRJf8Dgyfx2gYRvTUZyArEMkQF4D
 sBxmFmckuYX+xljq+5jYOm6RqiMvjqcA1hGSShYTpjNZrEIzw99i58Fz1w/g3kXb9uGY
 2mUFbIO/mhSgQgQAZk0Bu7hiVKGeGtr+HvN1u9hJjh/WRXyAyDJs9W916jDps/tmoiYO
 CrIA==
X-Gm-Message-State: APjAAAWSCKGG934IBG5x8kFeKuU2Ow7TbNolMVFilJp6r1VrSWdROnox
 yOK0qnewGE11Qa69Fepd4lPzTrr8
X-Google-Smtp-Source: APXvYqxaNz0RO1lOZKINUdqFpRia863ytJsrYewYWjT74VbIG5he6WOrbsQMH4RbQA7++XwYkL1Icg==
X-Received: by 2002:ae9:e41a:: with SMTP id q26mr790211qkc.288.1576648057742; 
 Tue, 17 Dec 2019 21:47:37 -0800 (PST)
Received: from auth2-smtp.messagingengine.com (auth2-smtp.messagingengine.com.
 [66.111.4.228])
 by smtp.gmail.com with ESMTPSA id t198sm354933qke.6.2019.12.17.21.47.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Dec 2019 21:47:37 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 751CC22223;
 Wed, 18 Dec 2019 00:47:35 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Wed, 18 Dec 2019 00:47:35 -0500
X-ME-Sender: <xms:dr35XX1gdcqGAIqLT51JyHjdGnzLF1l4WLjUXPweExjBpT4Ci871Yw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtkedgkeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepuehoqhhu
 nhcuhfgvnhhguceosghoqhhunhdrfhgvnhhgsehgmhgrihhlrdgtohhmqeenucfkphephe
 dvrdduheehrdduuddurdejudenucfrrghrrghmpehmrghilhhfrhhomhepsghoqhhunhdo
 mhgvshhmthhprghuthhhphgvrhhsohhnrghlihhthidqieelvdeghedtieegqddujeejke
 ehheehvddqsghoqhhunhdrfhgvnhhgpeepghhmrghilhdrtghomhesfhhigihmvgdrnhgr
 mhgvnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:dr35XQd4G4lVVfUNeZx2swRweY951aczqjlN0OH0Ok8mYQMGgCrtzQ>
 <xmx:dr35XeAEw3MdzyfTpxLn4CyJvUYuy7W7U_PYH1XUlribC_owMFWxJg>
 <xmx:dr35XX93UVrpEnOnntHX8srZBT8vFtWAMQ0ErbFr4ymsIt3qA4Z23Q>
 <xmx:d735XRpK3pJiUKvIRHERfgQkVY3faW59Xm1i2MFCfRkSRilXSIUcNFuGAOc>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id 06F2B8005A;
 Wed, 18 Dec 2019 00:47:33 -0500 (EST)
Date: Wed, 18 Dec 2019 13:47:32 +0800
From: Boqun Feng <boqun.feng@gmail.com>
To: Vitaly Kuznetsov <vkuznets@redhat.com>
Subject: Re: [RFC 6/6] arm64: hyperv: Enable vDSO
Message-ID: <20191218054732.GK97412@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
References: <20191216001922.23008-1-boqun.feng@gmail.com>
 <20191216001922.23008-7-boqun.feng@gmail.com>
 <87y2vb82lz.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87y2vb82lz.fsf@vitty.brq.redhat.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_214740_671736_815E2993 
X-CRM114-Status: GOOD (  23.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (boqun.feng[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 03:10:16PM +0100, Vitaly Kuznetsov wrote:
> Boqun Feng <boqun.feng@gmail.com> writes:
> 
> > Similar to x86, add a new vclock_mode VCLOCK_HVCLOCK, and reuse the
> > hv_read_tsc_page() for userspace to read tsc page clocksource.
> >
> > Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
> > ---
> >  arch/arm64/include/asm/clocksource.h       |  3 ++-
> >  arch/arm64/include/asm/mshyperv.h          |  2 +-
> >  arch/arm64/include/asm/vdso/gettimeofday.h | 19 +++++++++++++++++++
> >  3 files changed, 22 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/include/asm/clocksource.h b/arch/arm64/include/asm/clocksource.h
> > index fbe80057468c..c6acd45fe748 100644
> > --- a/arch/arm64/include/asm/clocksource.h
> > +++ b/arch/arm64/include/asm/clocksource.h
> > @@ -4,7 +4,8 @@
> >  
> >  #define VCLOCK_NONE	0	/* No vDSO clock available.		*/
> >  #define VCLOCK_CNTVCT	1	/* vDSO should use cntvcnt		*/
> > -#define VCLOCK_MAX	1
> > +#define VCLOCK_HVCLOCK	2	/* vDSO should use vread_hvclock()	*/
> > +#define VCLOCK_MAX	2
> >  
> >  struct arch_clocksource_data {
> >  	int vclock_mode;
> > diff --git a/arch/arm64/include/asm/mshyperv.h b/arch/arm64/include/asm/mshyperv.h
> > index 0afb00e3501d..7c85dd816dca 100644
> > --- a/arch/arm64/include/asm/mshyperv.h
> > +++ b/arch/arm64/include/asm/mshyperv.h
> > @@ -90,7 +90,7 @@ extern void hv_get_vpreg_128(u32 reg, struct hv_get_vp_register_output *result);
> >  #define hv_set_reference_tsc(val) \
> >  		hv_set_vpreg(HV_REGISTER_REFERENCE_TSC, val)
> >  #define hv_set_clocksource_vdso(val) \
> > -		((val).archdata.vclock_mode = VCLOCK_NONE)
> > +		((val).archdata.vclock_mode = VCLOCK_HVCLOCK)
> >  
> >  #if IS_ENABLED(CONFIG_HYPERV)
> >  #define hv_enable_stimer0_percpu_irq(irq)	enable_percpu_irq(irq, 0)
> > diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
> > index e6e3fe0488c7..7e689b903f4d 100644
> > --- a/arch/arm64/include/asm/vdso/gettimeofday.h
> > +++ b/arch/arm64/include/asm/vdso/gettimeofday.h
> > @@ -67,6 +67,20 @@ int clock_getres_fallback(clockid_t _clkid, struct __kernel_timespec *_ts)
> >  	return ret;
> >  }
> >  
> > +#ifdef CONFIG_HYPERV_TIMER
> > +/* This will override the default hv_get_raw_timer() */
> > +#define hv_get_raw_timer() __arch_counter_get_cntvct()
> > +#include <clocksource/hyperv_timer.h>
> > +
> > +extern struct ms_hyperv_tsc_page
> > +_hvclock_page __attribute__((visibility("hidden")));
> > +
> > +static u64 vread_hvclock(void)
> > +{
> > +	return hv_read_tsc_page(&_hvclock_page);
> > +}
> > +#endif
> 
> The function is almost the same on x86 (&_hvclock_page ->
> &hvclock_page), would it maybe make sense to move this to arch neutral
> clocksource/hyperv_timer.h?
> 

I'm not sure whether the underscore matters in the vDSO data symbol, so
I follow the architectural name convention. If the leading underscore
doesn't have special purpose I'm happy to move this to arch neutral
header file.

> > +
> >  static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
> >  {
> >  	u64 res;
> > @@ -78,6 +92,11 @@ static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
> >  	if (clock_mode == VCLOCK_NONE)
> >  		return __VDSO_USE_SYSCALL;
> >  
> > +#ifdef CONFIG_HYPERV_TIMER
> > +	if (likely(clock_mode == VCLOCK_HVCLOCK))
> > +		return vread_hvclock();
> 
> I'm not sure likely() is justified here: it'll make ALL builds which
> enable CONFIG_HYPERV_TIMER (e.g. distro kernels) to prefer
> VCLOCK_HVCLOCK, even if the kernel is not running on Hyper-V.
> 

Make sense. Thanks for pointing this out! I will change it in the next
version.

Regards,
Boqun

> > +#endif
> > +
> >  	/*
> >  	 * This isb() is required to prevent that the counter value
> >  	 * is speculated.
> 
> -- 
> Vitaly
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
