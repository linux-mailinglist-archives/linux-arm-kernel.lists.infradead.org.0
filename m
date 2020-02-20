Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1CC165B91
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 11:32:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZPjZUvB4l6NfGCv9GgQtjBGuwPmv8+bLTT3G+36mGI=; b=hFsPBrfgLfLcbC
	Ne5bl0ICJl6drdI9nes2R9IdDWJAzBrBx+Oy1fR4k5Nw1AE7LQzyf9L69xCxTMtrXrOjZAW5CVX4x
	UPKpMqRWJvF2YzA7ph6Jz/PYSahM+WcZVtlM/3UvHHiJas9knGw5pIQPplA9VrIFCaQyJLkerLIFR
	brNGoHMJHrzp06MQLWrxDyhPgS1+QcPBTmPyZbJS7v3smfFC1464OOHz4sD9cTRQdje5zYGXjI4C/
	Kvhn/Eco3B4nD304fzHTJnZYj0ayx+dHnAOfE8Avcr986944/mACLHcjqboA4DFtNlffMYKDzh3Vp
	NiAvsXcCLEObtsOFKvKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4j7g-0000Vw-SD; Thu, 20 Feb 2020 10:32:00 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4j7V-0007KZ-6S
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 10:31:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D0QfwFe5VuXoN5X68rznn8NM7G9XUwQSimuTofmWdzU=; b=vSR+XvWkpGnlcBg6aNao4QTKw
 xFC+BcQ2mM96psVEya2zQ23e9cMBU4hfolxoeZjgFxZJiBU/0LEWzzY+LLoIvM3MGK5FYTinJ2CuF
 c9hmOHiEX3xdZ7yyhlDqYylpuFaaFePYU+jsLt9M3H2LSmV+1d0SwPa6jzeJAeOxE/DYUtUPz/dl6
 A2GkfelkbNH7rt+/rbgtmhj26ayw/csp8lGsMqIDZIPEudO0UtSAsOoFhMMb8T7cii7mLo/BwDzOh
 kvlMZ+w9xDKZzDsB7h3tHUtJDK1TrbLEGL3EYf6M77VCuTwcQM77sXK0gU3QZ5/hdgXx72iJBoOYt
 9TKxJetSw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:50344)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j4j5G-0002gg-Iy; Thu, 20 Feb 2020 10:29:30 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j4j5D-0002Li-75; Thu, 20 Feb 2020 10:29:27 +0000
Date: Thu, 20 Feb 2020 10:29:27 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [CFT 4/8] net: axienet: use resolved link config in mac_link_up()
Message-ID: <20200220102927.GX25745@shell.armlinux.org.uk>
References: <20200217172242.GZ25745@shell.armlinux.org.uk>
 <E1j3k7t-00072J-RS@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1j3k7t-00072J-RS@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_023149_239974_BBA21804 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andre,

Are you able to give this (along with patch 1) some testing please?
The series can be grabbed from:

  https://patchwork.ozlabs.org/series/159037/mbox/

Strangely, google doesn't find it in the lore.kernel.org archives,
but does in spinics.net archives and patchwork...

On Mon, Feb 17, 2020 at 05:24:09PM +0000, Russell King wrote:
> Convert the Xilinx AXI ethernet driver to use the finalised link
> parameters in mac_link_up() rather than the parameters in mac_config().
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
>  .../net/ethernet/xilinx/xilinx_axienet_main.c | 38 +++++++++----------
>  1 file changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> index 197740781157..c2f4c5ca2e80 100644
> --- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> +++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> @@ -1440,6 +1440,22 @@ static void axienet_mac_an_restart(struct phylink_config *config)
>  
>  static void axienet_mac_config(struct phylink_config *config, unsigned int mode,
>  			       const struct phylink_link_state *state)
> +{
> +	/* nothing meaningful to do */
> +}
> +
> +static void axienet_mac_link_down(struct phylink_config *config,
> +				  unsigned int mode,
> +				  phy_interface_t interface)
> +{
> +	/* nothing meaningful to do */
> +}
> +
> +static void axienet_mac_link_up(struct phylink_config *config,
> +				struct phy_device *phy,
> +				unsigned int mode, phy_interface_t interface,
> +				int speed, int duplex,
> +				bool tx_pause, bool rx_pause)
>  {
>  	struct net_device *ndev = to_net_dev(config->dev);
>  	struct axienet_local *lp = netdev_priv(ndev);
> @@ -1448,7 +1464,7 @@ static void axienet_mac_config(struct phylink_config *config, unsigned int mode,
>  	emmc_reg = axienet_ior(lp, XAE_EMMC_OFFSET);
>  	emmc_reg &= ~XAE_EMMC_LINKSPEED_MASK;
>  
> -	switch (state->speed) {
> +	switch (speed) {
>  	case SPEED_1000:
>  		emmc_reg |= XAE_EMMC_LINKSPD_1000;
>  		break;
> @@ -1467,33 +1483,17 @@ static void axienet_mac_config(struct phylink_config *config, unsigned int mode,
>  	axienet_iow(lp, XAE_EMMC_OFFSET, emmc_reg);
>  
>  	fcc_reg = axienet_ior(lp, XAE_FCC_OFFSET);
> -	if (state->pause & MLO_PAUSE_TX)
> +	if (tx_pause)
>  		fcc_reg |= XAE_FCC_FCTX_MASK;
>  	else
>  		fcc_reg &= ~XAE_FCC_FCTX_MASK;
> -	if (state->pause & MLO_PAUSE_RX)
> +	if (rx_pause)
>  		fcc_reg |= XAE_FCC_FCRX_MASK;
>  	else
>  		fcc_reg &= ~XAE_FCC_FCRX_MASK;
>  	axienet_iow(lp, XAE_FCC_OFFSET, fcc_reg);
>  }
>  
> -static void axienet_mac_link_down(struct phylink_config *config,
> -				  unsigned int mode,
> -				  phy_interface_t interface)
> -{
> -	/* nothing meaningful to do */
> -}
> -
> -static void axienet_mac_link_up(struct phylink_config *config,
> -				struct phy_device *phy,
> -				unsigned int mode, phy_interface_t interface,
> -				int speed, int duplex,
> -				bool tx_pause, bool rx_pause)
> -{
> -	/* nothing meaningful to do */
> -}
> -
>  static const struct phylink_mac_ops axienet_phylink_ops = {
>  	.validate = axienet_validate,
>  	.mac_pcs_get_state = axienet_mac_pcs_get_state,
> -- 
> 2.20.1
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
