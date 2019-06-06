Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBE0379F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ri0Jz1dJ52aDUPcbJyCi0LV87TinhHwBxetP7pLxw7o=; b=Pcq7T2X/IAko9I
	noc2znSIHzo1kCfhTapxwLOBI5u0JRPM+6nKzHsN0bNOjvcscXxkgRajteoawEpWlfnwTGG0J9lZB
	Q+H1IzOcoz5M04BWlJ0+dlHZrLbkDUkpGIt1iRLaUsepeSl8KX01kQOzvrn3aSe8PrqxhGZtshc84
	xwyf/NXODNA70JR+Da4lLJCOoPZUP3Zfcbxhksx/6//3pN9YodtiMG3t8cfX6MNbeGlltqESYVGyi
	SfinnosPAG69f1mnkl4eaHhlhEWeZ/pLyDLlz9BnqkOk0w748QBNwuA8BWdM+LyeNjXQOWTLpve3R
	Bq4VApYVSArGa9hwf3ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvVK-0006P2-HE; Thu, 06 Jun 2019 16:44:42 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvVD-0006Oh-FF
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:44:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8F3BE374;
 Thu,  6 Jun 2019 09:44:34 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 C1DE23F690; Thu,  6 Jun 2019 09:44:32 -0700 (PDT)
Date: Thu, 6 Jun 2019 17:44:30 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Kristina Martsenko <kristina.martsenko@arm.com>
Subject: Re: [RFC v2 5/7] arm64: initialize and switch ptrauth kernel keys
Message-ID: <20190606164430.GH56860@arrakis.emea.arm.com>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <20190529190332.29753-6-kristina.martsenko@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529190332.29753-6-kristina.martsenko@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_094435_510036_DCCF81ED 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 08:03:30PM +0100, Kristina Martsenko wrote:

>  - Added ISB after key install in kernel_exit, in case in the future C function
>    calls are added after the macro
[...]
> diff --git a/arch/arm64/include/asm/asm_pointer_auth.h b/arch/arm64/include/asm/asm_pointer_auth.h
> index e3bfddfe80b6..f595da9661a4 100644
> --- a/arch/arm64/include/asm/asm_pointer_auth.h
> +++ b/arch/arm64/include/asm/asm_pointer_auth.h
> @@ -25,11 +25,24 @@ alternative_if ARM64_HAS_ADDRESS_AUTH
>  	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APDB]
>  	msr_s	SYS_APDBKEYLO_EL1, \tmp2
>  	msr_s	SYS_APDBKEYHI_EL1, \tmp3
> +	isb
>  alternative_else_nop_endif
>  alternative_if ARM64_HAS_GENERIC_AUTH
>  	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APGA]
>  	msr_s	SYS_APGAKEYLO_EL1, \tmp2
>  	msr_s	SYS_APGAKEYHI_EL1, \tmp3
> +	isb
> +alternative_else_nop_endif

I couldn't find the previous discussions, so why are the ISBs needed
here? Is this macro not invoked only on the kernel_exit path?

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
