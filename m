Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC01F1E1F9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:26:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wifyP62CcseuGFqHLfISWDWpH/WD+c78pMk5dy3m000=; b=jvHpddSIDoapO6
	qkG3iwPlEkV/5pW3h4GyrVN4A6tsoMMWMK4FX99bGzD5fOvIgJGHEXMzFs25+f37KKILNQZ6jaBn2
	3Tm4WqKh8goZR67SSNPt6zuG/t3QvA0bs8ansdjcKAbyNkwphaW90ldKyxc9N1J16U21OXRj3BpTQ
	jcUEH4yYNYy0Zwg2Bf4mjMxxJ/rkxc6HcakNE6MRgc2Ct1nmpIpt9krKDAqBQaBIPk0EjeLrZ4F/X
	A2bvdmMS0cLK8oTcPZyaaR4eK/fuXqKuCLXZzj6t3VqXfBwYsGqICydlLkEMLPt8sN8wy34uUakNU
	JEpQU+psKLn8yfBfSnDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdWnD-0004nT-7n; Tue, 26 May 2020 10:26:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdWmu-0004ZO-UJ
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:26:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD43E1FB;
 Tue, 26 May 2020 03:26:21 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AA5113F52E;
 Tue, 26 May 2020 03:26:19 -0700 (PDT)
Date: Tue, 26 May 2020 11:26:11 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Jiping Ma <jiping.ma2@windriver.com>
Subject: Re: [PATCH][V3] arm64: perf: Get the wrong PC value in REGS_ABI_32
 mode
Message-ID: <20200526102611.GA1363@C02TD0UTHF1T.local>
References: <1589165527-188401-1-git-send-email-jiping.ma2@windriver.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589165527-188401-1-git-send-email-jiping.ma2@windriver.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_032625_026734_32282C16 
X-CRM114-Status: GOOD (  16.19  )
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
Cc: zhe.he@windriver.com, bruce.ashfield@gmail.com, yue.tao@windriver.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org,
 paul.gortmaker@windriver.com, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 10:52:07AM +0800, Jiping Ma wrote:
> Modified the patch subject and the change description.
> 
> PC value is get from regs[15] in REGS_ABI_32 mode, but correct PC
> is regs->pc(regs[PERF_REG_ARM64_PC]) in arm64 kernel, which caused
> that perf can not parser the backtrace of app with dwarf mode in the 
> 32bit system and 64bit kernel.
> 
> Signed-off-by: Jiping Ma <jiping.ma2@windriver.com>

Thanks for this.


> ---
>  arch/arm64/kernel/perf_regs.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/kernel/perf_regs.c b/arch/arm64/kernel/perf_regs.c
> index 0bbac61..0ef2880 100644
> --- a/arch/arm64/kernel/perf_regs.c
> +++ b/arch/arm64/kernel/perf_regs.c
> @@ -32,6 +32,10 @@ u64 perf_reg_value(struct pt_regs *regs, int idx)
>  	if ((u32)idx == PERF_REG_ARM64_PC)
>  		return regs->pc;
>  
> +	if (perf_reg_abi(current) == PERF_SAMPLE_REGS_ABI_32
> +		&& idx == 15)
> +		return regs->pc;

I think there are some more issues here, and we may need a more
substantial rework. For a compat thread, we always expose
PERF_SAMPLE_REGS_ABI_32 via per_reg_abi(), but for some reason
perf_reg_value() also munges the compat SP/LR into their ARM64
equivalents, which don't exist in the 32-bit sample ABI. We also don't
zero the regs that don't exist in 32-bit (including the aliasing PC).

I reckon what we should do is have seperate functions for the two ABIs,
to ensure we don't conflate them, e.g.

u64 perf_reg_value_abi32(struct pt_regs *regs, int idx)
{
	if ((u32)idx > PERF_REG_ARM32_PC)
		return 0;
	if (idx == PERF_REG_ARM32_PC)
		return regs->pc;
	
	/*
	 * Compat SP and LR already in-place
	 */
	return regs->regs[idx];
}

u64 perf_reg_value_abi64(struct pt_regs *regs, int idx)
{
	if ((u32)idx > PERF_REG_ARM64_MAX)
		return 0;
	if ((u32)idx == PERF_REG_ARM64_SP)
		return regs->sp;
	if ((u32)idx == PERF_REG_ARM64_PC)
		return regs->pc;
	
	reutrn regs->regs[idx];
}

u64 perf_reg_value(struct pt_regs *regs, int idx)
{
	if (compat_user_mode(regs))
		return perf_reg_value_abi32(regs, idx);
	else
		return perf_reg_value_abi64(regs, idx);
}

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
