Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D9014A59E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 15:01:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zua1m0SvxFT5dzEhEMw2RVkTun1RbouH5uwWqdnl0r8=; b=Anm0ycSOULC6FT
	egZ5+9pEn7kp5ruTrvhlrvJaw+Ai6uuBqzCt/Y3jhCUwPRUbmPtKBaj1jU9ypEUtBIWEHPm2nsC1Y
	3SAf/fyYc0JLL3UtTaGIpnRqHRxcFpaU+IaO/aTFdYRqjWDac3eoiwkUmslXw9ZvTIekuAbO23NQ0
	9NeD1eglFqkw0eq4Dc1j5HNwbaunvvT6coEAUYhFYTGaiYM2rG9Qt/t8wvW+eAPAqqQh+hxc45i+R
	AkJKSqJVjpqm5YKHXlQTwWuE8TkqaXcck1PHlKTedjaiZSh734a6UEQjsbo/90zngr26U9GnvRXU2
	uFAS2mUftYoJ2onJP3wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw4wn-00069O-R5; Mon, 27 Jan 2020 14:01:01 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw4wa-00068j-22
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 14:00:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S0oCkFJi5GJ0pOrckJdOjtGxi2RubX2p/f+d/hw//6w=; b=n2LAN2Q86IiwsDYj1Zwq6Buh2K
 7Wdygzr06W4xlwMGl6JzgXacepLqP93mvOxqsiXfLRolQU4hNcWcrT7KwJqKlTKGbrWmD2i/SfxvO
 4//Xmnt1oqXftdLBbd08Jh6YZRzfyzzrX7iNXHa8kUt00SR6ph1jvqsvblSHDoCPSYvQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1iw4wQ-0006YJ-LN; Mon, 27 Jan 2020 15:00:38 +0100
Date: Mon, 27 Jan 2020 15:00:38 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [RFC net-next 6/8] net: phylink: Configure MAC/PCS when link is
 up without PHY
Message-ID: <20200127140038.GD13647@lunn.ch>
References: <cover.1580122909.git.Jose.Abreu@synopsys.com>
 <9a2136885d9a892ff170be88fdffeda82c778a10.1580122909.git.Jose.Abreu@synopsys.com>
 <20200127112102.GT25745@shell.armlinux.org.uk>
 <BN8PR12MB3266714AE9EC1A97218120B3D30B0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20200127114600.GU25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127114600.GU25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_060048_106231_F72752FF 
X-CRM114-Status: GOOD (  10.51  )
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

> Yes, I realise that, but it comes with the expense of potentially
> breaking mvneta and mvpp2, where the settings are automatically
> passed between the PCS and MAC in hardware. I also believe DSA
> works around this, and I need to look at that.

Hi Russell

The mv88e6xxx driver has code for when SGMII is used. It transfers the
negotiated speed from the PCS to the MAC.

But it recently turned out something like this is also needed for
other link modes involving the SERDES. It used to work, i think
because Phylink would initially configure the MAC approximately right,
or the mv88e6xxx driver was looking at phylink state it should not.
But it no longer works.

I would like to see a generic solution, and would be happy to remove
the current SGMII code when you have something to replace it.

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
