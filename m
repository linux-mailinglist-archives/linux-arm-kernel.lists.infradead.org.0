Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBE837591
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 15:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IGMsdJmFpcrXpt3TR/mE0cpKtlcfegNynk02od2VuLI=; b=UtZGo//XvUsdXq
	dnEwSY0knkBkxPP0mehbbpa4Aul/XNPNe6ukxkT1S9Dnih6jxh8RaPaJFepMxaUzdf0JnVcnGhLAx
	B5cD52ULx7FzZerGnZmtdIwvIHlKXBV7obrPjQH9ijq35Y00psoMfBpNueGB8mJgUZV5Sx3sbf5zm
	l95itgNvJlE+uUlTs5y8fpMPTp0UVT1m75lzeNOCBUn9bFrRff96ezQRRpKG8e0XkLNqrONK07Wze
	NKxsYYGxYhRtEtbmFGTsldphhk0N5u0FREbvk9y8R6b8BkH618YtSMMVEGE1Vcnn0rBEqTvN4c2Js
	DdFPeJk30TslzyLHbRVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYshc-0006CB-M4; Thu, 06 Jun 2019 13:45:12 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYshU-0005Iv-6C
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 13:45:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sVhxnuTEL+ASO8R37ZHCwQE4/QWOi4bshU6Rq9FdZC4=; b=26rWKdQreTTF7+VEn7aEMEjhr7
 P2Q5uT7VzDHA0TBoOd6hQ8KZo9YfeTEb4vcqLvg/LS9WwBU5UpjdbF82NDDL//Yc0BNu6uc5f8a0F
 XYO1giz9jk+OgwmPpuHg2tSqB0si1SXLz06rxH1w5BvctFO+tAI0pAVbs1H/jlejo77s=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hYshI-0006Hm-0s; Thu, 06 Jun 2019 15:44:52 +0200
Date: Thu, 6 Jun 2019 15:44:52 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Subject: Re: [PATCH v2 net-next] net: stmmac: move reset gpio parse & request
 to stmmac_mdio_register
Message-ID: <20190606134452.GD19590@lunn.ch>
References: <20190606182244.422e187f@xhacker.debian>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606182244.422e187f@xhacker.debian>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_064504_447660_17D786D1 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jose Abreu <joabreu@synopsys.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 10:31:56AM +0000, Jisheng Zhang wrote:
> Move the reset gpio dt parse and request to stmmac_mdio_register(),
> thus makes the mdio code straightforward.
> 
> This patch also replace stack var mdio_bus_data with data to simplify
> the code.

Hi Jisheng

Please split this into two patches.

> 
> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> ---
> Since v1:
>  - rebase on the latest net-next tree
> 
>  .../net/ethernet/stmicro/stmmac/stmmac_mdio.c | 58 ++++++++-----------
>  1 file changed, 25 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
> index 093a223fe408..7d1562ec1149 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
> @@ -250,28 +250,7 @@ int stmmac_mdio_reset(struct mii_bus *bus)
>  	struct stmmac_mdio_bus_data *data = priv->plat->mdio_bus_data;
>  
>  #ifdef CONFIG_OF
> -	if (priv->device->of_node) {
> -		if (data->reset_gpio < 0) {
> -			struct device_node *np = priv->device->of_node;
> -
> -			if (!np)
> -				return 0;
> -
> -			data->reset_gpio = of_get_named_gpio(np,
> -						"snps,reset-gpio", 0);
> -			if (data->reset_gpio < 0)
> -				return 0;
> -
> -			data->active_low = of_property_read_bool(np,
> -						"snps,reset-active-low");
> -			of_property_read_u32_array(np,
> -				"snps,reset-delays-us", data->delays, 3);
> -
> -			if (devm_gpio_request(priv->device, data->reset_gpio,
> -					      "mdio-reset"))
> -				return 0;
> -		}
> -
> +	if (gpio_is_valid(data->reset_gpio)) {
>  		gpio_direction_output(data->reset_gpio,
>  				      data->active_low ? 1 : 0);
>  		if (data->delays[0])
> @@ -313,24 +292,38 @@ int stmmac_mdio_register(struct net_device *ndev)
>  	int err = 0;
>  	struct mii_bus *new_bus;
>  	struct stmmac_priv *priv = netdev_priv(ndev);
> -	struct stmmac_mdio_bus_data *mdio_bus_data = priv->plat->mdio_bus_data;
> +	struct stmmac_mdio_bus_data *data = priv->plat->mdio_bus_data;
>  	struct device_node *mdio_node = priv->plat->mdio_node;
>  	struct device *dev = ndev->dev.parent;
>  	int addr, found, max_addr;
>  
> -	if (!mdio_bus_data)
> +	if (!data)
>  		return 0;
>  
>  	new_bus = mdiobus_alloc();
>  	if (!new_bus)
>  		return -ENOMEM;
>  
> -	if (mdio_bus_data->irqs)
> -		memcpy(new_bus->irq, mdio_bus_data->irqs, sizeof(new_bus->irq));
> +	if (data->irqs)
> +		memcpy(new_bus->irq, data->irqs, sizeof(new_bus->irq));
>  
>  #ifdef CONFIG_OF
> -	if (priv->device->of_node)
> -		mdio_bus_data->reset_gpio = -1;
> +	if (priv->device->of_node) {
> +		struct device_node *np = priv->device->of_node;
> +
> +		data->reset_gpio = of_get_named_gpio(np, "snps,reset-gpio", 0);
> +		if (gpio_is_valid(data->reset_gpio)) {
> +			data->active_low = of_property_read_bool(np,
> +						"snps,reset-active-low");
> +			of_property_read_u32_array(np,
> +				"snps,reset-delays-us", data->delays, 3);
> +
> +			devm_gpio_request(priv->device, data->reset_gpio,
> +					  "mdio-reset");
> +		}
> +	} else {
> +		data->reset_gpio = -1;
> +	}

This seems like a good candidate to be a small helper
function. Quoting the coding style:

6) Functions
------------

Functions should be short and sweet, and do just one thing.  They should
fit on one or two screenfuls of text (the ISO/ANSI screen size is 80x24,
as we all know), and do one thing and do that well.

stmmac_mdio_register() is not short and sweet, and this is making it
bigger.

	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
