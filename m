Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A2775958
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 23:11:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8lviZ+wpsa5F6CFp30pbqCGwNSQYMV3p7xZzoEwjzvQ=; b=dExErjoeWYlBTW
	TEYR/KTJvIjJatVqRl3mXw9tvL3luhZ7vkJ1IT29rifa0Wudz84N75BB1jft+99Z8cprQeeHx6S+n
	bD6O0VmzGy4Nwf/LoirwnE6PXO2+U19dQxKpgFHJByJHyUeoLpcmjrFg2RJxnqyf+f2Cxt1vNdyLQ
	w6fBB+opgyKI+LZogU6C3SbCKPAoBJUUbg4iI9uF/ueHAqg0yOwzNpM3DmoqdNlRB/dXzh6VfIyZG
	9AzUTPjNBoMcK9nsr9WYITRTUPDFtWZ9eJXF4LffSQRGV8gP17Mtq1UxfX2Je8hpR81p9eMrVhfG/
	LFVTLBp/9w4yuSzpt3IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hql1E-0004l7-KH; Thu, 25 Jul 2019 21:11:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hql0z-0004kO-Fo; Thu, 25 Jul 2019 21:11:07 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0FD50218EA;
 Thu, 25 Jul 2019 21:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564089065;
 bh=CYo3ibcqoLW7F/S9064H4yTGj2/Ywl1wI1KXI8cO9jQ=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=wT8fbumh0wwybnsdU10c8jzKx0Z9uNF4KXmcnkTksF7ry3psFzsnrn+nlVPw9DyRT
 FPIfNzGFt8T1QQyEt8oAynRh4g7wAGeQWv77AVRPtyKlvq3tFI2409ySyy2PCD2tJ3
 r2D/no8G4Os9dQqO3qiC9TZVQaWd5F7TZWsGujo0=
MIME-Version: 1.0
In-Reply-To: <20190725082002.17400-2-yong.liang@mediatek.com>
References: <20190725082002.17400-1-yong.liang@mediatek.com>
 <20190725082002.17400-2-yong.liang@mediatek.com>
Subject: Re: [PATCH v4,2/2] clk: reset: Modify reset-controller driver
To: Yong Liang <yong.liang@mediatek.com>, chunhui.dai@mediatek.com,
 drinkcat@chromium.org, eddie.huang@mediatek.com, erin.lo@mediatek.com,
 jamesjj.liao@mediatek.com, jasu@njomotys.info, mark.rutland@arm.com,
 matthias.bgg@gmail.com, mturquette@baylibre.com, owen.chen@mediatek.com,
 robh+dt@kernel.org, weiyi.lu@mediatek.com
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Thu, 25 Jul 2019 14:11:04 -0700
Message-Id: <20190725211105.0FD50218EA@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_141105_568320_9BF56C91 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "yong.liang" <yong.liang@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Yong Liang (2019-07-25 01:20:02)
> From: "yong.liang" <yong.liang@mediatek.com>
> 
> Set reset signal by a register and clear reset signal by
> another register for 8183.
> 
> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> ---
> 
> Base on https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git branch clk-next and https://patchwork.kernel.org/patch/10856987/

Use --base= in git format-patch instead.

> diff --git a/drivers/clk/mediatek/clk-mt8183.c b/drivers/clk/mediatek/clk-mt8183.c
> index 9d8651033ae9..f695eb7eb5a1 100644
> --- a/drivers/clk/mediatek/clk-mt8183.c
> +++ b/drivers/clk/mediatek/clk-mt8183.c
> @@ -1204,13 +1204,24 @@ static int clk_mt8183_infra_probe(struct platform_device *pdev)
>  {
>         struct clk_onecell_data *clk_data;
>         struct device_node *node = pdev->dev.of_node;
> +       int r;
>  
>         clk_data = mtk_alloc_clk_data(CLK_INFRA_NR_CLK);
>  
>         mtk_clk_register_gates(node, infra_clks, ARRAY_SIZE(infra_clks),
>                 clk_data);
>  
> -       return of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
> +       r = of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
> +       if (r) {
> +               dev_err(&pdev->dev,
> +                       "%s(): could not register clock provider: %d\n"
> +                       ,__func__, r);
> +               return r;
> +       }
> +
> +       mtk_register_reset_controller_set_clr(node, 4, 0x120);

What is this line doing? Maybe add a comment so we understand what 0x120
is.

> +
> +       return r;
>  }
>  
>  static int clk_mt8183_mcu_probe(struct platform_device *pdev)
> diff --git a/drivers/clk/mediatek/reset.c b/drivers/clk/mediatek/reset.c
> index d3551d5efef2..fccc8fcb6a20 100644
> --- a/drivers/clk/mediatek/reset.c
> +++ b/drivers/clk/mediatek/reset.c
> @@ -95,3 +131,18 @@ void mtk_register_reset_controller(struct device_node *np,
>                 return;
>         }
>  }
> +
> +void mtk_register_reset_controller(struct device_node *np,
> +       unsigned int num_regs, int regofs)
> +{
> +       mtk_register_reset_controller_common(np, num_regs, regofs,
> +               &mtk_reset_ops);
> +}
> +
> +void mtk_register_reset_controller_set_clr(struct device_node *np,
> +       unsigned int num_regs, int regofs)
> +{
> +       mtk_register_reset_controller_common(np, num_regs, regofs,
> +               &mtk_reset_ops_set_clr);
> +}
> +

If this is an extra newline at the end of the file, please remove it.

> diff --git a/include/dt-bindings/reset-controller/mt8183-resets.h b/include/dt-bindings/reset-controller/mt8183-resets.h
> new file mode 100644
> index 000000000000..81136c932f75
> --- /dev/null
> +++ b/include/dt-bindings/reset-controller/mt8183-resets.h
> @@ -0,0 +1,88 @@
> +/*
> + * Copyright (c) 2017 MediaTek Inc.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
> + * See  http://www.gnu.org/licenses/gpl-2.0.html for more details.

Please use SPDX tags instead of this boilerplate.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
