Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD4118B9C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 15:50:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXyALF5R7ZKLe5m4G/SoIqUIZ6YwxEggD4UKOBJyGO0=; b=jfzfIlN05+Hbdx
	5sXMLLrEIaHsDZtvim98/MzA1EBdh/V3CuZ0Sso+RJSifNDPaLKM46x37WfvUjdz7wCqTQHT8sJhc
	79nPjMSMgOyEkr/fxdPxI4q6eJRWJZ/pm+Z1J0+ecFc2VC9jFx57GVu/WgLCNyLrIfgjgsA2TLuVt
	KHz+VSrmUhkzzGbvu1GSbSOkZQJAx8lG5S3t8su4qTkBTSQ5+2lud/Cl9PwYvCPWPfUe7eOvhPYTa
	uSsSSMDsKcVS/yOYlj6ZaMNBSRizJS7eVyPKNDpfjvOz2wNjS6KbSn1w2XHPXTI2L2BGv2QRNXpX2
	gsJtmyDvyVzLvuXHMWLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEwVF-00021g-2z; Thu, 19 Mar 2020 14:50:33 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEwV6-000215-IY
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 14:50:25 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id A5D2AA53;
 Thu, 19 Mar 2020 15:50:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1584629417;
 bh=Pby7Rfq98gCjrIQMddd1yja9dLfow5voxs2h3guV+As=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c/jB37cddxIH58tafwLvJabTiL6v7j8NXqUDy/OZfrKwJ5UmZYFYTKUgxkadrlMD+
 oXxrR2AZLl9dopTWTs2TaZczsuCSoZbZR6/N4YkrMlNAOp5huLu0H1288VEg2YJhsQ
 BRnZmQnWGxtddFyZ652yVvb07WU+SF2oFyagIiMw=
Date: Thu, 19 Mar 2020 16:50:12 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v4 3/5] media: i2c: ov5645: Increase tolerance of
 external clock frequency
Message-ID: <20200319145012.GB14585@pendragon.ideasonboard.com>
References: <1584620363-2255-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584620363-2255-4-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584620363-2255-4-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_075024_760745_FE28EBFA 
X-CRM114-Status: GOOD (  20.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 linux-kernel@vger.kernel.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

Thank you for the patch.

On Thu, Mar 19, 2020 at 12:19:21PM +0000, Lad Prabhakar wrote:
> While testing on Renesas RZ/G2E platform, noticed the clock frequency to
> be 24242424 as a result the probe failed.
> 
> This patch increases the tolerance to 5% so that it avoids patching for
> new platforms and it warns the users if the frequency is not within the
> range and continue further in the probe instead of returning failure.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  drivers/media/i2c/ov5645.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/media/i2c/ov5645.c b/drivers/media/i2c/ov5645.c
> index e298acdadeef..52a185ed4368 100644
> --- a/drivers/media/i2c/ov5645.c
> +++ b/drivers/media/i2c/ov5645.c
> @@ -1105,13 +1105,11 @@ static int ov5645_probe(struct i2c_client *client)
>  		}
>  	}
>  
> -	/* external clock must be 24MHz, allow 1% tolerance */
> +	/* ideally external clock must be 24MHz, allow 5% tolerance */
>  	xclk_freq = clk_get_rate(ov5645->xclk);
> -	if (xclk_freq < 23760000 || xclk_freq > 24240000) {
> -		dev_err(dev, "external clock frequency %u is not supported\n",
> -			xclk_freq);
> -		return -EINVAL;
> -	}
> +	if (xclk_freq < 22800000 || xclk_freq > 25200000)
> +		dev_warn(dev, "external clock frequency is set to %u, sensor might misbehave\n",
> +			 xclk_freq);

The code looks good to me. You may want to mention in the commit subject
that the probe error is turned into a warning, but that may be hard to
do on a single line. Splitting this in two patches could be best, but is
not worth a new version if it's the only change required. If more
changes are required, you can consider it.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

>  	for (i = 0; i < OV5645_NUM_SUPPLIES; i++)
>  		ov5645->supplies[i].supply = ov5645_supply_name[i];

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
