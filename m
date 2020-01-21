Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA604144270
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 17:50:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WM/WzRPCeiU9YY/9qbGyfew7pW+vsEmIQQXQwSQi4xk=; b=SFyctSEsWW0OL3
	N+mJan/Gnutns2WJ3GaTEgGj5ReKK/wAD7U+abeDjMXgPutdIw/Kb6UQ5XkgF5IB7e6UU3n4Qi/m9
	leSuinV/MWQZJXZk8cnqc9Qof7NJXWG+vUsaA77lzWSuvPQ+Rtsg4mhPF4jONq3M30ji5ULp1Nm5T
	FJZ+lDRYQbuJATN6KDIiGKKudUMMNLMP5KfQcSxwdS/i1fXjE9a8KmwSF+0ykngQf3rus+kqFJX77
	/FG2065NUKStWGDIab7eO5xUfwYpmI/9Ms7Vqev6V9Nppt8xo2E6fpJFacav1bkSY00dfxBjCU8CW
	FeRF0EyPp2oPQxyYUoJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itwjO-0005Ne-2d; Tue, 21 Jan 2020 16:50:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itwj8-0004qF-DO
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 16:50:12 +0000
Received: from arrakis.emea.arm.com (fw-tnat-cam2.arm.com [217.140.106.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D8F824653;
 Tue, 21 Jan 2020 16:50:03 +0000 (UTC)
Date: Tue, 21 Jan 2020 16:50:00 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v3 15/16] arm64: compile the kernel with ptrauth return
 address signing
Message-ID: <20200121164939.GC3117281@arrakis.emea.arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-16-git-send-email-amit.kachhap@arm.com>
 <20200117114942.GG26090@arrakis.emea.arm.com>
 <7e1826b5-bf1b-b3c1-c5ab-47ab464baa8c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e1826b5-bf1b-b3c1-c5ab-47ab464baa8c@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_085006_482884_A5A21EB9 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 02:37:44PM +0000, Amit Kachhap wrote:
> On 1/17/20 11:49 AM, Catalin Marinas wrote:
> > Also Will had a preference for warning during build if the user
> > requested a feature in .config (i.e. PAC) but the compiler/assembler
> > does not support it (that was for the LSE patch above). You could
> > attempt something similar with this patch.
> 
> I tried to add warnings like below which are in similar line to the above
> link,
> 
> ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
> +  ifneq ($(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS),y)
> +    ifneq ($(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET),y)
> +$(warning Pointer authentication not supported by compiler)
> +    endif
> +  endif
> +  ifneq ($(CONFIG_AS_HAS_PAC),y)
> +$(warning Pointer authentication not supported by assembler)
> +  endif
> endif
> 
> But the issue is that warnings are printed twice and becomes confusing.
> First warning computed with the incorrect Kconfig flags and later with the
> correct computed Kconfig flags. This may be due to arch/arm64/Kconfig
> sourced twice.

I think there are two passes over the opt arch Makefile, hence a
warning based on the old config. Maybe there is a way to check which
pass this is and skip the check in the first instance. It needs more
digging, otherwise we could move the check to kernel/Makefile.

Yet another option would be to check whether CONFIG_AS_HAS_PAC in
.config is backed by the actual assembler option via the Makefile. It
means we duplicate the as-option check but it may be the cleanest.

Anyway, for the time being, just get the dependencies correctly in
Kconfig without the warnings.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
