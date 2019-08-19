Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA18492316
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 14:08:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymReY7Qs89mIEnHBj+QgaB7zw34C5eaAgnn9uHfGvqA=; b=jBqET0WbxoI70Y
	Lbel+lLC/6Oue9ZKYNYZH6J2hPwtSV7aUhFni7SHR66SSvIiTi7f86CKJFFRtrrnNJaham8igey1P
	Ib++TnjzWD6yvbCLDl+94bkkOO/USzgoFKJNUHBd9gcXvZltLenaBmKNctvk7/BMxkgplVRQ1By3a
	WwbMOS7E9c9Ylk+1YLQdCF0tNzx/Z15Sy5Pbcnc5DAJtdwydefTF+1xB+LgsHfKVNZZALiHstrkUC
	3tynhW5yqf2eb3kg6KUqp306Ewi6/YH5V6jUvXBk1Z49c09/8ivIqLmz/bT3RdQ3oOZkt2Dw+klSW
	1agTB6R7btYT0A4BH5Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzgSv-0000wN-5Z; Mon, 19 Aug 2019 12:08:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzgSo-0000w0-GT
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 12:08:43 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF8AA20851;
 Mon, 19 Aug 2019 12:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566216522;
 bh=I6KGzvvULJGHZL55G/OkfCAoZhPAaIcVTYDIPygWzGY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rzk4AQyXeqgNc+HNHWnEfe19wpnctowiDet/Y34gdLZbzrfs9x9uMRFbI/lYAy1Dd
 P7OTYyL00fBSe9x+LxAp+ZFjLQfepqPVxTrbshJOpaBT7l59kKxPoczztWtt031VCs
 tH2re3j2NB0+hEPDnHU0ZX40BvxWkfg+AQSNxcl8=
Date: Mon, 19 Aug 2019 14:08:30 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH] bus: imx-weim: module_platform_driver()
Message-ID: <20190819120829.GD5999@X250>
References: <20190814082316.30300-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814082316.30300-1-s.hauer@pengutronix.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_050842_570652_3AA0659A 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 10:23:16AM +0200, Sascha Hauer wrote:
> Switch from module_platform_driver_probe() to module_platform_driver().
> The former is not suitable for booting with device tree as the driver
> will be registered before the device and thus won't be probed again
> when the device is present.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Applied with subject updated like below.

  bus: imx-weim: use module_platform_driver()

Shawn

> ---
>  drivers/bus/imx-weim.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
> index db74334ca5ef..8a9f8a4328c2 100644
> --- a/drivers/bus/imx-weim.c
> +++ b/drivers/bus/imx-weim.c
> @@ -183,8 +183,7 @@ static int __init weim_timing_setup(struct device *dev,
>  	return 0;
>  }
>  
> -static int __init weim_parse_dt(struct platform_device *pdev,
> -				void __iomem *base)
> +static int weim_parse_dt(struct platform_device *pdev, void __iomem *base)
>  {
>  	const struct of_device_id *of_id = of_match_device(weim_id_table,
>  							   &pdev->dev);
> @@ -217,7 +216,7 @@ static int __init weim_parse_dt(struct platform_device *pdev,
>  	return ret;
>  }
>  
> -static int __init weim_probe(struct platform_device *pdev)
> +static int weim_probe(struct platform_device *pdev)
>  {
>  	struct resource *res;
>  	struct clk *clk;
> @@ -254,8 +253,9 @@ static struct platform_driver weim_driver = {
>  		.name		= "imx-weim",
>  		.of_match_table	= weim_id_table,
>  	},
> +	.probe = weim_probe,
>  };
> -module_platform_driver_probe(weim_driver, weim_probe);
> +module_platform_driver(weim_driver);
>  
>  MODULE_AUTHOR("Freescale Semiconductor Inc.");
>  MODULE_DESCRIPTION("i.MX EIM Controller Driver");
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
