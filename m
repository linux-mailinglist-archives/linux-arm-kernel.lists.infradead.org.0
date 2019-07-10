Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1459C647E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 16:15:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBAN5/4s0D2N0d2N9q870lGfZmOvf9n3j4Ac+cab138=; b=teUyeM8yjXCkZ+
	AHT+GC4jOk5hhbjS75oMFv8twyWUDNBups/9nVv6FJfu8W3PhbjwwJ19PIpgAX2xz0/eJRhzfcV1z
	vunv/UE72X7JdisjPE7APKR3cAKrJs7sGQpuGtH111cTkjxX4JyMxSwT92zHJ5ePTl6/fkbjyxcKC
	Ra5aa+GQwRYwtN629xQp3sscgNK8rk1cyVS9/hL8/l1VvfFU8uLwnrWMrbBgtwmjtSR3QWMh8N3qO
	KGjAw/kgf3e4sujf+NPAPuCVT3zoTBHppx0XE3jiKjDrSnBUxl1E5suQcy/k4iUF0ySWCRXs0qtiA
	uak5DY7MrdtU4iuiDYQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlDNG-0007NF-8P; Wed, 10 Jul 2019 14:15:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlDMl-0007Br-IS
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 14:14:42 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DAF772064B;
 Wed, 10 Jul 2019 14:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562768078;
 bh=DyLQkR+SqZg30UD4WGgKKVBfPXf9H8Fp5j0gQLSjm1M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Uv3XWiYycqQdOA9/aSy6OPad/nv4oF5fG/eYmZR921Lj5iSjaS116QIYDQi5XGtjy
 97SSz7GWaEcn5oTyCpIQR8LU9e7nTbEKOnfCeXSHuxLRdk65zZZrVRN1Yge8y5i6Ec
 DKc/PijLSM5tkGjiPgCKRl5Gv7qFM23n5caCPXH0=
Date: Wed, 10 Jul 2019 15:14:34 +0100
From: Will Deacon <will@kernel.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v2 3/5] memremap: Add support for read-only memory mappings
Message-ID: <20190710141433.7ama3gncss3y6dcx@willie-the-truck>
References: <20190614203717.75479-1-swboyd@chromium.org>
 <20190614203717.75479-4-swboyd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614203717.75479-4-swboyd@chromium.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_071439_697617_278851FA 
X-CRM114-Status: GOOD (  22.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 01:37:15PM -0700, Stephen Boyd wrote:
> Sometimes we have memories that are supposed to be read-only, but when
> we map these regions the best we can do is map them as write-back with
> MEMREMAP_WB. Introduce a read-only memory mapping (MEMREMAP_RO) that
> allows us to map reserved memory regions as read-only. This way, we're
> less likely to see these special memory regions become corrupted by
> stray writes to them.
> 
> Cc: Evan Green <evgreen@chromium.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  include/linux/io.h |  1 +
>  kernel/iomem.c     | 15 +++++++++++++--
>  2 files changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/io.h b/include/linux/io.h
> index 32e30e8fb9db..16c7f4498869 100644
> --- a/include/linux/io.h
> +++ b/include/linux/io.h
> @@ -159,6 +159,7 @@ enum {
>  	MEMREMAP_WC = 1 << 2,
>  	MEMREMAP_ENC = 1 << 3,
>  	MEMREMAP_DEC = 1 << 4,
> +	MEMREMAP_RO = 1 << 5,
>  };
>  
>  void *memremap(resource_size_t offset, size_t size, unsigned long flags);
> diff --git a/kernel/iomem.c b/kernel/iomem.c
> index 93c264444510..10d5ef0ff09e 100644
> --- a/kernel/iomem.c
> +++ b/kernel/iomem.c
> @@ -19,6 +19,13 @@ static void *arch_memremap_wb(resource_size_t offset, unsigned long size)
>  }
>  #endif
>  
> +#ifndef arch_memremap_ro
> +static void *arch_memremap_ro(resource_size_t offset, unsigned long size)
> +{
> +	return NULL;
> +}
> +#endif
> +
>  #ifndef arch_memremap_can_ram_remap
>  static bool arch_memremap_can_ram_remap(resource_size_t offset, size_t size,
>  					unsigned long flags)
> @@ -84,7 +91,10 @@ void *memremap(resource_size_t offset, size_t size, unsigned long flags)
>  	}
>  
>  	/* Try all mapping types requested until one returns non-NULL */
> -	if (flags & MEMREMAP_WB) {
> +	if ((flags & MEMREMAP_RO) && is_ram != REGION_INTERSECTS)
> +		addr = arch_memremap_ro(offset, size);
> +
> +	if (!addr && (flags & MEMREMAP_WB)) {
>  		/*
>  		 * MEMREMAP_WB is special in that it can be satisfied
>  		 * from the direct map.  Some archs depend on the
> @@ -103,7 +113,8 @@ void *memremap(resource_size_t offset, size_t size, unsigned long flags)
>  	 * address mapping.  Enforce that this mapping is not aliasing
>  	 * System RAM.
>  	 */
> -	if (!addr && is_ram == REGION_INTERSECTS && flags != MEMREMAP_WB) {
> +	if (!addr && is_ram == REGION_INTERSECTS &&
> +	    (flags != MEMREMAP_WB || flags != MEMREMAP_RO)) {
>  		WARN_ONCE(1, "memremap attempted on ram %pa size: %#lx\n",
>  				&offset, (unsigned long) size);
>  		return NULL;

This function seems a little confused about whether 'flags' is really a
bitmap of flags, or whether it is equal to exactly one entry in the enum.
Given that I think it's sensible for somebody to specify 'MEMREMAP_RO |
MEMREMAP_WT', then we probably need to start checking these things a bit
more thoroughly so we can reject unsupported combinations at the very least.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
