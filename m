Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 363611850FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 22:24:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yey+ZKG3MLUxPAuScoDYCfc1kyIj372s5TsGUnVpeuA=; b=V2NvY5LwZH5w9J
	jDYtr5uAkE5P/EoUMqE8cKznTFc+aPP3lnXCTQnFNpOubQYlX/JPLVjE44RFsVfTIZfyFh/iIfgey
	0Ris6fzA6r4RmAO7JUqoby40Nl8JfXpCdtIEiVD43nGlmzbecupqs6fwLvIo2JtsZya+HGtTnTDuC
	CtO9aEtc6RzTP55M8MY7A7g/gd3IFLqC9qUcxiCRgMT+c8qBwDD/2EyfNSNtxsMbkD5JpQBxfmLuq
	fPQhS4tqAEJMsRv1/cE8Qajt6XemwOLDmJvBxPJaJgAQBYQmvWbOIj46T4o5aoHn6z5Fr6iuhyX9u
	7R4gED69YQBDnYJ3co6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCrmg-0003pg-RE; Fri, 13 Mar 2020 21:23:58 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCrmZ-0003ob-3r
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 21:23:52 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 589F32D6;
 Fri, 13 Mar 2020 22:23:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1584134629;
 bh=IMhiV5Vz2k3pdowwWoR/Qmpwd2H11u0gvTUhvGhrkpA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cScPnew9RSEDN1y6Bo/x86i3wEKy0MJ4GhQWNbCMn/G/d8Q7+Wr/Jet/KQ1ZmdV9y
 AYjE1YhPmlrrIW0zAfFtOVVL+dI1jLg0ST/7YW0uLCu87SJvE5gu0c7+EIH6fhmMSM
 AEnyqZCGg3arV/tDA+KNWVeSmY1Z6qTa2N14cSGk=
Date: Fri, 13 Mar 2020 23:23:45 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v3 3/4] media: i2c: ov5645: Set maximum leverage of
 external clock frequency to 24480000
Message-ID: <20200313212345.GM4751@pendragon.ideasonboard.com>
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-4-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584133954-6953-4-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_142351_309950_3C257C06 
X-CRM114-Status: GOOD (  18.14  )
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

Hi Prabhakar,

Thank you for the patch.

On Fri, Mar 13, 2020 at 09:12:33PM +0000, Lad Prabhakar wrote:
> While testing on Renesas RZ/G2E platform, noticed the clock frequency to
> be 24242424 as a result the probe failed. However increasing the maximum
> leverage of external clock frequency to 24480000 fixes this issue. Since
> this difference is small enough and is insignificant set the same in the
> driver.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  drivers/media/i2c/ov5645.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/i2c/ov5645.c b/drivers/media/i2c/ov5645.c
> index 4fbabf3..b49359b 100644
> --- a/drivers/media/i2c/ov5645.c
> +++ b/drivers/media/i2c/ov5645.c
> @@ -1107,8 +1107,10 @@ static int ov5645_probe(struct i2c_client *client)
>  	}
>  
>  	xclk_freq = clk_get_rate(ov5645->xclk);
> -	/* external clock must be 24MHz, allow 1% tolerance */
> -	if (xclk_freq < 23760000 || xclk_freq > 24240000) {
> +	/* external clock must be 24MHz, allow a minimum 1% and a maximum of 2%
> +	 * tolerance

So where do these numbers come from ? I understand that 2% is what you
need to make your clock fit in the range, but why -1%/+2% instead of
-2%/+2% ? And why not 2.5 or 3% ? The sensor datasheet documents the
range of supported xvclk frequencies to be 6MHz to 54MHz. I understand
that PLL parameters depend on the clock frequency, but could they be
calculated instead of hardcoded, to avoid requiring an exact 24MHz input
frequency ?

> +	 */
> +	if (xclk_freq < 23760000 || xclk_freq > 24480000) {
>  		dev_err(dev, "external clock frequency %u is not supported\n",
>  			xclk_freq);
>  		return -EINVAL;

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
