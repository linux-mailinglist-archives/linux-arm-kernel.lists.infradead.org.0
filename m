Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E216D71C6D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 18:04:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsngU0V4vK7K/CpUkeS016+0xm8cEKIRyU+LPTBUOe0=; b=ay/UzH2xLbBIoX
	qcwcB3RaBTb/iulbFDpgOKS/4RGX6fsUM2W/YrSVEI0m37wicsdCZjf4EiTxn7fWPblFqtwxhsQzN
	es0fCqNkJkLzHOj/boNlMDYZqrtYCfhbrEwS/p6ZVF5i7XlhUSgNAx4mtpB4plYnIEOWB0meBbrTt
	AOzPWBMUwaFjHVYe9ZFcd2A7qDYOTOm3LHwZdlwcK+mGRq1CVMi0dxaFjhGCXmieD/NvxGHsZpxf7
	WfJcARYDgD/lu9fUribtKrp6zQzZNwDnjJgh6njDZepIvTJ8RoC9VHgPbFZx8z36dMLSGaevGrpwW
	LrClslOD+qpYQMKOOIYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpxHV-00048L-3i; Tue, 23 Jul 2019 16:04:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpxHD-00047q-Vy
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 16:04:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9540328;
 Tue, 23 Jul 2019 09:04:31 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5DE083F71A;
 Tue, 23 Jul 2019 09:04:26 -0700 (PDT)
Subject: Re: [PATCH v2 2/4] arm64: unwind: Prohibit probing on return_address()
To: Masami Hiramatsu <mhiramat@kernel.org>
References: <156378170297.12011.17385386326930403235.stgit@devnote2>
 <156378172702.12011.1144595747474511323.stgit@devnote2>
From: James Morse <james.morse@arm.com>
Message-ID: <038c4b88-e7ef-aaab-0a79-5d7371719aa5@arm.com>
Date: Tue, 23 Jul 2019 17:04:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156378172702.12011.1144595747474511323.stgit@devnote2>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_090432_069269_E36753CE 
X-CRM114-Status: GOOD (  15.69  )
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
Cc: Dan Rue <dan.rue@linaro.org>, Daniel Diaz <daniel.diaz@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Matt Hart <matthew.hart@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 22/07/2019 08:48, Masami Hiramatsu wrote:
> Prohibit probing on return_address() and subroutines which
> is called from return_address(), since the it is invoked from
> trace_hardirqs_off() which is also kprobe blacklisted.

(Nits: "which are called" and "since it is")


> diff --git a/arch/arm64/kernel/return_address.c b/arch/arm64/kernel/return_address.c
> index b21cba90f82d..7f8a143268b0 100644
> --- a/arch/arm64/kernel/return_address.c
> +++ b/arch/arm64/kernel/return_address.c
> @@ -8,6 +8,7 @@
>  
>  #include <linux/export.h>
>  #include <linux/ftrace.h>
> +#include <linux/kprobes.h>
>  
>  #include <asm/stack_pointer.h>
>  #include <asm/stacktrace.h>
> @@ -17,7 +18,7 @@ struct return_address_data {
>  	void *addr;
>  };
>  
> -static int save_return_addr(struct stackframe *frame, void *d)
> +static nokprobe_inline int save_return_addr(struct stackframe *frame, void *d)

This nokprobe_inline ends up as __always_inline if kprobes is enabled.
What do we expect the compiler to do with this? save_return_addr is passed as a
function-pointer to walk_stackframe()... I don't see how the compiler can inline it!

This would be needed for on_accessible_stack().
Should we cover ftrace_graph_get_ret_stack()?, or is that already in hand?


>  {
>  	struct return_address_data *data = d;
>  
> @@ -52,3 +53,4 @@ void *return_address(unsigned int level)
>  		return NULL;
>  }
>  EXPORT_SYMBOL_GPL(return_address);
> +NOKPROBE_SYMBOL(return_address);


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
