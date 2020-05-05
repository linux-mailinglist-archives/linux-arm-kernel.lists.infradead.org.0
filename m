Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7DF1C4D73
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 06:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o03qcP3lmuW7h18B9T+O3heCvmTbUw9p1AbPT+2PV60=; b=gZn0kEB8ILYwhs
	DbL10RvZXKLsBCivJ1RnPX3Ozr/G9bKxgAstBboqDYXEn8fcwkLCYmF8O7zFnzhuBAwPQ8FSkXgKL
	SAdIk7vQN46t23vRH6K3FTy/mEiJ5ZlAUcgl7trO3gazhZ1Nwi8Sxv1sZ2qAcVgYfWDgOCA+hkEK4
	jyb0ifSyMsLYKcBCJ3dymCNYVCexTpbGQx0v0fECmDqF2CwoctjzdkfWly2/oF2NHR9R/6FKpuZCb
	+Sw68LKfZ0MCFGNzMbCn94DKWWZB6thTy1T6yeiEE1rmS+nVB9Nopy7PJgT1hMCPJkGrckh1HK040
	xNJXVJGrN12QCxK29ArA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVpaX-0007In-Oa; Tue, 05 May 2020 04:53:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVpaP-0007IB-Oq
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 04:53:43 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 60D19206B9;
 Tue,  5 May 2020 04:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588654421;
 bh=f65b1BTpikGC31/6vPVuAxkSaUyizcH0ezHMxUUud5o=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=uieDilMYBHnHd7hBz/BHztvR2KvpaFo8NXMGFabQVg+cvkBixv8g8ksUnFaH5iRbA
 Xv4h9xGfb6dPTGlXHAmfRyUidEagOJIZ44qWiv4mXv/y/BVp9eVWSlWdE5OowxdE0b
 FAyh/mNdxSVnCGa/TUNFjkinOA4ct8IUV1DwNrFg=
MIME-Version: 1.0
In-Reply-To: <1584279836-29825-12-git-send-email-aisheng.dong@nxp.com>
References: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
 <1584279836-29825-12-git-send-email-aisheng.dong@nxp.com>
Subject: Re: [PATCH V6 11/12] clk: imx: lpcg: add suspend/resume support
From: Stephen Boyd <sboyd@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>, linux-clk@vger.kernel.org
Date: Mon, 04 May 2020 21:53:40 -0700
Message-ID: <158865442071.11125.16124334622401774759@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_215342_217783_CA368AD3 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, mturquette@baylibre.com,
 linux-imx@nxp.com, kernel@pengutronix.de, fabio.estevam@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Dong Aisheng (2020-03-15 06:43:55)
> LPCG clock state may be lost when it's power domain is completely
> off during system suspend/resume and we need save and restore the
> state properly.
> 
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

> diff --git a/drivers/clk/imx/clk-lpcg-scu.c b/drivers/clk/imx/clk-lpcg-scu.c
> index 2242e5047a0e..5bd8af371059 100644
> --- a/drivers/clk/imx/clk-lpcg-scu.c
> +++ b/drivers/clk/imx/clk-lpcg-scu.c
> @@ -122,3 +128,34 @@ void imx_clk_lpcg_scu_unregister(struct clk_hw *hw)
>         clk_hw_unregister(&clk->hw);
>         kfree(clk);
>  }
> +
> +static int __maybe_unused imx_clk_lpcg_scu_suspend(struct device *dev)
> +{
> +       struct clk_lpcg_scu *clk = dev_get_drvdata(dev);
> +
> +       clk->state = readl_relaxed(clk->reg);
> +       dev_dbg(dev, "save lpcg state 0x%x\n", clk->state);
> +
> +       return 0;
> +}
> +
> +static int __maybe_unused imx_clk_lpcg_scu_resume(struct device *dev)
> +{
> +       struct clk_lpcg_scu *clk = dev_get_drvdata(dev);
> +
> +       /*
> +        * FIXME: Sometimes writes don't work unless the CPU issues

Is this ever going to be resolved? Maybe the FIXME can be dropped and we
can accept that writes don't work?

> +        * them twice
> +        */
> +
> +       writel(clk->state, clk->reg);
> +       writel(clk->state, clk->reg);
> +       dev_dbg(dev, "restore lpcg state 0x%x\n", clk->state);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
