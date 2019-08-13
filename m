Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 681558BD55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 17:38:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSyp1kVcCAdVfBZw4Ep8iggZOM1VO8B4RQMStR8I2G4=; b=tf/zBmcEcKqC1T
	DNkai46hD4Nz1We38FMo0DG2TQq0Oy2TWuskSKz/48wRJ0l4onW716XFokmbIc6vZtYUrsDSFmOeR
	YsuDmjfXymwhDVzPvCmD6bB8igV2L0lsmFFbMS6dvkWW9RfhYRbLcOVvEEq/7JMFl0DCBZ7p/4CSB
	0IFBcHy2g7FRrB4FbaSUQgNGlGRTpY2ZYl/LW0MorM9lstXC/hEfwoMCFPCs5zzbvOYXbXt2MKOr9
	c9Cb/0NM7+FAXqGU2eCFsZ05YnEVbadLH9UZNcmLW+me54elBYAkhA1tDBhz0yqfVR0tmbc7xfUQW
	gOxMyVn34mOBE7irIo/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxYsh-0000wp-VV; Tue, 13 Aug 2019 15:38:40 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxYsT-0000wN-ST
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 15:38:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BJYOCOgG3vSFD6B2/NaAeHaq/xMvIZnICqXhFcn1r2g=; b=SrBu8AYaayxZtoAvX73LOWV53W
 T30rx8Yp718aJXL83KUA1lrCEW1ZrAbyOCuuhybNrVEaIkILwcAOzqx69S859eUT3ouinPFsNGR77
 A7UlK8svth/iQczY5jhEFoTPqXqCITyi7pPix70VltvRCfq9gnp4Iq7SS8pNZMUXIovY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hxYsO-0002VJ-T4; Tue, 13 Aug 2019 17:38:20 +0200
Date: Tue, 13 Aug 2019 17:38:20 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Harini Katakam <harinik@xilinx.com>
Subject: Re: [PATCH 2/2] net: gmii2rgmii: Switch priv field in mdio device
 structure
Message-ID: <20190813153820.GY14290@lunn.ch>
References: <1564565779-29537-1-git-send-email-harini.katakam@xilinx.com>
 <1564565779-29537-3-git-send-email-harini.katakam@xilinx.com>
 <20190801040648.GJ2713@lunn.ch>
 <CAFcVEC+DyVhLzbMdSDsadivbnZJxSEg-0kUF5_Q+mtSbBnmhSA@mail.gmail.com>
 <20190813132321.GF15047@lunn.ch>
 <CAFcVECKipjD9atgEJSf8j78q_1aOAX77nD6vVeytZ-M00qBt6A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFcVECKipjD9atgEJSf8j78q_1aOAX77nD6vVeytZ-M00qBt6A@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_083826_069565_993F1D65 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
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

> > The kernel does have a few helper, spi_get_drvdata, pci_get_drvdata,
> > hci_get_drvdata. So maybe had add phydev_get_drvdata(struct phy_device
> > *phydev)?
> 
> Maybe phydev_mdio_get_drvdata? Because the driver data member available is
> phydev->mdio.dev.driver_data.

I still prefer phydev_get_drvdata(). It fits with the X_get_drvdata()
pattern, where X is the type of parameter passed to the call, spi,
pci, hci.

We can also add mdiodev_get_drvdata(mdiodev). A few DSA drivers could
use that.

   Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
