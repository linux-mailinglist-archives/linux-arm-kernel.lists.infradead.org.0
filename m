Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5E41B12D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 19:18:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7BeN5Y08/Py9ennHsN1A0hWoUUZ+5vQlz5sZBzph7E=; b=sPnWfDE613PeFv
	MtSqkcR2cn4M84b6qZFgltSR+QKJMRJ2SFEFC4I5XeJNfvMoUZjTkreTfqjLTKDP+BVcEgxn7BvI+
	Oh6+0i2o5hA1Fj21EFDL2q4gvXYv8MDmWMVD02oC3F5CENCa0jG71oNQi+TWudyi6KN0xs6GxBfIF
	AiCao0CFCsMhPyZSv3OQsHLKm/kn/YWa1l0JAl1M/ataqvmo0Y3w6lOIzYECD/ZmsK61gn3QvMsZf
	eBgxAVB6YHA8LVEKEaoLCVupFbw/LWIJoS6A7YkwTlEdnxGDfO7mGqzZg6JoINQ7mJhmB9ZKP4ebP
	1JbFzM041psI7wlYBhcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQa40-0002Of-1y; Mon, 20 Apr 2020 17:18:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQa3W-000296-SI
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 17:18:05 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EEDC02145D;
 Mon, 20 Apr 2020 17:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587403081;
 bh=8Cti+W7qcMTc3i7ivCfS06mEpTJP5zYv2iWrbD/RTtg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n8kgySIFfBQIcj6Ia2jB/kXabMFi8z3ZnfxRD6sXtUSU5WkP7GyhdFFnNX9oGyhnV
 mhWjwdOQ+04RDru0OIhK+bLIVHdU0fkAMOot1o2sNYiPhmoqv95P7YoCTgT0+QheZR
 P5uQTK0OZzAOJTiqi4PCUeQwAx7St1L9HyeIHsPI=
Date: Mon, 20 Apr 2020 18:17:55 +0100
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v11 02/12] scs: add accounting
Message-ID: <20200420171753.GD24386@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-3-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416161245.148813-3-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_101802_946531_52B3792F 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-arm-kernel@lists.infradead.org, Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 09:12:35AM -0700, Sami Tolvanen wrote:
> This change adds accounting for the memory allocated for shadow stacks.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/base/node.c    |  6 ++++++
>  fs/proc/meminfo.c      |  4 ++++
>  include/linux/mmzone.h |  3 +++
>  kernel/scs.c           | 20 ++++++++++++++++++++
>  mm/page_alloc.c        |  6 ++++++
>  mm/vmstat.c            |  3 +++
>  6 files changed, 42 insertions(+)
> 
> diff --git a/drivers/base/node.c b/drivers/base/node.c
> index 10d7e818e118..502ab5447c8d 100644
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

Why not just use KB everywhere instead of repeated division by 1024?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
