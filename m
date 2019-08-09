Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0422D874A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 10:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opKglYMlIdMJDxN+UJol+wXNnyziNZ2at5I0Q7VJ5i4=; b=IhOtWpeaUvz742
	xVn1bUifSyNdNH8OVjWb6ELtGMrFBweHczmOuvTNFwJ/0XLTTEX50nIDNOHIo7BrupSyTUTSZWcDV
	rDcNWSlo6Zyno7a87pX6Uayp8/zgp1ncR+Wa99ziX2DukEatfAr6RWLvS2DbdVNQkgPVsuRFirz0S
	SylayLpjejxdVasa2h9HZuZtNCsVUUO/RD2c0BOKLKfjXUIJsXAxsFHdr14wJpKd31ipi20NWDbX8
	BaQBD8pp1Q8x/AoRwrV3qwlLN8+Rp4Ouxflgq+cdjHlEcvHCUhQmutv90YNjMp9u6in6ZNuksxIET
	M1XqdqvTjT5q0omhLNtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw0gR-0006Pw-PW; Fri, 09 Aug 2019 08:55:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw0gH-0006Pa-CT
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 08:55:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7CA5D344;
 Fri,  9 Aug 2019 01:55:24 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5D9333F706;
 Fri,  9 Aug 2019 01:55:23 -0700 (PDT)
Date: Fri, 9 Aug 2019 09:55:21 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH 1/2 v2] tracing/arm64: Have max stack tracer handle the
 case of return address after data
Message-ID: <20190809085520.GC48423@lakrids.cambridge.arm.com>
References: <20190807172826.352574408@goodmis.org>
 <20190807172907.155165959@goodmis.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807172907.155165959@goodmis.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_015525_471162_FA31DA23 
X-CRM114-Status: GOOD (  18.02  )
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
Cc: Jiping Ma <jiping.ma2@windriver.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, mingo@redhat.com,
 Joel Fernandes <joel@joelfernandes.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
> 
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

FWIW (with whatever this got renamed to):

Acked-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
