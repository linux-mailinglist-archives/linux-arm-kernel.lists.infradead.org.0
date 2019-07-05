Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B70660707
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 15:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUDg2c2HoY1XL2B2hJ1OuYPAWC2Z+shI9wTLg82kSFE=; b=umqvfVQQV3Mhz5
	aJEshDOLaUqvlNTpOj5RMYoN+6yio23sbshMdqkZjSG2b11Bv4g0OamdnObmw2Z4p//Ym9lYNhwNY
	BBBhwpRzW86oMcOHHXEeDkWuDtvtLl+ZH4WKt/kC4DIr9hAw0hqn81yCj684QrtWjE0jhAcqLAaMO
	rddK4gGqqRSONFq5IJ+Qxh5rJmna8+OW6hoR7GKUZaY3G1bOEgpWGsMseyqkBTLaWN4jx4rr+yuZn
	jQMIuWmUMEF8rjSTdENOQge+4T+tvnw2RyYex9P2W9fxZ0gY6gCy9Sxepy+DoAH4+kD26n0ZnKG4J
	M+kNUXVUUyg6tbSh1tgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOkl-0002l2-DJ; Fri, 05 Jul 2019 13:59:55 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOA1-0005Tu-2G
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 13:21:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nWbKLFHL+b+hFBq0825QJ0Fh8N/yT85HADdlrJpqwCQ=; b=XWROPy0+FtAzBVb0OoMY8g4Lh
 Hcd4gsPbFyI7/Wsh16p79UicoOAH0ZjQPR308eauWdwSlheI8Vnzclua8vnU958Chu+qYrgBCSZk5
 1sXXi2TeMMv9OaLu5uLcLzZm5sa1sh9wvmnolcddfKtBI75XlzJw2UPBdGbIBfOk5Lg0tOYlj/Lm+
 /ADANaqy6kVpS5pa4MuvFlL9atWwuHwyl2Y8T3Hnjn7XazxaUXlY0zOleQf20zmgEWhr7GIASP3Sz
 9X+itYE1EQvKSJRkOOLjyX4ms5PZr8lQdgwwMZ63FVyKDwap//XRjGVCrk22kKsyekyhsXuUa2JmA
 lpujHCAUA==;
Received: from vps0.lunn.ch ([185.16.172.187])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjO9u-0004t0-1e
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 13:21:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nWbKLFHL+b+hFBq0825QJ0Fh8N/yT85HADdlrJpqwCQ=; b=3GP3RPKu7ZpFV7+cfZjE+vohUc
 Bex/2CpZC7Ala0E0eG4LZVetEHQEb/pfJHowfchWGZpWrdgaXwHw7j7iVZVhdnGDzqhJtwb9f/Eeo
 KLOig8uZwjFnSMbwTDYL8WRA0Mk0Pe6SrZtuUPnX5rsJaDgQ9SE3ZqwIKhT9NdjVOm9A=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hjO7O-0001Br-S6; Fri, 05 Jul 2019 15:19:14 +0200
Date: Fri, 5 Jul 2019 15:19:14 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Claudiu Manoil <claudiu.manoil@nxp.com>
Subject: Re: [PATCH net-next 4/6] arm64: dts: fsl: ls1028a: Add Felix switch
 port DT node
Message-ID: <20190705131914.GA4428@lunn.ch>
References: <20190621164940.GL31306@lunn.ch>
 <VI1PR04MB4880D8F90BBCD30BF8A69C9696E00@VI1PR04MB4880.eurprd04.prod.outlook.com>
 <20190624115558.GA5690@piout.net> <20190624142625.GR31306@lunn.ch>
 <20190624152344.3bv46jjhhygo6zwl@lx-anielsen.microsemi.net>
 <20190624162431.GX31306@lunn.ch> <20190624182614.GC5690@piout.net>
 <CA+h21hqGtA5ou7a3wjSuHxa_4fXk4GZohTAxnUdfLZjV3nq5Eg@mail.gmail.com>
 <20190705044945.GA30115@lunn.ch>
 <VI1PR04MB4880DEA9D7836A68E0EE141396F50@VI1PR04MB4880.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB4880DEA9D7836A68E0EE141396F50@VI1PR04MB4880.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_142150_169834_98CAF1BD 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexandru Marginean <alexandru.marginean@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 Allan Nielsen <Allan.Nielsen@microsemi.com>, Rob Herring <robh+dt@kernel.org>,
 "Allan W. Nielsen" <allan.nielsen@microchip.com>,
 Vladimir Oltean <olteanv@gmail.com>, "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Nice discussion, again, but there's a missing point that has not been
> brought up yet.  We actually intend to support the following hardware
> configuration: a single PCI device consisting of the Microsemi's switch core
> and our DMA rings.
> The hardware supports this configuration into a single PCI function (PF), 
> with a unique PCI function id (0xe111), so that the same driver has access to 
> both switch registers and DMA rings connected to the CPU port.  This device
> would qualify  as a  switchdev device, and we can simply reuse the existing
> ocelot code for the switch core part.  The initial patch set was the first step in
> supporting the switch core on our platform, we just need to add the support
> for the DMA rings part, to make it a complete switchdev solution.

Hi Claudiu

It sound like in the end you will have a core library and then two
drivers wrapped around it, giving a pure switchdev device with polled
IO or DMA, and a DSA driver using a CPU port.

   Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
