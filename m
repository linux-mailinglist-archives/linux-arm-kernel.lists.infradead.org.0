Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 782621F4FD1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 09:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYqf4DC3ZlESTP3deHfCj1ymEzolw9gH2gKrgQOgmIE=; b=d3sGO0Ft8qDJn4
	mKDvBEcJb8h8nGPZKWyN+TDR3hAcyQCaQzhNNPIAitVZqNoej0jZ/BO60422G/d9MOPAXVmws1tpP
	no7VfoSOvkFoRbgXV+jZO0nMeJye2pR2kP3axHYC7Ej7BBQYUSTlPKf8GAVt6EuXWnYnCZybDAPgG
	pKyC0Vcb2VMmhn3mRZCgxorfuSDX8QZnZAhLbF/VvmbXBCpeZ+373s6Q2vRv2ebW7ZicLrQb2Qzlh
	XQ/2lqax4L4uOPwWy1BLRaYc0UjfFMcAaZSO0GFNjzLFD/XuWYw5P77LOinLtlLD9Q9h5Haq5YTHY
	wjpjK7xxCrU5KHTIs1EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivdL-0003YU-Ff; Wed, 10 Jun 2020 07:58:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivdC-0003Y9-5u
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 07:58:43 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0220206C3;
 Wed, 10 Jun 2020 07:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591775921;
 bh=l5Pz+5+fBVqy4h+8oU7TpZbl8q3eqsgxiHk9A3UrlTQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iPcl4BZDzRuBHdNBgmoqY7NjYWKLVer39Rf1Q/S9Zmna+ay/ew2xJ1+/lS2IYp0no
 LfBPo/LwfalSfF9i/iT6u3TnyEb2cGvnOxLjzZhAR3YYEgmCvI4x+OgJGX2M2MxT2a
 2JFFJ/DFhLIRnce+HXSm99tY7ru2QY3Sjvtw3mOE=
Date: Wed, 10 Jun 2020 08:58:37 +0100
From: Will Deacon <will@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH v2 1/2] efi/libstub/arm64: link stub lib.a conditionally
Message-ID: <20200610075837.GD15939@willie-the-truck>
References: <20200604022031.164207-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604022031.164207-1-masahiroy@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_005842_236128_A6BF209C 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 11:20:30AM +0900, Masahiro Yamada wrote:
> Since commit 799c43415442 ("kbuild: thin archives make default for
> all archs"), core-y is passed to the linker with --whole-archive.
> Hence, the whole of stub library is linked to vmlinux.
> 
> Use libs-y so that lib.a is passed after --no-whole-archive for
> conditional linking.
> 
> The unused drivers/firmware/efi/libstub/relocate.o will be dropped
> for ARCH=arm64.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
> This patch touches under arch/arm64/, but
> this is more related to efi.
> I am sending this to Ard.

Ok, I'll ignore this then. Ard -- please yell if you want me to do anything
else with it.

Will


> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 650e1185c190..48a6afa774fc 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -145,7 +145,7 @@ export	TEXT_OFFSET
>  
>  core-y		+= arch/arm64/
>  libs-y		:= arch/arm64/lib/ $(libs-y)
> -core-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
> +libs-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
>  
>  # Default target when executing plain make
>  boot		:= arch/arm64/boot
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
