Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E891184555
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 11:55:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygFTezMH3AXmTYC4tQ7j+/RVcGqt6eBXcIsXa7D1k7c=; b=ApZl4sZz3AM0Vs
	R4UHD/QQEmTdzl1eB2qxjOmdXbEn0XIYwNzylJMIjhk66rfKOL4nazIb2+HJbXA+jKFKR2ndz+j3o
	g9NCaq4+ZTVAEPz4D+JyuIn0WbgYiL7L/BswhsDDXC632+UKfWjh2XQUfyrkEkn0PTIYplgNRfik0
	852csmMtj6u+bMZ6UnbRBHydyUtUNqJE6856jEdeU02gBq60GxCoE5Wf8Ul2H89y8gjQTL/GKK/rY
	IX8xWaTTokKCqpLaGZDfz4PM7wyN59XLbsFGnwvJcnELPzaUBGodBXSIMFLt1kix+kzU54SHJvj8d
	KhZj4VAWmigfGtC1pDZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jChxw-0004nz-7v; Fri, 13 Mar 2020 10:54:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jChxo-0004nc-OX
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 10:54:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 10F2830E;
 Fri, 13 Mar 2020 03:54:47 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 82C393F534;
 Fri, 13 Mar 2020 03:54:46 -0700 (PDT)
Date: Fri, 13 Mar 2020 10:54:44 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Richard Henderson <richard.henderson@linaro.org>
Subject: Re: [PATCH 1/6] arm64: Add asm/ccset.h header
Message-ID: <20200313105443.GC42546@lakrids.cambridge.arm.com>
References: <20200311180416.6509-1-richard.henderson@linaro.org>
 <20200311180416.6509-2-richard.henderson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311180416.6509-2-richard.henderson@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_035448_844490_74B9CAE7 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Richard,

On Wed, Mar 11, 2020 at 11:04:11AM -0700, Richard Henderson wrote:
> With gcc 10, arm64 includes support for flag outputs, much like
> x86 has done for years.  Mirror the macros that x86 places in
> asm/asm.h, with the necessary addition of CC_CLOBBER.

This sounds like a neat feature on the compiler side, and I can see that
this is potentially beneficial for hot paths.

I am concerned as Robin suggests for specific patches, that that macros
are going to be very easy to misuse, and make the assembly somewhat
opaque. So if there's a substantial benefit, it may be worth dealing
with that, but otherwise I'd prefer to keep things more legible so that
code is easier to maintain.

> 
> Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
> ---
>  arch/arm64/include/asm/ccset.h | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>  create mode 100644 arch/arm64/include/asm/ccset.h
> 
> diff --git a/arch/arm64/include/asm/ccset.h b/arch/arm64/include/asm/ccset.h
> new file mode 100644
> index 000000000000..e733d383f515
> --- /dev/null
> +++ b/arch/arm64/include/asm/ccset.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __ASM_CCSET_H
> +#define __ASM_CCSET_H
> +
> +/*
> + * Macros to generate condition code outputs from inline assembly.
> + * The output operand must be integral but type "bool" preferred.
> + */

Is there any documentation on this? What value does the output operand
nominally have when the flags are clear / set?

Thanks,
Mark.

> +#ifdef __GCC_ASM_FLAG_OUTPUTS__
> +# define CC_SET(c) "\n\t/* output condition code " #c "*/\n"
> +# define CC_OUT(c) "=@cc" #c
> +# define CC_CLOBBER
> +#else
> +# define CC_SET(c) "\n\tcset %[_cc_" #c "], " #c "\n"
> +# define CC_OUT(c) [_cc_ ## c] "=r"
> +# define CC_CLOBBER "cc"
> +#endif
> +
> +#endif /* __ASM_CCSET_H */
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
