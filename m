Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF307DF545
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 20:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kUB/NpeOwKcaXsXVhcTAg/CYqbW7vOgni/+fKRVaKK4=; b=uvrz6yVpeEtx7L
	zyYUNlqwcrN9GDXLATlXLuFuywzUiTM2pfxJI46OZxmrxoLyN4NUhQccnTcfigpzk995xTbIXsDu8
	hddW5iX2e1hAPvuFVs+bcH+DjTsgmm7vNh/6mHfqSecgKgcbnBThKA1W4eorxv2GDMBfCgh8+xXE6
	ScvhrA6FbbW8UuDiAROAsEfOG2LgbHhOava6ZN+lVe2bIxZtg1JHcGnAWFclydx4tBdeWx/q0+eFJ
	s+6W1v9VXSxXr126dePNaghjbjSxwAKN3Rb/V49wOrHIwOgPcB5VO5iUnW2lzb0R42eNlzMRdNtv7
	gVEE0Lvla1xZT9goF1/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMci2-0006Cn-Sn; Mon, 21 Oct 2019 18:47:14 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMcht-0006Bh-2c
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 18:47:06 +0000
Received: by mail-pf1-x441.google.com with SMTP id q5so8955087pfg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 11:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4oWcMvAF3AkSdh7Jj7EOsobOZH0CAMgAfdM6Iy8i7tY=;
 b=Ys7t+SW9gBEB82MvPaaEycHtdcBO4kIjr1l9wHD/NjJ+GMUiIHDypGSeaugD98W3D2
 3ozejRwgsJXfG9OnLTt52MC6j2k2BYHBBdoMo/ONXrMzTJXovHZbiN/RtHabO2cOlkSQ
 BDFedaOUgu7Y71rAftwiqyOwu5Ws/52l9YAL4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4oWcMvAF3AkSdh7Jj7EOsobOZH0CAMgAfdM6Iy8i7tY=;
 b=gcrQU+ChjAUXrXnZ/QnHkngQKijx6YYIDkZbxXExE6jN4k+m946QNzX3MIUL5BlkiN
 2qvwQjvrZ4YsZnaKWRFfDWcP71W434tjV/Afg6llwHsGDppTTp7FKt3FID0Eg7M2YT5w
 khYeDTBWrmYaKwbgkF0buJ/ScnBQtZB835cc6i7wvi1QJ+teUUVTyX+9MsOZb0vnao9o
 Bxhft59lzoQIBhIlHeToqkCZWa5VDc6xoFEa/fH13yJtT5puDazVjNKfiYJqZI5ikKOR
 nhWZVU/dj1nGcTRKIjO7UvmCS8xTxNv9cEWS5mgk6sqRYBqupkIX6J/FjM+gDU9BieEi
 QnpA==
X-Gm-Message-State: APjAAAUtDWlkqGG4K0EvjI9GrK6N/NrRsOAziQWlMD+UzZpffxdQ/YzL
 ndRXI9U5p8rkRBl5EI6G9pfEbA==
X-Google-Smtp-Source: APXvYqzDaJOYNm1B1ci5HNl8Uvds7odpyEAMRkOJ1JiIJEDNp9dyTbfunHlypCqMzsTclpmlGVSdyw==
X-Received: by 2002:aa7:90da:: with SMTP id k26mr25459478pfk.141.1571683622376; 
 Mon, 21 Oct 2019 11:47:02 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id x12sm15460021pfm.130.2019.10.21.11.47.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Oct 2019 11:47:01 -0700 (PDT)
