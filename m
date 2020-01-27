Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C3314A2EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 12:21:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=izFvJXiQmkypbfZeYC5uhpNw8WNkvKw53SIxAgXLvJc=; b=fvna7eZF/YaybL
	/FI+a2ATFl9GTYbvgh1ttahA8twvPsgb7Ag4XTkAPdNHGHApJQuVCs+P+JznxENKv2Hf8he6DxBZJ
	bxpvzGmCaavqX+YN5bej35tWPXOQj677RkWrKjZUIblVgQ0piRd1mXOIpkWBJaOktpBHfjArDKs9t
	l4qgfHQr47LaHb4PoFc+kU5ys7iFPwGwPxK8P7PaoGFgz28qsQ1AqEink6LdJ4J6tCPVFqGGsbvd0
	2yu/h5entpR+SI2gXjwC99a5Li2GPo2iIOtEOLA0Vas5qzRvo6SWtvGSftnzJ8Lw7nCcrYghwQeTG
	dZ+5iq706vdtDyBNSEbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw2SS-0005Yc-HJ; Mon, 27 Jan 2020 11:21:32 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw2SI-0005YF-Tl
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 11:21:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oN9jrHITT8NXPApGR5IdI2zdZsOhyn/YSoMnNfuDNDA=; b=FchA0Pz8WrdNQTx9TZOkxLvOV
 /1bPeZn17gBYrAnfgHxUyFM+fIwkwlPcSETRQsHKFtGdf/R6kuK/uS9C0sWK6/kqPwDWSqgyX0iRr
 ei5VsfhNvh19TG4oOweCY0FW4J8QLNV8hggyiAw8kUz43sr89Jf/eVHUJb1YW5O33vmcu/FMTeAEl
 kRgTZBW/EiOuHnEkSLpSeQQsafpyaWFF/bVML1fC39Md6ZZtWx1LZEBJxH6VhTjuelj9dYus0xoAX
 jCAux7AN6nGMMTeyciG2N+Wvc5oMPbtvuthIHCiN8AwnUisyPlZZpm1shEZLxINlYAM+s634ybDDO
 byc/CulpA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:60526)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iw2S1-0000u0-5S; Mon, 27 Jan 2020 11:21:05 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iw2Ry-0001M9-7w; Mon, 27 Jan 2020 11:21:02 +0000
Date: Mon, 27 Jan 2020 11:21:02 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [RFC net-next 6/8] net: phylink: Configure MAC/PCS when link is
 up without PHY
Message-ID: <20200127112102.GT25745@shell.armlinux.org.uk>
References: <cover.1580122909.git.Jose.Abreu@synopsys.com>
 <9a2136885d9a892ff170be88fdffeda82c778a10.1580122909.git.Jose.Abreu@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a2136885d9a892ff170be88fdffeda82c778a10.1580122909.git.Jose.Abreu@synopsys.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_032122_962973_6B02E5F0 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 12:09:11PM +0100, Jose Abreu wrote:
> When we don't have any real PHY driver connected and we get link up from
> PCS we shall configure MAC and PCS for the desired speed and also
> resolve the flow control settings from MAC side.

This is certainly the wrong place for it.  Please hold off on this patch
for the time being.  Thanks.

> 
> Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>
> 
> ---
> Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Jose Abreu <joabreu@synopsys.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Andrew Lunn <andrew@lunn.ch>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Heiner Kallweit <hkallweit1@gmail.com>
> Cc: netdev@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/net/phy/phylink.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
> index 4174d874b1f7..75dbaf80d7a5 100644
> --- a/drivers/net/phy/phylink.c
> +++ b/drivers/net/phy/phylink.c
> @@ -533,10 +533,20 @@ static void phylink_resolve(struct work_struct *w)
>  
>  	if (link_changed) {
>  		pl->old_link_state = link_state.link;
> -		if (!link_state.link)
> +		if (!link_state.link) {
>  			phylink_mac_link_down(pl);
> -		else
> +		} else {
> +			/* If no PHY is connected, we still need to configure
> +			 * MAC/PCS for flow control and speed.
> +			 */
> +			if (!pl->phydev) {
> +				phylink_resolve_flow(pl, &link_state);
> +				phylink_mac_config(pl, &link_state);
> +			}
> +
>  			phylink_mac_link_up(pl, link_state);
> +		}
> +
>  	}
>  	if (!link_state.link && pl->mac_link_dropped) {
>  		pl->mac_link_dropped = false;
> -- 
> 2.7.4
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
