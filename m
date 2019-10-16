Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C38ED8C24
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 11:07:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KlSg4JrNjlqMqQqIAU2z3Ul+TAInUXJZ4yp49AtTKw4=; b=sJMfAb6LjHY/dM
	QJM8h3erFOpyLjfYr83gCVsfRR7GhvWa0cRU8ib+7nhp4eHWXJEqAAIJH0pnTxrRy9AY6GysEOoIn
	onQGdgq6UzXnGZFmkPxnRw84q12ElTWdKR1wmw4jnkaTZ7Pbp6kBsQMi9uoZmaUVt/6juVo2B9URe
	gKieRz105HEDTHf+7RMjggrAMLqz4fiO1v0b5a/UoW3qmy+IEFaNKGQ0Z9pPckvioalsgYWA8MIfg
	ZNTGA/i5Mypb73PGV/fx4T6FLD86nDFC39DiQul6L0rhsTRg7vFMtk8Fhsdr8UeLaDQWBGiegyNzL
	nqm8puE0j09vI2cqWuhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKfGm-0002to-Pf; Wed, 16 Oct 2019 09:07:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKfGa-0002qZ-44
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 09:06:49 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iKfGO-0005Bp-Li; Wed, 16 Oct 2019 11:06:36 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iKfGG-00081t-Jv; Wed, 16 Oct 2019 11:06:28 +0200
Date: Wed, 16 Oct 2019 11:06:28 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH v2] media: imx7-mipi-csis: Add a check for
 devm_regulator_get
Message-ID: <20191016090628.7l5u4ytdqr2jlasg@pengutronix.de>
References: <20191015135915.6530-1-hslester96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015135915.6530-1-hslester96@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:05:27 up 151 days, 15:23, 101 users,  load average: 0.19, 0.20,
 0.10
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_020648_167106_85BCD44A 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rui Miguel Silva <rmfrfs@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chuhong,

On 19-10-15 21:59, Chuhong Yuan wrote:
> devm_regulator_get may return an error but mipi_csis_phy_init misses
> a check for it.
> This may lead to problems when regulator_set_voltage uses the unchecked
> pointer.
> This patch adds a check for devm_regulator_get to avoid potential risk.
> 
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
> Changes in v2:
>   - Add a check in mipi_csis_probe for the modified mipi_csis_phy_init.

Did you miss the check for -EPROBE_DEFER?

Regards,
  Marco

> 
>  drivers/staging/media/imx/imx7-mipi-csis.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index 73d8354e618c..e8a6acaa969e 100644
> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> @@ -350,6 +350,8 @@ static void mipi_csis_sw_reset(struct csi_state *state)
>  static int mipi_csis_phy_init(struct csi_state *state)
>  {
>  	state->mipi_phy_regulator = devm_regulator_get(state->dev, "phy");
> +	if (IS_ERR(state->mipi_phy_regulator))
> +		return PTR_ERR(state->mipi_phy_regulator);
>  
>  	return regulator_set_voltage(state->mipi_phy_regulator, 1000000,
>  				     1000000);
> @@ -966,7 +968,10 @@ static int mipi_csis_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> -	mipi_csis_phy_init(state);
> +	ret = mipi_csis_phy_init(state);
> +	if (ret < 0)
> +		return ret;
> +
>  	mipi_csis_phy_reset(state);
>  
>  	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -- 
> 2.20.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
