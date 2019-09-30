Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D9FC1C3A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 09:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJcHmNXPmqBAamPylHnWh+twu24HT1kt8ucJW26LBSA=; b=W8nlkmOORM2Dkp
	Cxn2ZyN/B2xm/MKZJeXaHXOKAaVq4u22Gy57WqLAKKbv6kyn998FTpGUa0DaeJYT+TTf/G1C9sbNh
	UxTadVUijpt9KsgqmgJ4uGySePQyyYr1kLGkler2h4oVj20BsSlnZ7h5ffPrhydI8NyJ+XJuuT4CR
	vJ3yVhfanL6n/ETnMILmgm3HFRGqUglsNAEHb+tYWgldyL+RRKkeB7FvHjVHrEAR68frezzwH33Gk
	H/n57yTMyx18sTrqTAwKBefkdfKGiSNaEiHZBN3kVmxcI8zXbPdC//pFmhqGmXWP8fYX8VAdddvnh
	Py9dSnfC8yqF5nji7iRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqMR-0007go-Hb; Mon, 30 Sep 2019 07:44:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqMI-0007gO-VZ
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 07:44:40 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iEqLy-0006Cg-VU; Mon, 30 Sep 2019 09:44:18 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iEqLs-0000i1-B9; Mon, 30 Sep 2019 09:44:12 +0200
Date: Mon, 30 Sep 2019 09:44:12 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Yizhuo <yzhai003@ucr.edu>
Subject: Re: [PATCH] iio: adc: imx25-gcq: Variable could be uninitialized if
 regmap_read() fails
Message-ID: <20190930074412.up4k6zdus4y7u4xb@pengutronix.de>
References: <20190928002852.28329-1-yzhai003@ucr.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190928002852.28329-1-yzhai003@ucr.edu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:37:13 up 135 days, 13:55, 87 users,  load average: 0.06, 0.15,
 0.15
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_004439_013967_D7EE6674 
X-CRM114-Status: GOOD (  18.82  )
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
Cc: csong@cs.ucr.edu, Kate Stewart <kstewart@linuxfoundation.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, zhiyunq@cs.ucr.edu,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yizhuo,

thanks for your patch.

On 19-09-27 17:28, Yizhuo wrote:
> In function mx25_gcq_irq(), local variable "stats" could
> be uninitialized if function regmap_read() returns -EINVAL.
> However, this value is used in if statement, which is
> potentially unsafe. The same case applied to the variable
> "data" in function mx25_gcq_get_raw_value() in the same file.

IMHO the commit header should be something like: "iio: adc: imx25-gcq:
fix uninitialized variable usage"...

and please add a fixes tag.

> 
> Signed-off-by: Yizhuo <yzhai003@ucr.edu>
> ---
>  drivers/iio/adc/fsl-imx25-gcq.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/adc/fsl-imx25-gcq.c b/drivers/iio/adc/fsl-imx25-gcq.c
> index df19ecae52f7..dbf3e8e85aba 100644
> --- a/drivers/iio/adc/fsl-imx25-gcq.c
> +++ b/drivers/iio/adc/fsl-imx25-gcq.c
> @@ -74,7 +74,10 @@ static irqreturn_t mx25_gcq_irq(int irq, void *data)
>  	struct mx25_gcq_priv *priv = data;
>  	u32 stats;
>  
> -	regmap_read(priv->regs, MX25_ADCQ_SR, &stats);
> +	int ret = regmap_read(priv->regs, MX25_ADCQ_SR, &stats);

Please don't do this. First declare the variable and then use it.

Regards,
  Marco

> +
> +	if (ret)
> +		return ret;
>  
>  	if (stats & MX25_ADCQ_SR_EOQ) {
>  		regmap_update_bits(priv->regs, MX25_ADCQ_MR,
> @@ -121,7 +124,10 @@ static int mx25_gcq_get_raw_value(struct device *dev,
>  		return -ETIMEDOUT;
>  	}
>  
> -	regmap_read(priv->regs, MX25_ADCQ_FIFO, &data);
> +	int ret = regmap_read(priv->regs, MX25_ADCQ_FIFO, &data);
> +
> +	if (ret)
> +		return ret;
>  
>  	*val = MX25_ADCQ_FIFO_DATA(data);
>  
> -- 
> 2.17.1
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
