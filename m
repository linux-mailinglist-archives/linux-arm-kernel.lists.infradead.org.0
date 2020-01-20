Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E74D142E2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 15:55:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JSrEESLfNGREsmBiiI/re5y+GjDXZQcz3f1ws1lG3T0=; b=SA9YUJBqjoU8yS
	Uhanw3GArGY1wn9XE5AGaOVG2EwCFL5StIJkKTRhAFludhztb4mtdVcLaTWqdjr+HMsMYi771JmJo
	WEk3rGfOgwHI2Bjhl6w0QZhurJNLt1cE8o2ezIxqoeODitN1jT/TE4RFAaqj1r5Q1ChC0vyyvHmD0
	IrAUiMkCjkB4qd4Q9ogI6UUvX09zwhLZTAz+SAGhm/crwWyi2A7QXzsleEbrFp1dLLs2IHO5jn/a7
	yHK6eqntjZN06TVHQgVcxQEwuYXr8lrD9wWr+VtnQ4eyelPIWAVwzdTotKzSjwQnfJ6P5x9gJu9rT
	H9CkUSBdA0vJI8EWTzQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itYS8-0006Hc-Oq; Mon, 20 Jan 2020 14:54:56 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYRK-0005nL-SP
 for linux-arm-kernel@bombadil.infradead.org; Mon, 20 Jan 2020 14:54:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IQQh1EuG8rT98HIU2bd1ZIWkgxvuduUwivstT4Pdcsk=; b=aZUg49nI1Tr8vfYxcjzHRMUBs
 K/pOlxv2efoh5pdb+F1kFfGfma6KtTCSoWNhIDV+YYyRkeMVKWMrM7M9q46Vqvn8lEjeEejAyb2Zw
 d7NwYjsirc21PrCMJYnMYGXqMARNzRJonS+i83hYsxDLHCL+4FqwwWf0Co32bRtzpCB7qdKFCvjrr
 OSqCTCR5qJJxJqRuQGjYJ+4ZgYSlW6ygs1HdmkZJ0WYhRx20oVwKYeiS2TUvITkMOkvrrZI2zKuID
 LAouG07u4318b5vJpk2jndYurOno2CsxSqO+YhlpQZTDxksJAgSKSY6ztaeoAYrjeT09u61U1aEEI
 2yvj65Nmw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYRG-0007Dh-QP; Mon, 20 Jan 2020 14:54:03 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 818CE305FEA;
 Mon, 20 Jan 2020 15:52:22 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 3115128B86E60; Mon, 20 Jan 2020 15:54:01 +0100 (CET)
Date: Mon, 20 Jan 2020 15:54:01 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Julien Thierry <jthierry@redhat.com>
Subject: Re: [RFC v5 11/57] objtool: Abstract alternative special case handling
Message-ID: <20200120145401.GB14897@hirez.programming.kicks-ass.net>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200109160300.26150-12-jthierry@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109160300.26150-12-jthierry@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 raphael.gault@arm.com, jpoimboe@redhat.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 04:02:14PM +0000, Julien Thierry wrote:
> diff --git a/tools/objtool/arch/x86/arch_special.c b/tools/objtool/arch/x86/arch_special.c
> new file mode 100644
> index 000000000000..6dba31f419d0
> --- /dev/null
> +++ b/tools/objtool/arch/x86/arch_special.c
> @@ -0,0 +1,34 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +#include "../../special.h"
> +#include "../../builtin.h"
> +
> +void arch_handle_alternative(unsigned short feature, struct special_alt *alt)
> +{
> +	/*
> +	 * If UACCESS validation is enabled; force that alternative;
> +	 * otherwise force it the other way.
> +	 *
> +	 * What we want to avoid is having both the original and the
> +	 * alternative code flow at the same time, in that case we can
> +	 * find paths that see the STAC but take the NOP instead of
> +	 * CLAC and the other way around.
> +	 */

That comment ^,

> +	switch (feature) {
> +	case X86_FEATURE_SMAP:

goes here >

> +		if (uaccess)
> +			alt->skip_orig = true;
> +		else
> +			alt->skip_alt = true;
> +		break;

> +	case X86_FEATURE_POPCNT:
> +		/*
> +		 * It has been requested that we don't validate the !POPCNT
> +		 * feature path which is a "very very small percentage of
> +		 * machines".
> +		 */
> +		alt->skip_orig = true;
> +		break;
> +	default:
> +		break;
> +	}
> +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
