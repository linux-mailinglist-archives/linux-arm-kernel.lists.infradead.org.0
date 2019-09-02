Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D91A5A24
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 17:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6UoSt6hFVT/CTakaEHyX7PHsxdENCbyN//6OYDx4V3w=; b=V/XAbMVN7t8bnp
	EbEw/4SgkC1eGfDxZTdN7rMzuJ+YcJbNhjRo4L+o54ZYtsuAozYQvg/+4buKbPSl6oB0v9U7FScCI
	5nJWObGTlhSy73qUiBniMeKBlPzgotWiazVN/h0DAnth56+rv9DLzkkTWwBByiidsTOhqA6PJSLuC
	ex2ole010lC3Jqv6p/Hg64L0RPnQNqSPegJDhpR2JT4mPel/gcn2gMqrS+YXPHy4JCjoir9aF7s6d
	rDyZiOJ+bxfbfUrZxG4uO7KtF5/FQ71i/cWpJEVNzssrHBvACgGID1+xmPNh8G0k3O8gp11I5+1o2
	/a66nprjhJnPxT8eC4Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4ntT-0007E6-Kk; Mon, 02 Sep 2019 15:05:23 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4ntI-0007C1-OR
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 15:05:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1567436707;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=OylVPWNT4QCeYh4e0/iiWwhfYQsrXrzamjILi7qcFfE=;
 b=qUnvt/N54E0kxwm51vBsZQ/H0GBjLUrWXijVoUSjfpBCUEhPiC/CBMKhcA21FHTxSX
 fw/LQc5vUNNFCq7q118DmIgKloMZ7/C4eBSLMV9sfqh0PfrMt1UIKmnSMUHleXwr+bQa
 mE3q65UUusvBvfIgJt8pX85u79FIsCdZF4ICw1WJtftr1XnuGCjPpylH39XbWiRDyjc5
 W3VagooYTbJzlfg06O2xA2yf3tN1BZnz/KTi0gSTa/gUQUeWiSvknd6v9+aTvcpM594o
 W7SXvAUfQdRXXB7MgAja3PqZk9au+/dq7my9++UL94q7kaGWNqAF1nLlWYlrWCc38zPk
 9+Pg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u26zEIdhPgpHQiVSwjMaBCsF"
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 44.27.0 DYNA|AUTH)
 with ESMTPSA id 6021c6v82F4wQas
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Mon, 2 Sep 2019 17:04:58 +0200 (CEST)
Date: Mon, 2 Sep 2019 17:04:51 +0200
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2] drm/mcde: Fix DSI transfers
Message-ID: <20190902150451.GA10619@gerhold.net>
References: <20190831075013.21993-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190831075013.21993-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_080513_384963_E874F902 
X-CRM114-Status: GOOD (  21.93  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:9 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kbuild test robot <lkp@intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 31, 2019 at 09:50:13AM +0200, Linus Walleij wrote:
> There were bugs in the DSI transfer (read and write) function
> as it was only tested with displays ever needing a single byte
> to be written. Fixed it up and tested so we can now write
> messages of up to 16 bytes and read up to 4 bytes from the
> display.
> 
> Tested with a Sony ACX424AKP display: this display now self-
> identifies and can control backlight in command mode.
> 
> Cc: Stephan Gerhold <stephan@gerhold.net>
> Reported-by: kbuild test robot <lkp@intel.com>
> Fixes: 5fc537bfd000 ("drm/mcde: Add new driver for ST-Ericsson MCDE")
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v1->v2:
> - Fix a print modifier for dev_err() found by the build robot.
> ---
>  drivers/gpu/drm/mcde/mcde_dsi.c | 70 ++++++++++++++++++++++-----------
>  1 file changed, 47 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mcde/mcde_dsi.c b/drivers/gpu/drm/mcde/mcde_dsi.c
> index 07f7090d08b3..90659d190d78 100644
> --- a/drivers/gpu/drm/mcde/mcde_dsi.c
> +++ b/drivers/gpu/drm/mcde/mcde_dsi.c
> @@ -178,22 +178,26 @@ static ssize_t mcde_dsi_host_transfer(struct mipi_dsi_host *host,
>  	const u32 loop_delay_us = 10; /* us */
>  	const u8 *tx = msg->tx_buf;
>  	u32 loop_counter;
> -	size_t txlen;
> +	size_t txlen = msg->tx_len;
> +	size_t rxlen = msg->rx_len;
>  	u32 val;
>  	int ret;
>  	int i;
>  
> -	txlen = msg->tx_len;
> -	if (txlen > 12) {
> +	if (txlen > 16) {
>  		dev_err(d->dev,
> -			"dunno how to write more than 12 bytes yet\n");
> +			"dunno how to write more than 16 bytes yet\n");
> +		return -EIO;
> +	}
> +	if (rxlen > 4) {
> +		dev_err(d->dev,
> +			"dunno how to read more than 4 bytes yet\n");
>  		return -EIO;
>  	}
>  
>  	dev_dbg(d->dev,
> -		"message to channel %d, %zd bytes",
> -		msg->channel,
> -		txlen);
> +		"message to channel %d, write %zd bytes read %zd bytes\n",
> +		msg->channel, txlen, rxlen);
>  
>  	/* Command "nature" */
>  	if (MCDE_DSI_HOST_IS_READ(msg->type))
> @@ -210,9 +214,7 @@ static ssize_t mcde_dsi_host_transfer(struct mipi_dsi_host *host,
>  	if (mipi_dsi_packet_format_is_long(msg->type))
>  		val |= DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_LONGNOTSHORT;
>  	val |= 0 << DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_ID_SHIFT;
> -	/* Add one to the length for the MIPI DCS command */
> -	val |= txlen
> -		<< DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_SIZE_SHIFT;
> +	val |= txlen << DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_SIZE_SHIFT;
>  	val |= DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_LP_EN;
>  	val |= msg->type << DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_SHIFT;
>  	writel(val, d->regs + DSI_DIRECT_CMD_MAIN_SETTINGS);
> @@ -249,17 +251,36 @@ static ssize_t mcde_dsi_host_transfer(struct mipi_dsi_host *host,
>  	writel(1, d->regs + DSI_DIRECT_CMD_SEND);
>  
>  	loop_counter = 1000 * 1000 / loop_delay_us;
> -	while (!(readl(d->regs + DSI_DIRECT_CMD_STS) &
> -		 DSI_DIRECT_CMD_STS_WRITE_COMPLETED)
> -	       && --loop_counter)
> -		usleep_range(loop_delay_us, (loop_delay_us * 3) / 2);
> -
> -	if (!loop_counter) {
> -		dev_err(d->dev, "DSI write timeout!\n");
> -		return -ETIME;
> +	if (MCDE_DSI_HOST_IS_READ(msg->type)) {
> +		/* Read command */
> +		while (!(readl(d->regs + DSI_DIRECT_CMD_STS) &
> +			 (DSI_DIRECT_CMD_STS_READ_COMPLETED |
> +			  DSI_DIRECT_CMD_STS_READ_COMPLETED_WITH_ERR))
> +		       && --loop_counter)
> +			usleep_range(loop_delay_us, (loop_delay_us * 3) / 2);
> +		if (!loop_counter) {
> +			dev_err(d->dev, "DSI write timeout!\n");

"DSI read timeout!" might be more apppropriate here?

> +			return -ETIME;
> +		}
> +	} else {
> +		/* Writing only */
> +		while (!(readl(d->regs + DSI_DIRECT_CMD_STS) &
> +			 DSI_DIRECT_CMD_STS_WRITE_COMPLETED)
> +		       && --loop_counter)
> +			usleep_range(loop_delay_us, (loop_delay_us * 3) / 2);
> +
> +		if (!loop_counter) {
> +			dev_err(d->dev, "DSI write timeout!\n");
> +			return -ETIME;
> +		}
>  	}
>  
>  	val = readl(d->regs + DSI_DIRECT_CMD_STS);
> +	if (val & DSI_DIRECT_CMD_STS_READ_COMPLETED_WITH_ERR) {
> +		dev_err(d->dev, "read completed with error\n");
> +		writel(1, d->regs + DSI_DIRECT_CMD_RD_INIT);
> +		return -EIO;
> +	}
>  	if (val & DSI_DIRECT_CMD_STS_ACKNOWLEDGE_WITH_ERR_RECEIVED) {
>  		val >>= DSI_DIRECT_CMD_STS_ACK_VAL_SHIFT;
>  		dev_err(d->dev, "error during transmission: %04x\n",
> @@ -269,10 +290,7 @@ static ssize_t mcde_dsi_host_transfer(struct mipi_dsi_host *host,
>  
>  	if (!MCDE_DSI_HOST_IS_READ(msg->type)) {
>  		/* Return number of bytes written */
> -		if (mipi_dsi_packet_format_is_long(msg->type))
> -			ret = 4 + txlen;
> -		else
> -			ret = 4;
> +		ret = txlen;
>  	} else {
>  		/* OK this is a read command, get the response */
>  		u32 rdsz;
> @@ -282,7 +300,13 @@ static ssize_t mcde_dsi_host_transfer(struct mipi_dsi_host *host,
>  		rdsz = readl(d->regs + DSI_DIRECT_CMD_RD_PROPERTY);
>  		rdsz &= DSI_DIRECT_CMD_RD_PROPERTY_RD_SIZE_MASK;
>  		rddat = readl(d->regs + DSI_DIRECT_CMD_RDDAT);
> -		for (i = 0; i < 4 && i < rdsz; i++)
> +		if (rdsz < rxlen) {
> +			dev_err(d->dev, "read error, requested %zd got %d\n",
> +				msg->rx_len, rdsz);

Using rxlen instead of msg->rx_len would be more consistent
with the if condition.

These are just minor nitpicks, so with or without changes:
Reviewed-by: Stephan Gerhold <stephan@gerhold.net>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
