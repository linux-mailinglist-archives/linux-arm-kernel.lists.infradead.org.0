Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 532FA173F77
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 19:24:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVo/1WN/5Y+CwVOJN9LJt7TPD8E6oKboB4+vKmP+cXA=; b=NhSljZyrSE6zaU
	iF1Qaqz5vzJr1y/cDss+V3agoI8+BphnqoAWKiSChFSq+AG8mQYs0HrJSOLQwGsq/Wt5GNe5g8sLW
	w+9p3OuffXMc3mAjgi2n/zv9h5eIfY1Vz8cL41d6ExdlhexF4eNIjN17xVovAa+gWEOxaQ0057tSJ
	Ccip2qjqx8UZZ7jM4dOrF+hqUZQH8RBn2VYloaTIdSoUR56NS7TkAjZIwa6hGGacEmbSjVAcQO8pm
	KJuIHPbyTdxhSIaM40bnQjU55aFiblY3UQt3P3DlnG/SfoKHHhaRh/RVGjfUkyUnicgZEH6KJDxqa
	/+dSbAyYTTdPkShWr40w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7kIh-0003O4-F4; Fri, 28 Feb 2020 18:23:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7kIX-0003Na-Jv
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 18:23:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0A1CF31B;
 Fri, 28 Feb 2020 10:23:41 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 463933F7B4; Fri, 28 Feb 2020 10:23:39 -0800 (PST)
Date: Fri, 28 Feb 2020 18:23:37 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v5 16/17] arm64: compile the kernel with ptrauth return
 address signing
Message-ID: <20200228182337.GK4019108@arrakis.emea.arm.com>
References: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
 <1581931668-11559-17-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581931668-11559-17-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_102341_704170_FFCD6A2A 
X-CRM114-Status: GOOD (  11.91  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 02:57:47PM +0530, Amit Daniel Kachhap wrote:
> +ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
> +branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
> +branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
> +# -march=armv8.3-a enables the non-nops instructions for PAC, to avoid the compiler
> +# to generate them and consequently to break the single image contract we pass it
> +# only to the assembler when clang is selected as a compiler. For the GNU toolchain
> +# this option is not used.
> +branch-prot-flags-$(CONFIG_AS_HAS_PAC) += -Wa,-march=armv8.3-a
> +KBUILD_CFLAGS += $(branch-prot-flags-y)
> +endif

Does this work with the clang integrated assembler? AFAIK it ignores the
-Wa, though it may be fine with the instructions generated by the
compiler. (while we don't officially support it, we merged patches to
facilitate it).

Also, the above comment says that the -Wa option is used only when
building with clang. I don't see this being the case in the patch above.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
