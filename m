Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0CA14A5C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 15:09:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbkjRMjAm69Zt5BcgWx0KMcL9I/UFToNWi3kTCEmYjk=; b=X031TN7aNmCysD
	yWrrUmlH5zfUVHQmq88CTQQDWIcBrDFlKBn1qJmK9LNgOXzBVvi2ff8MKU1h+m56OENlb8ECstOMR
	Y/Gr9cK0l1DF0OKRaheIPpsPl9RC0LZTtPRO2nJmCGAV3ZOUSrsC6ZEzYbdNjT+0M3q0QKQfT9Mm2
	4FM5b7EeeeH4ilbEDIuqwzr4LvMSO3lZ6bPAoDvAMunTj87qbEXtbywEa0A1MkNVgIvXXsQ9MNUjO
	+0yvp3HQ2mpIgF4fqv1iCaLsWt02vn1FcdWTJh7KgvZ7Lp4ZZHm/cjfQ9Leb88apaOR8ZolttLIX5
	RxcoINEXgkcDvNifRx2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw54n-0000xg-2X; Mon, 27 Jan 2020 14:09:17 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw54V-0000qm-1U
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 14:09:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WNZMMHq/DEgG2TAGsW1GLa13iz6G/nCCbL9fpHEwYPE=; b=FJji4eBDh1ncH1ZpXMPgURV3X
 dj1fYyBWuwF70IsvJrIIE8pTPyUYE0/omNoeZ6ZFi9f1KcaYnYyi0SXUDRN+3PG8Vsa0EuD0Vr2Q7
 qGOZeb1BzO9bhPdcEhw0pyqm0qABjwayRlhAJ89aF9NweV2ti36BDhvY8dJOyEcp8+/NLoi5Fm3QW
 sqo5Hs14PuNUyI9zILJIq24F3qvL3hjBYtsgl5/EjFAoGnZdTVN4p9+01ynjloljDjTG+W7zjWbUd
 xa5oblOkpcDijdJ4uxP9XT/tEQgWsj4JYbmuS7oq/bDW+lVFqAnNtG4bc3uuNFSV7NREbZVHYEP5p
 rG+EnFRcg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:39866)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iw54A-0001kz-Ej; Mon, 27 Jan 2020 14:08:38 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iw546-0001SA-KA; Mon, 27 Jan 2020 14:08:34 +0000
Date: Mon, 27 Jan 2020 14:08:34 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [RFC net-next 6/8] net: phylink: Configure MAC/PCS when link is
 up without PHY
Message-ID: <20200127140834.GW25745@shell.armlinux.org.uk>
References: <cover.1580122909.git.Jose.Abreu@synopsys.com>
 <9a2136885d9a892ff170be88fdffeda82c778a10.1580122909.git.Jose.Abreu@synopsys.com>
 <20200127112102.GT25745@shell.armlinux.org.uk>
 <BN8PR12MB3266714AE9EC1A97218120B3D30B0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20200127114600.GU25745@shell.armlinux.org.uk>
 <20200127140038.GD13647@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127140038.GD13647@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_060859_116273_6488A2D2 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 03:00:38PM +0100, Andrew Lunn wrote:
> > Yes, I realise that, but it comes with the expense of potentially
> > breaking mvneta and mvpp2, where the settings are automatically
> > passed between the PCS and MAC in hardware. I also believe DSA
> > works around this, and I need to look at that.
> 
> Hi Russell
> 
> The mv88e6xxx driver has code for when SGMII is used. It transfers the
> negotiated speed from the PCS to the MAC.
> 
> But it recently turned out something like this is also needed for
> other link modes involving the SERDES. It used to work, i think
> because Phylink would initially configure the MAC approximately right,
> or the mv88e6xxx driver was looking at phylink state it should not.
> But it no longer works.

Can you give a hint which platform this is and how to reproduce it
please?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
