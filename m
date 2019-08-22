Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E929968C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 16:28:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKM2pXq50bxXcYiGamF2O2qi8rJNlwhrxzYYpY0Lryw=; b=IVOIdgkv508LgA
	MzMXMq+EO4TkoQ1yJA2/lCdC9tn6Om7Uk8AKDkQVBTycTo/TyBX6eVCwEziThjTlBtjqVEKe1nnY3
	AiE643qH1xYbLOGdj1olIXWt42aWxtTGn/bxBun0iCu1eVaBTRXZ8cAVkQ99Tc/7/xWzfP5clBm+b
	FFVpcYg4Ns4BF6vAyEY+wCjdbbI9sAuntlPg1BTZWp49EKUcrqWfeUYpM9JILzje3Eni/U+yYZHsf
	UHoFYcZ3OmoxdI8L0s2vqVK+8vOa7klwHJhT1X1wM87yDskT5KwZTEsH2AG2jvSCAQ1srjvZHfUHb
	S3bzaezQVLijxLbBQgTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0o4e-0005bn-1W; Thu, 22 Aug 2019 14:28:24 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0o4P-0005a7-CK; Thu, 22 Aug 2019 14:28:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fg0ublZzgw0A5Szj0n+RkN+2zqyaQU5CTNzjkTpcOJ8=; b=rCPArFXYhmfM98sv0h9BelJSm
 tbLpRAGrRGuQ3+j/EAJjtdH6ZkCsUUaoDtmTMMxj6z5sF9GJkzLhO2vNR06oxoTYCmTOzM73rRrfr
 axkoasy9w9Yot1Q5SnpyRIdAyUDkhwOzUJ9xUFvEAEZR2U3clyZB6xvJFg9iL53Ms8AGzesHd0GLw
 kbYuB6Kff4HYqNQni9GCj/Wkr+JELdcecTABRBjmfS+P8tw8aZgxh6M2Rp+OdDzfvhhJTYhicfeVE
 owyJGvIEzxW0IXGZmfjzojfLYd/fpHEC6q36/hgE0wG78WGF7yYfn/BqeI5t1nEEWRvCHlpW/+Y9N
 7JzH9RBNw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:59702)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i0o43-00078p-7T; Thu, 22 Aug 2019 15:27:47 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i0o3w-0007kt-33; Thu, 22 Aug 2019 15:27:40 +0100
Date: Thu, 22 Aug 2019 15:27:40 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH net-next v2 1/3] net: ethernet: mediatek: Add basic
 PHYLINK support
Message-ID: <20190822142739.GS13294@shell.armlinux.org.uk>
References: <20190821144336.9259-1-opensource@vdorst.com>
 <20190821144336.9259-2-opensource@vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821144336.9259-2-opensource@vdorst.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_072809_575787_F38958C1 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nelson Chang <nelson.chang@mediatek.com>,
 Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Stefan Roese <sr@denx.de>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 04:43:34PM +0200, Ren=E9 van Dorst wrote:
> +static void mtk_mac_link_down(struct phylink_config *config, unsigned in=
t mode,
> +			      phy_interface_t interface)
> +{
> +	struct mtk_mac *mac =3D container_of(config, struct mtk_mac,
> +					   phylink_config);
>  =

> -	return 0;
> +	mtk_w32(mac->hw, MAC_MCR_FORCE_LINK_DOWN, MTK_MAC_MCR(mac->id));
>  }

You set the MAC_MCR_FORCE_MODE bit here...

> +static void mtk_mac_link_up(struct phylink_config *config, unsigned int =
mode,
> +			    phy_interface_t interface,
> +			    struct phy_device *phy)
>  {
> +	struct mtk_mac *mac =3D container_of(config, struct mtk_mac,
> +					   phylink_config);
> +	u32 mcr =3D mtk_r32(mac->hw, MTK_MAC_MCR(mac->id));
>  =

> +	mcr |=3D MAC_MCR_TX_EN | MAC_MCR_RX_EN;
> +	mtk_w32(mac->hw, mcr, MTK_MAC_MCR(mac->id));
> +}

Looking at this, a link_down() followed by a link_up() would result in
this register containing MAC_MCR_FORCE_MODE | MAC_MCR_TX_EN |
MAC_MCR_RX_EN ?  Is that actually correct?  (MAC_MCR_FORCE_LINK isn't
set, so it looks to me like it still forces the link down.)

Note that link up/down forcing should not be done for in-band AN.

> +static void mtk_validate(struct phylink_config *config,
> +			 unsigned long *supported,
> +			 struct phylink_link_state *state)
> +{
> +	struct mtk_mac *mac =3D container_of(config, struct mtk_mac,
> +					   phylink_config);
> +	__ETHTOOL_DECLARE_LINK_MODE_MASK(mask) =3D { 0, };
>  =

> +	if (state->interface !=3D PHY_INTERFACE_MODE_NA &&
> +	    state->interface !=3D PHY_INTERFACE_MODE_MII &&
> +	    state->interface !=3D PHY_INTERFACE_MODE_GMII &&
> +	    !(MTK_HAS_CAPS(mac->hw->soc->caps, MTK_RGMII) &&
> +	      phy_interface_mode_is_rgmii(state->interface)) &&
> +	    !(MTK_HAS_CAPS(mac->hw->soc->caps, MTK_TRGMII) &&
> +	      !mac->id && state->interface =3D=3D PHY_INTERFACE_MODE_TRGMII)) {
> +		linkmode_zero(supported);
> +		return;
>  	}
>  =

> +	phylink_set_port_modes(mask);
> +	phylink_set(mask, Autoneg);
>  =

> +	if (state->interface =3D=3D PHY_INTERFACE_MODE_TRGMII) {
> +		phylink_set(mask, 1000baseT_Full);
> +	} else {
> +		phylink_set(mask, 10baseT_Half);
> +		phylink_set(mask, 10baseT_Full);
> +		phylink_set(mask, 100baseT_Half);
> +		phylink_set(mask, 100baseT_Full);
> +
> +		if (state->interface !=3D PHY_INTERFACE_MODE_MII) {
> +			phylink_set(mask, 1000baseT_Half);
> +			phylink_set(mask, 1000baseT_Full);
> +			phylink_set(mask, 1000baseX_Full);
> +		}
> +	}
>  =

> +	phylink_set(mask, Pause);
> +	phylink_set(mask, Asym_Pause);
>  =

> +	linkmode_and(supported, supported, mask);
> +	linkmode_and(state->advertising, state->advertising, mask);
>  }

This looks fine.

Thanks.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
