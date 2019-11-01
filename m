Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE543EBC88
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 04:53:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fCV8OT/7d2RHCTsksCkSBV03IqMzuOUPoiJEJ/xWCbw=; b=VqpGJf3rfqIbKR
	dlah59hZESdX/R3o4E0zVM0W3pmbX1EnWwzMh/GasEeoN1Px7780oc6V3eFB/ttGSphLZbEMgEXW8
	do3bs4qrIcgw0e0ntQ9I8u4DRaYpS+a0qfLTeqlobsAOiELHtuZgltSejAAbx9vipUMzHAPSKC7nI
	ZIsFQlco8vCko2OymjaEdDs2IudqB3z/731Vqo3elb+eyhLVj4ssaYeplCvwhkGJtqBm1WsVbTXyr
	ek+sKhmBoQHxHhgny4nb4rrgFGjgDaxubNXrMW3W3tmRereNuA4EMzanmTeZFvx3u9NYyum1cCWG4
	QS1x/tBB6p9tEOBOtGtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQNzc-0007T2-D8; Fri, 01 Nov 2019 03:52:56 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQNzS-0007Se-L2
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 03:52:48 +0000
Received: by mail-pl1-x641.google.com with SMTP id k7so3760796pll.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 20:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gpLAkkycQDbDSOC/PvJc50WAQNQl23mAQ5YOyKoCOKQ=;
 b=gWLZxKI+6uMuqF40oThzg5PiQfqKMClcPLLmmIBAaR/wDZwWjVijkJEPF2sNBmIV9i
 nbhYZRcBYedLAs1ObXvZI/Okuk9JFPb0HVSronSamG3Tn5t+wO/JGam+3rhKDB6IcVCm
 h3TDS+boW/VYKcZb32f4zY+kqosE4Bztz0cUs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gpLAkkycQDbDSOC/PvJc50WAQNQl23mAQ5YOyKoCOKQ=;
 b=Gqy8IuOsSeqq6Sphs9y7rp3cA6s7yDXpg2dLUTzy/2RatdmCEsAHY3p15O+KOoVI+L
 ILouQj6/EQRmnVXp5KbEWSiDhu2xnKOcv1xYeBbx1o+kT02mqvA8wu8msBXoys66wfU/
 t0tZPkz2FVzAmRF40yDOjHlV2p6JzgAn44x6QoZgfbQg57i2r4ZxgaG1G1LYeCi5pHXl
 X1jaEBmp5IEfc1/sltsWC2QWY8/nGptqhHtn2fsHqMMBUkRSq5VYMTYykUFfTnfQhTce
 x7JJW5+q/apEPV/djhl1uDwXgHCGMJPWtX0Scv4HFvEzRol8qJ1nOnhd+R5e7bHdtxi3
 fXbg==
X-Gm-Message-State: APjAAAWFJ+hWWAorzxC7ld18KA3SwT/05zpSQLExZBJxRbTO2OsXAqMe
 V5q2i03I7DT3ujLmMPcX0YC+Xw==
X-Google-Smtp-Source: APXvYqw6XqTv8yGHR0KsVVwCNMe9mcWfZe/TNMu5crisql/X0YT5TGuvZ2U2c5cD7WTUXY1GQs1CEA==
X-Received: by 2002:a17:902:b604:: with SMTP id
 b4mr10080726pls.219.1572580366145; 
 Thu, 31 Oct 2019 20:52:46 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id b21sm570165pfd.74.2019.10.31.20.52.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 20:52:45 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:52:44 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Subject: Re: [PATCH v3 06/17] scs: add accounting
Message-ID: <201910312052.0ADF21F@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-7-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-7-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_205246_693094_807AFB8E 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, clang-built-linux@googlegroups.com,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, kernel-hardening@lists.openwall.com,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 09:46:26AM -0700, samitolvanen@google.com wrote:
> This change adds accounting for the memory allocated for shadow stacks.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

