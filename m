Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052F951A80
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 20:27:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmPGxx4RuPS/tcppXwrBqgLoaMVy3xMris+n09v+EyA=; b=OhY+q1Le2R1/s8
	JXVewW84gqC+PT5m87IFbXRpL4ueyQUB2uCBLrm0oNU6kh3BwUoEKSWaWtt0TOrE/U3/oSK69N1R/
	vaosMZK8hkbJtyaLMmTvrzjd7MEhXcBAN7NaiZwmbkiz1JZlKXwbunuNX1zeA+lSU90XOCFdXXlnY
	HJV5/Anst4uI//3Gd1gfkG+biipirlZqoqzgZ0SuFxJclf2O91QwB98cpeXH6pMw4B7Kxngqsfad/
	T1sOVvTLUQHwyb9utoe8r+7DofJUvfEemQQjmK5ZIRUz22qc7VS7eAmaJeDBCdnnNkISIc799NTXO
	6SwVfOWf22WY6A02U05Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfTgE-0000pR-NQ; Mon, 24 Jun 2019 18:27:02 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfTg5-0000pH-9y
 for linux-arm-kernel@bombadil.infradead.org; Mon, 24 Jun 2019 18:26:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SQLoGuDrIRqFw0SdGRGBkF1ZPUHhu60LtLFjjoddWXQ=; b=axrq6CY4sBvm3Ks2fS8qjBqqN
 DY/S2/Jelda119sFvrCw5xcih+O6lHyzhZAjqK2Hj/4pACJo7sgGYCrYtSjik4Iwd+zt8wykFjDig
 cQeco+IU0mSFLhp8pT/2tLFZqcZehwUkMFmMXYgpE1rijsCYOYUR3cUUnnSfkpt5U43WVKB4Ve3jK
 Jzzre+IwB8xpj1Cnn487+HbQqUgDrARe0yUjMA99wY/nWa3sj4+dmIKVN3l8ZgYOirQx3/U4ZRjIJ
 aeLIhiEpmri37oXjTQGYJI5QG/DgHzTncaLs4y7ThgqpOGFO5KnQEOeEVHFpH19/4kfBp1A5g/OI6
 HaOhEhD6w==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfTg4-0003Xu-8U
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 18:26:54 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 4A0E5E0008;
 Mon, 24 Jun 2019 18:26:15 +0000 (UTC)
Date: Mon, 24 Jun 2019 20:26:14 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH net-next 4/6] arm64: dts: fsl: ls1028a: Add Felix switch
 port DT node
Message-ID: <20190624182614.GC5690@piout.net>
References: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
 <1561131532-14860-5-git-send-email-claudiu.manoil@nxp.com>
 <20190621164940.GL31306@lunn.ch>
 <VI1PR04MB4880D8F90BBCD30BF8A69C9696E00@VI1PR04MB4880.eurprd04.prod.outlook.com>
 <20190624115558.GA5690@piout.net> <20190624142625.GR31306@lunn.ch>
 <20190624152344.3bv46jjhhygo6zwl@lx-anielsen.microsemi.net>
 <20190624162431.GX31306@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624162431.GX31306@lunn.ch>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_192652_353355_2B1305E1 
X-CRM114-Status: GOOD (  32.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexandru Marginean <alexandru.marginean@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 Allan Nielsen <Allan.Nielsen@microsemi.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "Allan W. Nielsen" <allan.nielsen@microchip.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24/06/2019 18:24:31+0200, Andrew Lunn wrote:
> On Mon, Jun 24, 2019 at 05:23:45PM +0200, Allan W. Nielsen wrote:
> > Hi Andrew,
> > 
> > The 06/24/2019 16:26, Andrew Lunn wrote:
> > > > > Yeah, there are 2 ethernet controller ports (managed by the enetc driver) 
> > > > > connected inside the SoC via SGMII links to 2 of the switch ports, one of
> > > > > these switch ports can be configured as CPU port (with follow-up patches).
> > > > > 
> > > > > This configuration may look prettier on DSA, but the main restriction here
> > > > > is that the entire functionality is provided by the ocelot driver which is a
> > > > > switchdev driver.  I don't think it would be a good idea to copy-paste code
> > > > > from ocelot to a separate dsa driver.
> > > > > 
> > > > 
> > > > We should probably make the ocelot driver a DSA driver then...
> > > An important part of DSA is being able to direct frames out specific
> > > ports when they ingress via the CPU port. Does the silicon support
> > > this? At the moment, i think it is using polled IO.
> > 
> > That is supported, it requires a bit of initial configuration of the Chip, but
> > nothing big (I believe this configuration is part of Claudiu's change-set).
> > 
> > But how do you envision this done?
> > 
> > - Let the existing SwitchDev driver and the DSA driver use a set of common
> >   functions.
> > - Convert the existing Ocelot driver from SwitchDev to DSA
> > - Fork (copy) the existing driver of Ocelot, and modify it as needed for the
> >   Felix driver
> > 
> > My guess is the first one, but I would like to understand what you have in mind.
> 
> I don't know the various architectures the switch is used in. But it
> does seem like a core library, and then a switchdev wrapper for Ocelot
> and a DSA wrapper for Felix would make sense.

Ocelot could also be used in a DSA setting where one port can be
connected to an external MAC and be used to inject/extract frames
to/from any other ports. In that case, the IFH would serve as the DSA
tag.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
