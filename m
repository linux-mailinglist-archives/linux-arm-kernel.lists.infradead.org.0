Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C8110996C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 08:00:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p8YY/qAK9dqf0CeO7e6fKtkcJcX/utS86aDSPvzeP28=; b=mfkz319SpUTi1eRYwR23N//iE
	iI2ahZHe7NFFQcKqlkfXnC1IrvWOiFDlsvXmcXFkK6ZH3N5E6A+yvaaKSBXCawgaW2g+IFtisSAMV
	q0UgUKHjbjYvQc8gKJivZiG9P6iqVq+3yrGAJjRUGUa4BESjP/LHR3TjjeWrCgZMitBXCEJ3ZS0gc
	vCqy49P3gXI3xvuSgXwSdfk8WpMY1UL8foJpwIS3kf/W7gQ/OHbbI1LjCjfYs7ocXPyt5NS8M4iHY
	QdDDSRGr/H8u2qXx+WJXVhOflGyuyYw2c95Y3kTE47/xpZQDEAZmzuAsdtTXuGd1PGSCtgx7L4ZIq
	2HM/X3kzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZUpw-0002Lj-14; Tue, 26 Nov 2019 07:00:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZUpn-0002LC-Tu
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 07:00:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 32FB530E;
 Mon, 25 Nov 2019 23:00:25 -0800 (PST)
Received: from [10.163.1.198] (unknown [10.163.1.198])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 92C173F6C4;
 Mon, 25 Nov 2019 23:03:23 -0800 (PST)
Subject: Re: [PATCH v2 13/14] arm64: compile the kernel with ptrauth return
 address signing
To: Mark Brown <broonie@kernel.org>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
 <1574166746-27197-14-git-send-email-amit.kachhap@arm.com>
 <20191121150605.GC4071@sirena.org.uk>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <7cdad21e-d50e-86d4-5ea8-4b85e52f4673@arm.com>
Date: Tue, 26 Nov 2019 12:30:13 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191121150605.GC4071@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_230028_007017_A3B65A32 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 11/21/19 8:36 PM, Mark Brown wrote:
> On Tue, Nov 19, 2019 at 06:02:25PM +0530, Amit Daniel Kachhap wrote:
> 
>> +config CC_HAS_BRANCH_PROT_PAC_RET
>> +	# GCC 9 or later
>> +	def_bool $(cc-option,-mbranch-protection=pac-ret+leaf)
> 
> clang also supports this option, as of clang-8 I think.

ok. I will test and update the comment here.
> 
>> +ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
>> +pac-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
>> +pac-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
>> +KBUILD_CFLAGS += $(pac-flags-y)
>> +endif
> 
> This is going to be a bit annoying with BTI as we need to set
> -mbranch-protection=bti too.  This means we end up with type
> bti+pac-ret+leaf which is annoying to arrange.  There is the convenient
> branch protection type standard which does enable both in one option but
> that only enables non-leaf pac-ret so you need to explicitly spell out
> pac-ret so you can turn on leaf as well.  I'm not sure I can think of
> anything much better than adding another case for BTI at the top so we
> end up with something along the lines of:

Yes. The reason for keeping pac-ret+leaf is to cover all functions in 
the earlier offline discussions. As you pointed out I can add 
CC_HAS_BRANCH_PROT_PAC_RET_LEAF config name to make it more meaningful
> 
> ifeq ($(CONFIG_ARM64_BTI_KERNEL),y)
> branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_BTI) := -mbranch-protection=bti+pac-ret+leaf
> else ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
> branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
> endif
> KBUILD_CFLAGS += $(branch-prot-flags-y)
> 
> with a separate section for the signed return address bit.  It would be
> helpful to avoid the immediate refactoring when adding BTI by splitting
> things up with a more generic name.

I agree with your concern for separate section when BTI support is 
added. I will do it in my next iteration.

//Amit

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
