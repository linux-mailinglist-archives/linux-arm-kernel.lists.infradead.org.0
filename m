Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBDB19221F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 09:07:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ZTkpT9qVv5bOMYcYnpX/41dBngyw6WIzt8s7l0fur0=; b=JPLyondNdD48zQ
	9JRINBCu+OIN/dHc84X8bw7hXbKBFz9b9WQ6v20kGg7h5Wm8PDv4gkTdZkwnvSV/92X/iua1imeWs
	Ej+iDS/uJs1HTRYNtVxQvQvXTyS4gRZWowKFTplfyRkN+0VVaKNIUqDXeIlCph1CfYONPN0h7CPx8
	RPb/Vn6t2Wj+JyzbkttMDGRdUeRIpLyXD6GmgL+aA8CLbwkA0p9Vgl0VQicR7R3CNJUeDVFb/DJ1e
	m6egC1NCHHp2Jmyme235shZQLRjl3HEzALrbsgr7l2DzWgApm6VDG+GBpg9XULCPTtLNF8fiOzRmR
	PXxjuEx0x+V5X3udsGQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH14F-0001r8-0Z; Wed, 25 Mar 2020 08:07:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH146-0001qn-MN
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 08:07:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C033920772;
 Wed, 25 Mar 2020 08:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585123625;
 bh=Di1+nX0nRWiCO+NwcJ41e9Kj7h9HpdO/rolyGExbBBY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h0QXQ0lViXQ2EXn1ONHaLlk5/Fev+SPNQcRxu3BjplSmp4qre0XwywWeXWtkQL1JG
 2ow+GbTSKMiCAYtpfZlx76p4r9CEAyaD1fuHUtNi746NoOZH5c/5byhqSsYXdorJe3
 psYesybndRSz7rzZ1cTYcGR7HsFP2DH7qNlbIbAs=
Date: Wed, 25 Mar 2020 08:07:01 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: bti: Document behaviour for dynamically linked
 binaries
Message-ID: <20200325080700.GA30293@willie-the-truck>
References: <20200323170119.12263-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323170119.12263-1-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_010706_750520_9F9664E2 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 05:01:19PM +0000, Mark Brown wrote:
> For dynamically linked binaries the interpreter is responsible for setting
> PROT_BTI on everything except itself. The dynamic linker needs to be aware
> of PROT_BTI, for example in order to avoid dropping that when marking
> executable pages read only after doing relocations, and doing everything
> in userspace ensures that we don't get any issues due to divergences in
> behaviour between the kernel and dynamic linker within a single executable.
> Add a comment indicating that this is intentional to the code to help
> people trying to understand what's going on.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/kernel/process.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index 24af13d7bde6..9b668565dd10 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -674,6 +674,11 @@ asmlinkage void __sched arm64_preempt_schedule_irq(void)
>  int arch_elf_adjust_prot(int prot, const struct arch_elf_state *state,
>  			 bool has_interp, bool is_interp)
>  {
> +	/*
> +	 * For dynamicly linked executables the interpreter is

dynamicly => dynamically

> +	 * responsible for setting PROT_BTI on everything except
> +	 * itself.
> +	 */
>  	if (is_interp != has_interp)
>  		return prot;

Catalin: With the typo fixed, it's probably worth sticking this on
for-next/bti so we don't lose it, but I don't think this is really 5.7
material until the tools folks are happy with the ABI. It's pretty
frustrating, but committing to something broken would be far worse and
it's better to get these issues resolved *now* before anything hits
mainline.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
