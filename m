Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C361512B51
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 12:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jmC6O8Z3znEmZ/xo8j5tR2vkgTVNKcscmJoax/nwJI=; b=L78jZutzH4QS/Q
	M144mEpgSbhOG6+Dr2kLMbssTfwiRQ3HOqw7mhZtGo0kzXRGW88/LsG/zFli3dxXiAAWFirWgN33z
	pquGYxM2HrHn8YOJVtVJKLK0VPOFQsFW+XTz9rvLD0xDTO6o57x3ug26/i2MrtVBwc2rzxDrEOjUt
	xCYyaeMNNjFRLebJkxkNUQKYj4qrM8+KG4/SuunSq2/b7D2HTCGtMqSIuqoKac1PVbbQ+GEkhSxEG
	TJtW5SizlwvgVpgJYVjKv8Pnro2OHZbDoEErWl2uiYXG1eI5MWBG7Lu+WHLH8A8qWh2vtYwgP7Wf8
	Myydu+fZiSkDP8NoovaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMVAi-0004UH-QR; Fri, 03 May 2019 10:12:04 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMVAb-0004Tq-Uv
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 10:11:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9197180D;
 Fri,  3 May 2019 03:11:57 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 26CBF3F557;
 Fri,  3 May 2019 03:11:56 -0700 (PDT)
Date: Fri, 3 May 2019 11:11:53 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH 1/2] arm64: fix syscall_fn_t type
Message-ID: <20190503101153.GC47811@lakrids.cambridge.arm.com>
References: <20190501200451.255615-1-samitolvanen@google.com>
 <20190501200451.255615-2-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501200451.255615-2-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_031158_005447_49E03B6E 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 01:04:50PM -0700, Sami Tolvanen wrote:
> Use const struct pt_regs * instead of struct pt_regs * as
> the argument type to fix indirect call type mismatches with
> Control-Flow Integrity checking.

It's probably worth noting that in <asm/syscall_wrapper.h> all syscall
wrappers take a const struct pt_regs *, which is where the mismatch
comes from.

> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/include/asm/syscall.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/syscall.h b/arch/arm64/include/asm/syscall.h
> index a179df3674a1a..6206ab9bfcfc5 100644
> --- a/arch/arm64/include/asm/syscall.h
> +++ b/arch/arm64/include/asm/syscall.h
> @@ -20,7 +20,7 @@
>  #include <linux/compat.h>
>  #include <linux/err.h>
>  
> -typedef long (*syscall_fn_t)(struct pt_regs *regs);
> +typedef long (*syscall_fn_t)(const struct pt_regs *regs);

For a second I was worried that we modify the regs to assign the return
value, but I see we do that in the syscall.c wrapper, where the pt_regs
argument isn't const.

We certainly chouldn't need to modify the regs when acquiring the
arguments, and as above this matches <asm/syscall_wrapper.h>, so this
looks sound to me.

FWIW:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
