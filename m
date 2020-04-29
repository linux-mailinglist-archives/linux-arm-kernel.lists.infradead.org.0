Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 708DD1BE1C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 16:54:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aCraDPR4BcfigPoCktabZGzmG1ovdYhvfP8XypYEjfY=; b=O2aVYW34le3OAL
	x75PA6xIGWJ6sv9O1AApfHeCtlF7aZx92wXfD0VbKeFy/6Dqt/iJWO9q1+c5IuO80jgGoF5Zhg5EN
	T7czrdJzd+/EkQ2CL8xttkLjBVzDo+yjfMa6AXiAgHViuuabyp1VBMlqLrdKSmfofxyi3hVzSZjQQ
	6aCLkbHxzNTFFWXlRik+mxuFGq/bWpUAdRhv8BgJUm2MHr7p8NpnbmjJSedEwBNJmEu3sFhgF/P6E
	tUSzHOdEyqBhOYoasE/JzwHTQKB4Jip/Bp3XVCLlmk8YdhMDBIDWwlkUeumfByxSmb6SV7/E7IgRj
	gKv8b9k7YP/zffkrNhHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTo6j-0006uO-8Z; Wed, 29 Apr 2020 14:54:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTo6a-0006tc-Dd
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 14:54:33 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CEA49206F0;
 Wed, 29 Apr 2020 14:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588172071;
 bh=NnGtLY1Txl0eqZ1+mAGVP+P0WikaT3c3sYQawPpbhK0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J1lqrn0FKyxkuVAk1w/eZ1JoI5/F5IW5983mowWAWBmc6JEsrV9mg5zpnugpRofZ2
 L+Kj5LtY9/UlvzNDPgXIXWpYxi++ViHne6ZPHb9x3InlFEvB8MOBS/xGrI+QxKxDGN
 aUfHGqkqEziXwJ64xGNpY/VXOAySVpR7I5lGxrj4=
Date: Wed, 29 Apr 2020 15:54:27 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH] arm64: vdso: Add -fasynchronous-unwind-tables to cflags
Message-ID: <20200429145426.GB30247@willie-the-truck>
References: <20200428133411.44092-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428133411.44092-1-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_075432_486291_0466755B 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tamas.zsoldos@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 02:34:11PM +0100, Vincenzo Frascino wrote:
> On arm64 linux gcc uses -fasynchronous-unwind-tables -funwind-tables
> by default since gcc-8, so now the de facto platform ABI is to allow
> unwinding from async signal handlers.
> 
> However on bare metal targets (aarch64-none-elf), and on old gcc,
> async and sync unwind tables are not enabled by default to avoid
> runtime memory costs.
> 
> This means if linux is built with a baremetal toolchain the vdso.so
> may not have unwind tables which breaks the gcc platform ABI guarantee
> in userspace.
> 
> Add -fasynchronous-unwind-tables explicitly to the vgettimeofday.o
> cflags to address the ABI change.
> 
> Cc: Will Deacon <will@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Reported-by: Szabolcs Nagy <szabolcs.nagy@arm.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/kernel/vdso/Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> index 331290a0cead..b388ce4c6d5f 100644
> --- a/arch/arm64/kernel/vdso/Makefile
> +++ b/arch/arm64/kernel/vdso/Makefile
> @@ -33,7 +33,8 @@ KCOV_INSTRUMENT			:= n
>  CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny
>  
>  ifneq ($(c-gettimeofday-y),)
> -  CFLAGS_vgettimeofday.o += -include $(c-gettimeofday-y)
> +  CFLAGS_vgettimeofday.o += -include $(c-gettimeofday-y) \
> +				-fasynchronous-unwind-tables

Minor comment, but why is this inside the conditional block and not part
of the CFLAGS_vgettimeofday.o directly above it?

Anyway, Szabolcs -- please can you confirm this fixes the problem for you?

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
