Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8A718BF89
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 19:43:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ijUPM1d6YyTstN2eQ60BqX//Ch/KUO+fbr3bJZo17U=; b=I5hq36hB6BGVQ4
	3LedGIL9N1wEXrY9xXAy3iIfQFcwHvxlRPye95jcYzPzdF2mKJtEo4oVAcpHKNrPlKZpyqvf+/wwO
	+T5o2NGKZi59ci/BJXvXy4gsmbOHo1YDpGRSPe51A991SBetCgt2oT8pBvupahU0EusUzbrDNYA0c
	zo8mGkFx6OsWdYWf+t++PVx7Kvmt5SG3P5a5ramu6o1l5e4fdvfZr7AxudMk9dg3Kc7TcKsIAllIE
	0gEeDFhjApkiJ7uubjVWigfnE+t8xfFDQ6jYxRnhEDNuf+ML3e1a1VirFWRuSv2XIwP+VciaNYulD
	xXIbt9AR1Y+ZZ9gDGGOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF08O-0000Sr-8o; Thu, 19 Mar 2020 18:43:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF08G-0000SN-NC
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 18:43:05 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A3D820787;
 Thu, 19 Mar 2020 18:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584643384;
 bh=+vgcHdLhhtb+ajyUNxQekv1ON55TgPbVwgX7E6jDLgU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sUxpqcgD6Y93HTuHXg5h0Qz3nt+L3A2TfD5OrDS6vZ8dvWZqSV0Ki0TnxUUiJZY6Q
 dmxl/GTcRwlUaw07dL8J++h7uq24D+3hFk7zw4A3UrD2mm33dnZnboHUQD/mDwb2A8
 j03xPtn5geOFe+RB9aX1Wv2ZMxGhr7rDHuARE9K0=
Date: Thu, 19 Mar 2020 18:42:59 +0000
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH] arm64: compat: Fix syscall number of compat_clock_getres
Message-ID: <20200319184258.GC27141@willie-the-truck>
References: <20200319141138.19343-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319141138.19343-1-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_114304_778292_10D8CD3D 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 02:11:38PM +0000, Vincenzo Frascino wrote:
> The syscall number of compat_clock_getres was erroneously set to 247
> instead of 264. This causes the vDSO fallback of clock_getres to land
> on the wrong syscall.
> 
> Address the issue fixing the syscall number of compat_clock_getres.
> 
> Fixes: 53c489e1dfeb6 ("arm64: compat: Add missing syscall numbers")
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/include/asm/unistd.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/unistd.h b/arch/arm64/include/asm/unistd.h
> index 1dd22da1c3a9..803039d504de 100644
> --- a/arch/arm64/include/asm/unistd.h
> +++ b/arch/arm64/include/asm/unistd.h
> @@ -25,8 +25,8 @@
>  #define __NR_compat_gettimeofday	78
>  #define __NR_compat_sigreturn		119
>  #define __NR_compat_rt_sigreturn	173
> -#define __NR_compat_clock_getres	247
>  #define __NR_compat_clock_gettime	263
> +#define __NR_compat_clock_getres	264
>  #define __NR_compat_clock_gettime64	403
>  #define __NR_compat_clock_getres_time64	406

Ha, what a howler. I'll queue this one as a fix.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
