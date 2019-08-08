Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C83286712
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:28:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KempLyeI6AYa5rwXwUG/nJSnH9aCywy2Gm5KYEF83Ng=; b=HYr75ErBdqKJTj
	iTpRMN0Nt9qmXO1SjHEU7/NskTXfbiYUkJB/G8ayHSm9SHmLd69GjO3XYbKMqG5fUYijU0fCZld3g
	9siANZU12/YyMjzrA33cHj0YXydqo5Uk46Rsau1CCfH04NVj2AiZeJCimGlY5EeODonY71lmi0oYs
	KYW3K0hrw1V56Z6HqK8pRP6n/G+OVuGPVwAqYAEH0L5H7kYO8+GBEuCA/kUEqKYsUQU9qLM5YVfX2
	5OcG2YmOLijolarJjqVdWS0JNlc784q4QR5vo5Z26SYCXMwGiTrYLjyrjUnOus3db0axyVG3gP8iE
	DE4Odfaz+BjVX8/tsFmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvlHN-00042n-14; Thu, 08 Aug 2019 16:28:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvlHC-00042O-VA
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 16:28:32 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1EA172173E;
 Thu,  8 Aug 2019 16:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565281710;
 bh=cUGyg9k4F6Juf5wkwZjrlmaaxkCzQychbABolvfV4YE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1ZW/N1G5Aa4mL1wNhRPu1D5/tOlCGv/dfpmMvYhHXWaM5mPicrvGsI7SQUaOWTAB5
 BoY/4XB2jOLH3cjBJ6TYp59uxyM+N6L4RKSghBpNK4G22cm9VkO61IaJ4ZmL/hOnkg
 I2XLKB8O4PARNWpXZPy289orXB+eQNlg7THDJUAs=
Date: Thu, 8 Aug 2019 17:28:26 +0100
From: Will Deacon <will@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH 1/2 v2] tracing/arm64: Have max stack tracer handle the
 case of return address after data
Message-ID: <20190808162825.7klpu3ffza5zxwrt@willie-the-truck>
References: <20190807172826.352574408@goodmis.org>
 <20190807172907.155165959@goodmis.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807172907.155165959@goodmis.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_092831_045060_260375BB 
X-CRM114-Status: GOOD (  19.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jiping Ma <jiping.ma2@windriver.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, mingo@redhat.com,
 Joel Fernandes <joel@joelfernandes.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steve,

On Wed, Aug 07, 2019 at 01:28:27PM -0400, Steven Rostedt wrote:
> From: "Steven Rostedt (VMware)" <rostedt@goodmis.org>
> 
> Most archs (well at least x86) store the function call return address on the
> stack before storing the local variables for the function. The max stack
> tracer depends on this in its algorithm to display the stack size of each
> function it finds in the back trace.
> 
> Some archs (arm64), may store the return address (from its link register)
> just before calling a nested function. There's no reason to save the link
> register on leaf functions, as it wont be updated. This breaks the algorithm
> of the max stack tracer.
> 
> Add a new define ARCH_RET_ADDR_AFTER_LOCAL_VARS that an architecture may set
> if it stores the return address (link register) after it stores the
> function's local variables, and have the stack trace shift the values of the
> mapped stack size to the appropriate functions.
> 
> Link: 20190802094103.163576-1-jiping.ma2@windriver.com
> 
> Reported-by: Jiping Ma <jiping.ma2@windriver.com>
> Signed-off-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> ---
>  arch/arm64/include/asm/ftrace.h | 13 +++++++++++++
>  kernel/trace/trace_stack.c      | 14 ++++++++++++++
>  2 files changed, 27 insertions(+)

I agree with your later comment that this should NOT go to stable.

> diff --git a/arch/arm64/include/asm/ftrace.h b/arch/arm64/include/asm/ftrace.h
> index 5ab5200b2bdc..961e98618db4 100644
> --- a/arch/arm64/include/asm/ftrace.h
> +++ b/arch/arm64/include/asm/ftrace.h
> @@ -14,6 +14,19 @@
>  #define MCOUNT_ADDR		((unsigned long)_mcount)
>  #define MCOUNT_INSN_SIZE	AARCH64_INSN_SIZE
>  
> +/*
> + * Currently, gcc tends to save the link register after the local variables
> + * on the stack. This causes the max stack tracer to report the function
> + * frame sizes for the wrong functions. By defining
> + * ARCH_RET_ADDR_AFTER_LOCAL_VARS, it will tell the stack tracer to expect
> + * to find the return address on the stack after the local variables have
> + * been set up.
> + *
> + * Note, this may change in the future, and we will need to deal with that
> + * if it were to happen.
> + */
> +#define ARCH_RET_ADDR_AFTER_LOCAL_VARS 1

I know it's long already, but prefixing this with FTRACE_ would be good so
that other code doesn't use it for anything. It's not the end of the world
if the ftrace stack usage statistics are wonky, but if people tried to use
this for crazy things like livepatching then we'd be in trouble.

Maybe FTRACE_ARCH_FRAME_AFTER_LOCALS, which is the same length as what
you currently have?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
