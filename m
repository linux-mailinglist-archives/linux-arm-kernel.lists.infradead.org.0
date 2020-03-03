Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 624C617725A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 10:28:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uTx7dzCNmbObIS1jaa6d3sfHdV6yDxA0OiqMYWEQra4=; b=ibhbj+/jZly3FWRS5fvyYoZC2
	+eIPaChK0Hf6xO83GBGnr5jbEhb91yUSJqnUtDDZ3gsYkPgS7GU1ZzwbJ8W2ibjMJ9E/Z5/QQlnJO
	wJBSiLZ5rBGmN0ZdVDiAiVR1vnJUEzCKoMAhphlCmoGmxg/wjFggCctqGAp+AJGilRu7cIlF1fb19
	z7uKIdThmI//Ej+c6rmah861Ngfm0XH8GHYOj6DODjBCV5fMoY31IpVRszD0zvx3auyIz47EDr4jA
	A0iVxCXBQUrSXL/LgMRuB8WYrUaGLMRZkywwKvVxgfr5M3IWJPGGLGPMJib+eDyI71swACA4ty3Ay
	Uy0J3s6uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j93qw-0000i4-Aj; Tue, 03 Mar 2020 09:28:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j93qn-0000h2-03
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 09:28:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 23A212F;
 Tue,  3 Mar 2020 01:28:27 -0800 (PST)
Received: from [10.162.16.120] (a075563-lin.blr.arm.com [10.162.16.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9CCCD3F6C4;
 Tue,  3 Mar 2020 01:28:23 -0800 (PST)
Subject: Re: [PATCH v5 16/17] arm64: compile the kernel with ptrauth return
 address signing
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
 <1581931668-11559-17-git-send-email-amit.kachhap@arm.com>
 <20200228182337.GK4019108@arrakis.emea.arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <f2107e77-dc1d-2be6-c334-4cd4bc714bb7@arm.com>
Date: Tue, 3 Mar 2020 14:58:25 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200228182337.GK4019108@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_012829_084217_33E6A624 
X-CRM114-Status: GOOD (  15.91  )
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

Clang integrated assembler compiles some initial c files into object
files and those contains the ptrauth instructions.

As you said it ignores the -Wa flag.

> 
> Also, the above comment says that the -Wa option is used only when
> building with clang. I don't see this being the case in the patch above.

I will update the comments.

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
