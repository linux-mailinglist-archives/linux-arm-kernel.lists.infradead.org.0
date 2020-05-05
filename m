Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 597C11C59E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xo0ZQQcmnYpIAgZpj0LJ/Yd6mWnqhjP4zxq87j60rs=; b=ELoSvzP/m5jG8t
	d3SymtCMjTGalcdI5V7EAfhe5Kl+dWw5JCWqE4wVNMb+S/P3QUQaDK3LnfmwDwFxQWvTG3iELvKFp
	Udv3tK8Yy86obFSnTkcMX9dXLmDvhiqOZY3/7qBebxXw9BKFxC/aCpsABDczF+qccLv/nxf6ZlGbA
	IsXG4y9EigOXd6VnJrujVONdYRWEjXmpSQGk1aQT66N0KvK9GAdAf2BTdi7oWnHySMt33KbQVKJ4J
	6TjkgmB8NsVnwUPcmxsd45ZBNkdyt//GbVAzuTxstn2HqPV35od4kB1kaQUYoaBcuVg1VGx7aj+Os
	8PXyQF9o85E6/hZeTaew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVypH-0007VN-2R; Tue, 05 May 2020 14:45:39 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyp7-0007SW-Qd
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:45:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bce39cuhX+v1hhfYsPnYxLnuYR5lP/z3GapCTjD03hM=; b=b2Jt5T0jNdoZl3RJSWosMCfhx
 kgLFhgINbBWKyjtBOcxA48/fC1ckaCPZjO8j937EwIiBU4erqDB7D6RmWvm8RHrOqtENm7l8eHZ+C
 f+YnQvZk6yGKlVtaXZAhBkEuJPKAa4fA/+tCo2SJgGVFLrHiMw5b0aA/webhWeJX1A9tmjuzfpMMQ
 EiOLtC5g8TLkvnMlRURyYhWvzpC9ddO9H52wFyZmELgmCDazwji3PP3ueKlVEUEmJyQzS45eFLsci
 AQQd2bWz7zT+OGSLFNkNYkd/lkL8nV3EZKre9zaUHj8OX/lu/HbIGwE8iBgAHEbT5LLfJR4IuBDFP
 ucLMiqVAw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:36340)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jVyod-00030V-EZ; Tue, 05 May 2020 15:44:59 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jVyoc-0007F0-7K; Tue, 05 May 2020 15:44:58 +0100
Date: Tue, 5 May 2020 15:44:58 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
Subject: Re: [net-next PATCH v3 1/5] net: phy: Introduce phy related fwnode
 functions
Message-ID: <20200505144458.GK1551@shell.armlinux.org.uk>
References: <20200505132905.10276-1-calvin.johnson@oss.nxp.com>
 <20200505132905.10276-2-calvin.johnson@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505132905.10276-2-calvin.johnson@oss.nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_074530_186090_E57AAFF4 
X-CRM114-Status: GOOD (  22.87  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
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

On Tue, May 05, 2020 at 06:59:01PM +0530, Calvin Johnson wrote:
> Define fwnode_phy_find_device() to iterate an mdiobus and find the
> phy device of the provided phy fwnode. Additionally define
> device_phy_find_device() to find phy device of provided device.
> 
> Define fwnode_get_phy_node() to get phy_node using named reference.
> 
> Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
> ---
> 
> Changes in v3:
>   move fwnode APIs to appropriate place
>   stubs fwnode APIs for !CONFIG_PHYLIB
>   improve comment on function return condition.
> 
> Changes in v2:
>   move phy code from base/property.c to net/phy/phy_device.c
>   replace acpi & of code to get phy-handle with fwnode_find_reference
> 
>  drivers/net/phy/phy_device.c | 53 ++++++++++++++++++++++++++++++++++++
>  include/linux/phy.h          | 19 +++++++++++++
>  2 files changed, 72 insertions(+)
> 
> diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
> index 7e1ddd5745d2..3e8224132218 100644
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
> @@ -2436,6 +2437,58 @@ static bool phy_drv_supports_irq(struct phy_driver *phydrv)
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

This is basically functionally equivalent to of_phy_find_device().  If
we replaced of_mdio_find_device() with a fwnode equivalent and used that
above, we could have both of_mdio_find_device() and of_phy_find_device()
be wrappers around their fwnode equivalents.

That also means less lines of code to maintain, and means that we're
unlikely to have two implementations that may drift apart functionally
over time because their separated in two different parts of the kernel.
That is an especially important point given that fwnodes can be DT
nodes, so one may call fwnode APIs on a DT platform.

> +
> +/**
> + * device_phy_find_device - For the given device, get the phy_device
> + * @dev: Pointer to the given device
> + *
> + * Refer return conditions of fwnode_phy_find_device().
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
> + * Refer return conditions of fwnode_find_reference().
> + */
> +struct fwnode_handle *fwnode_get_phy_node(struct fwnode_handle *fwnode)
> +{
> +	return fwnode_find_reference(fwnode, "phy-handle", 0);
> +}
> +EXPORT_SYMBOL_GPL(fwnode_get_phy_node);

What if the fwnode is a DT device handle?  Shouldn't this also check for
the legacy properties as well, so we can transition code over to this
new interface?

> +
>  /**
>   * phy_probe - probe and init a PHY device
>   * @dev: device to probe and init
> diff --git a/include/linux/phy.h b/include/linux/phy.h
> index e2bfb9240587..f2664730a331 100644
> --- a/include/linux/phy.h
> +++ b/include/linux/phy.h
> @@ -1141,10 +1141,29 @@ struct phy_device *phy_device_create(struct mii_bus *bus, int addr, u32 phy_id,
>  				     bool is_c45,
>  				     struct phy_c45_device_ids *c45_ids);
>  #if IS_ENABLED(CONFIG_PHYLIB)
> +struct phy_device *fwnode_phy_find_device(struct fwnode_handle *phy_fwnode);
> +struct phy_device *device_phy_find_device(struct device *dev);
> +struct fwnode_handle *fwnode_get_phy_node(struct fwnode_handle *fwnode);
>  struct phy_device *get_phy_device(struct mii_bus *bus, int addr, bool is_c45);
>  int phy_device_register(struct phy_device *phy);
>  void phy_device_free(struct phy_device *phydev);
>  #else
> +static inline
> +struct phy_device *fwnode_phy_find_device(struct fwnode_handle *phy_fwnode)
> +{
> +	return NULL;
> +}
> +
> +static inline struct phy_device *device_phy_find_device(struct device *dev)
> +{
> +	return NULL;
> +}
> +
> +struct fwnode_handle *fwnode_get_phy_node(struct fwnode_handle *fwnode)
> +{
> +	return NULL;
> +}
> +
>  static inline
>  struct phy_device *get_phy_device(struct mii_bus *bus, int addr, bool is_c45)
>  {
> -- 
> 2.17.1
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
