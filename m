Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 573D9790F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:34:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACwzCOau2phe5j+Du+2ic0dwFOM3a3UUp62Jech8otY=; b=LkTb6JzqUifjdJ
	JTcvK4mg4HVyT8OP9g805E6JVdgKyX66D79xR6nsZDx0e+wDWqZf0nQQ2hbwpacLOA4/seE0WfQjb
	Ba9N4gKSh06ih9+TZXqHNyhafF7vkgSPG6ZqziL1kSNKLXyf9I44AqrKuJrSfjVhxvRix3/e3PyOH
	FYHodT8+Lgb3g6Uak4JZgoVxRXYXvUy46hAf4Qml3s/zlWArEn5ZTrTMNX3nPDmocsSNNzdFFwXzV
	/XCoqzVb9wfonMBVPuCjU6UlbaYyRgTkfPFORvlaXQ1vUQlPVsDsXoVY1w3rYnLOCkhrZ8upHSQg8
	z6+v/xOQkeziNSKNoiIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8bM-0004qk-0R; Mon, 29 Jul 2019 16:34:20 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8b6-0004qF-T0
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:34:06 +0000
Received: by mail-pf1-x443.google.com with SMTP id 19so28301355pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 09:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=BpM9K2QhdEENlhQPUarvaYH4zigc2UW19IimoJ0sMK0=;
 b=a0zmfpyQjsGpnehgA8NjD1AqvkqpiZ99xxb1Ju1w6XyVfRgxo18Sc5PEvAftIyEqzG
 PStxyZI3TbhdbpzC/6YSu9Ldh7F9yfVXHQeIeq1Riu7RbWMNARSwI6Hy8l+WY+SLTd50
 aAMYip6GO2FeGAQ3Crceyw/fx7Ajh3LliQpcA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BpM9K2QhdEENlhQPUarvaYH4zigc2UW19IimoJ0sMK0=;
 b=QEaELvbw+yJC8UQpOlFyJK18hD/6AJazMML5tduQCnPR35PYnzfAWrfthXBMUsUv3+
 pg8rcRNc2EYsuMFu/v+OfWNghihQZV08NC6LVZKso7p0zu3Nx5zyLBOWPb6CSpZL/DRU
 Hvf0HhOw9Sz8OMoMBuaMPtNXHeWieSELMVeJ39O+hr5Tx0iLZqPnDz7FEzBK2jJFi1vH
 IAWy1930Fv1LyXU4ZngdJ4Y002n4U2pby8v5NblsdF0vcwE66lECfOINGGNGTk3ljYYW
 eQqjNBh5ipOMBxbKzWkix5T+0GAF3HdHNVbfqg6aHBOMJh9uf+GD0CEP05fDs/5EVBfp
 Pmaw==
X-Gm-Message-State: APjAAAWhxDTki/ZKp0wJAAxf+cqhVegqU4tdPhr2cyP9zhVNYng4XmcK
 EzqeSBtHc/0Hg2S9HAV3+/G5Pg==
X-Google-Smtp-Source: APXvYqwDy5PcobqhWiy0r9d8BjQy2ju5SIgDvvK97K1QD+PtAEQS0V47PZex4n5iTBVMe4RgCQyAwg==
X-Received: by 2002:a63:ff20:: with SMTP id
 k32mr105391293pgi.445.1564418044320; 
 Mon, 29 Jul 2019 09:34:04 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id g1sm102525135pgg.27.2019.07.29.09.34.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Jul 2019 09:34:03 -0700 (PDT)
