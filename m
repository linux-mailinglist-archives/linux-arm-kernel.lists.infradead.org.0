Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C7C1250F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 19:48:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rlkRbhX1v+eZbe6sA7VnQsBYc0RwXZnKU4G1Ho+1mHE=; b=nIoEHfnjFup3dw
	bMRNX+PGy33HnndyLdjt0M9tGEddtHZy3uFaE9KXMlUzRdxklAKLyhmwTB4obYohQrT70Q2PeYGg6
	RXvJaTaWlN8OjkEFzMlemMmEe430v749wnEefdnVN/mfPtQHiN0rvnFGGrdnPrGT2b3WJqNBtpz/8
	4/fU70kc6b1WrvdmLNl4Fj+apaFIyZZmyGaxj72frxD5nTTMje9/5WLWjQ7EjiuVQ40A5jvRfPnyc
	vFACEeDLGpWRpa1vzM7fNWMjtbHYe+o4aHL6jkeSTu9FGwET47kXJXyBp96RJfx3XHqTZH+nsPCnU
	qjS6ig4vohtWbggkth0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iheN0-0007Om-GY; Wed, 18 Dec 2019 18:48:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iheMs-0007Nx-2I
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 18:48:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8288D1FB;
 Wed, 18 Dec 2019 10:48:16 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6D5B93F67D;
 Wed, 18 Dec 2019 10:48:14 -0800 (PST)
Date: Wed, 18 Dec 2019 18:48:09 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v5 8/8] firmware: arm_scpi: Support unidirectional
 mailbox channels
Message-ID: <20191218184809.GA14599@bogus>
References: <20191215042455.51001-1-samuel@sholland.org>
 <20191215042455.51001-9-samuel@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191215042455.51001-9-samuel@sholland.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_104818_194903_BEEC0CA7 
X-CRM114-Status: GOOD (  22.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ondrej Jirman <megous@megous.com>,
 linux-sunxi@googlegroups.com, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Dec 14, 2019 at 10:24:55PM -0600, Samuel Holland wrote:
> Some mailbox controllers have only unidirectional channels, so we need a
> pair of them for each SCPI channel. If a mbox-names property is present,
> look for "rx" and "tx" mbox channels; otherwise, the existing behavior
> is preserved, and a single mbox channel is used for each SCPI channel.
>

I need to look at the bindings again, but I think you must update it.

> Note that since the mailbox framework only supports a single phandle
> with each name (mbox_request_channel_byname always returns the first
> one), this new mode only supports a single SCPI channel.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  drivers/firmware/arm_scpi.c | 58 +++++++++++++++++++++++++++++--------
>  1 file changed, 46 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/firmware/arm_scpi.c b/drivers/firmware/arm_scpi.c
> index a80c331c3a6e..36ff9dd8d0fa 100644
> --- a/drivers/firmware/arm_scpi.c
> +++ b/drivers/firmware/arm_scpi.c
> @@ -231,7 +231,8 @@ struct scpi_xfer {
>
>  struct scpi_chan {
>  	struct mbox_client cl;
> -	struct mbox_chan *chan;
> +	struct mbox_chan *rx_chan;
> +	struct mbox_chan *tx_chan;
>  	void __iomem *tx_payload;
>  	void __iomem *rx_payload;
>  	struct list_head rx_pending;
> @@ -505,7 +506,7 @@ static int scpi_send_message(u8 idx, void *tx_buf, unsigned int tx_len,
>  	msg->rx_len = rx_len;
>  	reinit_completion(&msg->done);
>
> -	ret = mbox_send_message(scpi_chan->chan, msg);
> +	ret = mbox_send_message(scpi_chan->tx_chan, msg);
>  	if (ret < 0 || !rx_buf)
>  		goto out;
>
> @@ -854,8 +855,13 @@ static void scpi_free_channels(void *data)
>  	struct scpi_drvinfo *info = data;
>  	int i;
>
> -	for (i = 0; i < info->num_chans; i++)
> -		mbox_free_channel(info->channels[i].chan);
> +	for (i = 0; i < info->num_chans; i++) {
> +		struct scpi_chan *pchan = &info->channels[i];
> +
> +		if (pchan->tx_chan != pchan->rx_chan)
> +			mbox_free_channel(pchan->tx_chan);
> +		mbox_free_channel(pchan->rx_chan);

I think mbox_free_channel handles !chan->cl, so just do unconditionally.

> +	}
>  }
>
>  static int scpi_remove(struct platform_device *pdev)
> @@ -903,6 +909,7 @@ static int scpi_probe(struct platform_device *pdev)
>  	struct resource res;
>  	struct device *dev = &pdev->dev;
>  	struct device_node *np = dev->of_node;
> +	bool use_mbox_names = false;
>
>  	scpi_info = devm_kzalloc(dev, sizeof(*scpi_info), GFP_KERNEL);
>  	if (!scpi_info)
> @@ -916,6 +923,14 @@ static int scpi_probe(struct platform_device *pdev)
>  		dev_err(dev, "no mboxes property in '%pOF'\n", np);
>  		return -ENODEV;
>  	}
> +	if (of_get_property(dev->of_node, "mbox-names", NULL)) {

So, for this platform, this is required and must fail if it is not found.
But instead your check here is optional and may end up populating 2
scpi channels instead of one. I would suggest to make it required and
fail for it based on some compatible, otherwise you are not checking
correctly.

Something like:
        if (of_match_device(blah_blah_of_match, &pdev->dev)) {
                use_mbox_names = true;
		count = 1;
	}


> +		use_mbox_names = true;
> +		if (count != 2) {
> +			dev_err(dev, "need exactly 2 mboxes with mbox-names\n");
> +			return -ENODEV;
> +		}
> +		count /= 2;
> +	}

Ah, OK then you must update the binding as it's different usage of mailbox. 

General query, not related to this patch: If you are in process of
implementing the firmware, I suggest to move to SCMI protocol than this
one if not too late. This specification is deprecated and no longer
updated while SCMI is actively developed and maintained. However it has
slightly different notion of tx and rx and the way the specification
commands which messages are synchronous and which can be async/delayed.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
