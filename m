Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD2414A692
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 15:51:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZNEGfWNG4/28DrNbKVZTaHfgotjflWD/pQwjUr9ojs=; b=Q0eXgeOXeZZ5E5
	+gSjbycjs+bGee8ruUQPscJ3EIABM9DHfr/DSEBwraaDjcg5ukELVzY1YOGhmcaKm/O/D0OPOWO06
	cryQJrlJHH8cuqdwYxXWsVNTtg4P+seEIA06cDFIqoT0WACeltATRM/zowR8OBVkqeR7BN9MWFaJn
	Bi5Fs4+YfVZWhp6EtyPQpJZzkku+ktslMF283tcJG0W4Nfo/yk0e/19Z/tXovWlIRgxXqQzoirAF/
	NVGiEjHo+JCRQdhF7Ywv9xHevAWYzb3fZbg7lI2ZQfB7MVM10GRhAxEYjvc3lv6iOaK4z0jFGT+Uu
	Qm+0ukZlF3jmSTQXSj4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw5jk-0002Jd-K4; Mon, 27 Jan 2020 14:51:36 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw5ja-0002DZ-Ez
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 14:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XhfMsVONMq1GlEnz3UKz8jb69fs6RfdWw5Dn3X7mvYg=; b=V8y4z9fuelY302DWTQ8dgVLBP+
 +6LshB1sn4p1pGZGhzUxn6Kw+ALaFQtc5mxbKTVZq7wUMJFhvW3MsO4BrzIYdUrgjXbINKTUWpqJN
 qi/yy8k8Mu1YDoNxtu9q20+xuKFTG7sqQebXPbIeDt/r0daRnnCNVwt78r36jtiVYOC4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1iw5jH-0006nz-Gd; Mon, 27 Jan 2020 15:51:07 +0100
Date: Mon, 27 Jan 2020 15:51:07 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [RFC net-next 6/8] net: phylink: Configure MAC/PCS when link is
 up without PHY
Message-ID: <20200127145107.GE13647@lunn.ch>
References: <cover.1580122909.git.Jose.Abreu@synopsys.com>
 <9a2136885d9a892ff170be88fdffeda82c778a10.1580122909.git.Jose.Abreu@synopsys.com>
 <20200127112102.GT25745@shell.armlinux.org.uk>
 <BN8PR12MB3266714AE9EC1A97218120B3D30B0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20200127114600.GU25745@shell.armlinux.org.uk>
 <20200127140038.GD13647@lunn.ch>
 <20200127140834.GW25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127140834.GW25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_065126_503517_B18302B7 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

> Can you give a hint which platform this is and how to reproduce it
> please?

Hi Russell

Devel C has issues with its fibre ports. I tend to test with
sff2/port9 not sff3/port3, because i also have the copper port plugged
in. If the copper gets link before the fibre, copper is used.

What i see is that after the SERDES syncs, its registers indicate a 1G
link, full duplex, etc. But the MAC is using 10/Half. And hence no
packets go through. If i set the MAC to the same as the PCS, i can at
least transmit. Receive does not work, but i think that is something
else. The statistics counters indicate the SERDES is receiving frames,
but the MAC statistic counters suggests the MAC never sees them.

I've also had issues with the DSA links, also being configured to
10/Half. That seems to be related to having a phy-mode property in
device tree. I need to add a fixed-link property to set the correct
speed. Something is broken here, previously the fixed-link was only
needed if the speed needed to be lower than the ports maximum. I think
that is a separate issue i need to dig into, not part of the PCS to
MAC transfer.

Heiner has another device which has an Aquantia PHY running in an odd
mode so that it does 1G over a T2 link. It uses SGMII for this, and
that is where we first noticed the issue of the MAC and PCS having
different configurations.

      Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
