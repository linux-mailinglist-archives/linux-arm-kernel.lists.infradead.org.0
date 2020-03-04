Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEA4178EF9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 11:53:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MpMJrNFlo9OY0O2DHUV3Ax7elFYcyaunwJxRywLzWh8=; b=N+BxWGHQ/5pcHG
	sEICub5Jh2sJnwpITnIlFjQnFSEB19+LwhOuKeslZdFAFItLufzU8DputyRgc8sIb86iBkgJq992N
	C1SVJqXwy4Eibumy5Z8MrGzxOsSnfjAt1KsPe18tGPgjz3v1aey5a3lLC6ztJT84Pr9s6zi0N4AuU
	6h4MHpLkGbteEKFerD7fZlYV2piYixhjkK0FO8duINHvf1S6ANlk5DpvzsNdlZYRGoz0jAt2AHG3Y
	QSGUDm1YwAYwCN4qeyBR+YzVVBMquQYHNV5VRZ95kyOthbAQQj8JjRdCLrbuHFRcXxDSTHSr2sLm6
	cQQIciV+wjySOe+ZcPLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ReH-0003cg-Hb; Wed, 04 Mar 2020 10:53:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Re9-0003bD-T7
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 10:53:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4981130E;
 Wed,  4 Mar 2020 02:52:59 -0800 (PST)
Received: from [10.37.12.88] (unknown [10.37.12.88])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA6DE3F534;
 Wed,  4 Mar 2020 02:52:56 -0800 (PST)
Subject: Re: [PATCH v5 16/17] arm64: compile the kernel with ptrauth return
 address signing
To: Catalin Marinas <catalin.marinas@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>
References: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
 <1581931668-11559-17-git-send-email-amit.kachhap@arm.com>
 <20200228182337.GK4019108@arrakis.emea.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <d7efa284-77fe-9e60-3aa4-4d351550835b@arm.com>
Date: Wed, 4 Mar 2020 10:53:16 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200228182337.GK4019108@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_025301_985417_EBFF5C0A 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On 2/28/20 6:23 PM, Catalin Marinas wrote:
> On Mon, Feb 17, 2020 at 02:57:47PM +0530, Amit Daniel Kachhap wrote:
>> +ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
>> +branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
>> +branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
>> +# -march=armv8.3-a enables the non-nops instructions for PAC, to avoid the compiler
>> +# to generate them and consequently to break the single image contract we pass it
>> +# only to the assembler when clang is selected as a compiler. For the GNU toolchain
>> +# this option is not used.
>> +branch-prot-flags-$(CONFIG_AS_HAS_PAC) += -Wa,-march=armv8.3-a
>> +KBUILD_CFLAGS += $(branch-prot-flags-y)
>> +endif
> 
> Does this work with the clang integrated assembler? AFAIK it ignores the
> -Wa, though it may be fine with the instructions generated by the
> compiler. (while we don't officially support it, we merged patches to
> facilitate it).
> 

The kernel is currently built with "-no-integrated-as" (Makefile +538) when
clang is selected. This means that the only assembler supported is the one
provide by binutils in this scenario.

The only patch series that I am aware of that is trying to do something with the
integrated as is [1] that uses it for inline assembly when LTO is enabled
(mainly for Android kernels at the moment). And this series is still being
reviewed.

Curiosity, which one is the series you are referring to? And how do I enable the
clang assembler for building the kernel?

[1] https://github.com/samitolvanen/linux/commits/clang-cfi

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
