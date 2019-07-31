Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 759CB7C173
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pBL2jo3zw2phLiPOIoNZQbYrE/skKHFpgad+7WR7W94=; b=RpZjNXCIJCj62D
	xfkXRt8eWSr2ZsN7jZ7nbfhZctP8p3LiwCl5WPH77+ta8O3ZAYw+b1MY95eSJP35+OkhOMlpzw/od
	eZqmXSsR2RLkvdKp9EtfMH+PJVtvHjnEoIarduNScyxYmN/dE4jgYsL6/4dwUCKOraz3DBcpzoRwB
	oDSmWqb6Oil/oG4XJbUBA/YKwkVfr9p1jsxZ1CPSTD7+chnWN2b43YIfwu5eMgYpdHAMPfQSXLnhK
	xt7RBhXxuI+pGbbjzJ+uMktZM51GKTnACd7u+/ojCWRZdloqjeCIPy9DSXiZ8uFHyQRxLh5hg56ao
	DD1z0uLCoyxez6qQVZ2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnr8-0005eg-R6; Wed, 31 Jul 2019 12:37:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnr2-0005eL-3L
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:37:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A039D344;
 Wed, 31 Jul 2019 05:37:15 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4C9FC3F575;
 Wed, 31 Jul 2019 05:37:14 -0700 (PDT)
Date: Wed, 31 Jul 2019 13:37:12 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v4.4 V2 11/43] arm64: uaccess: Mask __user pointers for
 __arch_{clear, copy_*}_user
Message-ID: <20190731123711.GB39768@lakrids.cambridge.arm.com>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <7d56c56af2f883958d5e74fa3178a1f774b9fd94.1562908075.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d56c56af2f883958d5e74fa3178a1f774b9fd94.1562908075.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_053716_183605_B9EB7303 
X-CRM114-Status: GOOD (  10.09  )
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 10:57:59AM +0530, Viresh Kumar wrote:
> From: Will Deacon <will.deacon@arm.com>
> 
> commit f71c2ffcb20dd8626880747557014bb9a61eb90e upstream.
> 
> Like we've done for get_user and put_user, ensure that user pointers
> are masked before invoking the underlying __arch_{clear,copy_*}_user
> operations.
> 
> Signed-off-by: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> [ v4.4: fixup for v4.4 style uaccess primitives ]
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

[...]

>  static inline unsigned long __must_check __copy_from_user(void *to, const void __user *from, unsigned long n)
>  {
>  	kasan_check_write(to, n);
> -	return  __arch_copy_from_user(to, from, n);
> +	return __arch_copy_from_user(to, __uaccess_mask_ptr(from), n);
> +
>  }
>  
>  static inline unsigned long __must_check __copy_to_user(void __user *to, const void *from, unsigned long n)
>  {
>  	kasan_check_read(from, n);
> -	return  __arch_copy_to_user(to, from, n);
> +	return __arch_copy_to_user(__uaccess_mask_ptr(to), from, n);
> +
>  }

Can we please drop the trailing whitespace from each of these? That
wasn't in the upstreadm commit or v4.9.y.

Otherwise, this looks fine.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
