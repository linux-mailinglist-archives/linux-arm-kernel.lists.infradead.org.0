Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CDA343A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z0CfP0txAH0uA9+HARIyEbbhOlw7qxBC4HTsbf2EZS4=; b=BEJCT9BpghN5mE
	XKKNff6TTWDOvW2r2FyNhpV2S0ODEpFYxYrkSG4AY/0Y03K15HCGM4ntqXk20+Oe+/cqeYFRMlXBO
	MaFR3QQxnGO0sWipNZgFluyCU0Wca4kH3Mvc1LJw77qRweBlyLURCdd3uLlsaFXH5hzKnC2AtBMRs
	VxsYN+TUn9wNWIjTR7N4yaRQWAjerhXrqAEhXemTFYWYKnCxKYIYJbK9UmMd9GmfZbKVa85wsJBhN
	0d3IwWfKID5qeHdGD/LmOrTy+kHAoQtQkvLGBhZpgCBLXYY3pnjhVk5zslN5ECrhXcgZg4IbybM2M
	qHb95URG2Xbb83W+MCOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6Hj-0002CX-5y; Tue, 04 Jun 2019 10:03:15 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6Hc-0002C4-3w
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 10:03:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7867615A2;
 Tue,  4 Jun 2019 03:03:06 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A79573F246;
 Tue,  4 Jun 2019 03:03:04 -0700 (PDT)
Date: Tue, 4 Jun 2019 11:03:02 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Kristina Martsenko <kristina.martsenko@arm.com>
Subject: Re: [RFC v2 5/7] arm64: initialize and switch ptrauth kernel keys
Message-ID: <20190604100301.GX28398@e103592.cambridge.arm.com>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <20190529190332.29753-6-kristina.martsenko@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529190332.29753-6-kristina.martsenko@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_030308_165800_6DFAB4A7 
X-CRM114-Status: GOOD (  16.79  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 08:03:30PM +0100, Kristina Martsenko wrote:
> Set up keys to use pointer authentication within the kernel. The kernel
> will be compiled with APIAKey instructions, the other keys are currently
> unused. Each task is given its own APIAKey, which is initialized during
> fork. The key is changed during context switch and on kernel entry from
> EL0.
> 
> A function that changes the key cannot return, so compile such functions
> without pointer auth (using __no_ptrauth which will be defined to a
> compiler function attribute later).
> 
> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
> ---

[...]

> diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
> index a97b7dc10bdb..79f35f5ecff5 100644
> --- a/arch/arm64/include/asm/pointer_auth.h
> +++ b/arch/arm64/include/asm/pointer_auth.h
> @@ -25,10 +25,6 @@ struct ptrauth_key {
>  	unsigned long lo, hi;
>  };
>  
> -/*
> - * We give each process its own keys, which are shared by all threads. The keys
> - * are inherited upon fork(), and reinitialised upon exec*().
> - */
>  struct ptrauth_keys {
>  	struct ptrauth_key apia;
>  	struct ptrauth_key apib;
> @@ -37,16 +33,18 @@ struct ptrauth_keys {
>  	struct ptrauth_key apga;
>  };

Do we need all this struct for the kernel thread case?

It may be a bit pointless trying to optimise this, though.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
