Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 163459E677
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 13:09:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ePbjuXiPFN/xdi58TGiZiNay8d2ZruD+o4XIfSkSnc=; b=iFTKmg8qQP0FmC
	pSyJ6GKcOORmKzJXH3tXANdQI/Jbm76z9Zx7Bh7TLk3DXZke9Z5sBNFB/QMs266jDhFc9KUDVh3Bs
	S0twC4N8FT2Q2ByAt6HEdryhBc45yyuyk145npPy2GjMhXBQPh7Zxq3/vGZ8lAd9Z1xGV+3+9n3qg
	Y5+fHmhKbi3mT5dFXrSLbMmqSTABcMWrrfxawnooFr48NHr1xXPwDE7K52tmWKK/nWCKP+r4UJaxi
	ms3CR4I7sNQYPktHNshIrXbk9iibkX4o43VWz88Heqhm2wv89q4oUlfqSoGCH4HD0sLcy93zpYOZZ
	rHOGFm5GXkelUiJTsHIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ZLO-0005MF-0A; Tue, 27 Aug 2019 11:08:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ZL5-0005Ls-9b
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 11:08:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 80E1E28;
 Tue, 27 Aug 2019 04:08:38 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0FAC73F718;
 Tue, 27 Aug 2019 04:08:37 -0700 (PDT)
Date: Tue, 27 Aug 2019 12:08:36 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [BOOTWRAPPER PATCH] Enable TME for lower exception levels
Message-ID: <20190827110835.GC8000@lakrids.cambridge.arm.com>
References: <20190823145015.15974-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823145015.15974-1-will@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_040839_375725_E8E15824 
X-CRM114-Status: GOOD (  13.82  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 03:50:15PM +0100, Will Deacon wrote:
> By default, TME is not available to exception levels below EL3, so
> enable it in SCR_EL3 if we detect that it is implemented.
> 
> Signed-off-by: Will Deacon <will@kernel.org>

Applied, thanks!

Mark.

> ---
>  arch/aarch64/boot.S | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/aarch64/boot.S b/arch/aarch64/boot.S
> index 74705cded338..c2fe92c90297 100644
> --- a/arch/aarch64/boot.S
> +++ b/arch/aarch64/boot.S
> @@ -48,6 +48,13 @@ _start:
>  	orr	x0, x0, #(1 << 16)		// AP key enable
>  	orr	x0, x0, #(1 << 17)		// AP insn enable
>  1:
> +	/* Enable TME if present */
> +	mrs	x1, id_aa64isar0_el1
> +	ubfx	x1, x1, #24, #4
> +	cbz	x1, 1f
> +
> +	orr	x0, x0, #(1 << 34)		// TME enable
> +1:
>  #ifndef KERNEL_32
>  	orr	x0, x0, #(1 << 10)		// 64-bit EL2
>  #endif
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
