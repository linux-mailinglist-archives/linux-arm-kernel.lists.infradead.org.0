Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FD1B4E91
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 14:55:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pdUr/oqueQdpCnlNRJ7gyXoywWJVIj1s9FKadEZqYQ8=; b=NpazRNXWjiki/d
	4f7+x475oKHOcoO5hLNjTIxPwrGqjhnP6zpxAEFO3M5cr20btAaFd4V95tb9XQP0byNwk4kBR9XnF
	4/W8WqDOE/KDNm1TK2ifoGtFVEs+/XT1VWCWWsQo2FDu6TfdhHKdFzS9rm9llpj8H4T17Q1gm0e4F
	0XnJBrZNL4dnFvsJMq2CIG7/eBYChnbGjhgHWjLPAqdsfizzN7I5f78/hriVmhk/iZTf+K1EJ+NPR
	gQDUn9YvCPC8gYD+VuqNTRbKjRsBCUzFvB2JaryUN5vpw4QWHR+Rtyb+ma2+RhSc76wLu+keg7aMc
	WGkK5phiQL4dQgY5niow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAD0t-0002t1-2K; Tue, 17 Sep 2019 12:55:23 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAD0K-0002sV-9P
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 12:54:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=53HEgi+72KwpP9sgsXsDmzVZkyS10sCz71cZFT+AAfk=; b=Hv2zeqGHZl58IobfJJXo7ZMRQ4
 32JsM7SK/VJ2h1fe0KuOAIZdw2fZ4U8nin5av2mdlNwqSITfVtkzlY5EQJ/4dM4c0hCNrbIGh19J8
 HclRUpAbE1miLccGX+a0F6uJ996GQ7Yt01oaFVLT61v7hBgxoGDbAfEY6jfkLHxJSiA8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1iAD06-0000w9-Vu; Tue, 17 Sep 2019 14:54:34 +0200
Date: Tue, 17 Sep 2019 14:54:34 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: tinywrkb <tinywrkb@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190917125434.GH20778@lunn.ch>
References: <20190910155507.491230-1-tinywrkb@gmail.com>
 <20190910185033.GD9761@lunn.ch> <87muf6oyvr.fsf@tarshish>
 <20190915135652.GC3427@lunn.ch>
 <20190917124101.GA1200564@arch-dsk-01>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917124101.GA1200564@arch-dsk-01>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_055448_483060_ACD94754 
X-CRM114-Status: GOOD (  21.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Baruch Siach <baruch@tkos.co.il>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Russell King <linux@armlinux.org.uk>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 03:41:01PM +0300, tinywrkb wrote:
> On Sun, Sep 15, 2019 at 03:56:52PM +0200, Andrew Lunn wrote:
> > > Tinywrkb confirmed to me in private communication that revert of
> > > 5502b218e001 fixes Ethernet for him on effected system.
> > > 
> > > He also referred me to an old Cubox-i spec that lists 10/100 Ethernet
> > > only for i.MX6 Solo/DualLite variants of Cubox-i. It turns out that
> > > there was a plan to use a different 10/100 PHY for Solo/DualLite
> > > SOMs. This plan never materialized. All SolidRun i.MX6 SOMs use the same
> > > AR8035 PHY that supports 1Gb.
> > > 
> > > Commit 5502b218e001 might be triggering a hardware issue on the affected
> > > Cubox-i. I could not reproduce the issue here with Cubox-i and a Dual
> > > SOM variant running v5.3-rc8. I have no Solo/DualLite variant handy at
> > > the moment.
> > 
> > Could somebody with an affected device show us the output of ethtool
> > with and without 5502b218e001. Does one show 1G has been negotiated,
> > and the other 100Mbps? If this is true, how does it get 100Mbps
> > without that patch? We are missing a piece of the puzzle.
> > 
> > 	Andrew
> 
> linux-test-5.1rc1-a2703de70942-without_bad_commit
> 
> Settings for eth0:
> 	Supported ports: [ TP MII ]
> 	Supported link modes:   10baseT/Half 10baseT/Full
> 	                        100baseT/Half 100baseT/Full
> 	                        1000baseT/Full

So this means the local device says it can do 1000Mbps.


> 	Supported pause frame use: Symmetric
> 	Supports auto-negotiation: Yes
> 	Supported FEC modes: Not reported
> 	Advertised link modes:  10baseT/Half 10baseT/Full
> 	                        100baseT/Half 100baseT/Full
> 	                        1000baseT/Full

The link peer can also do 1000Mbps.


> 	Advertised pause frame use: Symmetric
> 	Advertised auto-negotiation: Yes
> 	Advertised FEC modes: Not reported
> 	Link partner advertised link modes:  10baseT/Half 10baseT/Full
> 	                                     100baseT/Half 100baseT/Full
> 	                                     1000baseT/Full
> 	Link partner advertised pause frame use: Symmetric
> 	Link partner advertised auto-negotiation: Yes
> 	Link partner advertised FEC modes: Not reported
> 	Speed: 100Mb/s

Yet they have decided to do 100Mbps. 

We need to understand Why? The generic PHY driver would not do this on
its own. So i'm thinking something has poked a PHY register with some
value, and this patch is causing it to be over written.

Please can you use mii-tool -v -v to dump the PHY registers in each
case.

Thanks
	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
