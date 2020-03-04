Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 530AA178F20
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 12:01:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jf74fubNMvCJIruDjOdwDvBkYlWYCb8z69gYgJt5n9E=; b=cs72Q+h35EytgW
	t3vyuONeuHUB1jzbH+DVGSbvY4f/malVB/G9L//G8Y+k3pdqnmFK4zzsg+lnD3arYi+Xf3Aub+gjK
	/5p/OYptjN2XxsWEUNX+GIvDRhMei8aXTAp1D7N/DSQFzB9p/XVMDs6jtO3RdbQDvDMux8cupXNB/
	2yFLzPG7SqlsmzBGKiZrSlCGACl50gZ2FRHMk8HVHx4yMhiWNgnsrayCRe3IFl8V0i2FHsGkSRIhR
	TOPy1gfeJf7lsHinL9Wcg95uWIiBWHaE2NxcOau51Wk88/TFwaobzjOoTCZJJT2pNfLww8TMrTAlg
	18H0hSGlrMoIJ/DYnj6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9RmP-00077n-UG; Wed, 04 Mar 2020 11:01:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9RmI-00077Q-Hg
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 11:01:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E026D30E;
 Wed,  4 Mar 2020 03:01:25 -0800 (PST)
Received: from [10.37.12.88] (unknown [10.37.12.88])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 82F6C3F534;
 Wed,  4 Mar 2020 03:01:23 -0800 (PST)
Subject: Re: [PATCH v5 16/17] arm64: compile the kernel with ptrauth return
 address signing
To: Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
References: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
 <1581931668-11559-17-git-send-email-amit.kachhap@arm.com>
 <20200228182337.GK4019108@arrakis.emea.arm.com>
 <20200302131648.GE4166@sirena.org.uk>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <9b154899-2270-e933-a49d-1356838fb21c@arm.com>
Date: Wed, 4 Mar 2020 11:01:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200302131648.GE4166@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_030126_632452_47555606 
X-CRM114-Status: GOOD (  15.84  )
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
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 3/2/20 1:16 PM, Mark Brown wrote:
> On Fri, Feb 28, 2020 at 06:23:37PM +0000, Catalin Marinas wrote:
>> On Mon, Feb 17, 2020 at 02:57:47PM +0530, Amit Daniel Kachhap wrote:
> 
>>> +# only to the assembler when clang is selected as a compiler. For the GNU toolchain
>>> +# this option is not used.
>>> +branch-prot-flags-$(CONFIG_AS_HAS_PAC) += -Wa,-march=armv8.3-a
>>> +KBUILD_CFLAGS += $(branch-prot-flags-y)
>>> +endif
> 
>> Does this work with the clang integrated assembler? AFAIK it ignores the
>> -Wa, though it may be fine with the instructions generated by the
>> compiler. (while we don't officially support it, we merged patches to
>> facilitate it).
> 
> If the assembler integrated into the compiler doesn't cope with
> instructions emitted by the compiler that seems like something we should
> push to get fixed on the compiler side.
> 

This option should be required only in the "hybrid" scenario of building the
kernel with clang+binutils.

The llvm assembler relies on "--target" and "-mbranch-protection=pac-ret+leaf"
so I do not think we should report or fix anything in this case.

This series is already passing the correct parameters to clang hence seems safe
to assume that it will continue doing so once the assembler will be switched to
the native version.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
