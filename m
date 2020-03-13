Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB2E1850D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 22:17:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTYwY+SUyG+Fz0ZD/qzqdoI9iMxA18fI1CWDCQ1JdFY=; b=QmUjdK5pUc7XN9
	bkX3M7wdcFC0OJTk2LSMmfPRvU/G90TbngQ8nFubxRkFklyMbkWYVZES448lsGHPDldf+Lh/DpJeu
	eSMTzMBRnPxjNEkClPxERW/plO+oigtucDyvtZm38So8TAeuaNrdXL2ACaV7V+AF567yRiNVJlF9T
	zSB8X92PjCRwD3z+BVzub33rVXMNj+mLsx2ztmJhPe3rzYyosqMSmrfAGhLovSB42yb0escHNs2hM
	zRoUQXrPBGrvcKoN/qL96YOGA7wyeqZaJRqeI7Qnrow5E6LSNI5U3ZdG6Hel9DqqYdquSaRY874Qy
	nkQmfD0qsG1LF3r9KYDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCrg0-0001DL-6i; Fri, 13 Mar 2020 21:17:04 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCrfs-00018x-Ad
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 21:16:57 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8F4B52D6;
 Fri, 13 Mar 2020 22:16:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1584134208;
 bh=fxHorn7UuM1fDLI8Lt271tTqm19pZ50gn9WZ1vomREk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jrkQANpqeapfaL9IR9Njcr1VtSfnoFE2jelP11Ih3QgxWSSROriCC9L2GLM4YSzEq
 uMwmqth3Dz5ezP297vQaVogADiGPFXbsjFGLMEjgp6JJrt9fwiiUYgQK7KQThkriPu
 4O9OE75PAOWovQfBEyDkNvQY5m9REWdC9USeBQaY=
Date: Fri, 13 Mar 2020 23:16:44 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v3 2/4] media: i2c: ov5645: Switch to assigned-clock-rates
Message-ID: <20200313211644.GK4751@pendragon.ideasonboard.com>
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584133954-6953-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_141656_519111_6F5DDB55 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabakhar,

Thank you for the patch.

On Fri, Mar 13, 2020 at 09:12:32PM +0000, Lad Prabhakar wrote:
> This patch switches to assigned-clock-rates for specifying the clock rate.
> The clk-conf.c internally handles setting the clock rate when
> assigned-clock-rates is passed.
> 
> The driver now sets the clock frequency only if the deprecated property
> clock-frequency is defined instead assigned-clock-rates, this is to avoid
> breakage with existing DT binaries.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  drivers/media/i2c/ov5645.c | 21 +++++++++++----------
>  1 file changed, 11 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/media/i2c/ov5645.c b/drivers/media/i2c/ov5645.c
> index a6c17d1..4fbabf3 100644
> --- a/drivers/media/i2c/ov5645.c
> +++ b/drivers/media/i2c/ov5645.c
> @@ -1055,6 +1055,7 @@ static int ov5645_probe(struct i2c_client *client)
>  	struct device_node *endpoint;
>  	struct ov5645 *ov5645;
>  	u8 chip_id_high, chip_id_low;
> +	bool set_clk = false;

This isn't used.

>  	unsigned int i;
>  	u32 xclk_freq;
>  	int ret;
> @@ -1094,12 +1095,18 @@ static int ov5645_probe(struct i2c_client *client)
>  		return PTR_ERR(ov5645->xclk);
>  	}
>  
> -	ret = of_property_read_u32(dev->of_node, "clock-frequency", &xclk_freq);
> -	if (ret) {
> -		dev_err(dev, "could not get xclk frequency\n");
> -		return ret;
> +	/* check if deprecated property clock-frequency is defined */
> +	ret = of_property_read_u32(dev->of_node, "clock-frequency",
> +				   &xclk_freq);
> +	if (!ret) {
> +		ret = clk_set_rate(ov5645->xclk, xclk_freq);
> +		if (ret) {
> +			dev_err(dev, "could not set xclk frequency\n");
> +			return ret;
> +		}
>  	}
>  
> +	xclk_freq = clk_get_rate(ov5645->xclk);

I would move this line below the comment.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

>  	/* external clock must be 24MHz, allow 1% tolerance */
>  	if (xclk_freq < 23760000 || xclk_freq > 24240000) {
>  		dev_err(dev, "external clock frequency %u is not supported\n",
> @@ -1107,12 +1114,6 @@ static int ov5645_probe(struct i2c_client *client)
>  		return -EINVAL;
>  	}
>  
> -	ret = clk_set_rate(ov5645->xclk, xclk_freq);
> -	if (ret) {
> -		dev_err(dev, "could not set xclk frequency\n");
> -		return ret;
> -	}
> -
>  	for (i = 0; i < OV5645_NUM_SUPPLIES; i++)
>  		ov5645->supplies[i].supply = ov5645_supply_name[i];
>  

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
