Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5E6EE0C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 14:14:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jnxtO3VBdOunbtGPHnjxDhhipFR+j6ePrTd57JD7M/E=; b=fhFq3Hp+ZWit6UjyCgLxixdcj
	O1ZKrH4FZeJgJWaAY2lq5ZVm6qhHAifLiGK7Wx6iUQnoBndYKR2B8GVovedHdHWdWY4s+zDNDHEDM
	nSBT3pJjUxNT0ioojA2LMUmKhOHWHWwtI5IiSO1Ea/XH8Gh+tr6/w4s+3O1reFzHWwILYsqQHzoru
	QwO5Pmik6Nh0m3W2ttkBPGRcDPD47NCHKhdNcGVOaDJCjUns/tTX1EwPIw5doyQ2RvaCjdqISHHSa
	/Yau5001a+5KXro8GlxIXvqxxp8NGFo6wQ9XCtDjlBNsUatgY2HWZL4zWVsiYhbd/a7Vx4g6J1kMC
	gg/rCEnZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRcBM-0006Cs-AT; Mon, 04 Nov 2019 13:14:08 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRcAj-0005HS-6T
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 13:13:31 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iRcAF-00051p-2q; Mon, 04 Nov 2019 14:12:59 +0100
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v4 06/17] scs: add accounting
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 04 Nov 2019 14:22:19 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191101221150.116536-7-samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-7-samitolvanen@google.com>
Message-ID: <791fc70f7bcaf13a89abaee9aae52dfe@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: samitolvanen@google.com, will@kernel.org,
 catalin.marinas@arm.com, rostedt@goodmis.org, mhiramat@kernel.org,
 ard.biesheuvel@linaro.org, dave.martin@arm.com, keescook@chromium.org,
 labbott@redhat.com, mark.rutland@arm.com, ndesaulniers@google.com,
 jannh@google.com, miguel.ojeda.sandonis@gmail.com,
 yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_051329_400960_0E1CE8B4 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <dave.martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-01 23:21, Sami Tolvanen wrote:
> This change adds accounting for the memory allocated for shadow 
> stacks.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
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
> @@ -415,6 +415,9 @@ static ssize_t node_read_meminfo(struct device 
> *dev,
>  		       "Node %d AnonPages:      %8lu kB\n"
>  		       "Node %d Shmem:          %8lu kB\n"
>  		       "Node %d KernelStack:    %8lu kB\n"
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +		       "Node %d ShadowCallStack:%8lu kB\n"
> +#endif
>  		       "Node %d PageTables:     %8lu kB\n"
>  		       "Node %d NFS_Unstable:   %8lu kB\n"
>  		       "Node %d Bounce:         %8lu kB\n"
> @@ -438,6 +441,9 @@ static ssize_t node_read_meminfo(struct device 
> *dev,
>  		       nid, K(node_page_state(pgdat, NR_ANON_MAPPED)),
>  		       nid, K(i.sharedram),
>  		       nid, sum_zone_node_page_state(nid, NR_KERNEL_STACK_KB),
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +		       nid, sum_zone_node_page_state(nid, NR_KERNEL_SCS_BYTES) / 
> 1024,
> +#endif
>  		       nid, K(sum_zone_node_page_state(nid, NR_PAGETABLE)),
>  		       nid, K(node_page_state(pgdat, NR_UNSTABLE_NFS)),
>  		       nid, K(sum_zone_node_page_state(nid, NR_BOUNCE)),
> diff --git a/fs/proc/meminfo.c b/fs/proc/meminfo.c
> index 8c1f1bb1a5ce..49768005a79e 100644
> --- a/fs/proc/meminfo.c
> +++ b/fs/proc/meminfo.c
> @@ -103,6 +103,10 @@ static int meminfo_proc_show(struct seq_file *m,
> void *v)
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

Is there any reason why you're not consistently using only one of
"#if IS_ENABLED(...)" or "#ifdef ...", but instead a mix of both?

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
