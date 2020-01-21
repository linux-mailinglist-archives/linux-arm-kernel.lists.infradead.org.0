Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD0F143B12
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:34:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7aM67DWbvD0kzwvL8L9EC8SbtK5PUaDKM3ZcxUt83w=; b=egnqJDYYHeP/fX
	U0e8GZKFmVQZ/RNnIYwhlsSRF5MoZyRDa+wmRVBaM1woon1HLD0TUfltPFY5nhj+giv27dQQihcVt
	DD6HOdVCkJodB2hfL4phTGZ6NetCFPvh+LE/rg19rWM+x3Gmu0p6o+dPyI/kA8IO7/0nPfk2FHymM
	Dts+SDPZUdYmOeNHQJnQF0w4Dj0Nl+Xnu6ofL5hEsLLJMDqyTsDfiTBT+aRIU0KAtSSUKDq8Jfwrd
	uIiZp7cjlpPYK1wC6n7479j642jdXdI3+vZCBZqzdsB7irD3XSoUK9pWVMBmvvMJRMTyGg2GJBU/2
	n5wL64QMkLvQh4I4W07w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqrt-0000Bd-0K; Tue, 21 Jan 2020 10:34:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqra-0000Al-0T
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:34:27 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC8042467A;
 Tue, 21 Jan 2020 10:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579602865;
 bh=Ys+ilOAkSfSABdhQEs3/0tZOBH6GdkrMqK440Vrppt8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DMb7l6bJoYrgvUvx8X5S32v2M455JwTZyGhvHoIq1cHRAEd2sRUye7k6jgqAwbXZ5
 r+i9+DiCV5jKIjw2fadHljqwUxcXR6RSe4sYNPeroL0pJv4qA5k4OCtbFSuisU8ubM
 YqZ2GjFxkhwTax253kfOxnCx9n0TPTwmSCyGFKmo=
Date: Tue, 21 Jan 2020 10:34:21 +0000
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: csum: Optimise IPv6 header checksum
Message-ID: <20200121103421.GA11819@willie-the-truck>
References: <3a723a4b08938154c37febe2504f029c4480e53c.1579546194.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a723a4b08938154c37febe2504f029c4480e53c.1579546194.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_023426_090288_9948ACC6 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: zhangshaokun@hisilicon.com, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, huanglingyan2@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+ Shaokun and Lingyan for review and testing feedback]

On Mon, Jan 20, 2020 at 06:52:29PM +0000, Robin Murphy wrote:
> Throwing our __uint128_t idioms at csum_ipv6_magic() makes it
> about 1.3x-2x faster across a range of microarchitecture/compiler
> combinations. Not much in absolute terms, but every little helps.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> Before I move on, this seemed like it might be worth touching as well,
> comparing what other architectures do.
> 
>  arch/arm64/include/asm/checksum.h |  7 ++++++-
>  arch/arm64/lib/csum.c             | 27 +++++++++++++++++++++++++++
>  2 files changed, 33 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/checksum.h b/arch/arm64/include/asm/checksum.h
> index 8d2a7de39744..b6f7bc6da5fb 100644
> --- a/arch/arm64/include/asm/checksum.h
> +++ b/arch/arm64/include/asm/checksum.h
> @@ -5,7 +5,12 @@
>  #ifndef __ASM_CHECKSUM_H
>  #define __ASM_CHECKSUM_H
>  
> -#include <linux/types.h>
> +#include <linux/in6.h>
> +
> +#define _HAVE_ARCH_IPV6_CSUM
> +__sum16 csum_ipv6_magic(const struct in6_addr *saddr,
> +			const struct in6_addr *daddr,
> +			__u32 len, __u8 proto, __wsum sum);
>  
>  static inline __sum16 csum_fold(__wsum csum)
>  {
> diff --git a/arch/arm64/lib/csum.c b/arch/arm64/lib/csum.c
> index 847eb725ce09..4a522e45f23b 100644
> --- a/arch/arm64/lib/csum.c
> +++ b/arch/arm64/lib/csum.c
> @@ -121,3 +121,30 @@ unsigned int do_csum(const unsigned char *buff, int len)
>  
>  	return sum >> 16;
>  }
> +
> +__sum16 csum_ipv6_magic(const struct in6_addr *saddr,
> +			const struct in6_addr *daddr,
> +			__u32 len, __u8 proto, __wsum csum)
> +{
> +	__uint128_t src, dst;
> +	u64 sum = (__force u64)csum;
> +
> +	src = *(const __uint128_t *)saddr->s6_addr;
> +	dst = *(const __uint128_t *)daddr->s6_addr;
> +
> +	sum += (__force u32)htonl(len);
> +#ifdef __LITTLE_ENDIAN
> +	sum += (u32)proto << 24;
> +#else
> +	sum += proto;
> +#endif
> +	src += (src >> 64) | (src << 64);
> +	dst += (dst >> 64) | (dst << 64);
> +
> +	sum = accumulate(sum, src >> 64);
> +	sum = accumulate(sum, dst >> 64);
> +
> +	sum += ((sum >> 32) | (sum << 32));
> +	return csum_fold((__force __wsum)(sum >> 32));
> +}
> +EXPORT_SYMBOL(csum_ipv6_magic);
> -- 
> 2.23.0.dirty
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
