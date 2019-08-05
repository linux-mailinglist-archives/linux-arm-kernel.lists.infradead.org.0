Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6B9823E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 19:20:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKv/5rZ70hiBWPZMQjCr6XozYSLr2uzgNcoPRN0zSzU=; b=WsnQHzbO6BPTWa
	R3MNo/cTbkEnfktRUm2b6NjJWrV0tTb/XcJzVT5eZzf/UKYReZY5AUSoctPogKs8LQpFfxfpSSU41
	83M0aFD7HpTrg6cbqe/acegpGG5dUMQK+lgIjYBuNprRWkPP3Cyd+Zwfg0SOKdMIfvRdoNwQt6+tf
	SlG403gh1RAmosiqWuet5iz04Oppi0X8UPlPdpXaWoVZ+hqAr7+GiUAWrtFgNWM2e9RUBdD3xJTLS
	RwC6yR2G4PMsV2Vp4ZZXAILcWzTgniAS6nkHqz0jCaZD+FuzJ2b6CS2HDfwHYrJsOkGbwAVdepnlv
	38ElkX7V/ORCZWVoTRQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugeu-0006ra-B8; Mon, 05 Aug 2019 17:20:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hugeS-0005p7-VL
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 17:20:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 296AD344;
 Mon,  5 Aug 2019 10:20:04 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 25F473F694; Mon,  5 Aug 2019 10:20:03 -0700 (PDT)
Date: Mon, 5 Aug 2019 18:20:01 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <steve.capper@arm.com>
Subject: Re: [PATCH V4 05/11] arm64: mm: Introduce VA_BITS_MIN
Message-ID: <20190805172000.GL4175@arrakis.emea.arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-6-steve.capper@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729162117.832-6-steve.capper@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_102005_104991_79D101EF 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 bhsharma@redhat.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 05:21:11PM +0100, Steve Capper wrote:
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index f7f23e47c28f..0206804b0868 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -797,6 +797,10 @@ config ARM64_VA_BITS
>  	default 47 if ARM64_VA_BITS_47
>  	default 48 if ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52
>  
> +config ARM64_VA_BITS_MIN
> +	int
> +	default ARM64_VA_BITS
> +
>  choice
>  	prompt "Physical address space size"
>  	default ARM64_PA_BITS_48
[...]
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index 8b0f1599b2d1..a8a91a573bff 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -52,6 +52,9 @@
>  #define PCI_IO_END		(VMEMMAP_START - SZ_2M)
>  #define PCI_IO_START		(PCI_IO_END - PCI_IO_SIZE)
>  #define FIXADDR_TOP		(PCI_IO_START - SZ_2M)
> +#define VA_BITS_MIN		(CONFIG_ARM64_VA_BITS_MIN)

Thinking about it, do we actually need a Kconfig option for VA_BITS_MIN?
Can we not just generated it here based on VA_BITS as min(48, VA_BITS)?

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
