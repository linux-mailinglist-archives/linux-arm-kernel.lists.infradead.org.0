Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD587C576
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EITqPeiXglnyQzBTyqR48VRm6791WoWBv6r6I70QrxM=; b=udn3P4OmI8+58P
	Q9Y2Cdmnu9bTwKSo28TOrzALln5tPcMtxuyhqvA3wguW3PIy2lK18hySHJZcqwRUGD2ViCpTJO67y
	W3hq3SdP5QOc13wzfIBeMmV2+dQjCWy1P6GN6ROak+mTBDTJyJgwIbK4DN1F+SMKcsHerBU55L0lC
	gru7DKOlMaiOBm8+U4n+HFYJI25ng1FYDYxa+hUMGq4xWkOrHdqxqEpwbxt4DmWUcKQbKj0IDr2ss
	yJhNat5929igCjvkqH7hDOUgxlP4Zmnp9BxsENG3XYsUOLrJmrk5DGqU7E6xlVOOD8UNkllp3G8c3
	mbXO7aa/FBJiqKDpHwig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsq6x-0006yy-4Z; Wed, 31 Jul 2019 15:01:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsq6p-0006yC-J9
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 15:01:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 496FD344;
 Wed, 31 Jul 2019 08:01:41 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2BC443F694;
 Wed, 31 Jul 2019 08:01:40 -0700 (PDT)
Date: Wed, 31 Jul 2019 16:01:38 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] arm64: Move TIF_* documentation to individual definitions
Message-ID: <20190731150137.GE39768@lakrids.cambridge.arm.com>
References: <20190731133520.17939-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731133520.17939-1-geert+renesas@glider.be>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_080143_675353_E3FBE202 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Will Drewry <wad@chromium.org>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 03:35:20PM +0200, Geert Uytterhoeven wrote:
> Some TIF_* flags are documented in the comment block at the top, some
> next to their definitions, some in both places.
> 
> Move all documentation to the individual definitions for consistency,
> and for easy lookup.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> The alternative is to move all of them to the comment block, and using
> linuxdoc style.
> 
>  arch/arm64/include/asm/thread_info.h | 24 ++++++++----------------
>  1 file changed, 8 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
> index 180b34ec59650a9b..cb3eb1ccccc4116b 100644
> --- a/arch/arm64/include/asm/thread_info.h
> +++ b/arch/arm64/include/asm/thread_info.h
> @@ -60,28 +60,20 @@ void arch_release_task_struct(struct task_struct *tsk);
>  #endif
>  
>  /*
> - * thread information flags:
> - *  TIF_SYSCALL_TRACE	- syscall trace active
> - *  TIF_SYSCALL_TRACEPOINT - syscall tracepoint for ftrace
> - *  TIF_SYSCALL_AUDIT	- syscall auditing
> - *  TIF_SECCOMP		- syscall secure computing
> - *  TIF_SYSCALL_EMU     - syscall emulation active
> - *  TIF_SIGPENDING	- signal pending
> - *  TIF_NEED_RESCHED	- rescheduling necessary
> - *  TIF_NOTIFY_RESUME	- callback before returning to user
> + * thread information flags
>   */

We can probably just get rid of the this comment block at this point. :)

> -#define TIF_SIGPENDING		0
> -#define TIF_NEED_RESCHED	1
> +#define TIF_SIGPENDING		0	/* signal pending */
> +#define TIF_NEED_RESCHED	1	/* rescheduling necessary */
>  #define TIF_NOTIFY_RESUME	2	/* callback before returning to user */
>  #define TIF_FOREIGN_FPSTATE	3	/* CPU's FP state is not current's */
>  #define TIF_UPROBE		4	/* uprobe breakpoint or singlestep */
>  #define TIF_FSCHECK		5	/* Check FS is USER_DS on return */
>  #define TIF_NOHZ		7
> -#define TIF_SYSCALL_TRACE	8
> -#define TIF_SYSCALL_AUDIT	9
> -#define TIF_SYSCALL_TRACEPOINT	10
> -#define TIF_SECCOMP		11
> -#define TIF_SYSCALL_EMU		12
> +#define TIF_SYSCALL_TRACE	8	/* syscall trace active */
> +#define TIF_SYSCALL_AUDIT	9	/* syscall auditing */
> +#define TIF_SYSCALL_TRACEPOINT	10	/* syscall tracepoint for ftrace */
> +#define TIF_SECCOMP		11	/* syscall secure computing */
> +#define TIF_SYSCALL_EMU		12	/* syscall emulation active */
>  #define TIF_MEMDIE		18	/* is terminating due to OOM killer */
>  #define TIF_FREEZE		19
>  #define TIF_RESTORE_SIGMASK	20

FWIW this looks sane to me, so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