Date: Mon, 21 Oct 2019 11:46:58 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: hw_breakpoint: Handle inexact watchpoint addresses
Message-ID: <20191021184658.GE20212@google.com>
References: <20191019111216.1.I82eae759ca6dc28a245b043f485ca490e3015321@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191019111216.1.I82eae759ca6dc28a245b043f485ca490e3015321@changeid>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_114705_143989_089D1294 
X-CRM114-Status: GOOD (  31.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Pratyush Anand <panand@redhat.com>,
 Pavel Labath <labath@google.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, kinaba@google.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 19, 2019 at 11:12:26AM -0700, Douglas Anderson wrote:
> This is commit fdfeff0f9e3d ("arm64: hw_breakpoint: Handle inexact
> watchpoint addresses") but ported to arm32, which has the same
> problem.
> 
> This problem was found by Android CTS tests, notably the
> "watchpoint_imprecise" test [1].  I tested locally against a copycat
> (simplified) version of the test though.
> 
> [1] https://android.googlesource.com/platform/bionic/+/master/tests/sys_ptrace_test.cpp
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
>  arch/arm/kernel/hw_breakpoint.c | 96 ++++++++++++++++++++++++---------
>  1 file changed, 70 insertions(+), 26 deletions(-)
> 
> diff --git a/arch/arm/kernel/hw_breakpoint.c b/arch/arm/kernel/hw_breakpoint.c
> index b0c195e3a06d..d394878409db 100644
> --- a/arch/arm/kernel/hw_breakpoint.c
> +++ b/arch/arm/kernel/hw_breakpoint.c
> @@ -680,26 +680,62 @@ static void disable_single_step(struct perf_event *bp)
>  	arch_install_hw_breakpoint(bp);
>  }
>  
> +/*
> + * Arm32 hardware does not always report a watchpoint hit address that matches
> + * one of the watchpoints set. It can also report an address "near" the
> + * watchpoint if a single instruction access both watched and unwatched
> + * addresses. There is no straight-forward way, short of disassembling the
> + * offending instruction, to map that address back to the watchpoint. This
> + * function computes the distance of the memory access from the watchpoint as a
> + * heuristic for the likelyhood that a given access triggered the watchpoint.
> + *
> + * See this same function in the arm64 platform code, which has the same
> + * problem.
> + *
> + * The function returns the distance of the address from the bytes watched by
> + * the watchpoint. In case of an exact match, it returns 0.
> + */
> +static u32 get_distance_from_watchpoint(unsigned long addr, u32 val,
> +					struct arch_hw_breakpoint_ctrl *ctrl)
> +{
> +	u32 wp_low, wp_high;
> +	u32 lens, lene;
> +
> +	lens = __ffs(ctrl->len);

Doesn't this always end up with 'lens == 0'? IIUC ctrl->len can have
the values ARM_BREAKPOINT_LEN_{1,2,4,8}:

#define ARM_BREAKPOINT_LEN_1	0x1
#define ARM_BREAKPOINT_LEN_2	0x3
#define ARM_BREAKPOINT_LEN_4	0xf
#define ARM_BREAKPOINT_LEN_8	0xff

> +	lene = __fls(ctrl->len);
> +
> +	wp_low = val + lens;
> +	wp_high = val + lene;

First I thought these values are off by one, but in difference to
ffs() from glibc the kernel functions start with index 0, instead
of using zero as 'no bit set'.

> +	if (addr < wp_low)
> +		return wp_low - addr;
> +	else if (addr > wp_high)
> +		return addr - wp_high;
> +	else
> +		return 0;
> +}
> +
>  static void watchpoint_handler(unsigned long addr, unsigned int fsr,
>  			       struct pt_regs *regs)
>  {
> -	int i, access;
> -	u32 val, ctrl_reg, alignment_mask;
> +	int i, access, closest_match = 0;
> +	u32 min_dist = -1, dist;
> +	u32 val, ctrl_reg;
>  	struct perf_event *wp, **slots;
>  	struct arch_hw_breakpoint *info;
>  	struct arch_hw_breakpoint_ctrl ctrl;
>  
>  	slots = this_cpu_ptr(wp_on_reg);
>  
> +	/*
> +	 * Find all watchpoints that match the reported address. If no exact
> +	 * match is found. Attribute the hit to the closest watchpoint.
> +	 */
> +	rcu_read_lock();
>  	for (i = 0; i < core_num_wrps; ++i) {
> -		rcu_read_lock();
> -
>  		wp = slots[i];
> -
>  		if (wp == NULL)
> -			goto unlock;
> +			continue;
>  
> -		info = counter_arch_bp(wp);
>  		/*
>  		 * The DFAR is an unknown value on debug architectures prior
>  		 * to 7.1. Since we only allow a single watchpoint on these
> @@ -708,33 +744,31 @@ static void watchpoint_handler(unsigned long addr, unsigned int fsr,
>  		 */
>  		if (debug_arch < ARM_DEBUG_ARCH_V7_1) {
>  			BUG_ON(i > 0);
> +			info = counter_arch_bp(wp);
>  			info->trigger = wp->attr.bp_addr;
>  		} else {
> -			if (info->ctrl.len == ARM_BREAKPOINT_LEN_8)
> -				alignment_mask = 0x7;
> -			else
> -				alignment_mask = 0x3;
> -
> -			/* Check if the watchpoint value matches. */
> -			val = read_wb_reg(ARM_BASE_WVR + i);
> -			if (val != (addr & ~alignment_mask))
> -				goto unlock;
> -
> -			/* Possible match, check the byte address select. */
> -			ctrl_reg = read_wb_reg(ARM_BASE_WCR + i);
> -			decode_ctrl_reg(ctrl_reg, &ctrl);
> -			if (!((1 << (addr & alignment_mask)) & ctrl.len))
> -				goto unlock;
> -
>  			/* Check that the access type matches. */
>  			if (debug_exception_updates_fsr()) {
>  				access = (fsr & ARM_FSR_ACCESS_MASK) ?
>  					  HW_BREAKPOINT_W : HW_BREAKPOINT_R;
>  				if (!(access & hw_breakpoint_type(wp)))
> -					goto unlock;
> +					continue;
>  			}
>  
> +			val = read_wb_reg(ARM_BASE_WVR + i);
> +			ctrl_reg = read_wb_reg(ARM_BASE_WCR + i);
> +			decode_ctrl_reg(ctrl_reg, &ctrl);
> +			dist = get_distance_from_watchpoint(addr, val, &ctrl);
> +			if (dist < min_dist) {
> +				min_dist = dist;
> +				closest_match = i;
> +			}
> +			/* Is this an exact match? */
> +			if (dist != 0)
> +				continue;
> +
>  			/* We have a winner. */
> +			info = counter_arch_bp(wp);
>  			info->trigger = addr;

Unless we care about using the 'last' watchpoint in case multiple WPs have
the same address I think it would be clearer to change the above to:

	       	       	if (dist == 0) {
				/* We have a winner. */
				info = counter_arch_bp(wp);
				info->trigger = addr;
				break;
			}

>  		}
>  
> @@ -748,10 +782,20 @@ static void watchpoint_handler(unsigned long addr, unsigned int fsr,
>  		 */
>  		if (is_default_overflow_handler(wp))
>  			enable_single_step(wp, instruction_pointer(regs));
> +	}
>  
> -unlock:
> -		rcu_read_unlock();
> +	if (min_dist > 0 && min_dist != -1) {
> +		/* No exact match found. */
> +		wp = slots[closest_match];
> +		info = counter_arch_bp(wp);
> +		info->trigger = addr;
> +		pr_debug("watchpoint fired: address = 0x%x\n", info->trigger);
> +		perf_bp_event(wp, regs);
> +		if (is_default_overflow_handler(wp))
> +			enable_single_step(wp, instruction_pointer(regs));
>  	}
> +
> +	rcu_read_unlock();
>  }
>  
>  static void watchpoint_single_step_handler(unsigned long pc)
> -- 
> 2.23.0.866.gb869b98d4c-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
