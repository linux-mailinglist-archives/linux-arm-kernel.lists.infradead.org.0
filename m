Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4154A297
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7WI3VsZGKTVwD+rJ7U/ZTt9RYsHReM7yTlI1yK0G4w=; b=n9aYFDsye/yg1h
	V5OXWp6b4PxozST8PwEnnDs4SO8gWXHquWbebKrmuGbYdg2yNvsS6tWPpkD/Wd+axbiVxy7/lslGr
	jHSwJjxxF1TM5tsrRqaVMPDI/B2pB0I7glG+Vi9ZdIYn4kVb62cHivftLHedfW7dyNdUhmP9yR6jT
	AONGF7FjaHDx4uDQkKQhJXkvuqfccD8vQGm9iknflSu/n6ZzXDlo68Jdn3PnTf/ogWtqe+jnBOwui
	Q07MOEpEizK1y4FgD4A+5ZGmTu2VbEFCDrAJrmVp64wHhfZYqV3GGubL63E9T8sg4DIenIE3DsTxq
	yKihiF5+ur8/B8ZFmmLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEPH-0003WB-3r; Tue, 18 Jun 2019 13:44:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdEP3-0003Vs-C4
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:44:02 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B70A2084B;
 Tue, 18 Jun 2019 13:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560865441;
 bh=jpwi1yqOwmzINvYa264hjoNAwgtlAPkdvF2LHsGZuSw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dlTPHTxwnt6PhDNTjiSnVbxHAQANydojYv4DrMm3pkhiAXugUYFIMnhX+G7B2B7Wx
 IG8xYOWcz/LHNiHMjHJYNcz/eV7MO8/42BaSqdopxg+ZmAT3HztnggMQ4JswjFOzPp
 YkXA7B1KnSAyciFqCVVrG3o61qq6FrwjrNCZv4R8=
Date: Tue, 18 Jun 2019 21:42:55 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] clk: imx6q: Annotate imx6q_obtain_fixed_clk_hw with __init
Message-ID: <20190618134253.GK1959@dragon>
References: <20190618022405.27952-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618022405.27952-1-natechancellor@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_064401_431694_05C290D5 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, clang-built-linux@googlegroups.com,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 07:24:05PM -0700, Nathan Chancellor wrote:
> When building with clang, the following modpost warning occurs:
> 
> WARNING: vmlinux.o(.text+0x974dbc): Section mismatch in reference from
> the function imx6q_obtain_fixed_clk_hw() to the function
> .init.text:imx_obtain_fixed_clock_hw()
> The function imx6q_obtain_fixed_clk_hw() references
> the function __init imx_obtain_fixed_clock_hw().
> This is often because imx6q_obtain_fixed_clk_hw lacks a __init
> annotation or the annotation of imx_obtain_fixed_clock_hw is wrong.
> 
> imx6q_obtain_fixed_clk_hw is only used in imx6q_clocks_init, which is
> marked __init so do that to imx6q_obtain_fixed_clk_hw to avoid this
> warning.
> 
> Fixes: 992b703b5b38 ("clk: imx6q: Switch to clk_hw based API")
> Link: https://github.com/ClangBuiltLinux/linux/issues/541
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch, Nathan.  But we already queued up a patch [1]
from Arnd for that.

Shawn

[1] https://lkml.org/lkml/2019/6/17/317

> ---
>  drivers/clk/imx/clk-imx6q.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx6q.c b/drivers/clk/imx/clk-imx6q.c
> index 2caa71e91119..18914e0a1850 100644
> --- a/drivers/clk/imx/clk-imx6q.c
> +++ b/drivers/clk/imx/clk-imx6q.c
> @@ -418,8 +418,9 @@ static void disable_anatop_clocks(void __iomem *anatop_base)
>  	writel_relaxed(reg, anatop_base + CCM_ANALOG_PLL_VIDEO);
>  }
>  
> -static struct clk_hw *imx6q_obtain_fixed_clk_hw(struct device_node *np,
> -						const char *name, unsigned long rate)
> +static struct clk_hw __init *imx6q_obtain_fixed_clk_hw(struct device_node *np,
> +							const char *name,
> +							unsigned long rate)
>  {
>  	struct clk *clk = of_clk_get_by_name(np, name);
>  	struct clk_hw *hw;
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
