Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5AE012E9AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 19:02:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qgtAAcUsbBquRtXAzpX/f1Ir/5oP/oUJXeJ8qs2djfQ=; b=kmHEDX+gNuzf2C
	6S7+alINH+rAUrfh+93FGHHRpDXOEOASPAa11sYOUlNXBcx+/cnXLAP8A8ZCKfzWj0Qu06fXcZEpH
	1dl/agIkHNNr5GMo28Xx0h3wrLG9RQrDrHhhsn/dvvmd4j64mG2gX7E+phkWKMpj3YCpRWzD0IHyS
	Kwl//TaGkaWSE+3yACbqKM4Dr+xgdRD4ceBZAN1iCdWdCROeOX1zQYvbhnStU7ofy0kmaD+81FmY9
	kePj6notbCDM8BocPpcmRd/Rv7SpwoC2dRPqW/wNXC5CQsynGWUVIaa/Em4J4/sPzuKwxBKD+JrY0
	zFfwMt+UgVdbktI6/vtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in4nN-0007fQ-Ds; Thu, 02 Jan 2020 18:02:05 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in4n1-0007UQ-7L
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 18:01:44 +0000
Received: from [172.58.107.60] (helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1in4mw-0007Lz-Sp; Thu, 02 Jan 2020 18:01:39 +0000
Date: Thu, 2 Jan 2020 19:01:33 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Amanieu d'Antras <amanieu@gmail.com>, will.deacon@arm.com
Subject: Re: [PATCH 2/7] arm64: Implement copy_thread_tls
Message-ID: <20200102180130.hmpipoiiu3zsl2d6@wittgenstein>
References: <20200102172413.654385-1-amanieu@gmail.com>
 <20200102172413.654385-3-amanieu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102172413.654385-3-amanieu@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_100143_396513_2774FB6D 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 02, 2020 at 06:24:08PM +0100, Amanieu d'Antras wrote:
> This is required for clone3 which passes the TLS value through a
> struct rather than a register.
> 
> Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: <stable@vger.kernel.org> # 5.3.x

This looks sane to me but I'd like an ack from someone who knows his arm
from his arse before taking this. :)
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>

> ---
>  arch/arm64/Kconfig          |  1 +
>  arch/arm64/kernel/process.c | 10 +++++-----
>  2 files changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index b1b4476ddb83..e688dfad0b72 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -138,6 +138,7 @@ config ARM64
>  	select HAVE_CMPXCHG_DOUBLE
>  	select HAVE_CMPXCHG_LOCAL
>  	select HAVE_CONTEXT_TRACKING
> +	select HAVE_COPY_THREAD_TLS
>  	select HAVE_DEBUG_BUGVERBOSE
>  	select HAVE_DEBUG_KMEMLEAK
>  	select HAVE_DMA_CONTIGUOUS
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index 71f788cd2b18..d54586d5b031 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -360,8 +360,8 @@ int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
>  
>  asmlinkage void ret_from_fork(void) asm("ret_from_fork");
>  
> -int copy_thread(unsigned long clone_flags, unsigned long stack_start,
> -		unsigned long stk_sz, struct task_struct *p)
> +int copy_thread_tls(unsigned long clone_flags, unsigned long stack_start,
> +		unsigned long stk_sz, struct task_struct *p, unsigned long tls)
>  {
>  	struct pt_regs *childregs = task_pt_regs(p);
>  
> @@ -394,11 +394,11 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
>  		}
>  
>  		/*
> -		 * If a TLS pointer was passed to clone (4th argument), use it
> -		 * for the new thread.
> +		 * If a TLS pointer was passed to clone, use it for the new
> +		 * thread.
>  		 */
>  		if (clone_flags & CLONE_SETTLS)
> -			p->thread.uw.tp_value = childregs->regs[3];
> +			p->thread.uw.tp_value = tls;
>  	} else {
>  		memset(childregs, 0, sizeof(struct pt_regs));
>  		childregs->pstate = PSR_MODE_EL1h;
> -- 
> 2.24.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
