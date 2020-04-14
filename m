Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E48E1A8751
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:20:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GgDneSaqNKqf0jYMeoc4F6CVAqFk6gUr9HZ3R07ADwA=; b=d2TIWBxDjSsNW7
	dBE+ApI5MoPcDaw5R2WWMavmrA9XKar/Nv5zJk9jEdRRHqrPI5ui81acbPEutX4EwjAV28RvOcHw0
	gnO2pa7pqaXTmhp2v71F1WMVtIlE9sn6WPalsgz7DRM7kxFcu9EjwIpzcGPsU4w9aiexsYOh9NaP7
	6ItY0rURxeBLx0Kk4CMBc/84jr6WiPM6dk5/g/J0Ii6V73+CP9NhkZW/30EmCI1gUSFRmi107Tvba
	myqmvRw3HGwIo8KMOLGN3MS5SrapuUzSUWyaFNOBni5NYgtkmGul6rlmTHiVBy+oFdefFV0w/6EqN
	iOMHFoZr4QUrGwTfwm4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPEf-00056r-Tf; Tue, 14 Apr 2020 17:20:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPEW-00054p-KG
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:20:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C014430E;
 Tue, 14 Apr 2020 10:20:23 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.30.4])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 38E863F6C4;
 Tue, 14 Apr 2020 10:20:22 -0700 (PDT)
Date: Tue, 14 Apr 2020 18:20:14 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Andrei Vagin <avagin@gmail.com>
Subject: Re: [PATCH v2 3/6] arm64/vdso: Add time napespace page
Message-ID: <20200414172014.GA6705@C02TD0UTHF1T.local>
References: <20200225073731.465270-1-avagin@gmail.com>
 <20200225073731.465270-4-avagin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225073731.465270-4-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_102024_706024_79F7BFD8 
X-CRM114-Status: GOOD (  21.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Dmitry Safonov <dima@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 11:37:28PM -0800, Andrei Vagin wrote:
> Allocate the time namespace page among VVAR pages.  Provide
> __arch_get_timens_vdso_data() helper for VDSO code to get the
> code-relative position of VVARs on that special page.
> 
> If a task belongs to a time namespace then the VVAR page which contains
> the system wide VDSO data is replaced with a namespace specific page
> which has the same layout as the VVAR page. That page has vdso_data->seq
> set to 1 to enforce the slow path and vdso_data->clock_mode set to
> VCLOCK_TIMENS to enforce the time namespace handling path.
> 
> The extra check in the case that vdso_data->seq is odd, e.g. a concurrent
> update of the VDSO data is in progress, is not really affecting regular
> tasks which are not part of a time namespace as the task is spin waiting
> for the update to finish and vdso_data->seq to become even again.
> 
> If a time namespace task hits that code path, it invokes the corresponding
> time getter function which retrieves the real VVAR page, reads host time
> and then adds the offset for the requested clock which is stored in the
> special VVAR page.
> 
> Signed-off-by: Andrei Vagin <avagin@gmail.com>
> ---
>  arch/arm64/include/asm/vdso.h                 |  6 ++++++
>  .../include/asm/vdso/compat_gettimeofday.h    | 11 ++++++++++
>  arch/arm64/include/asm/vdso/gettimeofday.h    |  8 ++++++++
>  arch/arm64/kernel/vdso.c                      | 20 ++++++++++++++++---
>  arch/arm64/kernel/vdso/vdso.lds.S             |  5 ++++-
>  arch/arm64/kernel/vdso32/vdso.lds.S           |  5 ++++-
>  include/vdso/datapage.h                       |  1 +
>  7 files changed, 51 insertions(+), 5 deletions(-)

> +#ifdef CONFIG_TIME_NS
> +static __always_inline const struct vdso_data *__arch_get_timens_vdso_data(void)
> +{
> +	const struct vdso_data *ret;
> +
> +	asm volatile("mov %0, %1" : "=r"(ret) : "r"(_timens_data));
> +
> +	return ret;
> +}
> +#endif

What is this inline assembly for? The commit message doesn't mention it,
there's no explanation here, and the native version doesn't do likewise
so it seems rather surprising.

Thanks,
Mark.

> diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
> index 5a534432aa5d..553bdc19a91f 100644
> --- a/arch/arm64/include/asm/vdso/gettimeofday.h
> +++ b/arch/arm64/include/asm/vdso/gettimeofday.h
> @@ -97,6 +97,14 @@ const struct vdso_data *__arch_get_vdso_data(void)
>  	return _vdso_data;
>  }
>  
> +#ifdef CONFIG_TIME_NS
> +static __always_inline
> +const struct vdso_data *__arch_get_timens_vdso_data(void)
> +{
> +	return _timens_data;
> +}
> +#endif

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
