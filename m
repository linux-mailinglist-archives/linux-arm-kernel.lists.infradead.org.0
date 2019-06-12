Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 857BC41BF5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 08:06:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdXtZsyyAra9mKxkW7AdwL+yJ+fIgMAmhD4HW+1Vuy0=; b=az1dSQpDL9iAdD
	QVT8FRW/78/oKtRe220mvA+K7bysJZGqe4UoRQl+gbtFhZd4N0YNo+wWNcX4+7epZToUoUn6SEiU2
	qnAtYHnt8yrWlCWGD/HDFgfm+urmba9n0/jXp/+lwZyn5ufFEHRYUunBxtJ1jOkm215bIsnK7hQpJ
	xBUtBVfOnPryVZr56KmdgMsxHZFGeJzP0tTcjcmt2e/70/hYYzhVhVO0nlX4zxAgYnzgoBHIzJ53x
	NW6wfz4+tidz2L0/rnMi91uPHA3qyoIduTYtmrzyiZLUboU3lvznUR2GM3wnVA2UtDJ1LXVrRCVUZ
	NTU9S62N6aXs58cACKJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hawOq-0000Pc-KS; Wed, 12 Jun 2019 06:06:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hawOg-0000PD-3v
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 06:06:11 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 03BE920874;
 Wed, 12 Jun 2019 06:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560319569;
 bh=VfQ07jf+Hvyl2Wul02CQ8cO773IXE5obZTrK/DXI6+w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wChXuwCQvpHKTywuj+8QXCvsWOJYw5/uwCjAXSqo+OnErMV3FxNQHWS+XdVnXxDah
 aaO9ImYPZJIVnGv5x4nKgWV2mr27lFg5n9fdD475NNidm3I7R/LcyJOQbwKsN3Br5U
 mu9UAPuLmO22DvoKPegV/B+HmNXa5QBUk/Ys0meg=
Date: Wed, 12 Jun 2019 14:05:29 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH 1/3] dt-bindings: imx: Add pinctrl binding doc for i.MX8MN
Message-ID: <20190612060522.GB11086@dragon>
References: <20190530030546.9224-1-Anson.Huang@nxp.com>
 <CACRpkdY-35o378Ka+4bgeSPjmq6P8DM872sgTxq2X3dDP9XZHQ@mail.gmail.com>
 <AM0PR04MB421171336B9206D02FF6514080ED0@AM0PR04MB4211.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB421171336B9206D02FF6514080ED0@AM0PR04MB4211.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_230610_180803_B863EDC2 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Stefan Agner <stefan@agner.ch>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Anson Huang <anson.huang@nxp.com>, Olof Johansson <olof@lixom.net>,
 Jagan Teki <jagan@amarulasolutions.com>, dl-linux-imx <linux-imx@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Simon Horman <horms+renesas@verge.net.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 10:00:36AM +0000, Aisheng Dong wrote:
> > From: Linus Walleij [mailto:linus.walleij@linaro.org]
> > Sent: Saturday, June 8, 2019 5:04 AM
> > 
> > On Thu, May 30, 2019 at 5:04 AM <Anson.Huang@nxp.com> wrote:
> > 
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > >
> > > Add binding doc for i.MX8MN pinctrl driver.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > 
> > Looks mostly OK to me, but I'd like the maintainers to review, so Dong et al
> > please look at this!
> > 
> > > +Required properties:
> > > +- compatible: "fsl,imx8mn-iomuxc"
> > 
> > So should this not be "nxp,imx8mn-iomuxc"
> > or "nxp,freescale-imx8mn-iomuxc" or something these days? The vendor name
> > is nxp is it not.
> > 
> > I was complaining to the DT maintainers at one point that these companies
> > seem to buy each other left and right so this vendor nomenclature is dubious,
> > but I guess at least it should reflect the vendor that produced the chip or
> > something.
> > 
> > If everyone is happy with "fsl,*" I will not complain though.
> > (i.e. if the maintainers ACK it.)
> 
> We preferred to keep "fsl,*" for Freescale i.MX product line according to last discussion.
> And we already did this way for most i.MX devices.

+1

We do not see serious problem with 'fsl' prefix, so would rather stay
with it.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
