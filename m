Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39344162B22
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 17:55:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PsAgRcmHH+iURw9xWvGJIdx51gwhbnTF8D20fIP0ARU=; b=KlBss5ZwAplPTg
	4r9kKS5LenFUkUXZAXA3H0lbsNFCFb3i89Ip7ddD7fkU2hDHyYwSkXCvoEoS6s+0dQCqJdrFMBrZS
	Y72D/VFQq/jaqtZVb3ubUdFeJ4Ze2vhuOPnCzAf4G2BylBKAPH69smWbNy0orPzKAMBbnG0jPuGgB
	PoxpYIPnGWoSBn0MH0wmoojcq5mt2frepbzvSbUlaHWv9fWK/5KTYqBNY0QY+thvveM/Q7usAVmLG
	p+z/zBUbNVMSIw3a3U8Ayf2ZcdTgc0jYOhOT2XOqdnJe3WPs25YTaCqjQ21vUcbNoaSOu2jpJccS8
	bwM6i6gGwGo1rvL8Go5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j469S-0001wu-Ss; Tue, 18 Feb 2020 16:55:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j469C-0001qI-Hv
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 16:55:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 990672176D;
 Tue, 18 Feb 2020 16:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582044896;
 bh=bxfNEYqdlQb1/MDZVgMg6pIn0C7+aN9XTcP9c2BnXlk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0nrbVaNnNTrkBoXEswBVSx9L4PN7BqGMrLXfVFzAaT+R/KGulasQlh29lhJYbqUA3
 RsgIauiMKE4WsrEt8tPnaeZuvMUjFQzNJau1HsdHDbN/7fIIohNJt/Tpcx5Lx1oFZv
 ymWT65NBOsRn9eTXFXi6rKDQoLVu0HQpnjp3lf7A=
Date: Tue, 18 Feb 2020 16:54:52 +0000
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH] arm64: lse: Fix LSE atomics with LLVM
Message-ID: <20200218165451.GE1133@willie-the-truck>
References: <20200218164906.35685-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218164906.35685-1-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_085458_636657_6DE58466 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com,
 clang-built-linux@googlegroups.com, samitolvanen@google.com,
 amit.kachhap@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+Sami]

On Tue, Feb 18, 2020 at 04:49:06PM +0000, Vincenzo Frascino wrote:
> The introduction of the commit e0d5896bd356cd broke the compilation of
> the kernel when the selected compiler is clang and it is used in
> combination with "-no-integrated-as".

Curious, but have you tested this change with the integrated assembler as
well?

> This happens because __LSE_PREAMBLE is defined as ".arch armv8-a+lse"
> and this overrides the version of the architecture passed via -march
> command line to the gas compiler.
> 
> The issue was noticed during the development of pauth on arm64 and an
> error example is reported below:
> 
> $ aarch64-none-linux-gnu-as -EL -I ./arch/arm64/include
>                                 -I ./arch/arm64/include/generated
>                                 -I ./include -I ./include
>                                 -I ./arch/arm64/include/uapi
>                                 -I ./arch/arm64/include/generated/uapi
>                                 -I ./include/uapi -I ./include/generated/uapi
>                                 -I ./init -I ./init
>                                 -march=armv8.3-a -o init/do_mounts.o
>                                 /tmp/do_mounts-d7992a.s
> /tmp/do_mounts-d7992a.s: Assembler messages:
> /tmp/do_mounts-d7992a.s:1959: Error: selected processor does not support `autiasp'
> /tmp/do_mounts-d7992a.s:2021: Error: selected processor does not support `paciasp'
> /tmp/do_mounts-d7992a.s:2157: Error: selected processor does not support `autiasp'
> /tmp/do_mounts-d7992a.s:2175: Error: selected processor does not support `paciasp'
> /tmp/do_mounts-d7992a.s:2494: Error: selected processor does not support `autiasp'
> 
> Fix the issue replacing ".arch armv8-a+lse" with ".arch_extension lse" that does
> not override the command line parameter.
> 
> Fixes: e0d5896bd356cd ("arm64: lse: fix LSE atomics with LLVM's integrated assembler")
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Reported-by: Amit Kachhap <Amit.Kachhap@arm.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/include/asm/lse.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
> index d429f7701c36..5d10051c3e62 100644
> --- a/arch/arm64/include/asm/lse.h
> +++ b/arch/arm64/include/asm/lse.h
> @@ -6,7 +6,7 @@
>  
>  #ifdef CONFIG_ARM64_LSE_ATOMICS
>  
> -#define __LSE_PREAMBLE	".arch armv8-a+lse\n"
> +#define __LSE_PREAMBLE	".arch_extension lse\n"

I'm ok with this, but Sami assumedly changed this for a reason in
e0d5896bd356cd ("arm64: lse: fix LSE atomics with LLVM's integrated
assembler").

Sami?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
