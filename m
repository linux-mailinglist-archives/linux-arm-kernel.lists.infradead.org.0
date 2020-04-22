Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A341B4647
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 15:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9YPkP2WsIGFBzZ0rB6QEKTjlWv4PqUsDeJoFWWbe3xM=; b=hmhfVzJaNlG7Q/OqSPbaUFPIO
	tUl35543bjRWgODihYYIRh8nryAwzTAPrf5QqsgQGCjZ2AKMKNY1nEd3sq0Jn2w28I0zOda3ZG6ll
	qxjl5WRVBQh03uHSoQVtlQAq0/E0h8pNICO27zGQM2Ta/nk+jhPUdaIYAhjrrL1tpmwJMFGFTCUdb
	79iIzskCitgSW8dFrraTttk7AHkG6QuknJX0u2SriaD5oyHVvDHYhHGDtCSxBEFxjp3p81oU23MPP
	9cWPOnuMWg2GbsCswcx/5cSDW5dOhFbbYZZU381jOVe/08vEGA7IAQFME/2zuntiF9IOqTxHwbuoU
	J4l/uspCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRFUw-0002wr-K8; Wed, 22 Apr 2020 13:33:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRFUp-0002up-3P
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 13:33:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ACECA31B;
 Wed, 22 Apr 2020 06:32:55 -0700 (PDT)
Received: from [192.168.1.84] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 670D73F6CF;
 Wed, 22 Apr 2020 06:32:49 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: add check_wx_pages debugfs for CHECK_WX
To: Phong Tran <tranmanphong@gmail.com>, mark.rutland@arm.com,
 steve.capper@arm.com, will@kernel.org, keescook@chromium.org, greg@kroah.com
References: <20200307093926.27145-1-tranmanphong@gmail.com>
 <20200421173557.10817-1-tranmanphong@gmail.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <b7db5ad8-385d-8ee6-8e4a-5d64826dae65@arm.com>
Date: Wed, 22 Apr 2020 14:32:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200421173557.10817-1-tranmanphong@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_063259_229873_C8A2499E 
X-CRM114-Status: GOOD (  25.58  )
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
Cc: kernel-hardening@lists.openwall.com, linux-kernel@vger.kernel.org,
 alexios.zavras@intel.com, broonie@kernel.org, akpm@linux-foundation.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/04/2020 18:35, Phong Tran wrote:
> follow the suggestion from
> https://github.com/KSPP/linux/issues/35
> 
> Signed-off-by: Phong Tran <tranmanphong@gmail.com>

I'm fine with this as is, so you can have my

Reviewed-by: Steven Price <steven.price@arm.com>

However, if you have time to look at it then it would be good to look at 
moving the ptdump_check_wx()/debug_checkwx() calls into common code as 
this should be supported on arm/arm64/powerpc/riscv/x86 as far as I can 
see. And it's always best to get these things in common code early on 
rather than letting the architectures diverge.

Also in future it would be good if you include some text in the commit 
message that explains the purpose/intention of the change rather than 
just a link. Having a self-contained commit message helps a lot when 
searching the git history to find out why the code was written the way 
it is.

Steve

> ---
> Change since v1:
> - Update the Kconfig help text
> - Don't check the return value of debugfs_create_file()
> - Tested on QEMU aarch64
> root@qemuarm64:~# zcat /proc/config.gz | grep PTDUMP
> CONFIG_GENERIC_PTDUMP=y
> CONFIG_PTDUMP_CORE=y
> CONFIG_PTDUMP_DEBUGFS=y
> root@qemuarm64:~# uname -a
> Linux qemuarm64 5.7.0-rc2-00001-g20ddb383c313 #3 SMP PREEMPT Tue Apr 21 23:18:56 +07 2020 aarch64 GNU/Linux
> root@qemuarm64:~# echo 1 > /sys/kernel/debug/check_wx_pages
> [   63.261868] Checked W+X mappings: passed, no W+X pages found
> ---
>   arch/arm64/Kconfig.debug        |  5 ++++-
>   arch/arm64/include/asm/ptdump.h |  2 ++
>   arch/arm64/mm/dump.c            |  1 +
>   arch/arm64/mm/ptdump_debugfs.c  | 18 ++++++++++++++++++
>   4 files changed, 25 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig.debug b/arch/arm64/Kconfig.debug
> index a1efa246c9ed..cd82c9d3664a 100644
> --- a/arch/arm64/Kconfig.debug
> +++ b/arch/arm64/Kconfig.debug
> @@ -48,7 +48,10 @@ config DEBUG_WX
>   	  of other unfixed kernel bugs easier.
>   
>   	  There is no runtime or memory usage effect of this option
> -	  once the kernel has booted up - it's a one time check.
> +	  once the kernel has booted up - it's a one time check at
> +	  boot, and can also be triggered at runtime by echo "1" to
> +	  "check_wx_pages". The "check_wx_pages" is available only with
> +	  CONFIG_PTDUMP_DEBUGFS is enabled.
>   
>   	  If in doubt, say "Y".
>   
> diff --git a/arch/arm64/include/asm/ptdump.h b/arch/arm64/include/asm/ptdump.h
> index 38187f74e089..c90a6ec6f59b 100644
> --- a/arch/arm64/include/asm/ptdump.h
> +++ b/arch/arm64/include/asm/ptdump.h
> @@ -24,9 +24,11 @@ struct ptdump_info {
>   void ptdump_walk(struct seq_file *s, struct ptdump_info *info);
>   #ifdef CONFIG_PTDUMP_DEBUGFS
>   void ptdump_debugfs_register(struct ptdump_info *info, const char *name);
> +void ptdump_check_wx_init(void);
>   #else
>   static inline void ptdump_debugfs_register(struct ptdump_info *info,
>   					   const char *name) { }
> +static inline void ptdump_check_wx_init(void) { }
>   #endif
>   void ptdump_check_wx(void);
>   #endif /* CONFIG_PTDUMP_CORE */
> diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
> index 860c00ec8bd3..60c99a047763 100644
> --- a/arch/arm64/mm/dump.c
> +++ b/arch/arm64/mm/dump.c
> @@ -378,6 +378,7 @@ static int ptdump_init(void)
>   #endif
>   	ptdump_initialize();
>   	ptdump_debugfs_register(&kernel_ptdump_info, "kernel_page_tables");
> +	ptdump_check_wx_init();
>   	return 0;
>   }
>   device_initcall(ptdump_init);
> diff --git a/arch/arm64/mm/ptdump_debugfs.c b/arch/arm64/mm/ptdump_debugfs.c
> index d29d722ec3ec..6b0aa16cb17b 100644
> --- a/arch/arm64/mm/ptdump_debugfs.c
> +++ b/arch/arm64/mm/ptdump_debugfs.c
> @@ -20,3 +20,21 @@ void ptdump_debugfs_register(struct ptdump_info *info, const char *name)
>   {
>   	debugfs_create_file(name, 0400, NULL, info, &ptdump_fops);
>   }
> +
> +static int check_wx_debugfs_set(void *data, u64 val)
> +{
> +	if (val != 1ULL)
> +		return -EINVAL;
> +
> +	ptdump_check_wx();
> +
> +	return 0;
> +}
> +
> +DEFINE_SIMPLE_ATTRIBUTE(check_wx_fops, NULL, check_wx_debugfs_set, "%llu\n");
> +
> +void ptdump_check_wx_init(void)
> +{
> +	debugfs_create_file("check_wx_pages", 0200, NULL,
> +			NULL, &check_wx_fops) ? 0 : -ENOMEM;
> +}
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
