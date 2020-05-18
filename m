Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF991D6EB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 04:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S18A2MoGnJJ6uOqHEDoFtzeqmvfSriBRCeeOf/l6B2g=; b=qYBzwG8rxDCiLQ
	LKoBcbn/ckhMHTEt3k/ohuX1UeBd1B80xFk6H5znZ6ohsQKZ87B1hFVh+WtuiHgqen91/dDPMnicH
	GKDWWBUCQKDEamATkd37t6SOfLBuFA+yWk+Cnr3qEhVM7PiJ7GE7mVEHMPyJEbdQ3hjgiZZFkxPnC
	yyM4bNYT9rNaYFFCQ/YkiBmJ3CB/907a0YaS0iCr6omANHShr1jKFzF71n/zbmZ6l/90CsCDBY6CC
	zKynZl0zdegNnp/gbNP5ATndkOJ7nWDlUAH+yegJKIgvXLiGxWhhgvLzz2kZpuj2TH5xMQd8/bY8z
	nDyQpk61ldFZ6Qwil8dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaVP0-0007Ww-CV; Mon, 18 May 2020 02:21:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaVOt-0007Vu-Ky
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 02:21:09 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9334420758;
 Mon, 18 May 2020 02:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589768464;
 bh=7RJuET2p1c9crhC6k5Md3KsYrDZ64Vq388qDBF/PKT4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qKUPHDhKfAvKoQDw6aUbF5oxk/2fSXt6cYTcG445x6tHLCS0hMJXSKIXc5Z28WHUO
 nlFuCGycnKryukgl1b3dKlivig1RoGMgEXo6P+4drDpHbZO6YsywoMt6lOz6h4/dae
 CgzG2Fh0kTL1dKHu4p+ITL+Ewb1+xwPHzKxpolUU=
Date: Mon, 18 May 2020 11:20:59 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] ARM: kprobes: Avoid fortify_panic() when copying
 optprobe template
Message-Id: <20200518112059.c19899ffb17a4843bf4f74ab@kernel.org>
In-Reply-To: <202005171447.00CFE0C@keescook>
References: <20200517153959.293224-1-andrew@aj.id.au>
 <202005171447.00CFE0C@keescook>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_192107_729956_387E301C 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Jeffery <andrew@aj.id.au>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, mathieu.desnoyers@efficios.com,
 mhiramat@kernel.org, labbott@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 17 May 2020 14:48:52 -0700
Kees Cook <keescook@chromium.org> wrote:

> On Mon, May 18, 2020 at 01:09:59AM +0930, Andrew Jeffery wrote:
> > As mentioned, a couple of attempts have been made to address the issue
> > by casting a pointer to optprobe_template_entry before providing it to
> > memcpy(), however gccs such as Ubuntu 20.04's arm-linux-gnueabi-gcc
> > 9.3.0 (Ubuntu 9.3.0-10ubuntu1) see through these efforts.
> 
> Ah, dang. :P
> 
> How about converting them all to unsized arrays, which would also allow
> the code to drop the "&" everywhere, I think. This is untested:
> 

This looks good to me since it uses same technique in sections.h.

Acked-by: Masami Hiramatsu <mhiramat@kernel.org>

Thank you!

