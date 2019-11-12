Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8949FF8C0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 10:41:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cd2I9OAcxJe1PpHRgGwEQdozZ2iiB8wWU9mJjXl24uQ=; b=IkldUT08KMnP/1
	EieR1VPT41pBOYBVU5tTet+8BK8IZMWv0/voLsJgVMDtqrg8wVEb5hOfyW045/WAszL2Vgf4vlYmJ
	/J3T/gQ2c+/BlMT3ojDc/m7mbUBnqD73i7XOgWXcqTjc6nfCebwtgO7Y6K+TYUbnu+XZmD2yzpgc4
	G8Qbh4FQyhVkczX49/Q8kBNa1EBg5tZ1tNCRpAOrlZvCx6/MNzOfoKZvwCD+SinMDsoRe6bpAEzzV
	kR4O0Jz1haWLbUJbbTSXW/i+sDFNWulJ0tlWypQiZXOhG9l2tRSuXHu9km8UIzwUD/dvjACFpDmi9
	2h0LGunvzuEXELFWqeVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUSfR-0008If-Oj; Tue, 12 Nov 2019 09:40:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUSfK-0008I8-4a
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 09:40:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 62F941FB;
 Tue, 12 Nov 2019 01:40:49 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B1133F534;
 Tue, 12 Nov 2019 01:40:48 -0800 (PST)
Date: Tue, 12 Nov 2019 09:40:41 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Seung-Woo Kim <sw0312.kim@samsung.com>
Subject: Re: [PATCH] arm64: perf: Report arm pc registers for compat perf
Message-ID: <20191112094037.GA32269@lakrids.cambridge.arm.com>
References: <CGME20191112005902epcas1p2d9dfa6a29f2c57669b1c1eb58517016d@epcas1p2.samsung.com>
 <1573520501-29195-1-git-send-email-sw0312.kim@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573520501-29195-1-git-send-email-sw0312.kim@samsung.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_014050_227008_7666A42F 
X-CRM114-Status: GOOD (  16.54  )
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
Cc: sungguk.na@samsung.com, catalin.marinas@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 10:01:41AM +0900, Seung-Woo Kim wrote:
> If perf is built as arm 32-bit, it only reads 15 registers as arm
> 32-bit register map and this breaks dwarf call-chain in compat
> perf because pc register information is not filled.
> Report arm pc registers for 32-bit compat perf.
> 
> Without this, arm 32-bit perf dwarf call-graph shows below
> verbose message:
>   unwind: reg 15, val 0
>   unwind: reg 13, val ffbc6360
>   unwind: no map for 0
> 
> Signed-off-by: Seung-Woo Kim <sw0312.kim@samsung.com>
> ---
>  arch/arm64/kernel/perf_regs.c |    2 ++
>  1 files changed, 2 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm64/kernel/perf_regs.c b/arch/arm64/kernel/perf_regs.c
> index 0bbac61..d4172e7 100644
> --- a/arch/arm64/kernel/perf_regs.c
> +++ b/arch/arm64/kernel/perf_regs.c
> @@ -24,6 +24,8 @@ u64 perf_reg_value(struct pt_regs *regs, int idx)
>  			return regs->compat_sp;
>  		if ((u32)idx == PERF_REG_ARM64_LR)
>  			return regs->compat_lr;
> +		if ((u32)idx == 15) /* PERF_REG_ARM_PC */
> +			return regs->pc;
>  	}

This doesn't look quite right to me, since perf_regs_value() is
consuming the arm64 index for all other registers (e.g. the LR, in the
patch context).

i.e. this is designed for a native arm64 caller, and the fixup allows it
to view a compat task's registers as-if it were native.

How does this work for a native arm64 perf invocation with a compat
task? I assume it consumers regs->pc, and works as expected?

I suspect we need separate native and compat forms of this function, but
then it's not entirely clear how this should work -- how does this work
for a compat perf analysing a native arm64 binary?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
