Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B194E1C369D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 12:19:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8x+Rd0vJSfBB1k1zdbc0itGG3DXf+FPwcV0/S9Hz81g=; b=Fhi3gLvtQebXlr
	VTXVqE38AB0YuudK7sgo+2JSvOwOzjI6iDFKS7D/bk02NGtJ48x2MlGDejrNon3ONISGryBsozoiO
	BGLw7foHhSik4Oax97xl/I7Y8gv6HPP8RmwxY5Z6YUxuvnCnQtyo3BtJ9HRImuLhCFwIu8mJ+LACR
	rnvk0KH/CXGWQeWScyVcCjAbQonpnDri++D7xqY8gO5rXxlI7qlsXVqXnrbUMw7YAZh6WnuiJrrsz
	TeNOIVmeu15xDTgei9TgJbS1mny7lKp5u4N77GhMOPogrg6uZSBXjhu1rNmSXUe8TP4Xe55eSOGP+
	T3rWg0bz+Dxu/FdadMJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVYCP-000625-4U; Mon, 04 May 2020 10:19:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVYCG-000611-Tg
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 10:19:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 33251101E;
 Mon,  4 May 2020 03:19:34 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D70113F71F;
 Mon,  4 May 2020 03:19:32 -0700 (PDT)
Date: Mon, 4 May 2020 11:19:30 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH v3] arm64: Expose original FAR_EL1 value in sigcontext
Message-ID: <20200504101930.GG30377@arm.com>
References: <20200325174001.234803-1-pcc@google.com>
 <20200327191915.257116-1-pcc@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327191915.257116-1-pcc@google.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_031937_061483_4D01AC59 
X-CRM114-Status: GOOD (  26.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kostya Serebryany <kcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Evgenii Stepanov <eugenis@google.com>, Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 12:19:15PM -0700, Peter Collingbourne wrote:
> The kernel currently clears the tag bits (i.e. bits 56-63) in the fault
> address exposed via siginfo.si_addr and sigcontext.fault_address. However,
> the tag bits may be needed by tools in order to accurately diagnose
> memory errors, such as HWASan [1] or future tools based on the Memory
> Tagging Extension (MTE).
> 
> We should not stop clearing these bits in the existing fault address
> fields, because there may be existing userspace applications that are
> expecting the tag bits to be cleared. Instead, create a far_context in
> sigcontext (similar to the existing esr_context), and store the original
> value of FAR_EL1 (including the tag bits) there.
> 
> [1] http://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html
> 
> Signed-off-by: Peter Collingbourne <pcc@google.com>
> ---
> v3:
> - add documentation to tagged-pointers.rst
> - update comments in sigcontext.h
> 
> v2:
> - revert changes to hw_breakpoint.c
> - rename set_thread_esr to set_thread_far_esr
> 
>  Documentation/arm64/tagged-pointers.rst  | 17 +++++----
>  arch/arm64/include/asm/exception.h       |  2 +-
>  arch/arm64/include/asm/processor.h       |  2 +-
>  arch/arm64/include/uapi/asm/sigcontext.h | 21 +++++++----
>  arch/arm64/kernel/entry-common.c         |  2 --
>  arch/arm64/kernel/signal.c               | 20 ++++++++++-
>  arch/arm64/mm/fault.c                    | 45 ++++++++++++++----------
>  7 files changed, 74 insertions(+), 35 deletions(-)

[...]

> diff --git a/arch/arm64/include/uapi/asm/sigcontext.h b/arch/arm64/include/uapi/asm/sigcontext.h
> index 8b0ebce92427..6782394633cb 100644
> --- a/arch/arm64/include/uapi/asm/sigcontext.h
> +++ b/arch/arm64/include/uapi/asm/sigcontext.h
> @@ -44,11 +44,12 @@ struct sigcontext {
>   *
>   *	0x210		fpsimd_context
>   *	 0x10		esr_context
> + *	 0x10		far_context
>   *	0x8a0		sve_context (vl <= 64) (optional)
>   *	 0x20		extra_context (optional)
>   *	 0x10		terminator (null _aarch64_ctx)
>   *
> - *	0x510		(reserved for future allocation)
> + *	0x500		(reserved for future allocation)
>   *
>   * New records that can exceed this space need to be opt-in for userspace, so
>   * that an expanded signal frame is not generated unexpectedly.  The mechanism
> @@ -94,17 +95,25 @@ struct esr_context {
>  	__u64 esr;
>  };
>  
> +/* FAR_EL1 context */
> +#define FAR_MAGIC	0x46415201
> +
> +struct far_context {
> +	struct _aarch64_ctx head;
> +	__u64 far;
> +};
> +
>  /*
>   * extra_context: describes extra space in the signal frame for
>   * additional structures that don't fit in sigcontext.__reserved[].
>   *
>   * Note:
>   *
> - * 1) fpsimd_context, esr_context and extra_context must be placed in
> - * sigcontext.__reserved[] if present.  They cannot be placed in the
> - * extra space.  Any other record can be placed either in the extra
> - * space or in sigcontext.__reserved[], unless otherwise specified in
> - * this file.
> + * 1) fpsimd_context, esr_context, far_context and extra_context must be
> + * placed in sigcontext.__reserved[] if present.  They cannot be placed
> + * in the extra space.  Any other record can be placed either in the
> + * extra space or in sigcontext.__reserved[], unless otherwise specified
> + * in this file.

This is for backwards compatibility only.  We don't need this constraint
for any new field, so you can probably leave the paragraph as-is.

Removing this would mean constraint would mean that userspace must be
prepared to traverse extra_context when looking for far_context.  But
really we want modern userspace to do this anyway, since it reduces
backwards compatibilty worries when adding more new records in the
future.


The nasty loop in parse_user_sigframe() allows some flexibility
regarding the order of records, but prior to this patch there is no
record that can be actually be moved, due to other backwards
compatibility constraints -- so the flexibility isn't used today.  I'd
like to avoid reorderability creeping in, so that we can get rid of the
loop.

So, mandating that records must be in a consistent order to sigcontext.h
could be helpful.  inserting new records in the middle should be fine,
so long as there is no shuffling.

I'm not sure this patch needs to do anything extra for that: perhaps we
can leave this no-shuffling rule implicit for now (?)

People already get shouted at for needslessly noisy diffs, so there is a
strong disincentive to shuffle existing headers in any case...

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