> 
> diff --git a/arch/arm/include/asm/kprobes.h b/arch/arm/include/asm/kprobes.h
> index 213607a1f45c..e26a278d301a 100644
> --- a/arch/arm/include/asm/kprobes.h
> +++ b/arch/arm/include/asm/kprobes.h
> @@ -44,20 +44,20 @@ int kprobe_exceptions_notify(struct notifier_block *self,
>  			     unsigned long val, void *data);
>  
>  /* optinsn template addresses */
> -extern __visible kprobe_opcode_t optprobe_template_entry;
> -extern __visible kprobe_opcode_t optprobe_template_val;
> -extern __visible kprobe_opcode_t optprobe_template_call;
> -extern __visible kprobe_opcode_t optprobe_template_end;
> -extern __visible kprobe_opcode_t optprobe_template_sub_sp;
> -extern __visible kprobe_opcode_t optprobe_template_add_sp;
> -extern __visible kprobe_opcode_t optprobe_template_restore_begin;
> -extern __visible kprobe_opcode_t optprobe_template_restore_orig_insn;
> -extern __visible kprobe_opcode_t optprobe_template_restore_end;
> +extern __visible kprobe_opcode_t optprobe_template_entry[];
> +extern __visible kprobe_opcode_t optprobe_template_val[];
> +extern __visible kprobe_opcode_t optprobe_template_call[];
> +extern __visible kprobe_opcode_t optprobe_template_end[];
> +extern __visible kprobe_opcode_t optprobe_template_sub_sp[];
> +extern __visible kprobe_opcode_t optprobe_template_add_sp[];
> +extern __visible kprobe_opcode_t optprobe_template_restore_begin[];
> +extern __visible kprobe_opcode_t optprobe_template_restore_orig_insn[];
> +extern __visible kprobe_opcode_t optprobe_template_restore_end[];
>  
>  #define MAX_OPTIMIZED_LENGTH	4
>  #define MAX_OPTINSN_SIZE				\
> -	((unsigned long)&optprobe_template_end -	\
> -	 (unsigned long)&optprobe_template_entry)
> +	((unsigned long)optprobe_template_end -	\
> +	 (unsigned long)optprobe_template_entry)
>  #define RELATIVEJUMP_SIZE	4
>  
>  struct arch_optimized_insn {
> diff --git a/arch/arm/probes/kprobes/opt-arm.c b/arch/arm/probes/kprobes/opt-arm.c
> index 7a449df0b359..c78180172120 100644
> --- a/arch/arm/probes/kprobes/opt-arm.c
> +++ b/arch/arm/probes/kprobes/opt-arm.c
> @@ -85,21 +85,21 @@ asm (
>  			"optprobe_template_end:\n");
>  
>  #define TMPL_VAL_IDX \
> -	((unsigned long *)&optprobe_template_val - (unsigned long *)&optprobe_template_entry)
> +	((unsigned long *)optprobe_template_val - (unsigned long *)optprobe_template_entry)
>  #define TMPL_CALL_IDX \
> -	((unsigned long *)&optprobe_template_call - (unsigned long *)&optprobe_template_entry)
> +	((unsigned long *)optprobe_template_call - (unsigned long *)optprobe_template_entry)
>  #define TMPL_END_IDX \
> -	((unsigned long *)&optprobe_template_end - (unsigned long *)&optprobe_template_entry)
> +	((unsigned long *)optprobe_template_end - (unsigned long *)optprobe_template_entry)
>  #define TMPL_ADD_SP \
> -	((unsigned long *)&optprobe_template_add_sp - (unsigned long *)&optprobe_template_entry)
> +	((unsigned long *)optprobe_template_add_sp - (unsigned long *)optprobe_template_entry)
>  #define TMPL_SUB_SP \
> -	((unsigned long *)&optprobe_template_sub_sp - (unsigned long *)&optprobe_template_entry)
> +	((unsigned long *)optprobe_template_sub_sp - (unsigned long *)optprobe_template_entry)
>  #define TMPL_RESTORE_BEGIN \
> -	((unsigned long *)&optprobe_template_restore_begin - (unsigned long *)&optprobe_template_entry)
> +	((unsigned long *)optprobe_template_restore_begin - (unsigned long *)optprobe_template_entry)
>  #define TMPL_RESTORE_ORIGN_INSN \
> -	((unsigned long *)&optprobe_template_restore_orig_insn - (unsigned long *)&optprobe_template_entry)
> +	((unsigned long *)optprobe_template_restore_orig_insn - (unsigned long *)optprobe_template_entry)
>  #define TMPL_RESTORE_END \
> -	((unsigned long *)&optprobe_template_restore_end - (unsigned long *)&optprobe_template_entry)
> +	((unsigned long *)optprobe_template_restore_end - (unsigned long *)optprobe_template_entry)
>  
>  /*
>   * ARM can always optimize an instruction when using ARM ISA, except
> @@ -234,7 +234,7 @@ int arch_prepare_optimized_kprobe(struct optimized_kprobe *op, struct kprobe *or
>  	}
>  
>  	/* Copy arch-dep-instance from template. */
> -	memcpy(code, (unsigned long *)&optprobe_template_entry,
> +	memcpy(code, (unsigned long *)optprobe_template_entry,
>  			TMPL_END_IDX * sizeof(kprobe_opcode_t));
>  
>  	/* Adjust buffer according to instruction. */
> 
> -- 
> Kees Cook


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
