Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B331B5F0E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2yXY36j+GrGlKb8RpQ1E9J7iFhl+WufX6qCsfv1Zcn4=; b=TAV0ZCF+RPDNZm
	PcvpwRJvqLBlydSwNUhXQbLWLcvKpeaw2oBynqfVT+qPPBC6CSuTcm1iSeyeppBncLAO8mOQgXhZS
	m4SThgP6lsmaNw7TeR0uQrYGVo2cFwX5LEvfwAKO3pq1mHgb7ls4WMRX5/6Qhq/iOaIJ2lk4svg45
	skEKJk8P5hok7nFjNiXCgOlH5vV0up/+uWrmqwwSYYmcAX+MgQaLstCmiLJtmxFTAfvF5mnVfuFV3
	NYYDoTkDxBGLVJizfLGO/7LptDcD3rGNB1dC6L7WIz4DE57bRirsLr4RN1BFps+pFhwbgdOhaKd8G
	kTWRTdaBJKlGSU0GGMjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdhy-0007mm-7l; Thu, 23 Apr 2020 15:24:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdhp-0007mD-Cn
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:24:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E9B7531B;
 Thu, 23 Apr 2020 08:23:59 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 80EE13F6CF;
 Thu, 23 Apr 2020 08:23:58 -0700 (PDT)
Date: Thu, 23 Apr 2020 16:23:52 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v3 18/23] arm64: mte: Restore the GCR_EL1 register after
 a suspend
Message-ID: <20200423152352.GA21616@e121166-lin.cambridge.arm.com>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-19-catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421142603.3894-19-catalin.marinas@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_082401_472893_22EF1583 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 03:25:58PM +0100, Catalin Marinas wrote:
> The CPU resume/suspend routines only take care of the common system
> registers. Restore GCR_EL1 in addition via the __cpu_suspend_exit()
> function.
> 
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>
> ---
> 
> Notes:
>     New in v3.
> 
>  arch/arm64/include/asm/mte.h | 4 ++++
>  arch/arm64/kernel/mte.c      | 8 ++++++++
>  arch/arm64/kernel/suspend.c  | 4 ++++
>  3 files changed, 16 insertions(+)

Reviewed-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>

> diff --git a/arch/arm64/include/asm/mte.h b/arch/arm64/include/asm/mte.h
> index 3dc0a7977124..22eb3e06f311 100644
> --- a/arch/arm64/include/asm/mte.h
> +++ b/arch/arm64/include/asm/mte.h
> @@ -12,6 +12,7 @@ int mte_memcmp_pages(const void *page1_addr, const void *page2_addr);
>  #ifdef CONFIG_ARM64_MTE
>  void flush_mte_state(void);
>  void mte_thread_switch(struct task_struct *next);
> +void mte_suspend_exit(void);
>  long set_mte_ctrl(unsigned long arg);
>  long get_mte_ctrl(void);
>  #else
> @@ -21,6 +22,9 @@ static inline void flush_mte_state(void)
>  static inline void mte_thread_switch(struct task_struct *next)
>  {
>  }
> +static inline void mte_suspend_exit(void)
> +{
> +}
>  static inline long set_mte_ctrl(unsigned long arg)
>  {
>  	return 0;
> diff --git a/arch/arm64/kernel/mte.c b/arch/arm64/kernel/mte.c
> index 212b9fac294d..fa4a4196b248 100644
> --- a/arch/arm64/kernel/mte.c
> +++ b/arch/arm64/kernel/mte.c
> @@ -76,6 +76,14 @@ void mte_thread_switch(struct task_struct *next)
>  	update_gcr_el1_excl(next->thread.gcr_incl);
>  }
>  
> +void mte_suspend_exit(void)
> +{
> +	if (!system_supports_mte())
> +		return;
> +
> +	update_gcr_el1_excl(current->thread.gcr_incl);
> +}
> +
>  long set_mte_ctrl(unsigned long arg)
>  {
>  	u64 tcf0;
> diff --git a/arch/arm64/kernel/suspend.c b/arch/arm64/kernel/suspend.c
> index 9405d1b7f4b0..1d405b73d009 100644
> --- a/arch/arm64/kernel/suspend.c
> +++ b/arch/arm64/kernel/suspend.c
> @@ -9,6 +9,7 @@
>  #include <asm/daifflags.h>
>  #include <asm/debug-monitors.h>
>  #include <asm/exec.h>
> +#include <asm/mte.h>
>  #include <asm/pgtable.h>
>  #include <asm/memory.h>
>  #include <asm/mmu_context.h>
> @@ -74,6 +75,9 @@ void notrace __cpu_suspend_exit(void)
>  	 */
>  	if (arm64_get_ssbd_state() == ARM64_SSBD_FORCE_DISABLE)
>  		arm64_set_ssbd_mitigation(false);
> +
> +	/* Restore additional MTE-specific configuration */
> +	mte_suspend_exit();
>  }
>  
>  /*

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
