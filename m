Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD2F73293
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 17:18:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4r7RuO2rBWwhlZOOwbJ0ERKpTyfGbPwzr5tlZrhkVj8=; b=nhOqV8rTGb5cce
	VdkJIQ1EvVmKtCjudfgXAZ0aVwU5CNFpIXznS3kPZqnAQDyh/VZqb39yGPs+G+19f04U/+kW9cMlY
	mALmU5rFo9Qse+OXVwbM8msAbJz7a88nKCp8fpE58XDyhpmc3l7dknRQT4g7N5y5cM9WkzLxKyHmn
	IzXZ3wM+bJtz8VjYIXsuxJ4rTEFnyuetuGJw5elFJGPIItmphDvDKxVEUzUmphRVMca9fN9vaYU5c
	6qla4OsQZUjnpVeEffO5JLuR2yfcQlsHRMcgQ4Vcl3ymjlUrY4NWghrgNcCxXyEan/GOnlqwCW33W
	PYFHRG4MwAW1QH7EtDjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqJ24-0005iC-1L; Wed, 24 Jul 2019 15:18:20 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqJ1v-0005gw-Ri
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 15:18:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HhOq85evkFM/y15ZM/uScRYpMDK7uIWdehOeEOZxwf4=; b=aD9gCEO/FuimjgYQZxJxnzZ4v1
 SEPBl3v97IkgN4q2SfajCnLPZCPyb9eAUvSJCSsM/ceXh7w22MSJIGZYynurXwVFVmUsi6Qkb6gy4
 numZoJbK/AWNh/CnvIzhqder6Q5qnPPyuV1qWrQqWUAjRrDjAC982P5hwYPoiIoAFa8U=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hqJ1n-000061-9c; Wed, 24 Jul 2019 17:18:03 +0200
Date: Wed, 24 Jul 2019 17:18:03 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Claudiu Manoil <claudiu.manoil@nxp.com>
Subject: Re: [PATCH net-next v1 1/4] enetc: Clean up local mdio bus allocation
Message-ID: <20190724151803.GR25635@lunn.ch>
References: <1563979301-596-1-git-send-email-claudiu.manoil@nxp.com>
 <1563979301-596-2-git-send-email-claudiu.manoil@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563979301-596-2-git-send-email-claudiu.manoil@nxp.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_081812_052671_37BC0BC5 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 alexandru.marginean@nxp.com, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 05:41:38PM +0300, Claudiu Manoil wrote:
> Though it works, this is not how it should have been.
> What's needed is a pointer to the mdio registers.
> Store it properly inside bus->priv allocated space.
> Use devm_* variant to further clean up the init error /
> remove paths.
> 
> Fixes following sparse warning:
>  warning: incorrect type in assignment (different address spaces)
>     expected void *priv
>     got struct enetc_mdio_regs [noderef] <asn:2>*[assigned] regs
> 
> Fixes: ebfcb23d62ab ("enetc: Add ENETC PF level external MDIO support")
> 
> Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>
> ---
> v1 - added this patch
> 
>  .../net/ethernet/freescale/enetc/enetc_mdio.c | 31 +++++++------------
>  1 file changed, 12 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/net/ethernet/freescale/enetc/enetc_mdio.c b/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
> index 77b9cd10ba2b..1e3cd21c13ee 100644
> --- a/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
> +++ b/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
> @@ -15,7 +15,8 @@ struct enetc_mdio_regs {
>  	u32	mdio_addr;	/* MDIO address */
>  };
>  
> -#define bus_to_enetc_regs(bus)	(struct enetc_mdio_regs __iomem *)((bus)->priv)
> +#define bus_to_enetc_regs(bus)	(*(struct enetc_mdio_regs __iomem **) \
> +				((bus)->priv))
>  
>  #define ENETC_MDIO_REG_OFFSET	0x1c00
>  #define ENETC_MDC_DIV		258
> @@ -146,12 +147,12 @@ static int enetc_mdio_read(struct mii_bus *bus, int phy_id, int regnum)
>  int enetc_mdio_probe(struct enetc_pf *pf)
>  {
>  	struct device *dev = &pf->si->pdev->dev;
> -	struct enetc_mdio_regs __iomem *regs;
> +	struct enetc_mdio_regs __iomem **regsp;
>  	struct device_node *np;
>  	struct mii_bus *bus;
> -	int ret;
> +	int err;
>  
> -	bus = mdiobus_alloc_size(sizeof(regs));
> +	bus = devm_mdiobus_alloc_size(dev, sizeof(*regsp));
>  	if (!bus)
>  		return -ENOMEM;
>  
> @@ -159,41 +160,33 @@ int enetc_mdio_probe(struct enetc_pf *pf)
>  	bus->read = enetc_mdio_read;
>  	bus->write = enetc_mdio_write;
>  	bus->parent = dev;
> +	regsp = bus->priv;
>  	snprintf(bus->id, MII_BUS_ID_SIZE, "%s", dev_name(dev));
>  
>  	/* store the enetc mdio base address for this bus */
> -	regs = pf->si->hw.port + ENETC_MDIO_REG_OFFSET;
> -	bus->priv = regs;
> +	*regsp = pf->si->hw.port + ENETC_MDIO_REG_OFFSET;

This is all very odd and different to every other driver.

If i get the code write, there are 4 registers, each u32 in size,
starting at pf->si->hw.port + ENETC_MDIO_REG_OFFSET?

There are macros like enetc_port_wr() and enetc_global_wr(). It think
it would be much cleaner to add a macro enet_mdio_wr() which takes
hw, off, val.

#define enet_mdio_wr(hw, off, val) enet_port_wr(hw, off + ENETC_MDIO_REG_OFFSET, val)

struct enetc_mdio_priv {
       struct enetc_hw *hw;
}

	struct enetc_mdio_priv *mdio_priv;

	bus = devm_mdiobus_alloc_size(dev, sizeof(*mdio_priv));

	mdio_priv = bus->priv;
	mdio_priv->hw = pf->si->hw;


static int enetc_mdio_write(struct mii_bus *bus, int phy_id, int regnum,
                            u16 value)
{
	struct enetc_mdio_priv *mdio_priv = bus->priv;
...
	enet_mdio_wr(priv->hw, ENETC_MDIO_CFG, mdio_cfg);
}
			    	
All the horrible casts go away, the driver is structured like every
other driver, sparse is probably happy, etc.

      Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
