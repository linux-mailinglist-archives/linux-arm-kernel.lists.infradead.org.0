Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A2A85FED
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 12:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Zw9v2s/4lgLMzutP/rXHZI1LTb5jn0+hxSU7P5K4O8=; b=lE7TbSAt1061yi
	pAyUlwHvtKW1G3l9ADBTmkBMgEwxR5WkIkB7k/H7XDaDy/MMH6QMeTGmzJrYU9eSCXc/BGvxI67T1
	IWS1wAr8m7Njqhi+sf1y0fSNQf+XiZpSXLW5ur7WSSOA7pP7WGJJ56z9sBMtEb42K4vgfaoKoTaFI
	mqbmDaQiCPAKWB6asyH2r26ZKby+HF/mwWbJV9FPoWlo4epJhyTvfsj8nDBZSbyE9fxk0K3fYsR0Q
	va9etDZFWaI6dmpzLyUWmhCpjmMJsy7OXAiHWa6Og3uMH43dzrSCi6Dp9hPhqxMea8EuZE9t/NYbh
	eXUkhkFViGtQN1QqlMfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvfoS-0006F9-S1; Thu, 08 Aug 2019 10:38:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvfoC-0006Eo-Q6
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 10:38:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C465028;
 Thu,  8 Aug 2019 03:38:11 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D9D2F3F694;
 Thu,  8 Aug 2019 03:38:10 -0700 (PDT)
Date: Thu, 8 Aug 2019 11:38:08 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] arm64/cache: silence -Woverride-init warnings
Message-ID: <20190808103808.GC46901@lakrids.cambridge.arm.com>
References: <20190808032916.879-1-cai@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808032916.879-1-cai@lca.pw>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_033812_892963_B19A8740 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: catalin.marinas@arm.com, will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 11:29:16PM -0400, Qian Cai wrote:
> The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
> VIVT I-caches") introduced some compiation warnings from GCC (and
> Clang) with -Winitializer-overrides),
> 
> arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
> overwritten [-Woverride-init]
> [ICACHE_POLICY_VIPT]  = "VIPT",
>                         ^~~~~~
> arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
> 'icache_policy_str[2]')
> arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
> overwritten [-Woverride-init]
> [ICACHE_POLICY_PIPT]  = "PIPT",
>                         ^~~~~~
> arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
> 'icache_policy_str[3]')
> arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
> overwritten [-Woverride-init]
> [ICACHE_POLICY_VPIPT]  = "VPIPT",
>                          ^~~~~~~
> arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
> 'icache_policy_str[0]')
> 
> because it initializes icache_policy_str[0 ... 3] twice. Since
> arm64 developers are keen to keep the style of initializing a static
> array with a non-zero pattern first, just disable those warnings for
> both GCC and Clang of this file.
> 
> Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIVT I-caches")
> Signed-off-by: Qian Cai <cai@lca.pw>

This is _not_ a fix, and should not require backporting to stable trees.

What about all the other instances that we have in mainline?

I really don't think that we need to go down this road; we're just going
to end up adding this to every file that happens to include a header
using this scheme...

Please just turn this off by default for clang.

If we want to enable this, we need a mechanism to permit overridable
assignments as we use range initializers for.

Thanks,
Mark.

> ---
>  arch/arm64/kernel/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
> index 478491f07b4f..397ed5f7be1e 100644
> --- a/arch/arm64/kernel/Makefile
> +++ b/arch/arm64/kernel/Makefile
> @@ -11,6 +11,9 @@ CFLAGS_REMOVE_ftrace.o = $(CC_FLAGS_FTRACE)
>  CFLAGS_REMOVE_insn.o = $(CC_FLAGS_FTRACE)
>  CFLAGS_REMOVE_return_address.o = $(CC_FLAGS_FTRACE)
>  
> +CFLAGS_cpuinfo.o += $(call cc-disable-warning, override-init)
> +CFLAGS_cpuinfo.o += $(call cc-disable-warning, initializer-overrides)
> +
>  # Object file lists.
>  obj-y			:= debug-monitors.o entry.o irq.o fpsimd.o		\
>  			   entry-fpsimd.o process.o ptrace.o setup.o signal.o	\
> -- 
> 2.20.1 (Apple Git-117)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