A nice bit of stats to have.

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  drivers/base/node.c    |  6 ++++++
>  fs/proc/meminfo.c      |  4 ++++
>  include/linux/mmzone.h |  3 +++
>  kernel/scs.c           | 19 +++++++++++++++++++
>  mm/page_alloc.c        |  6 ++++++
>  mm/vmstat.c            |  3 +++
>  6 files changed, 41 insertions(+)
> 
> diff --git a/drivers/base/node.c b/drivers/base/node.c
> index 296546ffed6c..111e58ec231e 100644
> --- a/drivers/base/node.c
> +++ b/drivers/base/node.c
> @@ -415,6 +415,9 @@ static ssize_t node_read_meminfo(struct device *dev,
>  		       "Node %d AnonPages:      %8lu kB\n"
>  		       "Node %d Shmem:          %8lu kB\n"
>  		       "Node %d KernelStack:    %8lu kB\n"
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +		       "Node %d ShadowCallStack:%8lu kB\n"
> +#endif
>  		       "Node %d PageTables:     %8lu kB\n"
>  		       "Node %d NFS_Unstable:   %8lu kB\n"
>  		       "Node %d Bounce:         %8lu kB\n"
> @@ -438,6 +441,9 @@ static ssize_t node_read_meminfo(struct device *dev,
>  		       nid, K(node_page_state(pgdat, NR_ANON_MAPPED)),
>  		       nid, K(i.sharedram),
>  		       nid, sum_zone_node_page_state(nid, NR_KERNEL_STACK_KB),
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +		       nid, sum_zone_node_page_state(nid, NR_KERNEL_SCS_BYTES) / 1024,
> +#endif
>  		       nid, K(sum_zone_node_page_state(nid, NR_PAGETABLE)),
>  		       nid, K(node_page_state(pgdat, NR_UNSTABLE_NFS)),
>  		       nid, K(sum_zone_node_page_state(nid, NR_BOUNCE)),
> diff --git a/fs/proc/meminfo.c b/fs/proc/meminfo.c
> index 8c1f1bb1a5ce..49768005a79e 100644
> --- a/fs/proc/meminfo.c
> +++ b/fs/proc/meminfo.c
> @@ -103,6 +103,10 @@ static int meminfo_proc_show(struct seq_file *m, void *v)
>  	show_val_kb(m, "SUnreclaim:     ", sunreclaim);
>  	seq_printf(m, "KernelStack:    %8lu kB\n",
>  		   global_zone_page_state(NR_KERNEL_STACK_KB));
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	seq_printf(m, "ShadowCallStack:%8lu kB\n",
> +		   global_zone_page_state(NR_KERNEL_SCS_BYTES) / 1024);
> +#endif
>  	show_val_kb(m, "PageTables:     ",
>  		    global_zone_page_state(NR_PAGETABLE));
>  
> diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
> index bda20282746b..fcb8c1708f9e 100644
> --- a/include/linux/mmzone.h
> +++ b/include/linux/mmzone.h
> @@ -200,6 +200,9 @@ enum zone_stat_item {
>  	NR_MLOCK,		/* mlock()ed pages found and moved off LRU */
>  	NR_PAGETABLE,		/* used for pagetables */
>  	NR_KERNEL_STACK_KB,	/* measured in KiB */
> +#if IS_ENABLED(CONFIG_SHADOW_CALL_STACK)
> +	NR_KERNEL_SCS_BYTES,	/* measured in bytes */
> +#endif
>  	/* Second 128 byte cacheline */
>  	NR_BOUNCE,
>  #if IS_ENABLED(CONFIG_ZSMALLOC)
> diff --git a/kernel/scs.c b/kernel/scs.c
> index 7c1a40020754..7780fc4e29ac 100644
> --- a/kernel/scs.c
> +++ b/kernel/scs.c
> @@ -11,6 +11,7 @@
>  #include <linux/scs.h>
>  #include <linux/slab.h>
>  #include <linux/vmalloc.h>
> +#include <linux/vmstat.h>
>  #include <asm/scs.h>
>  
>  static inline void *__scs_base(struct task_struct *tsk)
> @@ -74,6 +75,11 @@ static void scs_free(void *s)
>  	vfree_atomic(s);
>  }
>  
> +static struct page *__scs_page(struct task_struct *tsk)
> +{
> +	return vmalloc_to_page(__scs_base(tsk));
> +}
> +
>  static int scs_cleanup(unsigned int cpu)
>  {
>  	int i;
> @@ -107,6 +113,11 @@ static inline void scs_free(void *s)
>  	kmem_cache_free(scs_cache, s);
>  }
>  
> +static struct page *__scs_page(struct task_struct *tsk)
> +{
> +	return virt_to_page(__scs_base(tsk));
> +}
> +
>  void __init scs_init(void)
>  {
>  	scs_cache = kmem_cache_create("scs_cache", SCS_SIZE, SCS_SIZE,
> @@ -135,6 +146,12 @@ void scs_task_reset(struct task_struct *tsk)
>  	task_set_scs(tsk, __scs_base(tsk));
>  }
>  
> +static void scs_account(struct task_struct *tsk, int account)
> +{
> +	mod_zone_page_state(page_zone(__scs_page(tsk)), NR_KERNEL_SCS_BYTES,
> +		account * SCS_SIZE);
> +}
> +
>  int scs_prepare(struct task_struct *tsk, int node)
>  {
>  	void *s;
> @@ -145,6 +162,7 @@ int scs_prepare(struct task_struct *tsk, int node)
>  
>  	task_set_scs(tsk, s);
>  	scs_set_magic(tsk);
> +	scs_account(tsk, 1);
>  
>  	return 0;
>  }
> @@ -164,6 +182,7 @@ void scs_release(struct task_struct *tsk)
>  
>  	WARN_ON(scs_corrupted(tsk));
>  
> +	scs_account(tsk, -1);
>  	task_set_scs(tsk, NULL);
>  	scs_free(s);
>  }
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index ecc3dbad606b..fe17d69d98a7 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -5361,6 +5361,9 @@ void show_free_areas(unsigned int filter, nodemask_t *nodemask)
>  			" managed:%lukB"
>  			" mlocked:%lukB"
>  			" kernel_stack:%lukB"
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +			" shadow_call_stack:%lukB"
> +#endif
>  			" pagetables:%lukB"
>  			" bounce:%lukB"
>  			" free_pcp:%lukB"
> @@ -5382,6 +5385,9 @@ void show_free_areas(unsigned int filter, nodemask_t *nodemask)
>  			K(zone_managed_pages(zone)),
>  			K(zone_page_state(zone, NR_MLOCK)),
>  			zone_page_state(zone, NR_KERNEL_STACK_KB),
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +			zone_page_state(zone, NR_KERNEL_SCS_BYTES) / 1024,
> +#endif
>  			K(zone_page_state(zone, NR_PAGETABLE)),
>  			K(zone_page_state(zone, NR_BOUNCE)),
>  			K(free_pcp),
> diff --git a/mm/vmstat.c b/mm/vmstat.c
> index 6afc892a148a..9fe4afe670fe 100644
> --- a/mm/vmstat.c
> +++ b/mm/vmstat.c
> @@ -1118,6 +1118,9 @@ const char * const vmstat_text[] = {
>  	"nr_mlock",
>  	"nr_page_table_pages",
>  	"nr_kernel_stack",
> +#if IS_ENABLED(CONFIG_SHADOW_CALL_STACK)
> +	"nr_shadow_call_stack_bytes",
> +#endif
>  	"nr_bounce",
>  #if IS_ENABLED(CONFIG_ZSMALLOC)
>  	"nr_zspages",
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
