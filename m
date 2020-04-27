Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C46BF1BA583
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 15:57:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+lYlcZc66Rys2S2xE/9HmYYPHVuyHnU31kCPeObmuE=; b=iRE5fUedZZNdRu
	d5aPRULvqDAfmMNpNxM3PciCQpyAUrUJbCPPpxP21Q66oKhR4CJWA7nin++E4WDZtfPGdQNgOriza
	ncdxb8DhEMlAY7s4vjNnnzumkCshzF33aT34w/AdStXQ8GmQKOoeMFf4rjz8osrXn3+xsfqy7F8gC
	t9FhlY7R2Eo4VJ+WwTRcgcFufI0ZyJOG38lxe/Q9xA5l+OvfXUpPonY5v+2N07/E/yG0SXmQOtDW1
	GD6W2dUHxMNouheNytE37yKU/Gge/M+eHpa1Otilm4H7Ftb2jQ1sPr6hagsUU4FHnd1eA/KgQ8Q8U
	PILp3tnOIy5r04zKxWJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT4Fm-00082O-8S; Mon, 27 Apr 2020 13:56:58 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT4Fc-00081Y-RX
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 13:56:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X25jyGvf8DYeBAr/a+VcEJFJMS/q5ACVY5cjQsA4fy0=; b=T0rTi2zvQXK8xCQhYxuQfs54m
 i9rr/1cdUrZyGp0FIw7aRsnPGwlKrO/mdlcOYG+Nd1bhApf/6T2kn9TIrba98S2XhVbymjcOCoU1/
 9pDbAZoA41MEeIQh0uefD+IJR3z6Hfv8E/AkqRWXztRA9iZttbgJK6iy3RMXIO42lgcZ4ETxw7E0J
 Km3X1ohVjHNNyT1A1BwQtZq+mo4Zav8NB7YjZt5TqSlcrdrjgmdXWNlaL6FmXzjmDN5rUASFhg45c
 00Qlf7hYRbyOAUx57fNjm2ciWmkOZGP5MxSkUeKJBzT+4K9qFBi3XEsfcRNjRC2+iMuUF5QTiPHve
 PlmhtgqGg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:52154)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jT4FI-0003DY-TO; Mon, 27 Apr 2020 14:56:29 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jT4FD-0006i8-Qk; Mon, 27 Apr 2020 14:56:23 +0100
Date: Mon, 27 Apr 2020 14:56:23 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
Subject: Re: [net-next PATCH v2 3/3] phylink: Introduce
 phylink_fwnode_phy_connect()
Message-ID: <20200427135623.GG25745@shell.armlinux.org.uk>
References: <20200427132409.23664-1-calvin.johnson@oss.nxp.com>
 <20200427132409.23664-4-calvin.johnson@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427132409.23664-4-calvin.johnson@oss.nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_065648_895545_C91A43A6 
X-CRM114-Status: GOOD (  21.28  )
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Diana Madalina Craciun <diana.craciun@nxp.com>, linux-acpi@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Marcin Wojtas <mw@semihalf.com>, linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, linux.cj@gmail.com,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 06:54:09PM +0530, Calvin Johnson wrote:
> Define phylink_fwnode_phy_connect() to connect phy specified by
> a fwnode to a phylink instance. Additionally,
> phylink_device_phy_connect() is defined to connect phy specified
> by a device to a phylink instance.
> 
> Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
> ---
> 
> Changes in v2:
>   replace of_ and acpi_ code with generic fwnode to get phy-handle.
> 
>  drivers/net/phy/phylink.c | 68 +++++++++++++++++++++++++++++++++++++++
>  include/linux/phylink.h   |  6 ++++
>  2 files changed, 74 insertions(+)
> 
> diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
> index 0f23bec431c1..5eab1eadded7 100644
> --- a/drivers/net/phy/phylink.c
> +++ b/drivers/net/phy/phylink.c
> @@ -961,6 +961,74 @@ int phylink_connect_phy(struct phylink *pl, struct phy_device *phy)
>  }
>  EXPORT_SYMBOL_GPL(phylink_connect_phy);
>  
> +/**
> + * phylink_fwnode_phy_connect() - connect the PHY specified in the fwnode.
> + * @pl: a pointer to a &struct phylink returned from phylink_create()
> + * @fwnode: a pointer to a &struct fwnode_handle.
> + * @flags: PHY-specific flags to communicate to the PHY device driver
> + *
> + * Connect the phy specified @fwnode to the phylink instance specified
> + * by @pl. Actions specified in phylink_connect_phy() will be
> + * performed.
> + *
> + * Returns 0 on success or a negative errno.
> + */
> +int phylink_fwnode_phy_connect(struct phylink *pl,
> +			       struct fwnode_handle *fwnode,
> +			       u32 flags)
> +{
> +	struct fwnode_handle *phy_fwnode;
> +	struct phy_device *phy_dev;
> +	int ret = 0;
> +
> +	/* Fixed links and 802.3z are handled without needing a PHY */
> +	if (pl->cfg_link_an_mode == MLO_AN_FIXED ||
> +	    (pl->cfg_link_an_mode == MLO_AN_INBAND &&
> +	     phy_interface_mode_is_8023z(pl->link_interface)))
> +		return 0;
> +
> +	phy_fwnode = fwnode_get_phy_node(fwnode);
> +	if ((IS_ERR_OR_NULL(phy_fwnode)) && (pl->cfg_link_an_mode == MLO_AN_PHY))

According to your documentation for fwnode_get_phy_node(), it can't
return NULL.  So, use of IS_ERR_OR_NULL() is incorrect here.  Please
also eliminate the unnecessary parens to match the style in the rest
of this file.

> +		return -ENODEV;

If fwnode_get_phy_node() returns an error pointer, shouldn't you be
propagating that error here?

> +
> +	phy_dev = fwnode_phy_find_device(phy_fwnode);
> +	fwnode_handle_put(phy_fwnode);
> +	if (!phy_dev)
> +		return -ENODEV;
> +
> +	ret = phy_attach_direct(pl->netdev, phy_dev, flags,
> +				pl->link_interface);
> +	if (ret)
> +		return ret;
> +
> +	ret = phylink_bringup_phy(pl, phy_dev, pl->link_config.interface);
> +	if (ret)
> +		phy_detach(phy_dev);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(phylink_fwnode_phy_connect);
> +
> +/**
> + * phylink_device_phy_connect() - connect the PHY specified by the device.
> + * @pl: a pointer to a &struct phylink returned from phylink_create()
> + * @dev: a pointer to a &struct device.
> + * @flags: PHY-specific flags to communicate to the PHY device driver
> + *
> + * Connect the phy specified by the device to the phylink instance specified
> + * by @pl. Actions specified in phylink_connect_phy() will be
> + * performed.
> + *
> + * Returns 0 on success or a negative errno.
> + */
> +int phylink_device_phy_connect(struct phylink *pl,
> +			       struct device *dev,
> +			       u32 flags)
> +{
> +	return phylink_fwnode_phy_connect(pl, dev_fwnode(dev), flags);
> +}
> +EXPORT_SYMBOL_GPL(phylink_device_phy_connect);

If this has any users, I think this should be an inline function in
phylink.h - it's just a helper after all.  If it doesn't then it should
just be dropped.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
