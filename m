Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D90428BA04
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 15:23:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HhECVQQdipfR6ByMC3crcXUL5Y6AdJ0vVrjlkvDcTfo=; b=JXdvoYeQTi2geJ
	GaL6bXQ3lZN6Cn20XfXeATyThfs5bj63nR7/N1dXh7kdLVCrSRRq7pxMp5Pvb9DzrVMQ8jPytNG+4
	zKk84QgEvAp+i37af8nyvclB911qZkjgToO29p0qB4gx34A8ZEfDAw8GaIaF1mcBf2lmVy4V1k95i
	4PM3lNVt+pdxtBuf/0TrKvFyA7MhrFvZIriSdM2bknJQZErETn8XqLKnNb4Tzk3oAHSkXnRZwrq0j
	v5YaOMN1qX43CEJHv7U2uiQsSUI0ka7hLkk+YX/zVC/u1FwoNAiTSYp0fxFM96hvO70AHNuNlOm+4
	E0Rb993K+rtXUglbHBeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWm4-0005RF-FN; Tue, 13 Aug 2019 13:23:40 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWlr-0005G0-2p
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 13:23:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YCHZ3K8mmCIRGs587/Fkq0X6NLVBIcMaI9O+DVE1psw=; b=eF7GmDgMgA1p4uWVsKBK+77zei
 /20hCu8XCVXTYsIyvLQB4DFzBsGSLw6smKcwkPPLoLGtvP7og8ewHSM9gALv5Vj8dueWVOceFKtpM
 hxclsGJlT4iTIbCjon8EoDSkUDju6egUvcdVssu8Q5U5JzyeicnT5ThM9W5gRMd9aaWc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hxWll-0001Js-2X; Tue, 13 Aug 2019 15:23:21 +0200
Date: Tue, 13 Aug 2019 15:23:21 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Harini Katakam <harinik@xilinx.com>
Subject: Re: [PATCH 2/2] net: gmii2rgmii: Switch priv field in mdio device
 structure
Message-ID: <20190813132321.GF15047@lunn.ch>
References: <1564565779-29537-1-git-send-email-harini.katakam@xilinx.com>
 <1564565779-29537-3-git-send-email-harini.katakam@xilinx.com>
 <20190801040648.GJ2713@lunn.ch>
 <CAFcVEC+DyVhLzbMdSDsadivbnZJxSEg-0kUF5_Q+mtSbBnmhSA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFcVEC+DyVhLzbMdSDsadivbnZJxSEg-0kUF5_Q+mtSbBnmhSA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_062327_303755_BC46AFF7 
X-CRM114-Status: GOOD (  14.60  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
 radhey.shyam.pandey@xilinx.com, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, Harini Katakam <harini.katakam@xilinx.com>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 04:46:40PM +0530, Harini Katakam wrote:
> Hi Andrew,
> 
> On Thu, Aug 1, 2019 at 9:36 AM Andrew Lunn <andrew@lunn.ch> wrote:
> >
> > On Wed, Jul 31, 2019 at 03:06:19PM +0530, Harini Katakam wrote:
> > > Use the priv field in mdio device structure instead of the one in
> > > phy device structure. The phy device priv field may be used by the
> > > external phy driver and should not be overwritten.
> >
> > Hi Harini
> >
> > I _think_ you could use dev_set_drvdata(&mdiodev->dev) in xgmiitorgmii_probe() and
> > dev_get_drvdata(&phydev->mdiomdio.dev) in _read_status()
> 
> Thanks for the review. This works if I do:
> dev_set_drvdata(&priv->phy_dev->mdio.dev->dev) in probe
> and then
> dev_get_drvdata(&phydev->mdio.dev) in _read_status()
> 
> i.e mdiodev in gmii2rgmii probe and priv->phy_dev->mdio are not the same.
> 
> If this is acceptable, I can send a v2.

Hi Harini

I think this is better, making use of the central driver
infrastructure, rather than inventing something new.

The kernel does have a few helper, spi_get_drvdata, pci_get_drvdata,
hci_get_drvdata. So maybe had add phydev_get_drvdata(struct phy_device
*phydev)?

	Thanks
		Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
