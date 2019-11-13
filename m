Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D29FFBA29
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 21:46:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zu0tw6vUna05kMvEfSH2DOznIzx/CGnG5O+FMEGyzoE=; b=BtODhDtWaoIxNu
	FRyIJOMobApP4kQq5n/2kN29P5PVP8j5eaCfiBmLWHusD3Eiyn8o52/JquSKQuzbG0xDaWRqi01xw
	8onNGXffQ8YDsSOrZNwjQPsHwx03LVo9gdlHHdQPg16YUwH+SrlCLcFgz9ROtViLca+JUHkaAUo2J
	4/1EhG1/9S4t9xIXHZgcqrkNDZ0qbhM65oehFnd4zWy2QP/CkdyOwCI8tWWaTVHqkzpGwrlZHx4UF
	gm6y71m//3xcjhs5eZm0cBUWHTxdEmvR2PC2qPqwalTb7dGKYlh7+dsHumayu+NssDY7AUyTjj410
	zoJm5de+1anleE3EzYhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUzWX-0004Y9-VV; Wed, 13 Nov 2019 20:45:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUzWN-0004XV-Kq
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 20:45:49 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE8CD206E6;
 Wed, 13 Nov 2019 20:45:47 +0000 (UTC)
Date: Wed, 13 Nov 2019 15:45:45 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Subject: Re: [PATCH RESEND v3] ARM: ftrace: remove
 mcount(),ftrace_caller_old() and  ftrace_call_old()
Message-ID: <20191113154545.4717a5d6@gandalf.local.home>
In-Reply-To: <20191107160840.7bd821dc@xhacker.debian>
References: <20191107160840.7bd821dc@xhacker.debian>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_124547_706687_B7A97AF5 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 Nov 2019 08:21:42 +0000
Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:

> Commit d3c61619568c ("ARM: 8788/1: ftrace: remove old mcount support")
> removed the old mcount support, but forget to remove these three
> declarations. This patch removes them.
> 
> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>

Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

-- Steve

> ---
> 
> Changes since v2:
>   - really remove mcount() declaration too. I made a mistake when sending out v2
> 
> Changes since v1:
>   - remove mcount() declaration too
> 
>  arch/arm/include/asm/ftrace.h | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/arch/arm/include/asm/ftrace.h b/arch/arm/include/asm/ftrace.h
> index 18b0197f2384..48ec1d0337da 100644
> --- a/arch/arm/include/asm/ftrace.h
> +++ b/arch/arm/include/asm/ftrace.h
> @@ -11,7 +11,6 @@
>  #define MCOUNT_INSN_SIZE	4 /* sizeof mcount call */
>  
>  #ifndef __ASSEMBLY__
> -extern void mcount(void);
>  extern void __gnu_mcount_nc(void);
>  
>  #ifdef CONFIG_DYNAMIC_FTRACE
> @@ -23,9 +22,6 @@ static inline unsigned long ftrace_call_adjust(unsigned long addr)
>  	/* With Thumb-2, the recorded addresses have the lsb set */
>  	return addr & ~1;
>  }
> -
> -extern void ftrace_caller_old(void);
> -extern void ftrace_call_old(void);
>  #endif
>  
>  #endif


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
