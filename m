Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5738E4354B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 12:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNgJPxUjCsoHKZbqAdAukv29M5Q0mJZMaTd6Oa3MH60=; b=LLa8lqP0rd6fhh
	PYgMhddJ3SkOpOmacwVR5M42N9WApLROVQXt5Rs2GtZDnFNMQsYXaLnYtjeQdivsEBi2GjphHbfIC
	YEdx5B1D5KKfRiUd//pGyIq9biSGY/Z04LPfVm+finLsQy/1txmbgCGU78GEA0ynfo5t5YMxqbdYP
	4mLqPKeCc2SQrgFodDR87+6JsNnvasKpF5tZ1J4IIgcS9m0am5NN9ee/0oWik1y1y4LbiIcC1IupF
	VN6rpKmmNGxGNPCUBwPfEHZ3DzTE+yYC7QHJAjLNXy1epbOX3yCuZn2u7ic+zQa2248rqKH5tQ+0I
	ggixfiM0olrLIzOx0U7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbNDS-0004to-EE; Thu, 13 Jun 2019 10:44:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbNDG-0004tU-EF
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 10:44:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BCD84367;
 Thu, 13 Jun 2019 03:44:09 -0700 (PDT)
Received: from C02TF0J2HF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4390C3F694;
 Thu, 13 Jun 2019 03:45:48 -0700 (PDT)
Date: Thu, 13 Jun 2019 11:44:00 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Kristina Martsenko <kristina.martsenko@arm.com>
Subject: Re: [RFC v2 5/7] arm64: initialize and switch ptrauth kernel keys
Message-ID: <20190613104359.GP28951@C02TF0J2HF1T.local>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <20190529190332.29753-6-kristina.martsenko@arm.com>
 <20190606164430.GH56860@arrakis.emea.arm.com>
 <3c56d20a-de6f-5a1e-98ff-34687de72268@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3c56d20a-de6f-5a1e-98ff-34687de72268@arm.com>
User-Agent: Mutt/1.11.2 (2019-01-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_034410_524309_B1C8C643 
X-CRM114-Status: GOOD (  21.00  )
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

Hi Kristina,

On Wed, Jun 12, 2019 at 05:21:20PM +0100, Kristina Martsenko wrote:
> On 06/06/2019 17:44, Catalin Marinas wrote:
> > On Wed, May 29, 2019 at 08:03:30PM +0100, Kristina Martsenko wrote:
> > 
> >>  - Added ISB after key install in kernel_exit, in case in the future C function
> >>    calls are added after the macro
> > [...]
> >> diff --git a/arch/arm64/include/asm/asm_pointer_auth.h b/arch/arm64/include/asm/asm_pointer_auth.h
> >> index e3bfddfe80b6..f595da9661a4 100644
> >> --- a/arch/arm64/include/asm/asm_pointer_auth.h
> >> +++ b/arch/arm64/include/asm/asm_pointer_auth.h
> >> @@ -25,11 +25,24 @@ alternative_if ARM64_HAS_ADDRESS_AUTH
> >>  	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APDB]
> >>  	msr_s	SYS_APDBKEYLO_EL1, \tmp2
> >>  	msr_s	SYS_APDBKEYHI_EL1, \tmp3
> >> +	isb
> >>  alternative_else_nop_endif
> >>  alternative_if ARM64_HAS_GENERIC_AUTH
> >>  	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APGA]
> >>  	msr_s	SYS_APGAKEYLO_EL1, \tmp2
> >>  	msr_s	SYS_APGAKEYHI_EL1, \tmp3
> >> +	isb
> >> +alternative_else_nop_endif
> > 
> > I couldn't find the previous discussions, so why are the ISBs needed
> > here? Is this macro not invoked only on the kernel_exit path?
> 
> It is invoked only in kernel_exit. There weren't any previous
> discussions, I just started thinking that in the future someone could
> add a call to a C function in kernel_exit after this macro (there are a
> few C calls in kernel_exit already). If the function is compiled with
> ptrauth instructions, and the above key system register writes take
> effect in the middle of the function, then authentication would fail,
> because we would enter the function with one key but exit with another.

You are right if there are subsequent function calls after this but I
don't think we should allow them. For example, you already restored the
keys to the user ones, do we want to run further kernel code with the
user keys?

> This is probably overly cautious, so I'd be happy to remove the ISBs if
> you prefer. Could also add a comment in kernel_exit. Also, thinking
> about it now, we only use APIA key in the kernel, so the ISB after APGA
> key is actually unnecessary, so I'll go ahead and remove that one.

I think it's better if we just add a comment in the kernel_exit(),
something along the lines of no function calls after this point. IIRC,
we only have the ssbd macro after this followed by register restoring
(you could as well move the ptrauth key restoration after the apply_ssbd
one.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
