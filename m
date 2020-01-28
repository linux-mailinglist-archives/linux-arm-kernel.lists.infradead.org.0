Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3AF14BF49
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 19:10:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ERlkQhKl0zbdsSdfaewQwBUDIsl6QWUIwABldu4u49o=; b=e28mu9GaRU2QLu
	5JrgJF0Ot0jWDTefJDrHAONnXeomVMFM38w691th3sEY16n0eFaiQ8RQ8ivZHMtEkSmt4G6J7Vs7R
	BUncR79awD+r4zNzq4m3BpgJ12ODUpMY6ixygPVrbR/vIJ5SNFrptgmPjsoavsCtojaWe3cKiwNF8
	4MMFb5If3TCsEOHxvl+u47IqfYa2dBYhhLxNWqsmenlfuYARxMot71mJKAT73YZwP7bCTdfbX8pXd
	w91xfARCVYFcwx1I/27XfKkd65WjRuO2qSIXmNc92NPcfMpG6QDFMI8F2KKtDe52dKch9YvN1zffy
	jYCyXjI1TXp9o2ta8kbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwVK0-00029x-Lg; Tue, 28 Jan 2020 18:10:44 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwVJs-0000iw-Ls
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 18:10:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=27BCOIqr/wU+I4IrmORaozwu+T70UyCl4JtrDd+CI94=; b=gdIevUZ2qK6OpxHho3MufWbPt
 BAR6uXvIytSdD3mS/dJD8OEbTCxNlo+SuFbDltAklslGG5ORJQI5oY0XhpLsmd41S+k3JOAcWaEBW
 +qrs0ZAor9GYpxnR9GXp6+VIP6VwicXFHpu/bPZZmkew4W+jAgYv9X4UqMX5avJH7sy+8WApdAnFL
 En6RDgB4j2zlk+EkA6R0xyPLLJZqEc3UNI75Vo0tYLiFCVfyoRfE9aQqS05qpyloeFTQTOMXZtiiz
 1Y9ORiDoYgTq8sE0nA1dSdYKIMr/AkfSgmVM+LTMQA4iTk/YzC6rFA2cLC6PqkAthxzzpXk1QGI0b
 5aCCeNOaA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:32880)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iwVHT-0000c0-EH; Tue, 28 Jan 2020 18:08:10 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iwVHP-0002ak-1h; Tue, 28 Jan 2020 18:08:03 +0000
Date: Tue, 28 Jan 2020 18:08:03 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [RFC net-next 6/8] net: phylink: Configure MAC/PCS when link is
 up without PHY
Message-ID: <20200128180802.GD25745@shell.armlinux.org.uk>
References: <cover.1580122909.git.Jose.Abreu@synopsys.com>
 <9a2136885d9a892ff170be88fdffeda82c778a10.1580122909.git.Jose.Abreu@synopsys.com>
 <20200127112102.GT25745@shell.armlinux.org.uk>
 <BN8PR12MB3266714AE9EC1A97218120B3D30B0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20200127114600.GU25745@shell.armlinux.org.uk>
 <20200127140038.GD13647@lunn.ch>
 <20200127140834.GW25745@shell.armlinux.org.uk>
 <20200127145107.GE13647@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127145107.GE13647@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_101036_717671_100B9CB4 
X-CRM114-Status: GOOD (  15.12  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "David S. Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jakub Kicinski <kuba@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 03:51:07PM +0100, Andrew Lunn wrote:
> I've also had issues with the DSA links, also being configured to
> 10/Half. That seems to be related to having a phy-mode property in
> device tree. I need to add a fixed-link property to set the correct
> speed. Something is broken here, previously the fixed-link was only
> needed if the speed needed to be lower than the ports maximum. I think
> that is a separate issue i need to dig into, not part of the PCS to
> MAC transfer.

I think I understand what is happening on this one more fully.

When DSA initialises, the DSA and CPU ports are initially configured to
maximum speed via mv88e6xxx_setup_port(), called via mv88e6xxx_setup(),
the .setup method, dsa_switch_setup(), and dsa_tree_setup_switches().

dsa_tree_setup_switches() then moves on to calling dsa_port_setup().
dsa_port_setup() calls dsa_port_link_register_of() for the DSA and CPU
ports, which calls into dsa_port_phylink_register().

That calls phylink_create(), and then attempts to attach a PHY using
phylink_of_phy_connect() - which itself is rather weird - since when
has a DSA or CPU port been allowed to have a PHY in its DT node?

The upshot is, phylink_create() will (and always has) treated a node
without a fixed-link or in-band specification as a "phy" mode link.
Moving on, phylink_start() will be called.

phylink_start() attempts to set an initial configuration.  As there
is no PHY attached, phylink has no idea what parameters to set, but
it needs to set an initial configuration, so it does so.  The result
is, dsa_port_phylink_mac_config() gets called without the speed and
duplex being set as one would expect.

That hasn't changed in phylink yet - so it's a bug that dates back
to the phylink integration into the DSA core, and is a regression
resulting from that.

The reason my patch above appears to solve it is because I'm ignoring
calls to mac_config() with mode == MLO_AN_PHY in various circumstances,
which results in the initial configuration by mv88e6xxx_setup_port()
remaining.

I'm not yet sure what to do about that; and I'm out of time to think
about that anymore today - but I thought I'd post my analysis so far
in the hope that it helps.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
