Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025821337CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 01:06:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/A/HfqmNHZitay+sAOrPnfngkshP3s8eTpL4mIbwp4E=; b=BWHWeMQyD82etP
	WjDUJ9r8MkttITd5kB++j3SkGCtxOBMxi017u5rqW+CP8I/zbDP2xwcwanEV57UUSMSrCR5CecwpR
	5TEMUf3CFQlubDIcBEAlp8TM6ezluniy2QREJbyBHXXzf2LRilWrsEYk43k+wV7QSnRNdZZEPjq19
	mQ+lmQouRNnn35AGe/Sh3QX4eGMRrGv8xYgGX+SkknM7MsgensTrad2axt3/Gqfcm0kxmkj7x65VI
	1bUPtDJdpWsvzdQd4XPxAQ+YMFHsc6cEovSCey42k2tPTntmFIdp9v2kzr4ek8l6ZjlqbcJUS3A6b
	C6HZXhmp5AJc363FyNTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioyrF-0001Xc-Mn; Wed, 08 Jan 2020 00:05:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioyr9-0001X6-Q1
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 00:05:53 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E385720692;
 Wed,  8 Jan 2020 00:05:48 +0000 (UTC)
Date: Tue, 7 Jan 2020 19:05:47 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Subject: Re: [PATCH v7 2/3] ftrace: introduce FTRACE_IP_EXTENSION
Message-ID: <20200107190547.3a748fce@gandalf.local.home>
In-Reply-To: <20191225172836.7f381759@xhacker.debian>
References: <20191225172625.69811b3e@xhacker.debian>
 <20191225172836.7f381759@xhacker.debian>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_160551_865381_5D3BDEEA 
X-CRM114-Status: GOOD (  18.94  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Masami Hiramatsu <mhiramat@kernel.org>,
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
> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

You can also add:

Reviewed-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

and when Masami is happy with your patches, it should go through the
tip tree.

Thanks!

-- Steve

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


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
