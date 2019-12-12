Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F41211CE40
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 14:25:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j56gahCOrFQXhPMNKjESakQ8cf+nT3QVhb+pHOoT5lg=; b=jBYjOzNEda6SHA
	TK1PPYQCHsWJV4vFzJAyw5EWX2yDEe45YZl9OZBT0QPMJmNidUDZOx4fJTCtVDaBqKMgl6/rJaLmi
	j4NkzI1rOdY93bVRtyenrZXCq/sPl8D+VUV/1TesCtF9oxkEuL90E0y1MeYuZhB6I2ykAP0bWgjLo
	nUH3/Gqv8QK7L9zhIbyVnUkuGapbJWp/fcCk9enrPKjFoCv24sMlOCJgUC9n1iPKJoqKoa7rwKTio
	gDj/wFko8maXaZPeU/xixaLwuFYNtKukB/89zhAs8HEdZD3Qp+IL6YbpG5QF6t20yK1oE/9OKKnUA
	14mnqKoClqiqefqR8zpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifOTW-0000fx-Pr; Thu, 12 Dec 2019 13:25:50 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifOTP-0000Ya-82; Thu, 12 Dec 2019 13:25:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bxnXIodnVA+EXBQ9CzKw2+L2s06f/eW1ZteOUMDWsiU=; b=L5e/4sTMJEgfoy08MJh5WXYJ6i
 vtxgJMqAJUi8fKfN/Q5KP8FQnuW4FE9UBwBZ/KRoW0xWFvLE685wFxZz9EFJekPOrDAqg783JqQJ3
 XPskH3kEU7fR0/Ph78F3bj9HvZWOr4H99XHMwhfMNb8afPT2T5Xye6Z5mz+fbKas7xlU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1ifOT2-0002nd-BQ; Thu, 12 Dec 2019 14:25:20 +0100
Date: Thu, 12 Dec 2019 14:25:20 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Biao Huang <biao.huang@mediatek.com>
Subject: Re: [PATCH 1/2] net-next: stmmac: mediatek: add more suuport for RMII
Message-ID: <20191212132520.GB9959@lunn.ch>
References: <20191212024145.21752-1-biao.huang@mediatek.com>
 <20191212024145.21752-2-biao.huang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212024145.21752-2-biao.huang@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_052543_286083_FAC90CA8 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jose Abreu <joabreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, yt.shen@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 10:41:44AM +0800, Biao Huang wrote:
> MT2712 SoC can provide the rmii reference clock, and the clock
> will output from TXC pin only, which means ref_clk pin of external
> PHY should connect to TXC pin in this case.
> Add corresponding clock and timing settings.

Hi Biao

Subject line has a typo.

> @@ -278,6 +296,7 @@ static int mediatek_dwmac_config_dt(struct mediatek_dwmac_plat_data *plat)
>  	mac_delay->tx_inv = of_property_read_bool(plat->np, "mediatek,txc-inverse");
>  	mac_delay->rx_inv = of_property_read_bool(plat->np, "mediatek,rxc-inverse");
>  	plat->rmii_rxc = of_property_read_bool(plat->np, "mediatek,rmii-rxc");
> +	plat->rmii_clk_from_mac = of_property_read_bool(plat->np, "mediatek,rmii-clk-from-mac");
>  
>  	return 0;
>  }
> @@ -287,6 +306,16 @@ static int mediatek_dwmac_clk_init(struct mediatek_dwmac_plat_data *plat)
>  	const struct mediatek_dwmac_variant *variant = plat->variant;
>  	int i, num = variant->num_clks;
>  
> +	plat->mac_rmii_clk = NULL;
> +	if (plat->phy_mode == PHY_INTERFACE_MODE_RMII &&
> +	    plat->rmii_clk_from_mac) {
> +		plat->mac_rmii_clk = devm_clk_get(plat->dev, "rmii_internal");
> +		if (IS_ERR(plat->mac_rmii_clk)) {
> +			dev_err(plat->dev, "Failed to get reference clk from MAC\n");
> +			return PTR_ERR(plat->mac_rmii_clk);
> +		}
> +	}

Please don't use a binary property. This is a clock, so describe it in
DT as a clock. Add it to the existing list of clocks.

   Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
