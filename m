Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4B68BCCC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 17:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cy4cdoqxgqhdm70xJUAPDiQu0mQlrjMp4b2FrUCz2jo=; b=qMsqaB+YuqWxLC
	8Zls/UP9MtpvXmBmyvAs9fLiM806TEt/vSt8wHtr6JMQM7VcmTL1KvSzgK9vF8Gtly2iJJNW6JE3n
	SCVDqjRtrTB6zA5AtRh/4cacekRa41zHyo/TiK0MgRVO59SQ2DSTRXZPI6ATg0qCPbGHACWsZAFh2
	EHXkZX4PGymPc2iBnsdjNFIonYP7bipFD4+eRN8vtcZsnRvqRLj8exf4G+nUmRdSWMwrqnLd/J3qp
	bUNRuCt3DdyULyk6AygEXX8y7WqCWUq6fybT2da8HltQJF7+0vSPUT5q8R0uxOJiof/+xSiHCRP6G
	lRGxw7/GaBRgAeY2TwPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxYUc-000764-RA; Tue, 13 Aug 2019 15:13:46 +0000
Received: from mail-yw1-f65.google.com ([209.85.161.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxYUO-00074w-Ki
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 15:13:34 +0000
Received: by mail-yw1-f65.google.com with SMTP id m11so1770875ywh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 08:13:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FTYkGKgYhTTZj8By3iaUad49bD86jov+/Fpt329FbJ0=;
 b=W6/6tVyBn3YxUBSxnWkVJOJDXCbUlIH0tWYgaQH8qN2WrRQl0oVNHDl1tOmk11JL2C
 ukdwyYeYVib8d8KszT6ETRy/PC/uMZzM4YgwcLldepw5H4rl7HDMHvw6u8ReGOZ8MqR2
 d3ev7ipOIka/CJMGOAQayJr2wSEpxvzxPW5fWDBY5iPFw+I0amrcSkSuuSqLOH+NfjuO
 oPXNyphGw7hzjkAP3G+dedbC+xzi5C/mfyg82LOsbzp9ck/7BryletlqnLmYAvM3e2dv
 yNi++4aTI790EuHN7swUgmdPDST0fMoK1sFeji8x0Vrz3vWrPQ62lzweCuX0EIVBrlhI
 uXzQ==
X-Gm-Message-State: APjAAAU71WaiNfJJ2cdKBxelVLQyNCvj4UFRsgUNn7KUEpQ6UHr9mako
 olT7x04y+nQWQxD7d32vXzoA/Dy5ORrrY3LYK30=
X-Google-Smtp-Source: APXvYqy1sMez9DxbNJVSH5PIRFadr0u7kJ0Tz2PDNYCQtLnwDiuIswKmK8DTC1SGMEQtgrGSsENSvwLCDiZUp/KH0pI=
X-Received: by 2002:a81:83c3:: with SMTP id
 t186mr23040734ywf.372.1565709211239; 
 Tue, 13 Aug 2019 08:13:31 -0700 (PDT)
MIME-Version: 1.0
References: <1564565779-29537-1-git-send-email-harini.katakam@xilinx.com>
 <1564565779-29537-3-git-send-email-harini.katakam@xilinx.com>
 <20190801040648.GJ2713@lunn.ch>
 <CAFcVEC+DyVhLzbMdSDsadivbnZJxSEg-0kUF5_Q+mtSbBnmhSA@mail.gmail.com>
 <20190813132321.GF15047@lunn.ch>
In-Reply-To: <20190813132321.GF15047@lunn.ch>
From: Harini Katakam <harinik@xilinx.com>
Date: Tue, 13 Aug 2019 20:43:19 +0530
Message-ID: <CAFcVECKipjD9atgEJSf8j78q_1aOAX77nD6vVeytZ-M00qBt6A@mail.gmail.com>
Subject: Re: [PATCH 2/2] net: gmii2rgmii: Switch priv field in mdio device
 structure
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_081332_676200_A4C8291A 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (harinikatakamlinux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

Hi Andrew,

On Tue, Aug 13, 2019 at 6:54 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Tue, Aug 13, 2019 at 04:46:40PM +0530, Harini Katakam wrote:
> > Hi Andrew,
> >
> > On Thu, Aug 1, 2019 at 9:36 AM Andrew Lunn <andrew@lunn.ch> wrote:
> > >
> > > On Wed, Jul 31, 2019 at 03:06:19PM +0530, Harini Katakam wrote:
> > > > Use the priv field in mdio device structure instead of the one in
> > > > phy device structure. The phy device priv field may be used by the
> > > > external phy driver and should not be overwritten.
> > >
> > > Hi Harini
> > >
> > > I _think_ you could use dev_set_drvdata(&mdiodev->dev) in xgmiitorgmii_probe() and
> > > dev_get_drvdata(&phydev->mdiomdio.dev) in _read_status()
> >
> > Thanks for the review. This works if I do:
> > dev_set_drvdata(&priv->phy_dev->mdio.dev->dev) in probe
> > and then
> > dev_get_drvdata(&phydev->mdio.dev) in _read_status()
> >
> > i.e mdiodev in gmii2rgmii probe and priv->phy_dev->mdio are not the same.
> >
> > If this is acceptable, I can send a v2.
>
> Hi Harini
>
> I think this is better, making use of the central driver
> infrastructure, rather than inventing something new.

Ok sure.

>
> The kernel does have a few helper, spi_get_drvdata, pci_get_drvdata,
> hci_get_drvdata. So maybe had add phydev_get_drvdata(struct phy_device
> *phydev)?

Maybe phydev_mdio_get_drvdata? Because the driver data member available is
phydev->mdio.dev.driver_data.

Regards,
Harini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
