Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E67E1AEC1B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 13:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6y4h3VuhDu+XXGB1VGT7cCkjeBu0lk2cTSHSnNVcrE=; b=XVgSR+lhZIXtB1
	mXIG1lhw4GgSYyuQoD0XvlHHjeKhkYDq81+NOm2za0xKS264VfwbDvVWZpu4h3MfrwWLKsMWDJJJv
	NLJz/KGeaV1D1Wwil3eqgb39z5ssf/N1n18BTKo70orclB/r2ZhWwOjoR/M6xRTsChqckO7e4z4fW
	5YJ15ko2H0NxkHvuS+XwZhvVHOIF4JWDYvwEm0afeDifxxUesFkVR0Boz1OwVWfY2zPSAvhJj0aHB
	add4eZRG7Gzq3wsdU9BwODWIS5kr5ryeZKLlCSCZeX+CjkjAQwmPEhDtZqrjRSVdXN52hBZ3CGhcA
	Jpi94BvxRfRRTll5wbvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPlqv-00035m-LP; Sat, 18 Apr 2020 11:41:41 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPlqn-00034d-6S
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 11:41:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f0yHxPnJ4f0dB3+aObaskVJwqP9Vh3YSIkWQwfwhGfY=; b=nAUQPpYPImHaOkKUw8FoF83Mh
 UeQPgLagCtSswt3JODiv30UXzLVtA1mLDzsumB09CfWIGMItowEg8dGwHxoBsEdnbK0RkWTR6hqpu
 rkonsHEFM/EZIr++vc7Veu5fWAQgRt1jweHDBE87ZsEnH3GL3tafalW3AhXshpgjh8ETeuJWl9XfL
 Y4MOnqOB9FNkf7N2PtpYNnzYAdJb0kNNq8SJCbNhoV8iIeGIGz7V952OXpf1Q2cnZWhAVmROfh7dF
 A3pED/rVM7Tj6TD81pcG6maoNNvpa3DtlPnFjL9TPeWt2b8wjPYh6gZO58Zi1/AO6N7mONHdW4XeJ
 VHPxZTgeQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:47572)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jPlqX-0007qT-PX; Sat, 18 Apr 2020 12:41:17 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jPlqW-0003qM-3f; Sat, 18 Apr 2020 12:41:16 +0100
Date: Sat, 18 Apr 2020 12:41:16 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
Subject: Re: [RFC net-next PATCH v2 1/2] net/fsl: add ACPI support for mdio bus
Message-ID: <20200418114116.GU25745@shell.armlinux.org.uk>
References: <20200418105432.11233-1-calvin.johnson@oss.nxp.com>
 <20200418105432.11233-2-calvin.johnson@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200418105432.11233-2-calvin.johnson@oss.nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_044133_240734_0666FA88 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>, netdev@vger.kernel.org,
 Pankaj Bansal <pankaj.bansal@nxp.com>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Marcin Wojtas <mw@semihalf.com>,
 Diana Madalina Craciun <diana.craciun@nxp.com>, linux-acpi@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 linux.cj@gmail.com, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 18, 2020 at 04:24:31PM +0530, Calvin Johnson wrote:
> @@ -241,18 +244,81 @@ static int xgmac_mdio_read(struct mii_bus *bus, int phy_id, int regnum)
>  	return value;
>  }
>  
> +/* Extract the clause 22 phy ID from the compatible string of the form
> + * ethernet-phy-idAAAA.BBBB

This comment is incorrect.  What about clause 45 PHYs?

> + */
> +static int xgmac_get_phy_id(struct fwnode_handle *fwnode, u32 *phy_id)
> +{
> +	const char *cp;
> +	unsigned int upper, lower;
> +	int ret;
> +
> +	ret = fwnode_property_read_string(fwnode, "compatible", &cp);
> +	if (!ret) {
> +		if (sscanf(cp, "ethernet-phy-id%4x.%4x",
> +			   &upper, &lower) == 2) {
> +			*phy_id = ((upper & 0xFFFF) << 16) | (lower & 0xFFFF);
> +			return 0;
> +		}
> +	}
> +	return -EINVAL;
> +}
> +
> +static int xgmac_mdiobus_register_phy(struct mii_bus *bus,
> +				      struct fwnode_handle *child, u32 addr)
> +{
> +	struct phy_device *phy;
> +	bool is_c45 = false;
> +	int rc;
> +	const char *cp;
> +	u32 phy_id;
> +
> +	fwnode_property_read_string(child, "compatible", &cp);
> +	if (!strcmp(cp, "ethernet-phy-ieee802.3-c45"))
> +		is_c45 = true;
> +
> +	if (!is_c45 && !xgmac_get_phy_id(child, &phy_id))
> +		phy = phy_device_create(bus, addr, phy_id, 0, NULL);
> +	else
> +		phy = get_phy_device(bus, addr, is_c45);
> +	if (IS_ERR(phy))
> +		return PTR_ERR(phy);
> +
> +	phy->irq = bus->irq[addr];
> +
> +	/* Associate the fwnode with the device structure so it
> +	 * can be looked up later.
> +	 */
> +	phy->mdio.dev.fwnode = child;
> +
> +	/* All data is now stored in the phy struct, so register it */
> +	rc = phy_device_register(phy);
> +	if (rc) {
> +		phy_device_free(phy);
> +		fwnode_handle_put(child);
> +		return rc;
> +	}
> +
> +	dev_dbg(&bus->dev, "registered phy at address %i\n", addr);
> +
> +	return 0;

You seem to be duplicating the OF implementation in a private driver,
converting it to fwnode.  This is not how we develop the Linux kernel.
We fix subsystem problems by fixing the subsystems, not by throwing
what should be subsystem code into private drivers.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
