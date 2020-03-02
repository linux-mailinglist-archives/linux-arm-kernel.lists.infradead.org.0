Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F176175837
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 11:19:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L5cZfPaNe50UOom2mSgtRHfPpFY1jOBNheMVkI6x0CE=; b=GguJ1XeSpVfnZwML8nx0H16PB
	MrAWMLcm1Cl6JJpS60wwbarZ/srJUf8wdQaVX1E8u8JCuLLE7WyWP2w4JRWVUA22DG04hpB2nQ8Ov
	SQbJEYAaJQJzH+/EAGDwgNOPlw89N8pVrk5bOdKQ2VjHYhJohtZCqcBZ//wSc1/dFELLX2JkRfpzq
	1aBmmnAfKRRLz2Ptfwah2nGRUGeBDxkmr+s3You2FRfST7zNByFFEXOO1jQbkVd5HAgUQUycM54yM
	vvNdpIPBEG/1smD2CDyqcDwVPC5rfFyV6LiuVKxoCYc/8jmtPOHj0OwbRZ7oE7uOhpHnKLZtwubce
	Mvz0noLeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8iAa-0004zb-4i; Mon, 02 Mar 2020 10:19:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8iAO-0004z9-Sa
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 10:19:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3A8C031B;
 Mon,  2 Mar 2020 02:19:16 -0800 (PST)
Received: from [10.163.1.6] (unknown [10.163.1.6])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 28B793F6CF;
 Mon,  2 Mar 2020 02:19:10 -0800 (PST)
Subject: Re: [PATCH v5 16/17] arm64: compile the kernel with ptrauth return
 address signing
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
 <1581931668-11559-17-git-send-email-amit.kachhap@arm.com>
 <20200228182337.GK4019108@arrakis.emea.arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <8e33f683-b998-2be0-83d9-3034d63d72ad@arm.com>
Date: Mon, 2 Mar 2020 15:49:12 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200228182337.GK4019108@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_021916_972344_F0137500 
X-CRM114-Status: GOOD (  15.80  )
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
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2/28/20 11:53 PM, Catalin Marinas wrote:
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
> Also, the above comment says that the -Wa option is used only when
> building with clang. I don't see this being the case in the patch above.

I will check on this and get back.

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
