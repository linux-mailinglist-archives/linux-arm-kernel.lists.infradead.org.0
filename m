Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D374D3605B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 17:34:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ti0a3WvvcEoj5z+BGtHt2xQxrNlYmY5aA0TXPG8Zle8=; b=VvXr+hI0TN8v2q
	Caaj3gcQMgNenVruKAasE1foZAv/fvEicLghNwMuFr8bV9PY9AVpjb86LwNd7UXf+lRSyPjvwgjAT
	X5OVWlZb7iX/HqCP07v8XsLSZ6fYX/iBh6r95dELpcFczskA5QtRXgZJHz/it0kRagxdTwMunmUZM
	GAIG7SYIXjhpyBWbi1wpDot85zAE1Ax3ZV9JV+gAExLw7A6o28/lZXWFfCGgpCtTU0an5CvrAMfYE
	913HVqnSyDgOc6Nz6ZPPqkhEhT7IPiFm5UEecHNasfbHrOv3d10pb0zAyW1Z8zictSNT+hx4yruRU
	A4axYEek+Bhry/6UQ7lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYXwE-0004OX-Pu; Wed, 05 Jun 2019 15:34:54 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYXw8-0004Ns-B4
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 15:34:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CB969374;
 Wed,  5 Jun 2019 08:34:45 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 742603F246; Wed,  5 Jun 2019 08:34:44 -0700 (PDT)
Date: Wed, 5 Jun 2019 16:34:41 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <steve.capper@arm.com>
Subject: Re: [PATCH v2 12/12] arm64: mm: Introduce 52-bit Kernel VAs
Message-ID: <20190605153441.GC50849@arrakis.emea.arm.com>
References: <20190528161026.13193-1-steve.capper@arm.com>
 <20190528161026.13193-13-steve.capper@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528161026.13193-13-steve.capper@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_083448_388227_CC7DAC2C 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 bhsharma@redhat.com, will.deacon@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steve,

On Tue, May 28, 2019 at 05:10:26PM +0100, Steve Capper wrote:
>  config ARM64_USER_VA_BITS_52
>  	bool "52-bit (user)"
>  	depends on ARM64_64K_PAGES && (ARM64_PAN || !ARM64_SW_TTBR0_PAN)
> +	select HAS_VA_BITS_52
>  	help
>  	  Enable 52-bit virtual addressing for userspace when explicitly
>  	  requested via a hint to mmap(). The kernel will continue to
> @@ -751,11 +755,28 @@ config ARM64_USER_VA_BITS_52
>  
>  	  If unsure, select 48-bit virtual addressing instead.
>  
> +config ARM64_USER_KERNEL_VA_BITS_52
> +	bool "52-bit (user & kernel)"
> +	depends on ARM64_64K_PAGES && (ARM64_PAN || !ARM64_SW_TTBR0_PAN)
> +	select HAS_VA_BITS_52
> +	help
> +	  Enable 52-bit virtual addressing for userspace when explicitly
> +	  requested via a hint to mmap(). The kernel will also use 52-bit
> +	  virtual addresses for its own mappings (provided HW support for
> +	  this feature is available, otherwise it reverts to 48-bit).
> +
> +	  NOTE: Enabling 52-bit virtual addressing in conjunction with
> +	  ARMv8.3 Pointer Authentication will result in the PAC being
> +	  reduced from 7 bits to 3 bits, which may have a significant
> +	  impact on its susceptibility to brute-force attacks.
> +
> +	  If unsure, select 48-bit virtual addressing instead.

With the latest version of this series, it doesn't look like will get a
performance hit for enabling 52-bit VA for the kernel (well, subject to
some testing). If that's the case, is it still worth having separate
user and user+kernel 52-bit VA Kconfig entries? It also gets pretty
confusing as I think you can now select both or just the latter for the
same feature.

BTW, do you plan to repost following comments? At a quick look, the
reset of the patches seem fine to me.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
