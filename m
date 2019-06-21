Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE004EC16
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:34:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uv5TUC7LKEkM4DRsaZtU9fTloqESYIrwwJU7+z/IoYE=; b=GnHYhloWdWq26g
	FwY56ybSx0/QA8Ar16pQewCiN2GwW6ZQRodmKwypQ104KckNXdmEJAfMwbYQeHJZevX9eZGsxjVdK
	wxyLVFMwFi7PRiLht0NNmdskGgSm8d3r/LCOLd/iyobsCzv9/puAAZ8v0RIgPTg277CnWO5FMROy3
	s4s20mC1HtExwvRTI0BPQvefz/fjeO4M0pQwp8WcFeLOB/wz62D5OYWveEI4gKPOy+46bDjbIhl9Y
	dhC6HnWIwuBxtCOVybRw+9NIBDz4MzNyOzHW58/hkIWKgXItuEsLSa9ctZZrKDgdpfKHvcheQ9Fob
	iL89d2dHkclT1Z4iu47g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLY3-0000m5-JT; Fri, 21 Jun 2019 15:33:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heLX7-0000EM-B0
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:32:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A955B344;
 Fri, 21 Jun 2019 08:32:56 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6FE723F575;
 Fri, 21 Jun 2019 08:32:55 -0700 (PDT)
Date: Fri, 21 Jun 2019 16:32:53 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [RFC PATCH v2 4/8] arm64/fpsimdmacros: Introduce a macro to
 update ZCR_EL1.LEN
Message-ID: <20190621153253.GZ2790@e103592.cambridge.arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
 <20190613161656.20765-5-julien.grall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613161656.20765-5-julien.grall@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_083257_482549_1AA00CF3 
X-CRM114-Status: GOOD (  15.38  )
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, alex.bennee@linaro.org,
 linux-arm-kernel@lists.infradead.org, Daniel.Kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 05:16:52PM +0100, Julien Grall wrote:
> A follow-up patch will need to update ZCR_EL1.LEN.
> 
> Add a macro that could be re-used in the current and new places to
> avoid code duplication.
> 
> Signed-off-by: Julien Grall <julien.grall@arm.com>
> 
> ---
>     Changes in v2:
>         - Fix typo in the commit message
> ---
>  arch/arm64/include/asm/fpsimdmacros.h | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/fpsimdmacros.h b/arch/arm64/include/asm/fpsimdmacros.h
> index e2ab77dd9b4f..5e291d9c1ba0 100644
> --- a/arch/arm64/include/asm/fpsimdmacros.h
> +++ b/arch/arm64/include/asm/fpsimdmacros.h
> @@ -198,6 +198,17 @@
>  	.purgem _for__body
>  .endm
>  
> +/* Update ZCR_EL1.LEN with the new VQ */
> +.macro sve_load_vq xvqminus1, xtmp, xtmp2
> +		mrs_s		\xtmp, SYS_ZCR_EL1
> +		bic		\xtmp2, \xtmp, ZCR_ELx_LEN_MASK
> +		orr		\xtmp2, \xtmp2, \xvqminus1
> +		cmp		\xtmp2, \xtmp
> +		b.eq		921f
> +		msr_s		SYS_ZCR_EL1, \xtmp2	//self-synchronising
> +921:
> +.endm
> +
>  .macro sve_save nxbase, xpfpsr, nxtmp
>   _for n, 0, 31,	_sve_str_v	\n, \nxbase, \n - 34
>   _for n, 0, 15,	_sve_str_p	\n, \nxbase, \n - 16
> @@ -212,13 +223,7 @@
>  .endm
>  
>  .macro sve_load nxbase, xpfpsr, xvqminus1, nxtmp, xtmp2
> -		mrs_s		x\nxtmp, SYS_ZCR_EL1
> -		bic		\xtmp2, x\nxtmp, ZCR_ELx_LEN_MASK
> -		orr		\xtmp2, \xtmp2, \xvqminus1
> -		cmp		\xtmp2, x\nxtmp
> -		b.eq		921f
> -		msr_s		SYS_ZCR_EL1, \xtmp2	// self-synchronising
> -921:
> +		sve_load_vq	\xvqminus1, x\nxtmp, \xtmp2
>   _for n, 0, 31,	_sve_ldr_v	\n, \nxbase, \n - 34
>  		_sve_ldr_p	0, \nxbase
>  		_sve_wrffr	0

Reviewed-by: Dave Martin <Dave.Martin@arm.com>

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
