Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1544154201
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 11:39:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCs3ea4psnU6S0LvY/HsmHdHyQfSun8I3jEUnxtJ464=; b=cw6pJCu7SMH1TE
	nfSav5mmSqUQXVEDv6e/NsZshvRnvVS8ADuRYJ7fSV2eP0myPnnmARgTIoLLPPUg8V7NTaOuYR3fS
	4Zuin8ymM91kM33U/1a9lut92XIz6kasuTPWwxQMSxzRwhciq1JXZ6dt3iyCMn1f3K3hbEG6Db7ip
	FgOwYI6Ycej5l1IGFTc+N23KZtGcp7JEnhITDxnoZgDlHoZGrupLqc49m12ni7Ycvegs16OOLbd5d
	LOGLNxA4an62/90QuXo2IdbbsIaMYPJ6T06aN7ac8Fvn34OTeOnefohx/mfNNKDIx4IySjr7X+Ah5
	v5g5zc6ioM3dTq9/UuNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izeYz-0007M1-85; Thu, 06 Feb 2020 10:39:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izeYq-0007Le-BR
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 10:39:05 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B697D20730;
 Thu,  6 Feb 2020 10:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580985544;
 bh=gtIwWtw5fbPPavML5kQUyoCRGV2WDAlOHO8LMQiUGG0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EJF3o1zTd/N4TtE8/XCkOytSP31/QOn96mQWqN1WNfwe0csOLIhqBtuHWzXs3gubA
 tiTMnmqwF9IGwzVNao1obmoHdhpoq86vlHgfv88G1kExMw68NW3PCJjwIauMr/X08D
 xxc8XMjoncKl1o+K47yseG5Qp2Mwf9iF3BAJU/C0=
Date: Thu, 6 Feb 2020 10:38:59 +0000
From: Will Deacon <will@kernel.org>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH 2/2] perf/arm64: Allow per-task kernel breakpoints
Message-ID: <20200206103858.GB17074@willie-the-truck>
References: <1580768784-25868-1-git-send-email-bhsharma@redhat.com>
 <1580768784-25868-3-git-send-email-bhsharma@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580768784-25868-3-git-send-email-bhsharma@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_023904_416156_9A5723AB 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 bhupesh.linux@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 04, 2020 at 03:56:24AM +0530, Bhupesh Sharma wrote:
> commit 478fcb2cdb23 ("arm64: Debugging support") disallowed per-task
> kernel breakpoints on arm64 since these would have potentially
> complicated the stepping code.
> 
> However, we now have several use-cases (for e.g. perf) which require
> per-task address execution h/w breakpoint to be exercised/set on arm64:

To be honest, the perf interface to hw_breakpoint is an abomination and
I think we should remove it entirely for arm64. It's flakey, complicated,
adds code to context-switch and reduces the capabilities available to
ptrace.

> For e.g. we can set address execution h/w breakpoints, using the
> format prescribed by 'perf-list' command:
> mem:<addr>[/len][:access]                          [Hardware breakpoint]
> 
> Without this patch, currently 'perf stat -e' reports that per-task
> address execution h/w breakpoints are 'not supported' on arm64. See
> below:
> 
> $ TEST_FUNC="vfs_read"
> $ ADDR=0x`cat /proc/kallsyms | grep -P "\\s$TEST_FUNC\$" | cut -f1 -d' '`
> $ perf stat -e mem:$ADDR:x -x';' -- cat /proc/cpuinfo > /dev/null
> 
> <not supported>;;mem:0xffff00001031dd68:x;0;100.00;;
> 
> After this patch, this use-case can be supported:
> 
> $ TEST_FUNC="vfs_read"
> $ ADDR=0x`cat /proc/kallsyms | grep -P "\\s$TEST_FUNC\$" | cut -f1 -d' '`
> $ perf stat -e mem:$ADDR:x -x';' -- cat /proc/cpuinfo > /dev/null
> 
> 5;;mem:0xfffffe0010361d20:x;912200;100.00;;
> 
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
> ---
>  arch/arm64/kernel/hw_breakpoint.c | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/arch/arm64/kernel/hw_breakpoint.c b/arch/arm64/kernel/hw_breakpoint.c
> index 0b727edf4104..c28f04e02845 100644
> --- a/arch/arm64/kernel/hw_breakpoint.c
> +++ b/arch/arm64/kernel/hw_breakpoint.c
> @@ -562,13 +562,6 @@ int hw_breakpoint_arch_parse(struct perf_event *bp,
>  	hw->address &= ~alignment_mask;
>  	hw->ctrl.len <<= offset;
>  
> -	/*
> -	 * Disallow per-task kernel breakpoints since these would
> -	 * complicate the stepping code.
> -	 */
> -	if (hw->ctrl.privilege == AARCH64_BREAKPOINT_EL1 && bp->hw.target)
> -		return -EINVAL;
> -

Sorry, but this is broken; the check is there for a reason, not just for
fun!

Look at how the step handler toggles the bp registers.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
