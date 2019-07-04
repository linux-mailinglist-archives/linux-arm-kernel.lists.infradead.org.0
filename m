Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9C15FB66
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 18:04:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+OlBquC+bnV2999q03FEgBuM+t/dTDLTsAq66TR2OI=; b=BKhIwkfruDRDs+
	ojph0unXTQRv1OpQB7Bjyvn9cseiNG//QAM+edEhFq7QJ6/bOJ8TnDTXJAWRoFsQxdfaDelLdF6UF
	YX28k9EUg2AANBtEg9ELRapJqhsC4x6DKqtPf2tyvc5HqWBO8YD9jINmMAlVdw4eUxMViRAtAbSyG
	/N6YWmXTXIdC8BmPDY+4OoWuPXI76rtCmrdMOgpmiRvzW1QEWn/lPQLEp0XMf0LsaqLzv+dIAaA68
	tyy+bkuYzNeyCaB67/FzlgIvZZ5CqV6pFT8lQXrHG7ne+HQdgIU4LTMWxxY4k8LSZsQ32JmnYje/6
	heas07/WbEHb2ug3hZ3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj4DR-0001E4-Ah; Thu, 04 Jul 2019 16:04:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hj4DG-0001DK-Gc
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 16:03:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 31EF92B;
 Thu,  4 Jul 2019 09:03:56 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7E54C3F703;
 Thu,  4 Jul 2019 09:03:55 -0700 (PDT)
Date: Thu, 4 Jul 2019 17:03:53 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH] arm64: Remove unused assembly macro
Message-ID: <20190704160353.GC14897@lakrids.cambridge.arm.com>
References: <1562247844-3437-1-git-send-email-julien.thierry@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562247844-3437-1-git-send-email-julien.thierry@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_090358_595048_C293EBFA 
X-CRM114-Status: GOOD (  13.00  )
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
Cc: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 02:44:04PM +0100, Julien Thierry wrote:
> As of commit 4141c857fd09dbed480f021b3eece4f46c653161 ("arm64: convert
> raw syscall invocation to C"), moving syscall handling from assembly to
> C, the macro mask_nospec64 is no longer referenced.
> 
> Signed-off-by: Julien Thierry <julien.thierry@arm.com>

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/include/asm/assembler.h | 11 -----------
>  1 file changed, 11 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
> index 570d195..09d5d4a9 100644
> --- a/arch/arm64/include/asm/assembler.h
> +++ b/arch/arm64/include/asm/assembler.h
> @@ -120,17 +120,6 @@
>  	.endm
>  
>  /*
> - * Sanitise a 64-bit bounded index wrt speculation, returning zero if out
> - * of bounds.
> - */
> -	.macro	mask_nospec64, idx, limit, tmp
> -	sub	\tmp, \idx, \limit
> -	bic	\tmp, \tmp, \idx
> -	and	\idx, \idx, \tmp, asr #63
> -	csdb
> -	.endm
> -
> -/*
>   * NOP sequence
>   */
>  	.macro	nops, num
> -- 
> 1.9.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
