Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFFC3B717
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 16:18:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RRkt6wLkqJsDS+Onn6ONeF9r3iUOfIJWx+NrfmFCqmY=; b=Xb0ICzx5xzltD6
	QLnHTJgnYbcWj0mvYpkmtksThM/0N0nIovZH9+ojeWWrEnSw4KzsY18Xb+VrJmgrHtSrubE1VxqYb
	4STg8/u/aBRqsIbFDyuja290krLVgAgw08O4euEJZWp2/SpiuKLdkTpIDfsA0nSkBstt1OzWuqfvO
	RKjzWgStA8PSfbyH0XFL1yJBNHrvDLypeZngcGq8t0UT0vzu0/84/B8F1glplbPkzB1X4+4Hb5du8
	K/JmHvFvtCOGCOK/c/OwnLz0Cuq+lmR7wGXtl/5xCMe41jn4ELwuqRU0hOlXT8nfcXTBUvYIVQwfW
	a8aUwLDJdPR2FQy1viqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haL7z-0005UP-JV; Mon, 10 Jun 2019 14:18:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haL7q-0005TQ-O6
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 14:18:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0A786346;
 Mon, 10 Jun 2019 07:18:18 -0700 (PDT)
Received: from c02tf0j2hf1t.cambridge.arm.com (c02tf0j2hf1t.cambridge.arm.com
 [10.1.32.192])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5D67E3F73C;
 Mon, 10 Jun 2019 07:18:16 -0700 (PDT)
Date: Mon, 10 Jun 2019 15:18:13 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <steve.capper@arm.com>
Subject: Re: [PATCH v2 08/12] arm64: mm: Logic to make offset_ttbr1 conditional
Message-ID: <20190610141813.GA10165@c02tf0j2hf1t.cambridge.arm.com>
References: <20190528161026.13193-1-steve.capper@arm.com>
 <20190528161026.13193-9-steve.capper@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528161026.13193-9-steve.capper@arm.com>
User-Agent: Mutt/1.11.2 (2019-01-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_071818_832276_F748BB52 
X-CRM114-Status: GOOD (  11.61  )
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 bhsharma@redhat.com, will.deacon@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steve,

On Tue, May 28, 2019 at 05:10:22PM +0100, Steve Capper wrote:
> diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
> index 039fbd822ec6..a42c392ed1e1 100644
> --- a/arch/arm64/include/asm/assembler.h
> +++ b/arch/arm64/include/asm/assembler.h
> @@ -548,6 +548,14 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
>  	.macro	offset_ttbr1, ttbr
>  #ifdef CONFIG_ARM64_USER_VA_BITS_52
>  	orr	\ttbr, \ttbr, #TTBR1_BADDR_4852_OFFSET
> +#endif
> +
> +#ifdef CONFIG_ARM64_USER_KERNEL_VA_BITS_52
> +alternative_if_not ARM64_HAS_52BIT_VA
> +	orr	\ttbr, \ttbr, #TTBR1_BADDR_4852_OFFSET
> +alternative_else
> +	nop
> +alternative_endif
>  #endif
>  	.endm

As a nitpick, you could write alternative_else_not_endif instead of the
last three lines.

Anyway, we use offset_ttbr1 in a few early cases via
idmap_cpu_replace_ttbr1 where the alternative framework hasn't got the
chance to patch the instructions. I suggest you open-code the feature
check in here, I don't think we use this on any fast path.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
