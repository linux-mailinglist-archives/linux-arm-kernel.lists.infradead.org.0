Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F3055566
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 19:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ny4AYbjLTG2rMzoyWu25+znbncXdIfyBjJZhLF8iVKc=; b=mjChTLG1vaCy50
	ztYaBGufoIliadp2IS1l/+4IytM7ILEi1agbU0WqY0RIpfQTMwxcFCZV+TbooxQgn5/mpyVeQJO0a
	hxPqom0lxDDJZkqfk3BSu2CkLZk+0mR90zv/rWTD4Y3BdF0cCv+XLEoxmUIDxRzbrIZhbuCvV7Kkt
	SM/NqWLrTSPto/oMOrd6q5/c2SEZ/4tkx4/ewJZGaQC80/fHa1OZP5EY5QUfgcg+C1cWz9KTtmrnO
	n6DR28eRQeTC36gOhvwPWBv+wpgE75QTb2Iiz+feKwb7OrUYujiBuEuy/pjHejHFHwPkkK0q8xNAa
	ZIdYS99ogZb7qDspX+wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfor0-0004eU-A3; Tue, 25 Jun 2019 17:03:34 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfopo-00046d-Ks
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 17:02:23 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hfopi-0004Hb-GJ; Tue, 25 Jun 2019 19:02:14 +0200
Date: Tue, 25 Jun 2019 19:02:13 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH 1/3] lib/vdso: Delay mask application in do_hres()
In-Reply-To: <20190625161804.38713-1-vincenzo.frascino@arm.com>
Message-ID: <alpine.DEB.2.21.1906251851350.32342@nanos.tec.linutronix.de>
References: <20190624133607.GI29497@fuggles.cambridge.arm.com>
 <20190625161804.38713-1-vincenzo.frascino@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_100221_589953_2B5FA1DB 
X-CRM114-Status: GOOD (  20.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, shuah@kernel.org, sthotton@marvell.com,
 andre.przywara@arm.com, Arnd Bergmann <arnd@arndb.de>, huw@codeweavers.com,
 catalin.marinas@arm.com, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Will Deacon <will.deacon@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, linux-mips@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, paul.burton@mips.com,
 linux-kselftest@vger.kernel.org, linux@rasmusvillemoes.dk,
 linux@armlinux.org.uk, 0x7f454c46@gmail.com, salyzyn@android.com,
 pcc@google.com, LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 25 Jun 2019, Vincenzo Frascino wrote:

CC+ Andy

> do_hres() in the vDSO generic library masks the hw counter value
> immediately after reading it.
> 
> Postpone the mask application after checking if the syscall fallback is
> enabled, in order to be able to detect a possible fallback for the
> architectures that have masks smaller than ULLONG_MAX.

Right. This only worked on x86 because the mask is there ULLONG_MAX for all
VDSO capable clocksources, i.e. that ever worked just by chance.

As we talked about that already yesterday, I tested this on a couple of
machines and as expected the outcome is uarch dependent. Minimal deviations
to both sides and some machines do not show any change at all. I doubt it's
possible to come up with a solution which makes all uarchs go faster
magically.

Though, thinking about it, we could remove the mask operation completely on
X86. /me runs tests

Thanks,

	tglx


> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  lib/vdso/gettimeofday.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
> index ef28cc5d7bff..ee1221ba1d32 100644
> --- a/lib/vdso/gettimeofday.c
> +++ b/lib/vdso/gettimeofday.c
> @@ -35,12 +35,12 @@ static int do_hres(const struct vdso_data *vd, clockid_t clk,
>  
>  	do {
>  		seq = vdso_read_begin(vd);
> -		cycles = __arch_get_hw_counter(vd->clock_mode) &
> -			vd->mask;
> +		cycles = __arch_get_hw_counter(vd->clock_mode);
>  		ns = vdso_ts->nsec;
>  		last = vd->cycle_last;
>  		if (unlikely((s64)cycles < 0))
>  			return clock_gettime_fallback(clk, ts);
> +		cycles &= vd->mask;
>  		if (cycles > last)
>  			ns += (cycles - last) * vd->mult;
>  		ns >>= vd->shift;
> -- 
> 2.22.0
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
