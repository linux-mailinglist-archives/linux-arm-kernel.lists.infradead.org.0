Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB2B1D13F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TDvuJEnzx+fE7o962eHf6+AxspfNkT3wGRtRFumgJxk=; b=eRKHw1Gv5F0nB8
	wY+QyArKVzRHG9A3Eovt3qG0bJIiORfaAVGbiNhzDzcAjYVY0+icXFAvCzm8qPzWX99aq2DFgz05Q
	ReKt4N6pBmmuT7PB1g/IG3zE7G52SUTZeKBgPs519GLCFn+jjkmBcoqGpMY3Ho2TCcTpJvtOiq3+u
	Rr+9Ww8Xb3okMLfPoaPRwdYxmuf2Z/NRmuBDCmrUu6R8wSJYrshaxQvORPOz9V0su75D5Q+WFiyZE
	bkFZVa/c86mr5iLMEa7mAFWEs6dKX2IQCVAuulncIW2ZAilsIAEI3etdt/LmsR5Qi3nBX9WUfl3cq
	QNpx2HimI75AIOjTIR+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYr5c-0003lx-Fu; Wed, 13 May 2020 13:06:24 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYr5T-0003fE-MR
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:06:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XRZP4coENPaEASSZzra9te94FAUGfjbaaParyYkAyXQ=; b=GbyxsXPvGLFQdWaSkIykDFNq+
 AOCEtd+CfIfUyXZojobQ0zAcq/Kll3RZTqtp0oiYwJF8ZmnBjEQ2XfZC6PqXOoioyPa9b/1uTqAge
 Yey49kjiUtD/0lpqpUc2yL+WFGKeJGhhIFQ1CPFBWj+lh/POB2uDKbGvsz3Y1qWn8PE/mGFgAcDxN
 +WAsh4Hpd+hvANtZ4QTGyGVL/Y/Gv0BYwTtMXDP9NOdQwYTt3kIHYOem1w1LTtRamfiGkH9Uf/wAm
 En2KUP9S4+fBwIkmGze60p24+YjDZg5HqSizJ34a7jcVxavGywWXBPzQrhR9bTLG1E7OzTCA6aNMi
 3EgpnDaGQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:57492)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jYr54-0004ZU-SY; Wed, 13 May 2020 14:05:51 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jYr4q-0007nH-QV; Wed, 13 May 2020 14:05:36 +0100
Date: Wed, 13 May 2020 14:05:36 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: nicolas.ferre@microchip.com
Subject: Re: [PATCH v4 3/5] net: macb: fix macb_get/set_wol() when moving to
 phylink
Message-ID: <20200513130536.GI1551@shell.armlinux.org.uk>
References: <cover.1588763703.git.nicolas.ferre@microchip.com>
 <4aeebe901fde6db70a5ca12b10e793dd2ee6ce60.1588763703.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4aeebe901fde6db70a5ca12b10e793dd2ee6ce60.1588763703.git.nicolas.ferre@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_060615_875467_936E52CA 
X-CRM114-Status: GOOD (  22.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, f.fainelli@gmail.com,
 antoine.tenart@bootlin.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 harini.katakam@xilinx.com, Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 01:37:39PM +0200, nicolas.ferre@microchip.com wrote:
> From: Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> Keep previous function goals and integrate phylink actions to them.
> 
> phylink_ethtool_get_wol() is not enough to figure out if Ethernet driver
> supports Wake-on-Lan.
> Initialization of "supported" and "wolopts" members is done in phylink
> function, no need to keep them in calling function.
> 
> phylink_ethtool_set_wol() return value is not enough to determine
> if WoL is enabled for the calling Ethernet driver. Call it first
> but don't rely on its return value as most of simple PHY drivers
> don't implement a set_wol() function.
> 
> Fixes: 7897b071ac3b ("net: macb: convert to phylink")
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
> Cc: Harini Katakam <harini.katakam@xilinx.com>
> Cc: Antoine Tenart <antoine.tenart@bootlin.com>
> ---
>  drivers/net/ethernet/cadence/macb_main.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
> index 53e81ab048ae..24c044dc7fa0 100644
> --- a/drivers/net/ethernet/cadence/macb_main.c
> +++ b/drivers/net/ethernet/cadence/macb_main.c
> @@ -2817,21 +2817,23 @@ static void macb_get_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
>  {
>  	struct macb *bp = netdev_priv(netdev);
>  
> -	wol->supported = 0;
> -	wol->wolopts = 0;
> -
> -	if (bp->wol & MACB_WOL_HAS_MAGIC_PACKET)
> +	if (bp->wol & MACB_WOL_HAS_MAGIC_PACKET) {
>  		phylink_ethtool_get_wol(bp->phylink, wol);
> +		wol->supported |= WAKE_MAGIC;
> +
> +		if (bp->wol & MACB_WOL_ENABLED)
> +			wol->wolopts |= WAKE_MAGIC;
> +	}
>  }
>  
>  static int macb_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
>  {
>  	struct macb *bp = netdev_priv(netdev);
> -	int ret;
>  
> -	ret = phylink_ethtool_set_wol(bp->phylink, wol);
> -	if (!ret)
> -		return 0;
> +	/* Pass the order to phylink layer.
> +	 * Don't test return value as set_wol() is often not supported.
> +	 */
> +	phylink_ethtool_set_wol(bp->phylink, wol);

If this returns an error, does that mean WOL works or does it not?

Note that if set_wol() is not supported, this will return -EOPNOTSUPP.
What about other errors?

If you want to just ignore the case where it's not supported, then
this looks like a sledge hammer to crack a nut.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
