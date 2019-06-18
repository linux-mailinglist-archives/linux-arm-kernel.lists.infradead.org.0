Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0F2499D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 09:04:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+S3zCO2mtsP3hN7s/Dzcge1kq6aSkgCpmJXZJKwMFUs=; b=rYkrEp4GjDigtw
	xOVsjbScYtfrZe6BaAfwBtSWszESEJRp6syPCIIHfdt+F1DSOUVJFDuD9HF0lgzwev6Zk2TKTXKvD
	OT8eyI2QllkA+ctIcKH386J23fg0sRHq9Al2mSsq1agwCXEEjm1h7R8ACoUpnB4DkSYkOKb0qj+5f
	RcVVp6UY/cE2CYras6BjoinDG9CKPisvB83jkZDsm0DXfhtHMx6cx+G34TUq2bPaxjRCr6pkYwUHG
	h8E0PA5+ZcGp56kmtJdc02HBmMJfDJRiJyotO/Io9IfPahZiQOnTl1VtHlcWikzpG/TWEhlgrQv4J
	izzusHWp4Dvn60elWplA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8Ae-0008NZ-W5; Tue, 18 Jun 2019 07:04:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8AM-0008N4-9L
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 07:04:27 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8711B20665;
 Tue, 18 Jun 2019 07:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560841465;
 bh=bm2DKq2EIZtKPTiAVRzsCQniXdUMQeaYWYo40ocVKd0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t5Cp/sFZYyd4zhxGNyiMT4RVBJ5dQioW+ujYpGLtOqgTXmP3MlE8ATBKOkjUQH+V0
 AuhyNNvZtXrsMJYnjJ8dT1b6ddzRNmKMq6YzBez9UJhI50EBiUIKZ+FFBWyjHXNHan
 8FTc4VYvIv/V38X1206XO6H3Sl+vS3TL7Sw2jO7o=
Date: Tue, 18 Jun 2019 15:03:35 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH] soc: imx: Add i.MX8MN SoC driver support
Message-ID: <20190618070334.GD29881@dragon>
References: <20190611013125.3434-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611013125.3434-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_000426_340535_4184EEC7 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: abel.vesa@nxp.com, viresh.kumar@linaro.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 09:31:25AM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> This patch adds i.MX8MN SoC driver support:
> 
> root@imx8mnevk:~# cat /sys/devices/soc0/family
> Freescale i.MX
> 
> root@imx8mnevk:~# cat /sys/devices/soc0/machine
> NXP i.MX8MNano DDR4 EVK board
> 
> root@imx8mnevk:~# cat /sys/devices/soc0/soc_id
> i.MX8MN
> 
> root@imx8mnevk:~# cat /sys/devices/soc0/revision
> 1.0
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/soc/imx/soc-imx8.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
> index 3842d09..02309a2 100644
> --- a/drivers/soc/imx/soc-imx8.c
> +++ b/drivers/soc/imx/soc-imx8.c
> @@ -55,7 +55,12 @@ static u32 __init imx8mm_soc_revision(void)
>  	void __iomem *anatop_base;
>  	u32 rev;
>  
> -	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-anatop");
> +	if (of_machine_is_compatible("fsl,imx8mm"))
> +		np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-anatop");
> +	else if (of_machine_is_compatible("fsl,imx8mn"))
> +		np = of_find_compatible_node(NULL, NULL, "fsl,imx8mn-anatop");

Can we have this anatop compatible in imx8_soc_data, so that we may save
the call to of_machine_is_compatible()?

Shawn

> +	else
> +		np = NULL;
>  	if (!np)
>  		return 0;
>  
> @@ -79,9 +84,15 @@ static const struct imx8_soc_data imx8mm_soc_data = {
>  	.soc_revision = imx8mm_soc_revision,
>  };
>  
> +static const struct imx8_soc_data imx8mn_soc_data = {
> +	.name = "i.MX8MN",
> +	.soc_revision = imx8mm_soc_revision,
> +};
> +
>  static const struct of_device_id imx8_soc_match[] = {
>  	{ .compatible = "fsl,imx8mq", .data = &imx8mq_soc_data, },
>  	{ .compatible = "fsl,imx8mm", .data = &imx8mm_soc_data, },
> +	{ .compatible = "fsl,imx8mn", .data = &imx8mn_soc_data, },
>  	{ }
>  };
>  
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
