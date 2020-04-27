Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077051BA4DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 15:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uWK3+9viaQkCas/fK/ZjtfXQ0+DFNm9yZyo2eGSKWTo=; b=Udc/mrJkXFKGFH
	kJwnhI+Lbaqu8LZr+OzIfYPoNONGV07ZN+B0NhBapaGPwod87Cb6HqALCeq1rjgaSco5rfW8mwo7x
	rwcdly08cIgeqT6NlCzutIx0+vRc+LZCNjS1lgE0NWGe6mYUt833Gz8Jg1RtVxbe+1JiNwVVJz9w1
	AJnMy8haGudy6M2XKAcm5f/G1/p+3sFcMlIkbzclk/DxvLYsRksgHRCtPsCCSpx4rbT8mhFikTf84
	8YtNbbsa7b/xrkLT+apt/KJagqzn/Olw2il+Mgp46uCcxLlJ5iMr5ksrLkQ0RhYTnmtptcYEhCIwF
	bc0n8K7TsDsxFVVXZ49Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT3yx-00015Q-HN; Mon, 27 Apr 2020 13:39:35 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT3yo-0000Y1-Bi
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 13:39:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=unOIlxoTJY/D57NywEw3MuFa8hyg11oekg3vyZ+x9k0=; b=JBGCR/yihuGypbtYuNhprmpJr
 xXotLfX8SCvbjMXQ6QaNYzw9VQCBpU1ASsWd+AdHrMvKUV5p3bP8y6k5+KiEiyW19aSoT6k7v8JqF
 52h4xvPgdIQ9NIcHv3+QU3fl6Aw6GZa5VFG76FA2hnwNufAJUg4vG79GDrVq75jjolCJICGAtfivK
 73zXMmKdwnamjy6KYVRdKUfNgujANHkhy9J1P19i1Fm0mq7VU3v8l8+xT0HzXkA88KGxattf/tr71
 tfleelz0dVJmtm9oV5/zTyBpehy3tXrvDSpt/2401XfGo2LgBKSiiD3zWGnOfJmyQ1uF4bZ2M6xQL
 OgiT5OYSA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:56282)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jT3wR-00036i-Dx; Mon, 27 Apr 2020 14:36:59 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jT3wN-0006gp-PD; Mon, 27 Apr 2020 14:36:55 +0100
Date: Mon, 27 Apr 2020 14:36:55 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
Subject: Re: [net-next PATCH v2 1/3] device property: Introduce phy related
 fwnode functions
Message-ID: <20200427133655.GE25745@shell.armlinux.org.uk>
References: <20200427132409.23664-1-calvin.johnson@oss.nxp.com>
 <20200427132409.23664-2-calvin.johnson@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427132409.23664-2-calvin.johnson@oss.nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_063926_399469_5726668C 
X-CRM114-Status: GOOD (  21.97  )
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

