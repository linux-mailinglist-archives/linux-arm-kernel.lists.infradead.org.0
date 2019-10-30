Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E2AEA1C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 17:28:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1VR4RBooXCm8ak9pw7utdSs+xxJ2woTsTGrp/FXnVg0=; b=b/t4e1wOGZ7h6V
	q6KZ26jVjATUgwzdkyPJXZWch1NPWAIgdbDungwWDUIquoqytqIB8R8pyZdvaEc/hTDSDgX7piqNz
	6YGn/CY36OiRE1/FO406FaV45cbXHE6b7k8L1G+cqPlG0Lj00vFTOhVix4gFD97yDjVQdDYsd6plB
	y0jZcnff0I1RxfI84xpfMUtlrZTLv0eTx6zZokzrkxa6qSp4SmR7gVtetQqZ/MoNdnptlLJwDjjqm
	LyW0A/Ava2dphQPswvjiDUN43r05dYBsEat0Eu1Co7M79CPzng3SH9zB0SH4WjEMVJO0+fTOnuzo8
	5BveytBdYGYhMMUv/TEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPqpz-0002SR-A4; Wed, 30 Oct 2019 16:28:47 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPqpr-0002RS-J6
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 16:28:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SZUx4NVeGGOnxDClBHA9DgqzCOffD4hhcgm5wwv6WUs=; b=gtK4LzENJNZ3IfWDlksuD6F6Mk
 +X7v8aAddo+Y3EA2Wk14qoXStLAhyN7omwt1LGMfId8PsMuvDF6vgFXxhVaFq4/anphnNaJlQJB01
 /A8XrrdjOyaF3fZg3cGRF73XE25jsx06xJbg9e2o5hhopEgdBvPla7jPVCTBv0nkxouI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iPqph-0003cy-GH; Wed, 30 Oct 2019 17:28:29 +0100
Date: Wed, 30 Oct 2019 17:28:29 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next 2/3] net: stmmac: xgmac: Add C45 PHY support in
 the MDIO callbacks
Message-ID: <20191030162829.GC10555@lunn.ch>
References: <cover.1572449009.git.Jose.Abreu@synopsys.com>
 <444208cef341686bcf35f8361f409467f539c73b.1572449009.git.Jose.Abreu@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <444208cef341686bcf35f8361f409467f539c73b.1572449009.git.Jose.Abreu@synopsys.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_092839_637269_FAF98686 
X-CRM114-Status: GOOD (  13.44  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 04:28:49PM +0100, Jose Abreu wrote:
> Add the support for C45 PHYs in the MDIO callbacks for XGMAC. This was
> tested using Synopsys DesignWare XPCS.
> 
> Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>
> 
> ---
> Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Jose Abreu <joabreu@synopsys.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: netdev@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c | 47 +++++++++++++++++++++--
>  1 file changed, 43 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
> index 40c42637ad75..143bffd28acf 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
> @@ -41,6 +41,29 @@
>  #define MII_XGMAC_BUSY			BIT(22)
>  #define MII_XGMAC_MAX_C22ADDR		3
>  #define MII_XGMAC_C22P_MASK		GENMASK(MII_XGMAC_MAX_C22ADDR, 0)
> +#define MII_XGMAC_PA_SHIFT		16
> +#define MII_XGMAC_DA_SHIFT		21
> +
> +static int stmmac_xgmac2_c45_format(struct stmmac_priv *priv, int phyaddr,
> +				    int phyreg, u32 *hw_addr)
> +{
> +	unsigned int mii_data = priv->hw->mii.data;
> +	u32 tmp;
> +
> +	/* Wait until any existing MII operation is complete */
> +	if (readl_poll_timeout(priv->ioaddr + mii_data, tmp,
> +			       !(tmp & MII_XGMAC_BUSY), 100, 10000))
> +		return -EBUSY;

Hi Jose

The stmmac_xgmac2_c22_format function does the same. Maybe the call
can be pulled out into stmmac_xgmac2_mdio_write() and
stmmac_xgmac2_mdio_read()?

	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
