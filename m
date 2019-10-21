Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1329DF4D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 20:08:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IyQodRenIsRV+TbtoCrCIOBgQU5tpP1nVN+s+xSkoIs=; b=nC55oCgGodCDOM
	eOiN1DLrwxwBmZvUghcxE12h+DqDaXxPu8xEuAyI0N3id6ZFUbZSxJQxpcWQgg5dJPaj5dpdArE82
	ArDp/s63pGUOVQ30iwp9ApNQQLJb8WdDAB6tWXUXQfdCgfaoawcMg5BigfSro8utObcMJeV8yGGYF
	C0AU9rl8PKy6E945Z4vy9/Kbt2R3jKrEXna5AG+83Bs0lv4eQG3mcE2lbbgjjoIpZYX20rEJJcf/4
	gSdG0LCZx2qAxAqhU3c3v2mhd5VwjAyGPwyhTuYY37vh7Gz9z4doe+oB/P0DD+idzF1eGe2neYJXF
	iosFxUUCg+VdCP/obbeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMc6D-0007No-AC; Mon, 21 Oct 2019 18:08:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMc63-0007N9-JR
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 18:08:01 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ADE8B2086D;
 Mon, 21 Oct 2019 18:07:57 +0000 (UTC)
Date: Mon, 21 Oct 2019 14:07:56 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/8] ftrace: add ftrace_init_nop()
Message-ID: <20191021140756.613a1bac@gandalf.local.home>
In-Reply-To: <20191021163426.9408-2-mark.rutland@arm.com>
References: <20191021163426.9408-1-mark.rutland@arm.com>
 <20191021163426.9408-2-mark.rutland@arm.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_110759_704964_9ECF1B5B 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: jthierry@redhat.com, will@kernel.org, ard.biesheuvel@linaro.org,
 peterz@infradead.org, catalin.marinas@arm.com, deller@gmx.de,
 jpoimboe@redhat.com, linux-kernel@vger.kernel.org, takahiro.akashi@linaro.org,
 mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org, amit.kachhap@arm.com,
 svens@stackframe.org, duwe@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019 17:34:19 +0100
Mark Rutland <mark.rutland@arm.com> wrote:

> Architectures may need to perform special initialization of ftrace
> callsites, and today they do so by special-casing ftrace_make_nop() when
> the expected branch address is MCOUNT_ADDR. In some cases (e.g. for
> patchable-function-entry), we don't have an mcount-like symbol and don't
> want a synthetic MCOUNT_ADDR, but we may need to perform some
> initialization of callsites.
> 
> To make it possible to separate initialization from runtime
> modification, and to handle cases without an mcount-like symbol, this
> patch adds an optional ftrace_init_nop() function that architectures can
> implement, which does not pass a branch address.
> 
> Where an architecture does not provide ftrace_init_nop(), we will fall
> back to the existing behaviour of calling ftrace_make_nop() with
> MCOUNT_ADDR.
> 
> At the same time, ftrace_code_disable() is renamed to
> ftrace_code_init_disabled() to make it clearer that it is intended to
> intialize a callsite into a disabled state, and is not for disabling a
> callsite that has been runtime enabled.

To make the name even better, let's just rename it to:

 ftrace_nop_initialization()

I think that may be the best description for it.

> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Steven Rostedt <rostedt@goodmis.org>
> Cc: Torsten Duwe <duwe@suse.de>
> ---
>  kernel/trace/ftrace.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c
> index f296d89be757..afd7e210e595 100644
> --- a/kernel/trace/ftrace.c
> +++ b/kernel/trace/ftrace.c
> @@ -2493,15 +2493,22 @@ struct dyn_ftrace *ftrace_rec_iter_record(struct ftrace_rec_iter *iter)
>  	return &iter->pg->records[iter->index];
>  }
>  
> +#ifndef ftrace_init_nop
> +static int ftrace_init_nop(struct module *mod, struct dyn_ftrace *rec)
> +{
> +	return ftrace_make_nop(mod, rec, MCOUNT_ADDR);
> +}
> +#endif

Can you place the above in the ftrace.h header. That's where that would
belong.

#ifndef ftrace_init_nop
struct module;
static inline int ftrace_init_nop(struct module *mod, struct dyn_ftrace *rec)
{
	return ftrace_make_nop(mod, rec, MCOUNT_ADDR);
}
#endif

-- Steve

> +
>  static int
> -ftrace_code_disable(struct module *mod, struct dyn_ftrace *rec)
> +ftrace_code_init_disabled(struct module *mod, struct dyn_ftrace *rec)
>  {
>  	int ret;
>  
>  	if (unlikely(ftrace_disabled))
>  		return 0;
>  
> -	ret = ftrace_make_nop(mod, rec, MCOUNT_ADDR);
> +	ret = ftrace_init_nop(mod, rec);
>  	if (ret) {
>  		ftrace_bug_type = FTRACE_BUG_INIT;
>  		ftrace_bug(ret, rec);
> @@ -2943,7 +2950,7 @@ static int ftrace_update_code(struct module *mod, struct ftrace_page *new_pgs)
>  			 * to the NOP instructions.
>  			 */
>  			if (!__is_defined(CC_USING_NOP_MCOUNT) &&
> -			    !ftrace_code_disable(mod, p))
> +			    !ftrace_code_init_disabled(mod, p))
>  				break;
>  
>  			update_cnt++;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
