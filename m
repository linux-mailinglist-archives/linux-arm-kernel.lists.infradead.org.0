Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0625C19B49C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 19:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwSW+rAJJjjdmDLy6WwZy1Rbzn87PRM5chnp7t2RXk8=; b=iVy2UHjgyruFIm
	We6dmyJ3yf2mMZG5xbWxXgI5QgWcCa97eJkAbB/KmLo8g8SadQqpiPvZbBxhH9/tKJv6e/e7kNjuY
	x6jixIezuLpr184pOd3mOs3aoDYstGGeKnLNxgK77suCJdNFVe/vbf5CHu9Ei9qGJmEg2xCtLjggv
	Putpbped2qEGZk0vFONDVfwkdETi78fEkCeiFAN6DfEgDETFD6ZCd+wnanehJyx1r1oYubpO9PerS
	edSBQPXUnQd/fral24PquoLD6stAQLBdGSvzTdlHE6T/tNIOPlmFxi7HnFyaVTa6w1kBFSwuuJGWB
	lt3Dz+YqBg3nOPZvCTPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJh0c-0003bQ-FU; Wed, 01 Apr 2020 17:18:34 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJh0S-0003ZE-7a
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 17:18:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pO60vM3lpUeaQgdjLjnsu19Yae3+toam0LF12vfn/pQ=; b=NR5IMmGLlT/tSbBz6nUV9G6au
 i0nTRoOb/xOx8pY+vvJT8u0K8H7+mzQOh0hKG4rONPcoT+kgj7AwyR6aqNef24RruNMk974G3ssPa
 qmLYstpsxoUQoBt/2LbuQnUMLKJHGnFmqrrtmHhf5vX8eDvaAXSJTk2hZOIwFStNRS7FTzGlZqgiJ
 o44AejSrhGOGI0WlEvJF6URXMOfnvFt2AM4cMEGLrhtjgpFci+bbfPcbpr0bGB+e8v+f3t2iVx0ts
 aB3SLBgSzdF2hL2MpCI4gyxQroS3IG+RLcIXiIdlf1Y5xqzl5EDsdNwBdScCwSm/gQD4tC9mhhf0g
 C7ON0AG+Q==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:60904)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jJgzy-000764-ND; Wed, 01 Apr 2020 18:17:54 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jJgzs-0000s7-1D; Wed, 01 Apr 2020 18:17:48 +0100
Date: Wed, 1 Apr 2020 18:17:48 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH] net: phy: at803x: fix clock sink configuration on
 ATH8030 and ATH8035
Message-ID: <20200401171747.GW25745@shell.armlinux.org.uk>
References: <20200401095732.23197-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401095732.23197-1-o.rempel@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_101825_835118_BA80CDD7 
X-CRM114-Status: GOOD (  18.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 linux-imx@nxp.com, kernel@pengutronix.de, David Jander <david@protonic.nl>,
 netdev@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 11:57:32AM +0200, Oleksij Rempel wrote:
> The masks in priv->clk_25m_reg and priv->clk_25m_mask are one-bits-set
> for the values that comprise the fields, not zero-bits-set.
> 
> This patch fixes the clock frequency configuration for ATH8030 and
> ATH8035 Atheros PHYs by removing the erroneous "~".
> 
> To reproduce this bug, configure the PHY  with the device tree binding
> "qca,clk-out-frequency" and remove the machine specific PHY fixups.
> 
> Fixes: 2f664823a47021 ("net: phy: at803x: add device tree binding")
> Reported-by: Russell King <linux@armlinux.org.uk>

Please replace this with:

Reported-by: Russell King <rmk+kernel@armlinux.org.uk>

> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Reviewed-by: Russell King <rmk+kernel@armlinux.org.uk>
Tested-by: Russell King <rmk+kernel@armlinux.org.uk>

Thanks.

> ---
>  drivers/net/phy/at803x.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
> index 481cf48c9b9e4..31f731e6df720 100644
> --- a/drivers/net/phy/at803x.c
> +++ b/drivers/net/phy/at803x.c
> @@ -425,8 +425,8 @@ static int at803x_parse_dt(struct phy_device *phydev)
>  		 */
>  		if (at803x_match_phy_id(phydev, ATH8030_PHY_ID) ||
>  		    at803x_match_phy_id(phydev, ATH8035_PHY_ID)) {
> -			priv->clk_25m_reg &= ~AT8035_CLK_OUT_MASK;
> -			priv->clk_25m_mask &= ~AT8035_CLK_OUT_MASK;
> +			priv->clk_25m_reg &= AT8035_CLK_OUT_MASK;
> +			priv->clk_25m_mask &= AT8035_CLK_OUT_MASK;
>  		}
>  	}
>  
> -- 
> 2.26.0.rc2
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
