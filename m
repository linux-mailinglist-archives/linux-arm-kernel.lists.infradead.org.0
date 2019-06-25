Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC9E55B4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 00:34:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qozVySnuBBXSaRoo22qN//0DzFmnI8JofMxxJACTFYE=; b=RlNk93yxJtRDgT
	zKJCguATS3mEQRJ8lFs/0ERit3N38oxvsUGBub/mV8tFVHrLThTaPSMxT4OuRPa7kdQrRo1t9AfLy
	tD3+7ZKNcfJ4WflPs9z+OwXfbDZW8jS5H2DniHKOlkGYrQ/3fQfSjTS/noDPIxVF6W0dzZJ+GFaeP
	2Xmm0gJIWecfOgvPazQ/JIvqDLE+3Go55Y62zu6ua3SjpYpgF6QWdPm/cSeJ5QQJqukDD7GU/P+pM
	usJsd16+DK6WukCSIQ8qLlMYac+vFgW0LcC8ddDDEkQQpcone2eyn1qJFjfeYKtG/k1v9Uf5i/Vyy
	qFeIuSWnUoKVyXiXterg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfu1X-00026L-Bj; Tue, 25 Jun 2019 22:34:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hftzD-0000rw-W6
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 22:32:25 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B8EC2053B;
 Tue, 25 Jun 2019 22:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561501943;
 bh=cSuQxxaq84YwOFPQHIHja20RlhSxafVamByUrHvRrDQ=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=uOThxdWIbQIHssS8dVd8WO2sv4HnWY9Krnf6kAdWBWn+vn4mff8AGaU7SXJfDPhQh
 R4W3J5zoId9HAY1DA6y3R2SF0uCSl/dNLEEHvscypDCrIjnWYyYi9IAO2n+zDnSwEJ
 9POD0+D4ltW1DyG5nDqCpTX0MxTKdezfL79viuNE=
MIME-Version: 1.0
In-Reply-To: <1561453316-11481-1-git-send-email-abel.vesa@nxp.com>
References: <1561453316-11481-1-git-send-email-abel.vesa@nxp.com>
To: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Mike Turquette <mturquette@baylibre.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: imx8mq: Mark AHB clock as critical
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 15:32:22 -0700
Message-Id: <20190625223223.3B8EC2053B@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_153224_254518_E9FDC56B 
X-CRM114-Status: GOOD (  14.20  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Abel Vesa (2019-06-25 02:01:56)
> Keep the AHB clock always on since there is no driver to control it and
> all the other clocks that use it as parent rely on it being always enabled.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>  drivers/clk/imx/clk-imx8mq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
> index 5fbc2a7..b48268b 100644
> --- a/drivers/clk/imx/clk-imx8mq.c
> +++ b/drivers/clk/imx/clk-imx8mq.c
> @@ -398,7 +398,7 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
>         clks[IMX8MQ_CLK_NOC_APB] = imx8m_clk_composite_critical("noc_apb", imx8mq_noc_apb_sels, base + 0x8d80);
>  
>         /* AHB */
> -       clks[IMX8MQ_CLK_AHB] = imx8m_clk_composite("ahb", imx8mq_ahb_sels, base + 0x9000);
> +       clks[IMX8MQ_CLK_AHB] = imx8m_clk_composite_critical("ahb", imx8mq_ahb_sels, base + 0x9000);

Please add a comment into the code why it's critical.

>         clks[IMX8MQ_CLK_AUDIO_AHB] = imx8m_clk_composite("audio_ahb", imx8mq_audio_ahb_sels, base + 0x9100);
>  
>         /* IPG */
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
