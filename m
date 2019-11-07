Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AED7F3543
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 18:01:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uSnZrLMHUiM5h0RuFb1s5ctvsi7sL8j2blCeZYTOOrM=; b=Km+VlfxBSyKleY
	cknoaCaZXHQSWN+f3nnB3QyAkFGPHnh7zziSRBoJ0uuVvh6XRf0Jyhq2PM0j6DBmwS8nYBR0Cfxaf
	lAELu6D9OENbldrjmkDj4jmaIrrneShHZ77T7JqPABJIVLzQaACjAMJtTIg1aVz2t+fJ8FhYrqKiE
	qh+e34mTFyBECM87tIbddgZxmVUU6tjPNQR17KHb1bWMpLUbSZ03DuZL61GQFpY4ZQBJmkfiKuDRs
	/ca4uyMF3ARKCB/xEakv2l29JKn2ok3D7wlPMfXBhJvJx5eEdZGGgLt6+yRgyDVF5bpMaDiR6nlFX
	qOB0j0thqnH1+hY96IHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSlAK-0004Ym-EY; Thu, 07 Nov 2019 17:01:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSlAA-0004Y3-OX
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 17:01:39 +0000
Received: from litschi.hi.pengutronix.de
 ([2001:67c:670:100:feaa:14ff:fe6a:8db5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <m.tretter@pengutronix.de>)
 id 1iSlA4-0002mw-1W; Thu, 07 Nov 2019 18:01:32 +0100
Date: Thu, 7 Nov 2019 18:01:31 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: Rajan Vaja <rajan.vaja@xilinx.com>
Subject: Re: [PATCH] clk: zynqmp: Correct bit index for divider flag
Message-ID: <20191107180131.63960cf1@litschi.hi.pengutronix.de>
In-Reply-To: <1573117290-7990-1-git-send-email-rajan.vaja@xilinx.com>
References: <1573117290-7990-1-git-send-email-rajan.vaja@xilinx.com>
Organization: Pengutronix
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:feaa:14ff:fe6a:8db5
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_090138_797091_DA024A05 
X-CRM114-Status: GOOD (  14.38  )
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, jollys@xilinx.com, kernel@pengutronix.de,
 Jolly Shah <jolly.shah@xilinx.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 07 Nov 2019 01:01:30 -0800, Rajan Vaja wrote:
> Update divider flag bit index to match with firmware.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>  drivers/clk/zynqmp/divider.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
> index d8f5b70d..9e60834 100644
> --- a/drivers/clk/zynqmp/divider.c
> +++ b/drivers/clk/zynqmp/divider.c
> @@ -2,7 +2,7 @@
>  /*
>   * Zynq UltraScale+ MPSoC Divider support
>   *
> - *  Copyright (C) 2016-2018 Xilinx
> + *  Copyright (C) 2016-2019 Xilinx
>   *
>   * Adjustable divider clock implementation
>   */
> @@ -25,7 +25,7 @@
>  #define to_zynqmp_clk_divider(_hw)		\
>  	container_of(_hw, struct zynqmp_clk_divider, hw)
>  
> -#define CLK_FRAC	BIT(13) /* has a fractional parent */
> +#define CLK_FRAC	BIT(8) /* has a fractional parent */

NACK.

This breaks the compatibility with the older/upstream versions of the
TF-A. You have to at least make this dependent on the used version of
the TF-A.

>  
>  /**
>   * struct zynqmp_clk_divider - adjustable divider clock

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
