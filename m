Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6327C18CFC7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 15:12:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e0U3O3eh3e2aCaUZmwamKRVhuUAKuLBUabmkHKapJ+I=; b=RRfVZ2tB1LXUVG
	bLxMyE/3b7zXTvwElqeImHRgBVpwi3EgwYQHJYNpZrlWrVhM2fTqVu/yzNAcNZJ0eSqukJAvHs1EK
	1aaPtFOLpV+ZiXvlltUYv5WrXgwPjBdi/TeI/nKvA1Tc/UvSpcGjzqc3YdJdcTGnXXy77hyLnmETE
	jWWA0QQHXP44tTOCG8mzPmbypbyrNlj+Ip0PJm+V3/KXhYlqPjCgYcJDscF/8X6G4mekCrwuQpPGn
	8N7owhtLtbXVNiYulLTrCh6LAmIQTQhctoDr4TcQl7hQFqXOI5yrJbG5BFuBmuREnvD4icWJhYokt
	zF21/XVbYBBnGGy+ARwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFINh-0004uG-1l; Fri, 20 Mar 2020 14:12:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFINW-0004tf-FS
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 14:12:03 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A5782072D;
 Fri, 20 Mar 2020 14:12:00 +0000 (UTC)
Date: Fri, 20 Mar 2020 10:11:59 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: guoren@kernel.org
Subject: Re: [PATCH] arm/ftrace: Remove duplicate function
Message-ID: <20200320101159.60037586@gandalf.local.home>
In-Reply-To: <20200320065340.32685-1-guoren@kernel.org>
References: <20200320065340.32685-1-guoren@kernel.org>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_071202_539933_9E648839 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-kernel@vger.kernel.org, Guo Ren <guoren@linux.alibaba.com>,
 mingo@redhat.co, linux-arm-kernel@lists.infradead.org, linux@armlinux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Mar 2020 14:53:40 +0800
guoren@kernel.org wrote:

> From: Guo Ren <guoren@linux.alibaba.com>
> 
> There is no arch implementation of ftrace_arch_code_modify_prepare in arm,
> so just use the __weak one in kernel/trace/ftrace.c.

Reviewed-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

-- Steve

> 
> Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
> ---
>  arch/arm/kernel/ftrace.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/arch/arm/kernel/ftrace.c b/arch/arm/kernel/ftrace.c
> index 10499d44964a..f66ade28eb8a 100644
> --- a/arch/arm/kernel/ftrace.c
> +++ b/arch/arm/kernel/ftrace.c
> @@ -56,11 +56,6 @@ static unsigned long adjust_address(struct dyn_ftrace *rec, unsigned long addr)
>  	return addr;
>  }
>  
> -int ftrace_arch_code_modify_prepare(void)
> -{
> -	return 0;
> -}
> -
>  int ftrace_arch_code_modify_post_process(void)
>  {
>  	/* Make sure any TLB misses during machine stop are cleared. */


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
