Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 212BE3C5C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:17:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWyUGZNTVXmEkQyboWvOinRq6vWjMyqRaq58lor6mcI=; b=NEgint5h5ervfA
	nZgx1kNNFDucE8j+0/MlLx15OxtQG07VdTrc5kqOJPww+w9+Vq08yHGMlmmHlYnM+15nmikQ79eeS
	liy4i1K5tk7L9jdmCN+U8IHKNTYhZ49Pqt+3UdrIRaXxA4lZgevoRJRnZ9sRMoAWA0O9yu4ty9FE1
	EZb7yypoEiR3J6dMs6l/EvQg4fSqA1/hzHt7/oaGEJKJN/ySTXH7R5gisKh4dnvo98bHuWCGZFrve
	TrEh5n2YkU8jEEyzvOWNDaybBHdJcz1EIG59CII5RqVlit+WhZtjBv0sGtOXUI7KJ1CCmStzHQCZf
	uEjjfPc58XJ2M0GKC2iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1habxo-0006iD-4U; Tue, 11 Jun 2019 08:17:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1habxY-0006hq-4P; Tue, 11 Jun 2019 08:16:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4372B337;
 Tue, 11 Jun 2019 01:16:47 -0700 (PDT)
Received: from [10.1.29.141] (e121487-lin.cambridge.arm.com [10.1.29.141])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE1693F73C;
 Tue, 11 Jun 2019 01:16:44 -0700 (PDT)
Subject: Re: [PATCH 15/15] riscv: add binfmt_flat support
To: Christoph Hellwig <hch@lst.de>, Greg Ungerer <gerg@linux-m68k.org>
References: <20190610212015.9157-1-hch@lst.de>
 <20190610212015.9157-16-hch@lst.de>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <d8d81820-8f0d-d5d0-fa3d-3376ddcc5358@arm.com>
Date: Tue, 11 Jun 2019 09:16:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610212015.9157-16-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_011648_216181_2BF50C68 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/10/19 10:20 PM, Christoph Hellwig wrote:
> Use the generic support with arguments are on the stack.  Same as arm
> and m68k.

Out of curiosity, what is reason for keeping arguments on the stack?

ARM port of uClibc has following comment around manipulating of argv/argc:

        /*
         * uClinux/arm stacks look a little different from normal
         * MMU-full Linux/arm stacks (for no good reason)
         */

So I though it is kind of legacy.

Thanks
Vladimir

> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/Kconfig            | 2 ++
>  arch/riscv/include/asm/Kbuild | 1 +
>  2 files changed, 3 insertions(+)
> 
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 0c4b12205632..2e3b60cdeef4 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -17,7 +17,9 @@ config RISCV
>  	select OF
>  	select OF_EARLY_FLATTREE
>  	select OF_IRQ
> +	select ARCH_HAS_BINFMT_FLAT
>  	select ARCH_WANT_FRAME_POINTERS
> +	select BINFMT_FLAT_ARGVP_ENVP_ON_STACK
>  	select CLONE_BACKWARDS
>  	select COMMON_CLK
>  	select GENERIC_CLOCKEVENTS
> diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
> index 5ee646619cc3..1efaeddf1e4b 100644
> --- a/arch/riscv/include/asm/Kbuild
> +++ b/arch/riscv/include/asm/Kbuild
> @@ -5,6 +5,7 @@ generic-y += compat.h
>  generic-y += device.h
>  generic-y += div64.h
>  generic-y += extable.h
> +generic-y += flat.h
>  generic-y += dma.h
>  generic-y += dma-contiguous.h
>  generic-y += dma-mapping.h
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
