Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9A31ABE59
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 12:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X60wOIU3JCFsG7XCMdPOrVy/+iLDytvQpuBhYDaA/FE=; b=p8BSKiaRhEM8ab
	uYD0LntTwWEAr+vf0BXhDTZdA0dhW2kl6nU3NAOaEYu/KHNqQOEy9CQAB22A3m7M3oLv540z6p7fA
	JAHJaWmDzojc1O7j4M/8s7kTc0kqXxXEVgx0YPUW7U2iaJPaUDAa+pWhwYsyj3EjI9k5Rc6UmB14O
	MW1wo1f+F66Z0c2X6bOonb4kRNjdJIL6vOEM0yzAnQ2PstFKlztiabCjn84Iiau2QRnNT71Upf+D3
	rEdPDGHPI3T9aQsbKwt+zlSimp0IjI1EsOF0Qu4n33EvMKL+GfbQlm2JHfHJ/uoPoVOmpbfRJv90T
	nC4YRHu3kJOZxDcwmk6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP21e-000829-3c; Thu, 16 Apr 2020 10:45:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP21V-00081X-R2
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 10:45:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EB356C14;
 Thu, 16 Apr 2020 03:45:30 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D08083F73D;
 Thu, 16 Apr 2020 03:45:29 -0700 (PDT)
Date: Thu, 16 Apr 2020 11:45:27 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Andrei Vagin <avagin@gmail.com>
Subject: Re: [PATCH 3/6] arm64/vdso: Add time napespace page
Message-ID: <20200416104527.GD4987@lakrids.cambridge.arm.com>
References: <20200416052618.804515-1-avagin@gmail.com>
 <20200416052618.804515-4-avagin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416052618.804515-4-avagin@gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_034533_918447_4A448240 
X-CRM114-Status: GOOD (  15.68  )
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
Cc: Dmitry Safonov <dima@arista.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrei,

On Wed, Apr 15, 2020 at 10:26:15PM -0700, Andrei Vagin wrote:
> diff --git a/arch/arm64/include/asm/vdso.h b/arch/arm64/include/asm/vdso.h
> index 07468428fd29..351c145d3808 100644
> --- a/arch/arm64/include/asm/vdso.h
> +++ b/arch/arm64/include/asm/vdso.h
> @@ -12,6 +12,12 @@
>   */
>  #define VDSO_LBASE	0x0
>  
> +#ifdef CONFIG_TIME_NS
> +#define __VVAR_PAGES    2
> +#else
> +#define __VVAR_PAGES    1
> +#endif
> +
>  #ifndef __ASSEMBLY__
  
> +#ifdef CONFIG_TIME_NS
> +static __always_inline const struct vdso_data *__arch_get_timens_vdso_data(void)
> +{
> +	const struct vdso_data *ret;
> +
> +	ret = _timens_data;
> +	OPTIMIZER_HIDE_VAR(ret);
> +
> +	return ret;
> +}
> +#endif

Sorry for the confusion here, but please either:

* Add a preparatory patch making __arch_get_vdso_data() use
  OPTIMIZER_HIDE_VAR(), and use OPTIMIZER_HIDE_VAR() here.

* Use the same assembly as __arch_get_vdso_data() currently does.

... and either way add a comment here:

	/* See __arch_get_vdso_data() */

... so taht the rationale is obvious.

[...]

> +enum vvar_pages {
> +	VVAR_DATA_PAGE_OFFSET = 0,
> +#ifdef CONFIG_TIME_NS
> +	VVAR_TIMENS_PAGE_OFFSET = 1,
> +#endif /* CONFIG_TIME_NS */
> +	VVAR_NR_PAGES = __VVAR_PAGES,
> +};

Pet peeve, but we don't need the initializers here, as enums start from
zero. The last element shouldn't have a trailing comma as we don't
expect to add elements after it in future.

Rather than assigning to VVAR_NR_PAGES, it'd be better to use a
BUILD_BUG_ON() to verify that it is the number we expect:

enum vvar_pages {
	VVAR_DATA_PAGE,
#ifdef CONFIG_TIME_NS
	VVAR_TIMENS_PAGE,
#endif
	VVAR_NR_PAGES
};

BUILD_BUG_ON(VVAR_NR_PAGES != __VVAR_PAGES);

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
