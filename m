Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC421F995F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5SJ/AqY97v+ZuCi/3ubw8UeEi68yROaMumHK6vjVeRc=; b=DhpeqvguJaBxvt
	39eoXfudxl8sQuzh8eiXsmR1IaS5XAP/mNyAUQ4sHVJFYphV49yadOZroDWET2JaglC8SdEuigxJS
	33kqyht4ei8zM6SL9s49YoIwfjJpLQLSbq8GLjSsvDKHRCc3DUYxiWYaIAvtapHSawZdthEkqJtBw
	gzc11QZ4TJn24uxU9NP1iStf3DN+YbTim4jZ75psjLJ/23rGFGZpFUPLknbMuva8do6edM8ZC0r3B
	qzS5gy68dAjIm3leUCJLZ7i8oKuvkZ0Bv24jAW/BOZlyUVOAV6BLilwi50fCtTIU9pmqkP7qt3Tg9
	QFrjBrgMvHKuV0nLeyHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpaL-0001eW-Ca; Mon, 15 Jun 2020 13:55:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkpaE-0001d3-Gu
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:55:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 99BD031B;
 Mon, 15 Jun 2020 06:55:29 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.7.221])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5DE463F6CF;
 Mon, 15 Jun 2020 06:55:28 -0700 (PDT)
Date: Mon, 15 Jun 2020 14:55:25 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: traps: Dump registers prior to panic() in
 bad_mode()
Message-ID: <20200615135525.GF773@C02TD0UTHF1T.local>
References: <20200615113458.2884-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615113458.2884-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_065530_617755_25340560 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 12:34:58PM +0100, Will Deacon wrote:
> When panicing due to an unknown/unhandled exception at EL1, dump the
> registers of the faulting context so that it's easier to figure out
> what went wrong. In particular, this makes it a lot easier to debug
> in-kernel BTI failures since it pretty-prints PSTATE.BTYPE in the crash
> log.
> 
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/kernel/traps.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> index 50cc30acf106..f1869e5bd743 100644
> --- a/arch/arm64/kernel/traps.c
> +++ b/arch/arm64/kernel/traps.c
> @@ -812,6 +812,8 @@ asmlinkage void bad_mode(struct pt_regs *regs, int reason, unsigned int esr)
>  	pr_crit("Bad mode in %s handler detected on CPU%d, code 0x%08x -- %s\n",
>  		handler[reason], smp_processor_id(), esr,
>  		esr_get_class_string(esr));
> +	if (regs)
> +		__show_regs(regs);

For bad_mode() regs is never NULL, so you don't need to check that here.

Otherwise, this looks sane to me, so with the redundant check removed:

Acked-by: Mark Rutland <mark.rutland@arm.con>

Mark.

>  
>  	local_daif_mask();
>  	panic("bad mode");
> -- 
> 2.27.0.290.gba653c62da-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
