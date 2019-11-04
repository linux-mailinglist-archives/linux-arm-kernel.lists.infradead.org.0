Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4A1ED819
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 04:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ls4n9JQ5yjtvaWO85sn6uhWdMaLPxn/jP+7Kb11pqQs=; b=LvQG5HMd8G8Btj
	3kKPrBnmgAV841RvV5/Dq5BbkRsFjTjXhcbQuVQsPdTy+UdX67VAx+7V6u3loHL3I3PBrwlV9aLol
	pZQ/WaD6WKb79LKNDvpadFTA2G5P837byakq3zWkzXz2RReosQUWn5tVjk/SrfJO8Qi/WFhO2dRSI
	WY0klaFte+KddhN228/EV6B2Hy4BcPSPjSx4wcaeDa6Ofl1aUDZZqeizHCtM3h+xsi81JHXktabTj
	HxOABeewsbTYfZF69y3zOwYjgtr7ZEkZjji7QEVPjVSHy7Y9A6kmh3ycQgM7Qe9ResLVGwxl9XgIE
	WgclVJDRWDs2f85Dm6Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRT9K-0000Wu-05; Mon, 04 Nov 2019 03:35:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRT9C-0000WO-1p
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 03:35:19 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC63421D71;
 Mon,  4 Nov 2019 03:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572838516;
 bh=iroKnUAok1Sq+8IyTw9Vhovpm9pbCGUI2JQm6NnkhUc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EG4h5Lmhdnmbiok+eCDZCOhYwY3Ani6UWoGnCu5vTTH8bwZ7VrcLAvy2D4aliWTK3
 N6AzpCev/yPfYXgYN4ZKkPhX82PgO/KgkT6bd7wPhpKR/+v8dZ1drlhpnhLwsHQHZw
 D0kcV/hZFdY8YmkA45qpIOLhGG8hJFjQptpuk+2U=
Date: Mon, 4 Nov 2019 11:34:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2] soc: imx8mq: Read SOC revision from TF-A
Message-ID: <20191104033451.GN24620@dragon>
References: <681dff4de9d3d0cb045b0a5883b02c04bbd2486f.1572391028.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <681dff4de9d3d0cb045b0a5883b02c04bbd2486f.1572391028.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_193518_142007_C751863C 
X-CRM114-Status: GOOD (  22.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 01:17:39AM +0200, Leonard Crestez wrote:
> SOC revision on older imx8mq is not available in fuses so on anything
> other than B1 current code just reports "unknown".
> 
> TF-A already handles this by parsing the ROM and exposes the value
> through a SMC call. Call this instead of reimplementing the workaround
> in the kernel itself.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> 
> ---
> Changes since v1:
> * Add ifdef to fix build on ARM older than v7 (kbuild robot)
> Link to v1: https://patchwork.kernel.org/patch/11183813/
> 
> Alternatively a CONFIG_IMX8M_SOC config option could be created which
> depends on HAVE_ARM_SMCCC but that also requires defconfig changes.
> 
>  drivers/soc/imx/soc-imx8.c | 32 +++++++++++++++++++++++++++++---
>  1 file changed, 29 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
> index fcbf745a9971..6a2916664438 100644
> --- a/drivers/soc/imx/soc-imx8.c
> +++ b/drivers/soc/imx/soc-imx8.c
> @@ -7,17 +7,20 @@
>  #include <linux/io.h>
>  #include <linux/of_address.h>
>  #include <linux/slab.h>
>  #include <linux/sys_soc.h>
>  #include <linux/platform_device.h>
> +#include <linux/arm-smccc.h>
>  #include <linux/of.h>
>  
>  #define REV_B1				0x21
>  
>  #define IMX8MQ_SW_INFO_B1		0x40
>  #define IMX8MQ_SW_MAGIC_B1		0xff0055aa
>  
> +#define IMX_SIP_GET_SOC_INFO		0xc2000006
> +
>  #define OCOTP_UID_LOW			0x410
>  #define OCOTP_UID_HIGH			0x420
>  
>  /* Same as ANADIG_DIGPROG_IMX7D */
>  #define ANADIG_DIGPROG_IMX8MM	0x800
> @@ -27,10 +30,26 @@ struct imx8_soc_data {
>  	u32 (*soc_revision)(void);
>  };
>  
>  static u64 soc_uid;
>  
> +#ifdef CONFIG_HAVE_ARM_SMCCC
> +static u32 imx8mq_soc_revision_from_atf(void)
> +{
> +	struct arm_smccc_res res;
> +
> +	arm_smccc_smc(IMX_SIP_GET_SOC_INFO, 0, 0, 0, 0, 0, 0, 0, &res);
> +
> +	if (res.a0 == SMCCC_RET_NOT_SUPPORTED)
> +		return 0;
> +	else
> +		return res.a0 & 0xff;
> +}
> +#else
> +static u32 imx8mq_soc_revision_from_atf(void) { return 0; };

We may want to have an inline for it.  I added it and applied the patch.

Shawn

> +#endif
> +
>  static u32 __init imx8mq_soc_revision(void)
>  {
>  	struct device_node *np;
>  	void __iomem *ocotp_base;
>  	u32 magic;
> @@ -41,13 +60,20 @@ static u32 __init imx8mq_soc_revision(void)
>  		goto out;
>  
>  	ocotp_base = of_iomap(np, 0);
>  	WARN_ON(!ocotp_base);
>  
> -	magic = readl_relaxed(ocotp_base + IMX8MQ_SW_INFO_B1);
> -	if (magic == IMX8MQ_SW_MAGIC_B1)
> -		rev = REV_B1;
> +	/*
> +	 * SOC revision on older imx8mq is not available in fuses so query
> +	 * the value from ATF instead.
> +	 */
> +	rev = imx8mq_soc_revision_from_atf();
> +	if (!rev) {
> +		magic = readl_relaxed(ocotp_base + IMX8MQ_SW_INFO_B1);
> +		if (magic == IMX8MQ_SW_MAGIC_B1)
> +			rev = REV_B1;
> +	}
>  
>  	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH);
>  	soc_uid <<= 32;
>  	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW);
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
