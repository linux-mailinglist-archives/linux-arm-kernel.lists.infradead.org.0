Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E46C6606EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 15:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dz+ZR70rFEaymQncnXyLxZOGY2Eu7tlorTEmT2Gq+fI=; b=LabqjN9EbEpOrt
	c8qXPdcBpwZD/I9Tdn4fGoB6oIxokvIMvUQ4pcd0LLGGpmfpDDI8g9cE8OvN7RC9+kDWRpgsm6A2B
	9Ce17jvFLl5M9a2aHx7RxVMWG0ShUQTZBw7hczEwCTn2RN/8KJmdA4R8s65WrCKJN3DD/+PPc+yRl
	Ck4lsODa9AMk/4uR8rQmLRez4yZ2L74BGT5ATq5b0EAONdl+xZxji/Cn4UNkLe7phr6I2SBqNogeA
	YYhe++4b7z1WRFu5UG40rgIuxDy2jO2NRJ/i8ILpIk2O0vUxl1hg6HmMEdRKGsweWR5UtW+jS1PTX
	6WrJCdRTNnOTgZbjAaCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOgu-0006tq-Cr; Fri, 05 Jul 2019 13:55:56 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjGD3-0003G7-1L
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 04:52:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A6liZoln6V6W++MOwX//cUbgTZ2llyxlu+xBN9ffRZo=; b=sNQyPv+pffBkD58vXcNzPMi5C
 XKGCbOS1W2oSYkiS/8TUzy7VULZ21TkCxJmz+XKfkd0bn72QK/xHYLnJHoio2cih/dVV7E8dQio2k
 zidUWxvGJ0PH942t/3d3n8CB5i10tvTRNz5nqwLfhdxw5vOTSx+Ma8f1ScKYXrXYKo5nJptNzEaY2
 c1pRaaXLz6nRBUo7IxXQjlSbOQNAE+2qyp49hTts4nhLVxoW9XpEujbiI8+ezggGqKrIcRvz+vlKr
 enghUHOppww/g3EPkzTHl9UD3/hPHRqtkZ/bjM8pmLwtv+8z1a2jhF4Ks6KLR+uFbFOqwt7PjahPc
 /nDthV48Q==;
Received: from vps0.lunn.ch ([185.16.172.187])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjGCv-00072q-Uv
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 04:52:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A6liZoln6V6W++MOwX//cUbgTZ2llyxlu+xBN9ffRZo=; b=mrFX3QZqj9vt5Lzg7Sw2jZDk3t
 fI7iWPwcdm05PwDHMYSisUItWqhJlddyuitVLKjpAd/ECw8KjF7yeFxRNAyUJXtg+wMwClwOPZadH
 qQNRETUm6z4YPC2d+KVtyc4pAkkr//eiKteDG1Ne7ECm/g47/j9AgkzMJvt2TzniYID4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hjGAL-0007vd-P9; Fri, 05 Jul 2019 06:49:45 +0200
Date: Fri, 5 Jul 2019 06:49:45 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH net-next 4/6] arm64: dts: fsl: ls1028a: Add Felix switch
 port DT node
Message-ID: <20190705044945.GA30115@lunn.ch>
References: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
 <1561131532-14860-5-git-send-email-claudiu.manoil@nxp.com>
 <20190621164940.GL31306@lunn.ch>
 <VI1PR04MB4880D8F90BBCD30BF8A69C9696E00@VI1PR04MB4880.eurprd04.prod.outlook.com>
 <20190624115558.GA5690@piout.net> <20190624142625.GR31306@lunn.ch>
 <20190624152344.3bv46jjhhygo6zwl@lx-anielsen.microsemi.net>
 <20190624162431.GX31306@lunn.ch> <20190624182614.GC5690@piout.net>
 <CA+h21hqGtA5ou7a3wjSuHxa_4fXk4GZohTAxnUdfLZjV3nq5Eg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+h21hqGtA5ou7a3wjSuHxa_4fXk4GZohTAxnUdfLZjV3nq5Eg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_055226_048298_3924A9F1 
X-CRM114-Status: GOOD (  14.79  )
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
 Allan Nielsen <Allan.Nielsen@microsemi.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "Allan W. Nielsen" <allan.nielsen@microchip.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vladimir

> - DSA is typically used for discrete switches, switchdev is typically
> used for embedded ones.

Typically DSA is for discrete switches, but not exclusively. The
b53/SF2 is embedded in a number of Broadcom SoCs. So this is no
different to Ocelot, except ARM vs MIPS. Also, i would disagree that
switchdev is used for embedded ones. Mellonex devices are discrete, on
a PCIe bus. I believe Netronome devices are also discrete PCIe
devices. In fact, i think ocelot is the only embedded switchdev
switch.

So embedded vs discrete plays no role here at all.

> - The D in DSA is for cascaded switches. Apart from the absence of
> such a "Ocelot SoC" driver (which maybe can be written, I don't know),
> I think the switching core itself has some fundamental limitations
> that make a DSA implementation questionable:

There is no requirement to implement D in DSA. In fact, only Marvell
does. None of the other switches do. And you will also find that most
boards with a Marvell switch use a single device. D in DSA is totally
optional. In fact, DSA is built from the ground up that nearly
everything is optional. Take a look at mv88e6060, as an example. It
implements nearly nothing. It cannot even offload a bridge to the
switch.

> So my conclusion is that DSA for Felix/Ocelot doesn't make a lot of
> sense if the whole purpose is to hide the CPU-facing netdev.

You actually convinced me the exact opposite. You described the
headers which are needed to implement DSA. The switch sounds like it
can do what DSA requires. So DSA is the correct model.

     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
