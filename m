Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2CC1AB966
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 09:10:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nileJ5hx43ZH7qwXvK+YtIJcDiVPiViWsH4GDGJ3A6o=; b=W697xK4UThU0O8
	knKox3YC149s8ENStdP7GeiFqgweYaeWkSuVc1UmuUnh2e2ZEDYYYOjnyR6nkLvcnce6Lrfn2itOk
	FuZkBOV5BbKoM/y3LVe9EvFD84tnS/YN75xFkn+Hgxphaw4TJkeclBl/P+9TW+2blFKSOxQiTD28k
	/4qydFJGiTJrpxW3S9DMyl1t/ESWv/Ko6yQlftjEQzgouI3+Ge70vRIakEDUq+Nzs1wxbA9Jhsvhf
	aPHcWgT6mTsx6Hv77m7hMbq4I0hyI2sQ43JRA6b5RvVG/N/Hys9IORn+Igfq3oBIxggfrtc2vCaWO
	PgmFGTzhVi7wM5WmcktQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOyfX-0007wV-8E; Thu, 16 Apr 2020 07:10:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOyfN-0007vY-GX
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 07:10:30 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 257FB20771;
 Thu, 16 Apr 2020 07:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587021029;
 bh=ryc6wxWPw9o1JBywIVfmLfQfPLw/yNBffMQNg8SEEvY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dt7W3di72wz2z2ARB0niotEho/ZirUa6JoEZ7XeG02dWm9SXiDH05NrrrxyPbQUjx
 WFG4WMY/l+XMZwptWODKf3D6CfxcAz3LWkDk9W30P/Iz6CVAu4FlTaoDD3lttWLDKC
 jhV6CPm++eT0Xm3S4MG6sU04fMvY24BAx6CCJsjE=
Date: Thu, 16 Apr 2020 08:10:24 +0100
From: Will Deacon <will@kernel.org>
To: Jiping Ma <jiping.ma2@windriver.com>
Subject: Re: [PATCH] Perf: support to unwind userspace application stacks
 generated with thumb.
Message-ID: <20200416071023.GB29742@willie-the-truck>
References: <20200416053829.130395-1-jiping.ma2@windriver.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416053829.130395-1-jiping.ma2@windriver.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_001029_574104_DAD5F6E3 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, alexander.shishkin@linux.intel.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 acme@kernel.org, peterz@infradead.org, mingo@redhat.com, namhyung@kernel.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 01:38:29PM +0800, Jiping Ma wrote:
> Only push sp and lr in the stack for thumb mode. it will go
> through the stack find sp and lr.
> 
> Change this to the more detailed description of the patch
> 
> Signed-off-by: Jiping Ma <jiping.ma2@windriver.com>
> ---
>  arch/arm64/kernel/perf_callchain.c | 36 +++++++++++++++++++++++++++---
>  1 file changed, 33 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kernel/perf_callchain.c b/arch/arm64/kernel/perf_callchain.c
> index bcafd7dcfe8b..97dde271c121 100644
> --- a/arch/arm64/kernel/perf_callchain.c
> +++ b/arch/arm64/kernel/perf_callchain.c
> @@ -104,6 +104,30 @@ compat_user_backtrace(struct compat_frame_tail __user *tail,
>  
>  	return (struct compat_frame_tail __user *)compat_ptr(buftail.fp) - 1;
>  }
> +
> +void
> +user_backtrace_thumb(struct perf_callchain_entry_ctx *entry,
> +		     struct pt_regs *regs)
> +{
> +	u32 sp;
> +	u32 *sp_t;
> +	/*
> +	 * Only push sp, lr to stack.
> +	 */
> +	for (sp = regs->compat_sp; (sp < current->mm->start_stack) &&
> +		(entry->nr < entry->max_stack); sp += 4) {
> +		sp_t = (u32 *)(unsigned long)sp;
> +		if ((*sp_t > regs->compat_sp) &&
> +			(*sp_t < current->mm->start_stack)) {
> +			if (*(sp_t + 1) < current->mm->end_code &&
> +				*(sp_t + 1) > current->mm->start_code) {
> +				perf_callchain_store(entry,  *(sp_t + 1)-1);
> +				sp += 4;
> +			}
> +		}
> +	}
> +}

This looks like a pile of fragile heuristics to me. Why don't you just use
libunwind in userspace, the same way you'd have to if you compiled without
framepointers?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
