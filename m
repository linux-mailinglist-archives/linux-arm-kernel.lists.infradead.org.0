Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C314712A9E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 03:46:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KpjNnQl28QtjUTEuCxfKPbd6bIlYR2r9vX0RWrCL7XU=; b=glMImG/GQX+26f
	StEStuLXTBgJf/9slPrgqBLZk27UFAy9OQpu5hQ4omXZ7PqPDVbCL+BhLUEbcBjbI9X7jBVOkHZCy
	5t+ayOXvYltH8+2DoxHxpD/1PeSAXXRAv8nCeotR4H2bikVM0ZICktAT+cIt0FwUUFdUqjdFvlq9i
	F3ZV5bib72RyEw1p5xpP4I5poJ01M1/8AxtC0A1HcBnsMuQZPXNSer/W6Gsvcgb55BDVQ7MlI1cxD
	K4ZdiuRhg2jYRnkBGduZUnU77v9KHyHRAvWlM1OTa/HuLu4bBm3Cia75tM3JuViZwmwTaSUOg5LK2
	ripmsAh0aNTic90LP89A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikJA1-0004nL-47; Thu, 26 Dec 2019 02:46:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikJ9t-0004mY-Ra
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 02:45:55 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C0B762075B;
 Thu, 26 Dec 2019 02:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577328352;
 bh=yv/C6ljrIx/+HyZFKoUjNShUUTPWwuzsvZUkhYKmp/U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=sw/DrybP2qxeugrbQatqVZwWIem16gtpKDpAM5KEYW+DDcj0+ciN5hUIHYRnqLMG4
 a/xVf3l2RMRBwhyIDMOaGzjFMpQ0i0RUWT525uT2XvUNfe8fa5pLiSAQE5t3cFIH2i
 js6ogOvSBDDeV5fmYqrUHt/HX0INiiU73O+3rGow=
Date: Thu, 26 Dec 2019 11:45:47 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Subject: Re: [PATCH v7 2/3] ftrace: introduce FTRACE_IP_EXTENSION
Message-Id: <20191226114547.bb5bc2d5ae5ecf6290a90fa7@kernel.org>
In-Reply-To: <20191225172836.7f381759@xhacker.debian>
References: <20191225172625.69811b3e@xhacker.debian>
 <20191225172836.7f381759@xhacker.debian>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_184553_915634_0DF4BF94 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 25 Dec 2019 09:42:52 +0000
Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:

> On some architectures, the DYNAMIC_FTRACE_WITH_REGS is implemented by
> gcc's -fpatchable-function-entry option. Take arm64 for example, arm64
> makes use of GCC -fpatchable-function-entry=2 option to insert two
> nops. When the function is traced, the first nop will be modified to
> the LR saver, then the second nop to "bl <ftrace-entry>". we need to
> update ftrace_location() to recognise these two instructions  as being
> part of ftrace. To do this, we introduce FTRACE_IP_EXTENSION to let
> ftrace_location search IP, IP + FTRACE_IP_EXTENSION range.
> 

Looks good to me.

Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>

Thanks!

> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> ---
>  include/linux/ftrace.h | 4 ++++
>  kernel/trace/ftrace.c  | 2 +-
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/ftrace.h b/include/linux/ftrace.h
> index 7247d35c3d16..05a03b2a2f39 100644
> --- a/include/linux/ftrace.h
> +++ b/include/linux/ftrace.h
> @@ -20,6 +20,10 @@
>  
>  #include <asm/ftrace.h>
>  
> +#ifndef FTRACE_IP_EXTENSION
> +#define  FTRACE_IP_EXTENSION 0
> +#endif
> +
>  /*
>   * If the arch supports passing the variable contents of
>   * function_trace_op as the third parameter back from the
> diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c
> index 74439ab5c2b6..a8cfea502369 100644
> --- a/kernel/trace/ftrace.c
> +++ b/kernel/trace/ftrace.c
> @@ -1590,7 +1590,7 @@ unsigned long ftrace_location_range(unsigned long start, unsigned long end)
>   */
>  unsigned long ftrace_location(unsigned long ip)
>  {
> -	return ftrace_location_range(ip, ip);
> +	return ftrace_location_range(ip, ip + FTRACE_IP_EXTENSION);
>  }
>  
>  /**
> -- 
> 2.24.1
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
