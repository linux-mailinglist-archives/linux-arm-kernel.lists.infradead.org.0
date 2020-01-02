Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E8A12E602
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 13:07:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wMhAFDoVlCbKyM7fTXSk2HKjpqNgIpOmXJHn+XXeYxE=; b=YtjcpXqrb6UJnJ
	E9/PuoNm9Z3xMey/WAjBVjhEvXP3BvlHPdBFHM53Gx+ULnX89X77Myz4F9N+jsZy7M+vEcva9LeEL
	T0jg63X4lvBhdRLagXah0r2LMKqD0htXRHL6rzvJUhfk7l6lRZMCFkzy+K/Et7e8mThDLWca6BN+Z
	9lsjllXO0Cuftu5Uc2P3M9wJ32uCFdFV8YuiMBq/cevjBN1nwjEZJclBzX5TyqATrNq8XnH7Bhyhu
	CytNiyOSnxr2EB4bnvF3bAYmkqEoqUcFFgblLEOTg9BxvUKD4mHUMqCSzJQdK+BVAQjMDcY9CGfTy
	+Euh/frTgu+IWq1kTMpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imzFi-0003Ph-GE; Thu, 02 Jan 2020 12:06:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imzFY-0003PE-Lq
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 12:06:49 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1imzFN-0003cs-KI; Thu, 02 Jan 2020 13:06:37 +0100
Message-ID: <1cb30ea7ed8acabb02dc78f6f054be19d4b5b609.camel@pengutronix.de>
Subject: Re: [PATCH v5 3/8] mailbox: sun6i-msgbox: Add a new mailbox driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Samuel Holland <samuel@sholland.org>, Maxime Ripard
 <mripard@kernel.org>,  Chen-Yu Tsai <wens@csie.org>, Jassi Brar
 <jassisinghbrar@gmail.com>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, Mark
 Rutland <mark.rutland@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, Ondrej
 Jirman <megous@megous.com>, Vasily Khoruzhick <anarsoul@gmail.com>
Date: Thu, 02 Jan 2020 13:06:34 +0100
In-Reply-To: <20191215042455.51001-4-samuel@sholland.org>
References: <20191215042455.51001-1-samuel@sholland.org>
 <20191215042455.51001-4-samuel@sholland.org>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_040648_714184_4D7DA3C0 
X-CRM114-Status: GOOD (  15.77  )
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2019-12-14 at 22:24 -0600, Samuel Holland wrote:
> Allwinner sun6i, sun8i, sun9i, and sun50i SoCs contain a hardware
> message box used for communication between the ARM CPUs and the ARISC
> management coprocessor. This mailbox contains 8 unidirectional
> 4-message FIFOs.
> 
> Add a driver for it, so it can be used for SCPI or other communication
> protocols.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  drivers/mailbox/Kconfig        |   9 +
>  drivers/mailbox/Makefile       |   2 +
>  drivers/mailbox/sun6i-msgbox.c | 332 +++++++++++++++++++++++++++++++++
>  3 files changed, 343 insertions(+)
>  create mode 100644 drivers/mailbox/sun6i-msgbox.c
> 
[...]
> diff --git a/drivers/mailbox/sun6i-msgbox.c b/drivers/mailbox/sun6i-msgbox.c
> new file mode 100644
> index 000000000000..7a41e732457c
> --- /dev/null
> +++ b/drivers/mailbox/sun6i-msgbox.c
> @@ -0,0 +1,332 @@
[...]
> +static int sun6i_msgbox_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct mbox_chan *chans;
> +	struct reset_control *reset;
> +	struct resource *res;
> +	struct sun6i_msgbox *mbox;
> +	int i, ret;
> +
> +	mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
> +	if (!mbox)
> +		return -ENOMEM;
> +
> +	chans = devm_kcalloc(dev, NUM_CHANS, sizeof(*chans), GFP_KERNEL);
> +	if (!chans)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < NUM_CHANS; ++i)
> +		chans[i].con_priv = mbox;
> +
> +	mbox->clk = devm_clk_get(dev, NULL);
> +	if (IS_ERR(mbox->clk)) {
> +		ret = PTR_ERR(mbox->clk);
> +		dev_err(dev, "Failed to get clock: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = clk_prepare_enable(mbox->clk);
> +	if (ret) {
> +		dev_err(dev, "Failed to enable clock: %d\n", ret);
> +		return ret;
> +	}
> +
> +	reset = devm_reset_control_get(dev, NULL);

Please use devm_reset_control_get_exclusive() explicitly.

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
