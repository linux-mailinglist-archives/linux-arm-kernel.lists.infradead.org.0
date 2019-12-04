Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC00112157
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 03:19:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psxcFcytdq4uYxVYtcPz/DFm77gnAbSf2uGGx1/nnrU=; b=PK0i4XSqTPq4LQ
	Nd4XywVyv36AnNJtXVC4mie6TrsK1ItnbO42hYmQq6PYR9AKgy/vRmCZWXaxHdsSseOac6ahZBuFh
	BIz7rMjuNPxvAx8tcPEd+NL/2xucJuiJT117S+ATkDFp8Qb1YrKfPA07TcpDNme3plUfeRhRgew0B
	v6lKIn51lxoJizg08ZcfEeVr9CZnriPSSc0hb5l6jUqA16o0ZgCLfTw1AFnR4D3t7XyjXwV5U9ktG
	Jh366sYXjqj5rfUY9R5ymPIIdBLCJa0hwrT9QrYnkjbxWuU9uPT0gDoG2CJOtfHXHSN2pb/9tY4JF
	rbFIb7mZj5yVdnECrHvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icKGC-0004uH-NH; Wed, 04 Dec 2019 02:19:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icKG5-0004tl-9u
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 02:19:20 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10B8C2073C;
 Wed,  4 Dec 2019 02:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575425956;
 bh=FX0SbHl1Yljp4OhiB2FkaDSP/AYuFcF8lh80Js4Mc/c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vr3fYKnxYmLmrDqk2Jr6lZOynJiZfJSLzX8Pp8YPusqwp3A8PXmRWEUAI0nnKG9A/
 vwo2NmNoTfqzw8dGnojNcemy6+kQcl023nXPZiXz1ER1PxNojyMAXBA1rzQAPpIw/a
 PTYizRwVD2Slkvb9eF8GO4DUlF+PGVQKuF1bjAwI=
Date: Wed, 4 Dec 2019 10:19:09 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] clk: imx: pll14xx: fix clk_pll14xx_wait_lock
Message-ID: <20191204021908.GN9767@dragon>
References: <1573018178-14939-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573018178-14939-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_181917_369491_FA395F8D 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 05:31:15AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The usage of readl_poll_timeout is wrong, the cond should be
> "val & LOCK_STATUS" not "val & LOCK_TIMEOUT_US".

Is this caught just by code inspection or a real world bug?  If you want
this get into -rc (and stable kernel) as a fix, you should add more
information about the bug, like how it's been triggered, what's the
consequence of the bug, and kernel dump message etc.

> 
> Fixes: 8646d4dcc7fb ("clk: imx: Add PLLs driver for imx8mm soc")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> V1:
>  Hi Shawn,
>    This patch is made based on 5.4-rc6, not your for-next branch,

Please rebase it on 5.5-rc1 which will be coming next Monday.

>    not sure whether this patch could catch 5.4 release.

You can Cc stable kernel, so that it will be back ported.

Shawn

> 
>  drivers/clk/imx/clk-pll14xx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
> index 7a815ec76aa5..d43b4a3c0de8 100644
> --- a/drivers/clk/imx/clk-pll14xx.c
> +++ b/drivers/clk/imx/clk-pll14xx.c
> @@ -153,7 +153,7 @@ static int clk_pll14xx_wait_lock(struct clk_pll14xx *pll)
>  {
>  	u32 val;
>  
> -	return readl_poll_timeout(pll->base, val, val & LOCK_TIMEOUT_US, 0,
> +	return readl_poll_timeout(pll->base, val, val & LOCK_STATUS, 0,
>  			LOCK_TIMEOUT_US);
>  }
>  
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
