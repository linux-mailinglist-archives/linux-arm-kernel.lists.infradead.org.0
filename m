Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B382F2C5C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 13:51:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BFMVEaanKVYRzoFuDEi0e0w+2qc8nukc8CYNgIRAnHI=; b=JsxVD21xqtwVK2
	quSvxu+gxl57upbl2hrz+dacUn48dm6VDPnz/rPydsrTqVmwhuEDeVfwnX5oc+Q3Yqg46WHkWr+U/
	8rMAWQhvt8pAgFIfWZwO9MipraLfy30sOEXITQUYgwU2/oNyUEJYbzsEhrRhyL9Es75dF4y5IPvGe
	6dEHhdterFqdB5oacIKaa3FDglUkuey4VMOR58gQGcNGuhe13fNa6wdKnS/y4hlqVgKCtQQfvr6CF
	FuBSD0C342WamZW1sPQwwjaxh4hWiEHyhAxCCnWaR3Ybo6pwPf31Qr8gdUNV7ilyS41ZOX+TKvWHh
	vjmwcFh6hGVo6hvcVVMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVae0-0004lz-6B; Tue, 28 May 2019 11:51:52 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVads-0004ky-9o
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 11:51:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D58B8341;
 Tue, 28 May 2019 04:51:43 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E856E3F59C;
 Tue, 28 May 2019 04:51:42 -0700 (PDT)
Date: Tue, 28 May 2019 12:51:40 +0100
From: Will Deacon <will.deacon@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64: Fix the arm64_personality() syscall wrapper
 redirection
Message-ID: <20190528115140.GG20809@fuggles.cambridge.arm.com>
References: <20190528113934.55295-1-catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528113934.55295-1-catalin.marinas@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_045144_343583_9CFFED79 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 12:39:34PM +0100, Catalin Marinas wrote:
> Following commit 4378a7d4be30 ("arm64: implement syscall wrappers"), the
> syscall function names gained the '__arm64_' prefix. Ensure that we
> have the correct #define for redirecting a default syscall through a
> wrapper.
> 
> Fixes: 4378a7d4be30 ("arm64: implement syscall wrappers")
> Cc: <stable@vger.kernel.org> # 4.19.x-
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  arch/arm64/kernel/sys.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/sys.c b/arch/arm64/kernel/sys.c
> index 6f91e8116514..162a95ed0881 100644
> --- a/arch/arm64/kernel/sys.c
> +++ b/arch/arm64/kernel/sys.c
> @@ -50,7 +50,7 @@ SYSCALL_DEFINE1(arm64_personality, unsigned int, personality)
>  /*
>   * Wrappers to pass the pt_regs argument.
>   */
> -#define sys_personality		sys_arm64_personality
> +#define __arm64_sys_personality		__arm64_sys_arm64_personality

Cheers, I've picked this up as a fix for -rc3.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
