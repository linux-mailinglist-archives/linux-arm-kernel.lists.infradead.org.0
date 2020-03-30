Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DB7197C1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 14:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPNXkxPp7kMdXuI9mLuxNQlrjQga9Yb2XfzNsQndrA0=; b=RLnYGp2ot2/vrv
	Z/reUQiWGlenkgacP3bNMKwRnuJw2UNM5LpdrRI5QwWEjoOs2ZN1FCoE9lqLbIFLQ8O0L7LfU7C+H
	VniVzSCYaqFnat2ax3sYfYNq2VRuVIaXdAL1bagdXsgzLNczbqzRvRFKopS6diKrVtJddqzLeJ3m7
	IPnY0+NdNK5/vAX86aTgqCEVH0Lmdr8K3PEawmqFMCPw60mvmIzO7Sge6PuLQ2zB+c/mZcyDwy3el
	eI+wuOGOpEPwyAL7JU6s6sLOa08CmFfrfDtULs6DEBC2raI83avtOLMbqCMKea2uWFUBe1KYCzqxr
	ejI9J3xguKaHFjhSAbJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jItiA-0006ld-2z; Mon, 30 Mar 2020 12:40:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIthq-0006iP-B5
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 12:39:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5D43B30E;
 Mon, 30 Mar 2020 05:39:50 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E6E203F68F;
 Mon, 30 Mar 2020 05:39:48 -0700 (PDT)
Date: Mon, 30 Mar 2020 13:39:46 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Tingwei Zhang <tingwei@codeaurora.org>
Subject: Re: [PATCH] arm64: hw_breakpoint: don't clear debug registers in
 halt mode
Message-ID: <20200330123946.GH1309@C02TD0UTHF1T.local>
References: <20200328083209.21793-1-tingwei@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200328083209.21793-1-tingwei@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_053954_430437_ACB5D086 
X-CRM114-Status: GOOD (  22.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 28, 2020 at 04:32:09PM +0800, Tingwei Zhang wrote:
> If external debugger sets a breakpoint for one Kernel function
> when device is in bootloader mode and loads Kernel, this breakpoint
> will be wiped out in hw_breakpoint_reset(). To fix this, check
> MDSCR_EL1.HDE in hw_breakpoint_reset(). When MDSCR_EL1.HDE is
> 0b1, halting debug is enabled. Don't reset debug registers in this case.

I don't think this is sufficient, because the kernel can still
subsequently mess with breakpoints, and the HW debugger might not be
attached at this point in time anyhow.

I reckon this should hang off the existing "nodebumon" command line
option, and we shouldn't use HW breakpoints at all when that is passed.
Then you can pass that to prevent the kernel stomping on the external
debugger.

Will, thoughts?

Mark.

> 
> Signed-off-by: Tingwei Zhang <tingwei@codeaurora.org>
> ---
>  arch/arm64/include/asm/debug-monitors.h |  1 +
>  arch/arm64/kernel/hw_breakpoint.c       | 19 +++++++++++++++++++
>  2 files changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/debug-monitors.h b/arch/arm64/include/asm/debug-monitors.h
> index 7619f473155f..8dc2c28791a0 100644
> --- a/arch/arm64/include/asm/debug-monitors.h
> +++ b/arch/arm64/include/asm/debug-monitors.h
> @@ -18,6 +18,7 @@
>  
>  /* MDSCR_EL1 enabling bits */
>  #define DBG_MDSCR_KDE		(1 << 13)
> +#define DBG_MDSCR_HDE		(1 << 14)
>  #define DBG_MDSCR_MDE		(1 << 15)
>  #define DBG_MDSCR_MASK		~(DBG_MDSCR_KDE | DBG_MDSCR_MDE)
>  
> diff --git a/arch/arm64/kernel/hw_breakpoint.c b/arch/arm64/kernel/hw_breakpoint.c
> index 0b727edf4104..0180306f74d7 100644
> --- a/arch/arm64/kernel/hw_breakpoint.c
> +++ b/arch/arm64/kernel/hw_breakpoint.c
> @@ -927,6 +927,17 @@ void hw_breakpoint_thread_switch(struct task_struct *next)
>  				    !next_debug_info->wps_disabled);
>  }
>  
> +/*
> + * Check if halted debug mode is enabled.
> + */
> +static u32 hde_enabled(void)
> +{
> +	u32 mdscr;
> +
> +	asm volatile("mrs %0, mdscr_el1" : "=r" (mdscr));
> +	return (mdscr & DBG_MDSCR_HDE);
> +}
> +
>  /*
>   * CPU initialisation.
>   */
> @@ -934,6 +945,14 @@ static int hw_breakpoint_reset(unsigned int cpu)
>  {
>  	int i;
>  	struct perf_event **slots;
> +
> +	/*
> +	 * When halting debug mode is enabled, break point could be already
> +	 * set be external debugger. Don't reset debug registers here to
> +	 * reserve break point from external debugger.
> +	 */
> +	if (hde_enabled())
> +		return 0;
>  	/*
>  	 * When a CPU goes through cold-boot, it does not have any installed
>  	 * slot, so it is safe to share the same function for restoring and
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
