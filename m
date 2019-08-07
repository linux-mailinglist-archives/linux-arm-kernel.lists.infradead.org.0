Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA4084C3C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WDDQxIPOjuF315/c30GAZPzn/dMUz67tdouqJEn4z38=; b=GZo7WAw+Ley5S3
	nrnvDz4vcB8NSha/3xpVEpyasI/FsdOrlL0QRpjk7M0aci/b0HERolmSdC2TY/YjJJdglHGQcGrS0
	9aVHDyNn8j8kcG9Iu27t7kwmFDxaPWw85Qs22jCSEabiH9+yWvIcutT9xguFlHeSmSkBGI/IcWI0x
	7RnEuDhpIbYQ3hznyNh8cxomIrWxVdOpJsBZSOJjAJyf+Pk0/z1kM1gVMVFgePYxe0CSU5HkQbAbB
	R2wNhe7jjIBefa190lj7RYSZWv8Z4ewPo/BLv12JRZf86gzmLgC+kFJJBAy/WH2nUZm3VeUcPrabE
	nmnDkEdIiICLOPdWWK5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLZp-00045L-SJ; Wed, 07 Aug 2019 13:02:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLZ5-0003mO-T5
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 13:01:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 881EC28;
 Wed,  7 Aug 2019 06:01:14 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6A6FA3F575;
 Wed,  7 Aug 2019 06:01:13 -0700 (PDT)
Date: Wed, 7 Aug 2019 14:01:11 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
Message-ID: <20190807130111.GE54191@lakrids.cambridge.arm.com>
References: <20190806183918.41078-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806183918.41078-1-broonie@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_060116_228070_642B3ECA 
X-CRM114-Status: GOOD (  20.74  )
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
Cc: Tri Vo <trong@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 07:39:18PM +0100, Mark Brown wrote:
> Current boot tests with clang built big endian kernels in KernelCI are
> showing problems with the kernel being unable to interpret big endian
> userspace. This is a bug and should be fixed but for now let's prevent
> these kernels being built, we may end up needing to add a version
> dependency on the compiler anyway.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
> 
> The clang people (CCed) are aware and looking into this.

Judging by the kernel log linked in a reply, this is with:

* clang version 8.0.1-svn359952-1~exp1~20190504004501.65 (branches/release_80)

  Is that the llvm.org binary release, or a custom build of clang?

* Linux 5.3.0-rc2-next-20190730

  Could we previously build a BE kernel with clang? If so, what's the
  last working kernel?

Thanks,
Mark.

> 
>  arch/arm64/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 990fdcbf05c7..1c32d9889e0f 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -813,6 +813,7 @@ config ARM64_PA_BITS
>  
>  config CPU_BIG_ENDIAN
>         bool "Build big-endian kernel"
> +       depends on !CC_IS_CLANG
>         help
>           Say Y if you plan on running a kernel in big-endian mode.
>  
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
