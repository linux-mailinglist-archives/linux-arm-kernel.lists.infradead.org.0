Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B930916A614
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 13:24:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1SMYjBQM3nmf30+qjdWHTbRdZMyw8xIlHAr9JpmYTr4=; b=psNMX/hqcGda9I
	h90THELGVZhHLFPwJt9PzAy3cJK8G0JG7u5Eh6SV7TsRdYRgi03PnG1tx1aHmbX3UqfqmBK4t0wnm
	F3BPoBA1+5H4mh4F1HkFmYE5/NZ39S+HJjGCcCW1mho0S9AryNzQjHmE50MSMYgqEq+u576KIQGGU
	fWWWuzKPTftCvSVjp4SagRgCOd20nwGpzLRtwQRVGI0xACxthT4OZhu8kEgv3lI1GSy3KuZAx860D
	ENn7lg/tN4OY3zfLdwFL2riYEDO+0dRXPx2VoqL55C4GvDmaHxDdBHFkHuTAtyAHzIlyZlYb6s/Lx
	xRtDHwgp1Y5Xq+sXtJ6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Cmx-0003rt-N2; Mon, 24 Feb 2020 12:24:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Cmn-0003rH-0w
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 12:24:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ABD1730E;
 Mon, 24 Feb 2020 04:24:28 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6A0E03F534;
 Mon, 24 Feb 2020 04:24:27 -0800 (PST)
Date: Mon, 24 Feb 2020 12:24:21 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [CFT 4/8] net: axienet: use resolved link config in mac_link_up()
Message-ID: <20200224122421.616c8271@donnerap.cambridge.arm.com>
In-Reply-To: <E1j3k7t-00072J-RS@rmk-PC.armlinux.org.uk>
References: <20200217172242.GZ25745@shell.armlinux.org.uk>
 <E1j3k7t-00072J-RS@rmk-PC.armlinux.org.uk>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_042433_154985_29DB4A96 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 17:24:09 +0000
Russell King <rmk+kernel@armlinux.org.uk> wrote:

Hi Russell,

> Convert the Xilinx AXI ethernet driver to use the finalised link
> parameters in mac_link_up() rather than the parameters in mac_config().

Many thanks for this series, a quite neat solution for the problems I saw!

I picked 1/8 and 4/8 on top of net-next/master as of today: c3e042f54107376 ("igmp: remove unused macro IGMP_Vx_UNSOLICITED_REPORT_INTERVAL") and it worked great on my FPGA board using SGMII (but no in-band negotiation over that link). I had the 64-bit DMA patches on top, but that doesn't affect this series.

Tested-by: Andre Przywara <andre.przywara@arm.com>

Is this heading for 5.7?

Cheers,
Andre.

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


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
