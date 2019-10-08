Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C319CF8B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 13:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mkCZR5NcyKHh5YzzjGRpfe0wDtaEPjxoT0R6WXVgbPk=; b=p8TNuv+j7eBfxm
	Y4ot2UR2p5KTCgc6rgR9G4kVmXPncSoAdg5Tw4nODKXCQIgWQv+VYZ97xxr4FH1rWra9PKWTHwgH0
	06I99g9cjxQPa0dUbfiQf7JqTCE2b+T4Qexnr77O/l10+lax2BfqOLv7Fm4WJP/9gHEFZZALxNyvZ
	JZeww9tvA4u+vii7gnjGLJBhvT9oljdQypVfe2saC/kjE5Q+LCBIQYS/K/+Kpdlu30JZFH1aperKK
	NmU8F6QeVVBrx0wGIFrM8Fxp3dCEboN2tltTgaTR7j6wpyIeczlYTVWMnH3pcOkAnD7tjHdAu9u7c
	r8KM7NWd6LupetpeAPSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHnqn-0002yU-1R; Tue, 08 Oct 2019 11:40:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHnqf-0002y9-FO
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 11:40:14 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iHnqa-0005id-GD; Tue, 08 Oct 2019 13:40:08 +0200
Message-ID: <1570534808.18914.2.camel@pengutronix.de>
Subject: Re: [PATCHv7 3/9] soc: ti: omap-prm: poll for reset complete during
 de-assert
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Tero Kristo <t-kristo@ti.com>, linux-omap@vger.kernel.org, 
 ssantosh@kernel.org
Date: Tue, 08 Oct 2019 13:40:08 +0200
In-Reply-To: <20191008071913.28740-4-t-kristo@ti.com>
References: <20191008071913.28740-1-t-kristo@ti.com>
 <20191008071913.28740-4-t-kristo@ti.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_044013_512296_467F86AC 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: tony@atomide.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-10-08 at 10:19 +0300, Tero Kristo wrote:
> Poll for reset completion status during de-assertion of reset, otherwise
> the IP in question might be accessed before it has left reset properly.
> 
> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> ---
>  drivers/soc/ti/omap_prm.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
> index ab0b66ad715d..96fa2aad9b93 100644
> --- a/drivers/soc/ti/omap_prm.c
> +++ b/drivers/soc/ti/omap_prm.c
> @@ -153,6 +153,18 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
>  	writel_relaxed(v, reset->prm->base + reset->prm->data->rstctrl);
>  	spin_unlock_irqrestore(&reset->lock, flags);
>  
> +	if (!has_rstst)
> +		return 0;
> +
> +	/* wait for the status to be set */
> +	ret = readl_relaxed_poll_timeout(reset->prm->base +
> +					 reset->prm->data->rstst,
> +					 v, v & BIT(st_bit), 1,
> +					 OMAP_RESET_MAX_WAIT);
> +	if (ret)
> +		pr_err("%s: timedout waiting for %s:%lu\n", __func__,
> +		       reset->prm->data->name, id);
> +
>  	return 0;
>  }
>  

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
