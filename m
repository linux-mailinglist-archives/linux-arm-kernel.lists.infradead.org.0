Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 299801C5DD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 18:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0AaFybFNkfsyWX8e1RciJlCkOJ0Ojddy07NqrRr/7Sg=; b=GdbyRVM7HikOOg
	mHGRhpd26RO7UxDOZnia/Y1HxfawvtU2cHX9KGNJpoFMOHtd/2gw8uaxVlTnPDOoN3x1FDAyJP+vV
	OZ2dOyqS8aPhjkztmOv5Imsf4yVy31sQ6aIvUnj3PSrvhAU1cUIsEDO9erGfFoQ8y/C4VndgFahC+
	rsWnAMd6DJRb6OKf0lq5x6Z3IWwIalRwIYJ6Ns8+VRaTdGr6O39/ksEai+AHFqr6GDu6kT9sO1c0Y
	rsU1paaZlcvQT1b51+2LvqNdOhESS+GM0W33/eX0pJw8qDpbb2dBzzyGSkdTxTaWY47HyX7RwDYkp
	0n6Gj+4dk3mA1x0q0L1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW0mZ-0000Nr-S7; Tue, 05 May 2020 16:50:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW0mR-0000MA-TP
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 16:50:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 36EBF31B;
 Tue,  5 May 2020 09:50:48 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 515583F305;
 Tue,  5 May 2020 09:50:47 -0700 (PDT)
Date: Tue, 5 May 2020 17:50:45 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 01/10] arm64: bti: Support building kernel C code
 using BTI
Message-ID: <20200505165045.GQ30377@arm.com>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-2-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429211641.9279-2-broonie@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_095052_001145_22AFA71D 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 10:16:32PM +0100, Mark Brown wrote:
> When running with BTI enabled we need to ask the compiler to enable
> generation of BTI landing pads beyond those generated as a result of
> pointer authentication instructions being landing pads. Since the two
> features are practically speaking unlikely to be used separately we
> will make kernel mode BTI depend on pointer authentication in order
> to simplify the Makefile.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/Makefile | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 85e4149cc5d5..90150b5b180e 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -71,7 +71,11 @@ branch-prot-flags-y += $(call cc-option,-mbranch-protection=none)
>  
>  ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
>  branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
> +ifeq ($(CONFIG_ARM64_BTI_KERNEL),y)
> +branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET_BTI) := -mbranch-protection=pac-ret+leaf+bti
> +else
>  branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
> +endif

Is it worth a comment to explain how this differs from
-mbranch-protection=standard, and why we're not using that here?

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
