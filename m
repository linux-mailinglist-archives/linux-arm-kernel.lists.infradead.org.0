Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 146A516FC6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 11:40:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GzZ5Opb5ll11puNtDFpPmJCM6sle+U74yK5P22myuCA=; b=ltGFc33zw8bzae
	4biGP9KRCcfkxkKGIqkdVI1BS8AKCskyEd5gbMdgf+7pV++RYySKzmlPp6o/dOhuPz5+dFKBqhKND
	JNPwmcSKUjzMgOT+EUzhbcobMfSkjaR+Pz9WE5jmWHemnuehRrHQtNIsWrZXV8KEKMrX5IuD4ggL/
	6m6V1IMF0C0CA8z6de2N5SW81bpMymNwf/YdDH3/kdLuuthyLM43WY7gKEqRkAVq7LzcOFaSN2G4l
	1rk5O/VUU8lUMEHnvmCkiSc/dPg34kgvmKgaDySC1TbfqeoCOMx7YXCq7YC66Jd1yK1ZzIiXhaxlJ
	Y6C1bkuxiicmgwOj3dwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6u7K-0005vO-Nm; Wed, 26 Feb 2020 10:40:38 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6u79-0005tw-2u; Wed, 26 Feb 2020 10:40:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PHjOim15jd4o09NnZjH5LH9s+ZcSG6bZ/1c5E3qyvo4=; b=r/p4PjDpcixJ8lUnSiXLAl4AV
 M3/nlPwheegQWB6gz85+4JN8JbeNT+1nUpxDGwwTIaDpnbxhk/5Fo4H893Ls6FoWMiBxz1xGLG9zU
 Y4R3FIqxjy6zmwaDYotrgUjsLzwq0ZIG0/klV1V2Toz4/xVllt3hk+UDInPxvqY1x8Pp7iWePdElj
 G33ifII3WAfBYsu7CSq/IaGilQ8xfQ16ikE6nIARLjvi9laOHpUwg1SsCwTSLsyCiz1Oj4UTXJm42
 n78Ijep4FE90dHV5Ow9NHKtdBZF2uAFagJmklL2ZqtgGNqDZMKCq+00wOYdK2Uu61a3/96O/gA99Q
 j23bm05mQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57120)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j6u6i-00070o-Gh; Wed, 26 Feb 2020 10:40:00 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j6u6d-0008LS-Mn; Wed, 26 Feb 2020 10:39:55 +0000
Date: Wed, 26 Feb 2020 10:39:55 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH net-next 2/8] net: dsa: propagate resolved link config
 via mac_link_up()
Message-ID: <20200226103955.GY25745@shell.armlinux.org.uk>
References: <20200225093703.GS25745@shell.armlinux.org.uk>
 <E1j6Wg0-0000Ss-W7@rmk-PC.armlinux.org.uk>
 <CA+h21hp8KCqhCasOAGz17k0eRteHVVYK-eANQmn4h443qv=2JQ@mail.gmail.com>
 <20200225232307.GU25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225232307.GU25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_024027_129232_25E57FD1 
X-CRM114-Status: GOOD (  20.64  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Michal Simek <michal.simek@xilinx.com>, Jose Abreu <joabreu@synopsys.com>,
 Jakub Kicinski <kuba@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev <netdev@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 11:23:07PM +0000, Russell King - ARM Linux admin wrote:
> On Tue, Feb 25, 2020 at 11:09:35PM +0200, Vladimir Oltean wrote:
> > Hi Russell,
> > 
> > On Tue, 25 Feb 2020 at 11:39, Russell King <rmk+kernel@armlinux.org.uk> wrote:
> > >
> > > Propagate the resolved link configuration down via DSA's
> > > phylink_mac_link_up() operation to allow split PCS/MAC to work.
> > >
> > > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > > ---
> > >  drivers/net/dsa/b53/b53_common.c       | 4 +++-
> > >  drivers/net/dsa/b53/b53_priv.h         | 4 +++-
> > >  drivers/net/dsa/bcm_sf2.c              | 4 +++-
> > >  drivers/net/dsa/lantiq_gswip.c         | 4 +++-
> > >  drivers/net/dsa/mt7530.c               | 4 +++-
> > >  drivers/net/dsa/mv88e6xxx/chip.c       | 4 +++-
> > >  drivers/net/dsa/sja1105/sja1105_main.c | 4 +++-
> > >  include/net/dsa.h                      | 4 +++-
> > >  net/dsa/port.c                         | 3 ++-
> > >  9 files changed, 26 insertions(+), 9 deletions(-)
> > >
> > 
> > It looks like you missed the felix_phylink_mac_link_up() conversion in
> > this patch? (which also makes it fail to build, by the way, I'm
> > supposed the Kbuild robot didn't already jump)
> > Nonetheless, I've manually added the missing speed, duplex, tx_pause
> > and rx_pause parameters, and it appears to work as before.
> > Same for sja1105.
> 
> Quite possibly; the patch was developed against 5.5 plus the phylink
> changes, but applied to net-next. Hmm, it seems my coccinelle script
> that detects .mac_link_up initialiser prototypes, but not the DSA
> equivalent using the old prototype.
> 
> Thanks for pointing it out.

I've just sent v2 with ocelot and qca included... and some recipients
for patch 2 bounced - the Cc line is now too long!

As far as the kbuild robot goes, you are not the first to notice that
kbuild seems to be flakey... I've noticed it for some time, as has
Greg KH.  It isn't just patches on mailing lists, it's git trees as
well.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
