Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4EDA1CD5D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 12:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXAhgdPQ1nw6eW5bjh22SyjCsWcu1CwLo23Ao0f4H1M=; b=ghv7Tj6lQeKbj7
	c1cN2DMhMrL9kpbl0UcCKrSHjp8aVsB8pDdJ+JqqOYGqCh8GF00/DOkdWCtGdc9I6vRgxLQ8uFWmb
	OqFfaT1GIImkh/G9JLPed1jVcJqA3t1hO7W0ljME6WXniYi1ehuF8z91KKVT9gRYWDriH/3ntDkRc
	4t1Xgz7tsg+eZ3vKnIJFZVrZXiZTzP+k8z23s7Ovup6G87S5ihPnCXPk4nwW2WxtV3z/vtUsTN9AS
	hJH2yGpeZ516MebU9zceAbvQ1Kc+ns/S8PnL4DfGso9qtqxK2ZLKusRBOq3e5VSYTPdqFrK/H4Wr1
	JIutOKzhBPVF6G8WYwfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY5JF-0002Rf-0X; Mon, 11 May 2020 10:05:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY5J6-0001po-85
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 10:05:09 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3830A20720;
 Mon, 11 May 2020 10:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589191507;
 bh=E+mKJuj4Us4haykExfdIq1d4iuKiBTncDiuwyBJJnZc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=1S0hrvTORHavnYfk4jkXveWVsUk0xbGEJVQZsRkrry5xEex0cvkimVVGxCe0Hmt5B
 0n/tbrjMbMdVgy7z8oRCBt+p+SbF7wUN+GjxzAl1KbzbHl3iI5242omiq7ruIyZERe
 G15b9BhKyOWEW2AWn57vy8AkaZGqD2jSPLN6iTPQ=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jY5J3-00BFK0-KQ; Mon, 11 May 2020 11:05:05 +0100
Date: Mon, 11 May 2020 11:04:59 +0100
From: Marc Zyngier <maz@kernel.org>
To: David Brazdil <dbrazdil@google.com>
Subject: Re: [PATCH 06/15] arm64: kvm: Move __smccc_workaround_1_smc to .rodata
Message-ID: <20200511110459.1fcf4db7@why>
In-Reply-To: <20200430144831.59194-7-dbrazdil@google.com>
References: <20200430144831.59194-1-dbrazdil@google.com>
 <20200430144831.59194-7-dbrazdil@google.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: dbrazdil@google.com, catalin.marinas@arm.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_030508_329462_17B3B3F4 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
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
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 15:48:22 +0100
David Brazdil <dbrazdil@google.com> wrote:

> This snippet of assembly is used by cpu_errata.c to overwrite parts of KVM hyp
> vector. It is never directly executed, so move it from .text to .rodata.
> 
> Signed-off-by: David Brazdil <dbrazdil@google.com>
> ---
>  arch/arm64/kvm/hyp/hyp-entry.S | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
> index 5986e1d78d3f..7e5f386c5c2d 100644
> --- a/arch/arm64/kvm/hyp/hyp-entry.S
> +++ b/arch/arm64/kvm/hyp/hyp-entry.S
> @@ -364,6 +364,11 @@ SYM_CODE_END(__bp_harden_hyp_vecs)
>  	.popsection
>  
>  #ifndef __HYPERVISOR__
> +	/*
> +	 * This is not executed directly and is instead copied into the vectors
> +	 * by install_bp_hardening_cb().
> +	 */
> +	.pushsection	.rodata
>  SYM_CODE_START(__smccc_workaround_1_smc)

I wonder whether we should keep the SYM_CODE_START() annotation or not.
It feels weird to say "code" in a rodata section, and the alignment
doesn't matter as we copy it in place, as you noticed.

>  	esb
>  	sub	sp, sp, #(8 * 4)
> @@ -377,5 +382,6 @@ SYM_CODE_START(__smccc_workaround_1_smc)
>  1:	.org __smccc_workaround_1_smc + __SMCCC_WORKAROUND_1_SMC_SZ
>  	.org 1b
>  SYM_CODE_END(__smccc_workaround_1_smc)
> +	.popsection
>  #endif /* __HYPERVISOR__ */
>  #endif /* CONFIG_KVM_INDIRECT_VECTORS */

Otherwise, looks good.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
