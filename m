Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A90C74EC14
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TvTfiO/fCK8jXNWzK/OfFWDIVkSV/YWdk6/d0/oq/u0=; b=fPb8IsSAe9nr+S
	3TJeA/JWkdcQqvd54D4aaU1C/eYR2kMKKX58ZbAny3nUV2ZCFK2N15xivnBJ+g4xovoNCzON3MEeL
	MpLUjyJZ+uMxYYkwqlw2xs1ZGa6QekWoCTAdQFiFfxhK4GMCXCoYkARl/0cpHHvJQruc9CcrfkHfc
	av9m7NvLdnBNnhs928Hl6XEaD4vZeuEmKbaf+mATubx2HFwQEaf9nmt+06e0T7SXJVDHZrSPjH4Ly
	cwJM88IJgiyR4WH/GRbAXqFuLD2r72l1Uf8NBOTJOBKCuOdGhPyS+QRMqMI88PmN8z0dFctp1o97f
	gjfwFc5TceAB8lby/dZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLXQ-0000Gg-7H; Fri, 21 Jun 2019 15:33:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heLWn-0008QQ-Io
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:32:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F12AF1500;
 Fri, 21 Jun 2019 08:32:36 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B7E363F575;
 Fri, 21 Jun 2019 08:32:35 -0700 (PDT)
Date: Fri, 21 Jun 2019 16:32:33 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [RFC PATCH v2 2/8] arm64/signal: Update the comment in
 preserve_sve_context
Message-ID: <20190621153233.GX2790@e103592.cambridge.arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
 <20190613161656.20765-3-julien.grall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613161656.20765-3-julien.grall@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_083238_360573_0D1F5D2F 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, alex.bennee@linaro.org,
 linux-arm-kernel@lists.infradead.org, Daniel.Kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 05:16:50PM +0100, Julien Grall wrote:
> The SVE state is saved by fpsimd_signal_preserve_current_state() and not
> preserve_fpsimd_context(). Update the comment in preserve_sve_context to
> reflect the current behavior.
> 
> Signed-off-by: Julien Grall <julien.grall@arm.com>
> ---
>  arch/arm64/kernel/signal.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> index a9b0485df074..ab3e56bbfb07 100644
> --- a/arch/arm64/kernel/signal.c
> +++ b/arch/arm64/kernel/signal.c
> @@ -255,7 +255,8 @@ static int preserve_sve_context(struct sve_context __user *ctx)
>  	if (vq) {
>  		/*
>  		 * This assumes that the SVE state has already been saved to
> -		 * the task struct by calling preserve_fpsimd_context().
> +		 * the task struct by calling the function
> +		 * fpsimd_signal_preserve_current_state().
>  		 */
>  		err |= __copy_to_user((char __user *)ctx + SVE_SIG_REGS_OFFSET,
>  				      current->thread.sve_state,

Reviewed-by: Dave Martin <Dave.Martin@arm.com>

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
