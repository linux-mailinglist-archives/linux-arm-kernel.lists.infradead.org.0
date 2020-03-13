Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC908184D56
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 18:14:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=agS2LB5bMRzNdf4+aWzzDtE+UhzImUvM6YMOWgTp+Is=; b=PcHTlNJJyYp5w9
	VG8pjtQinJFvZEacLYesegPldjEAA0G4fwZI56YrrPPLwbBixLkaKmqA+iCojhKviebIp+Lt3qNPj
	EAgupgPfjjYyo+lgPsseCLRe6+wbcv8uiVKbiAOnBfhDEf4NnJLVirIetN8Cnphwej0MNHscRVqHt
	ftZKI2ovy1dWCS7XQColr9zV6+oHv7vWIrbGYLHestD8yf9cafsA2+cTmhrec2eIv8hQu4vHLPAq3
	Q6IeCuIBWN5u2+m3EyUClsj9hCnpTcvNpdondgItZ1+Ub0itVrrUka/L6ouALjyDrT/PgTEG2L6l4
	bMWJWfvoYYV7z3xaY6Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCntT-0007dT-7N; Fri, 13 Mar 2020 17:14:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCntM-0007d5-04
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 17:14:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B27AA31B;
 Fri, 13 Mar 2020 10:14:33 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 27E4A3F534;
 Fri, 13 Mar 2020 10:14:33 -0700 (PDT)
Date: Fri, 13 Mar 2020 17:14:31 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 4/6] arm64: uaccess: Use asm/ccset.h macros in __range_ok
Message-ID: <20200313171430.GM42546@lakrids.cambridge.arm.com>
References: <20200311180416.6509-1-richard.henderson@linaro.org>
 <20200311180416.6509-5-richard.henderson@linaro.org>
 <20200313110436.GD42546@lakrids.cambridge.arm.com>
 <1f7f8e9d-7b2f-c33c-8c2e-0f30f59fa493@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1f7f8e9d-7b2f-c33c-8c2e-0f30f59fa493@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_101436_083606_B499BA2F 
X-CRM114-Status: GOOD (  20.23  )
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
Cc: Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 04:51:28PM +0000, Robin Murphy wrote:
> On 2020-03-13 11:04 am, Mark Rutland wrote:
> > On Wed, Mar 11, 2020 at 11:04:14AM -0700, Richard Henderson wrote:
> > > Uses of __range_ok almost always feed a branch.
> > > This allows the compiler to use flags directly.
> > 
> > If we want to give hte compiler the most freedom, the best thing would
> > be to write this in C. IIUC this code is written in assembly largely for
> > historical reasons, and the comment above says:
> > 
> > | This is equivalent to the following test:
> > | (u65)addr + (u65)size <= (u65)current->addr_limit + 1
> > 
> > ... which e.g. we could write as:
> > 
> > 	(__uint128_t)addr + (__uint128_t)size <= (__uint128_t)limit + 1;
> > 
> > ... which would be much clearer than the assembly.
> > 
> > Is there any pattern like that for which the compiler generates
> > reasonable looking code, and if not, is that something that could be
> > improved compiler side?
> 
> Hmm, in fact this:
> 
> 	__uint128_t tmp = (__uint128_t)(unsigned long)addr + size;
> 	return !tmp || tmp - 1 <= limit;
> 
> generates code that looks like utter crap in isolation[1], but once inlined
> actually leads to a modest overall reduction (-0.09%) across the whole of
> vmlinux according to bloat-o-meter (presumably most of those branches roll
> up into the overall "if(access_ok())..." control flow for the typical case,
> and I'm sure size and limit get constant-folded a lot).

Neat.

IIUC for a non-zero size the !tmp check can be elided, and for a
constant size the subtraction can be folded in at compile time, so for a
{get,put}_user(), the compiler only needs to do the addition and a check
against limit.

> IIRC at the time there were so many uncertainties flying around that
> sticking with asm to take compiler unknowns out of the picture felt
> desirable, but perhaps the time might be nigh to retire my baby after all...

I guess we might have thought we'd need to pass the result into some
masking logic, but I think uaccess_mask_ptr() turned out to be good
enough in practice.

> I'll investigate a bit further.

Great!

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
