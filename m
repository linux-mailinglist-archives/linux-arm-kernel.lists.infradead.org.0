Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE72161EAF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 02:54:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8aFvMiFW96LQkoRKDJXGAjqwdpRMP23QsQU67Tdyrbc=; b=WAwbPLd7/Z/RbS
	z6qKq4/b0rNIzjsvAkih0E5qANkZFpLc2dFyFb1MzQqa3lk+AjywvN4gzu6HfPJ3BKL9kpqU76Wn2
	8VIHNYg8mKlAdFGat+ZsGy9p5r6G299rVMvf5Z8L6WMs8ubZv5KccFpD5GEZ/uN+gaO8q3VICNc0f
	MQqEht2RfXYlQSQx5FBiQdtNxvrBhq92VLJFbu6DO+aK3oPi3StzCkL0ZZveFqAeti60zmLLzCvvI
	JzkDg1qDmYLw2QJkXnJgx4sctvbxHUZBcIHZLp2ovdaqEomedjxxtDtnYjWrtxQxuEe3cmU7VUVkj
	b494WCfsMDb9grSEbjog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3s5i-0002eJ-Bh; Tue, 18 Feb 2020 01:54:26 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3s5T-0002Wv-Jp; Tue, 18 Feb 2020 01:54:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zi/r8mbt3ArBElcGWaOvulYaFWwCLLGqTvQ8tW82sm8=; b=Y8gnB20+kMGP6TPFsLqUZ+xR9
 pCvJWoL/yMGmbYUsAEci98dSssqiYXl4OWUljCcU4eHFI8HrQCM0++2E5GNyHqVKjF59duOtOrG2A
 ak+/ETbJituUu0nCLLaNL3q8KWuEg83+5Jr0P5e6yFYEkCdNP7nmktmOafEQVvpd4xS495RiBcrZr
 SQf9jBeY3cMkdURtEJ+9F1sGUl1I31qIPpR4+wWdsAC5X8htuiLH78zBGcApEm+A+TQsKl4dXTA8S
 /a3RN+Kh/upi1G0HG8YWCUk9PP/pXQiOAV8BAolOaw353yla1DrrL7QVVQkQu/nvyh0s+GhK5fOK9
 gnx8OUMcg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:41782)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j3s4u-0004Jk-S6; Tue, 18 Feb 2020 01:53:37 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j3s4l-0006oC-Qv; Tue, 18 Feb 2020 01:53:27 +0000
Date: Tue, 18 Feb 2020 01:53:27 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [CFT 1/8] net: phylink: propagate resolved link config via
 mac_link_up()
Message-ID: <20200218015327.GD25745@shell.armlinux.org.uk>
References: <20200217172242.GZ25745@shell.armlinux.org.uk>
 <E1j3k7e-00071q-3R@rmk-PC.armlinux.org.uk>
 <16f6912c-84a9-f1ab-6688-6a55ebf34270@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <16f6912c-84a9-f1ab-6688-6a55ebf34270@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_175411_662951_80534695 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-doc@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-stm32@st-md-mailman.stormreply.com, Felix Fietkau <nbd@openwrt.org>,
 Ioana Radulescu <ruxandra.radulescu@nxp.com>, Jonathan Corbet <corbet@lwn.net>,
 Michal Simek <michal.simek@xilinx.com>, Jose Abreu <joabreu@synopsys.com>,
 Jakub Kicinski <kuba@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Sean Wang <sean.wang@mediatek.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 01:54:19PM -0800, Florian Fainelli wrote:
> 
> 
> On 2/17/2020 9:23 AM, Russell King wrote:
> > Propagate the resolved link parameters via the mac_link_up() call for
> > MACs that do not automatically track their PCS state.
> > 
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > ---
> 
> [snip]
> 
> 
> > -static void macb_mac_link_up(struct phylink_config *config, unsigned int mode,
> > -			     phy_interface_t interface, struct phy_device *phy)
> > +static void macb_mac_link_up(struct phylink_config *config,
> > +			     struct phy_device *phy,
> > +			     unsigned int mode, phy_interface_t interface,
> > +			     int speed, int duplex,
> > +			     bool tx_pause, bool rx_pause)
> 
> I have not been able to find an answer so I will ask this question, why
> not pass a const struct phylink_link_state reference here instead of
> splitting those link settings as individual function parameters? Or
> maybe introduce a phylink_link_settings comprised of all of those 4
> settings and embed it within phylink_link_state as well?

History of mac_config() has shown that passing something like
struct phylink_link_state results in stuff that should not be used
being used inspite of documentation saying otherwise.  Passing
just the appropriate state ensures that stuff which should not
be used can't be got at.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