Date: Mon, 29 Jul 2019 09:34:02 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] ARM/hw_breakpoint: Mark expected switch fall-throughs
Message-ID: <201907290934.6C8AE8C@keescook>
References: <20190728231651.GA22123@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190728231651.GA22123@embeddedor>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_093404_933476_102737D0 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 06:16:51PM -0500, Gustavo A. R. Silva wrote:
> Mark switch cases where we are expecting to fall through.
> 
> This patch fixes the following warnings:
> 
> arch/arm/kernel/hw_breakpoint.c: In function 'hw_breakpoint_arch_parse':
> arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    if (hw->ctrl.len == ARM_BREAKPOINT_LEN_2)
>       ^
> arch/arm/kernel/hw_breakpoint.c:611:2: note: here
>   case 3:
>   ^~~~
> arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    if (hw->ctrl.len == ARM_BREAKPOINT_LEN_1)
>       ^
> arch/arm/kernel/hw_breakpoint.c:615:2: note: here
>   default:
>   ^~~~~~~
> arch/arm/kernel/hw_breakpoint.c: In function 'arch_build_bp_info':
> arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    if ((hw->ctrl.type != ARM_BREAKPOINT_EXECUTE)
>       ^
> arch/arm/kernel/hw_breakpoint.c:547:2: note: here
>   default:
>   ^~~~~~~
> In file included from include/linux/kernel.h:11,
>                  from include/linux/list.h:9,
>                  from include/linux/preempt.h:11,
>                  from include/linux/hardirq.h:5,
>                  from arch/arm/kernel/hw_breakpoint.c:16:
> arch/arm/kernel/hw_breakpoint.c: In function 'hw_breakpoint_pending':
> include/linux/compiler.h:78:22: warning: this statement may fall through [-Wimplicit-fallthrough=]
>  # define unlikely(x) __builtin_expect(!!(x), 0)
>                       ^~~~~~~~~~~~~~~~~~~~~~~~~~
> include/asm-generic/bug.h:136:2: note: in expansion of macro 'unlikely'
>   unlikely(__ret_warn_on);     \
>   ^~~~~~~~
> arch/arm/kernel/hw_breakpoint.c:863:3: note: in expansion of macro 'WARN'
>    WARN(1, "Asynchronous watchpoint exception taken. Debugging results may be unreliable\n");
>    ^~~~
> arch/arm/kernel/hw_breakpoint.c:864:2: note: here
>   case ARM_ENTRY_SYNC_WATCHPOINT:
>   ^~~~
> arch/arm/kernel/hw_breakpoint.c: In function 'core_has_os_save_restore':
> arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    if (oslsr & ARM_OSLSR_OSLM0)
>       ^
> arch/arm/kernel/hw_breakpoint.c:912:2: note: here
>   default:
>   ^~~~~~~
> 
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm/kernel/hw_breakpoint.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm/kernel/hw_breakpoint.c b/arch/arm/kernel/hw_breakpoint.c
> index af8b8e15f589..b0c195e3a06d 100644
> --- a/arch/arm/kernel/hw_breakpoint.c
> +++ b/arch/arm/kernel/hw_breakpoint.c
> @@ -544,6 +544,7 @@ static int arch_build_bp_info(struct perf_event *bp,
>  		if ((hw->ctrl.type != ARM_BREAKPOINT_EXECUTE)
>  			&& max_watchpoint_len >= 8)
>  			break;
> +		/* Else, fall through */
>  	default:
>  		return -EINVAL;
>  	}
> @@ -608,10 +609,12 @@ int hw_breakpoint_arch_parse(struct perf_event *bp,
>  		/* Allow halfword watchpoints and breakpoints. */
>  		if (hw->ctrl.len == ARM_BREAKPOINT_LEN_2)
>  			break;
> +		/* Else, fall through */
>  	case 3:
>  		/* Allow single byte watchpoint. */
>  		if (hw->ctrl.len == ARM_BREAKPOINT_LEN_1)
>  			break;
> +		/* Else, fall through */
>  	default:
>  		ret = -EINVAL;
>  		goto out;
> @@ -861,6 +864,7 @@ static int hw_breakpoint_pending(unsigned long addr, unsigned int fsr,
>  		break;
>  	case ARM_ENTRY_ASYNC_WATCHPOINT:
>  		WARN(1, "Asynchronous watchpoint exception taken. Debugging results may be unreliable\n");
> +		/* Fall through */
>  	case ARM_ENTRY_SYNC_WATCHPOINT:
>  		watchpoint_handler(addr, fsr, regs);
>  		break;
> @@ -909,6 +913,7 @@ static bool core_has_os_save_restore(void)
>  		ARM_DBG_READ(c1, c1, 4, oslsr);
>  		if (oslsr & ARM_OSLSR_OSLM0)
>  			return true;
> +		/* Else, fall through */
>  	default:
>  		return false;
>  	}
> -- 
> 2.22.0
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