On Mon, Apr 27, 2020 at 06:54:07PM +0530, Calvin Johnson wrote:
> Define fwnode_phy_find_device() to iterate an mdiobus and find the
> phy device of the provided phy fwnode. Additionally define
> device_phy_find_device() to find phy device of provided device.
> 
> Define fwnode_get_phy_node() to get phy_node using named reference.
> 
> Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
> ---
> 
> Changes in v2:
>   move phy code from base/property.c to net/phy/phy_device.c
>   replace acpi & of code to get phy-handle with fwnode_find_reference
> 
>  drivers/net/phy/phy_device.c | 55 ++++++++++++++++++++++++++++++++++++
>  include/linux/phy.h          |  3 ++
>  2 files changed, 58 insertions(+)
> 
> diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
> index 7e1ddd5745d2..a2f3dbba8a3c 100644
> --- a/drivers/net/phy/phy_device.c
> +++ b/drivers/net/phy/phy_device.c
> @@ -31,6 +31,7 @@
>  #include <linux/mdio.h>
>  #include <linux/io.h>
>  #include <linux/uaccess.h>
> +#include <linux/property.h>
>  
>  MODULE_DESCRIPTION("PHY library");
>  MODULE_AUTHOR("Andy Fleming");
> @@ -2436,6 +2437,60 @@ static bool phy_drv_supports_irq(struct phy_driver *phydrv)
>  	return phydrv->config_intr && phydrv->ack_interrupt;
>  }
>  
> +/**
> + * fwnode_phy_find_device - Find phy_device on the mdiobus for the provided
> + * phy_fwnode.
> + * @phy_fwnode: Pointer to the phy's fwnode.
> + *
> + * If successful, returns a pointer to the phy_device with the embedded
> + * struct device refcount incremented by one, or NULL on failure.
> + */
> +struct phy_device *fwnode_phy_find_device(struct fwnode_handle *phy_fwnode)
> +{
> +	struct device *d;
> +	struct mdio_device *mdiodev;
> +
> +	if (!phy_fwnode)
> +		return NULL;
> +
> +	d = bus_find_device_by_fwnode(&mdio_bus_type, phy_fwnode);
> +	if (d) {
> +		mdiodev = to_mdio_device(d);
> +		if (mdiodev->flags & MDIO_DEVICE_FLAG_PHY)
> +			return to_phy_device(d);
> +		put_device(d);
> +	}
> +
> +	return NULL;
> +}
> +EXPORT_SYMBOL(fwnode_phy_find_device);
> +
> +/**
> + * device_phy_find_device - For the given device, get the phy_device
> + * @dev: Pointer to the given device
> + *
> + * If successful, returns a pointer to the phy_device with the embedded
> + * struct device refcount incremented by one, or NULL on failure.
> + */
> +struct phy_device *device_phy_find_device(struct device *dev)
> +{
> +	return fwnode_phy_find_device(dev_fwnode(dev));
> +}
> +EXPORT_SYMBOL_GPL(device_phy_find_device);
> +
> +/**
> + * fwnode_get_phy_node - Get the phy_node using the named reference.
> + * @fwnode: Pointer to fwnode from which phy_node has to be obtained.
> + *
> + * Returns pointer to the phy fwnode, or ERR_PTR. Caller is responsible to
> + * call fwnode_handle_put() on the returned phy fwnode pointer.
> + */
> +struct fwnode_handle *fwnode_get_phy_node(struct fwnode_handle *fwnode)
> +{
> +	return fwnode_find_reference(fwnode, "phy-handle", 0);
> +}
> +EXPORT_SYMBOL_GPL(fwnode_get_phy_node);
> +
>  /**
>   * phy_probe - probe and init a PHY device
>   * @dev: device to probe and init
> diff --git a/include/linux/phy.h b/include/linux/phy.h
> index e2bfb9240587..f0450ef2dc9b 100644
> --- a/include/linux/phy.h
> +++ b/include/linux/phy.h
> @@ -1328,6 +1328,9 @@ void phy_set_asym_pause(struct phy_device *phydev, bool rx, bool tx);
>  bool phy_validate_pause(struct phy_device *phydev,
>  			struct ethtool_pauseparam *pp);
>  void phy_get_pause(struct phy_device *phydev, bool *tx_pause, bool *rx_pause);
> +struct phy_device *fwnode_phy_find_device(struct fwnode_handle *phy_fwnode);
> +struct phy_device *device_phy_find_device(struct device *dev);
> +struct fwnode_handle *fwnode_get_phy_node(struct fwnode_handle *fwnode);
>  void phy_resolve_pause(unsigned long *local_adv, unsigned long *partner_adv,
>  		       bool *tx_pause, bool *rx_pause);
>  

I think you can find a better location in this file to places these
function prototypes - putting them in the middle of a set of prototypes
for pause-related functions looks like you printed the file out, and
played "pin the tail on the donkey" to select somewhere to put them!

I think putting them near the get_phy_device() prototype would be
sensible.  Also, consider the case where CONFIG_PHYLIB is not set.
Do we need stub implementations of these functions to avoid ifdefs
in C code?

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
