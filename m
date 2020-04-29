Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B86D21BD729
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 10:23:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pdoEU5LiFk3yatEQVq70Mq5Wpbeyxapcg5ltSI/A0tg=; b=l/S4oo7vcZP5i/
	c82ZoPuZ9SqEU30i9RuobUrnuv0jrZcyGrEOIvoTrDTibX4rXkJojkSeJx3hrDc9IwVwN7+C//X64
	/8rqELx9XlmBhCC+qXBSj55FQhsXIDr5KNK/cUj+NUttaIZXqRL3bPIojogZhYI/VI9o1l4SicsCw
	vRB/holY/1SXrNRXMFMAjOPcGbuukiydNI2EywqWJRPrkKQxVZVqElmPYu24HlNyp0DX7nEh4j/fL
	kyoQHQ6CQtnoAt1gpIei7QCELYmku8hC7nDzdLSnXDdNoIyLW76UMVRsxn1KdXB2q2haBwhmbndla
	d9tGIKWKMjva/9/z56JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jThzc-0000zF-IO; Wed, 29 Apr 2020 08:22:56 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jThzJ-0000tg-Kk
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 08:22:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1O07RDTpQ5ZoKMW6ZVxYT8lzbt0uzLpAusgf6xrOFtg=; b=lHgHDj1TrJewlXLgITrP2MNFn
 esiw/07nXyboAXo6tpp0M4Dga/9Gr03f0jksyrsndOw8YyC6KfnPlXAV62b9Fgi4sxzIecxz1wz5E
 jvBjAE344LfYUXNDkdchPrBk+7QoklvIB105cvcvNMyM5E1ktYGcxYq2xgyHHemYEw3F9cCkbKfLv
 skZ9Z6sxxmvxKj8vKx13Lrc5t7zEFu8j9HZ4aVS3cvajVCn/Zdtt8S8jw9Nq8C5KW0SYkIBs4iUl5
 rhFoYfROGOSM3ko8G+bOmM5qDexHvutwm1PCdRkiBaNIG/UFFkQYGmZQ/WBcdBvFDTJCh1IzNrgTy
 e2MVkL+LQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:51424)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jThyn-0006MM-DI; Wed, 29 Apr 2020 09:22:05 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jThyg-0000vM-Ak; Wed, 29 Apr 2020 09:21:58 +0100
Date: Wed, 29 Apr 2020 09:21:58 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Robert Hancock <hancock@sedsystems.ca>
Subject: Re: Xilinx axienet 1000BaseX support
Message-ID: <20200429082158.GA1551@shell.armlinux.org.uk>
References: <20200118112258.GT25745@shell.armlinux.org.uk>
 <3b28dcb4-6e52-9a48-bf9c-ddad4cf5e98a@arm.com>
 <20200120154554.GD25745@shell.armlinux.org.uk>
 <20200127170436.5d88ca4f@donnerap.cambridge.arm.com>
 <20200127185344.GA25745@shell.armlinux.org.uk>
 <bf2448d0-390c-5045-3503-885240829fbf@sedsystems.ca>
 <20200422075124.GJ25745@shell.armlinux.org.uk>
 <8a829647-34a8-6e6a-05cf-76f5e88b8410@sedsystems.ca>
 <20200428230112.GS25745@shell.armlinux.org.uk>
 <d44d53d1-6718-e2d1-1186-b4f06d2b74cd@sedsystems.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d44d53d1-6718-e2d1-1186-b4f06d2b74cd@sedsystems.ca>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_012237_698387_9C8E0677 
X-CRM114-Status: GOOD (  33.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Andre Przywara <andre.przywara@arm.com>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 05:51:58PM -0600, Robert Hancock wrote:
> On 2020-04-28 5:01 p.m., Russell King - ARM Linux admin wrote:
> > On Tue, Apr 28, 2020 at 03:59:45PM -0600, Robert Hancock wrote:
> > > On 2020-04-22 1:51 a.m., Russell King - ARM Linux admin wrote:
> > > > On Tue, Apr 21, 2020 at 07:45:47PM -0600, Robert Hancock wrote:
> > > > > Hi Andre/Russell,
> > > > > 
> > > > > Just wondering where things got to with the changes for SGMII on Xilinx
> > > > > axienet that you were discussing (below)? I am looking into our Xilinx setup
> > > > > using 1000BaseX SFP and trying to get it working "properly" with newer
> > > > > kernels. My understanding is that the requirements for 1000BaseX and SGMII
> > > > > are somewhat similar. I gathered that SGMII was working somewhat already,
> > > > > but that not all link modes had been tested. However, it appears 1000BaseX
> > > > > is not yet working in the stock kernel.
> > > > > 
> > > > > The way I had this working before with a 4.19-based kernel was basically a
> > > > > hack to phylink to allow the Xilinx PCS/PMA PHY to be configured
> > > > > sufficiently as a PHY for it to work, and mostly ignored the link status of
> > > > > the SFP PHY itself, even though we were using in-band signalling mode with
> > > > > an SFP module. That was using this patch:
> > > > > 
> > > > > https://patchwork.ozlabs.org/project/netdev/patch/1559330285-30246-5-git-send-email-hancock@sedsystems.ca/
> > > > > 
> > > > > Of course, that's basically just a hack which I suspect mostly worked by
> > > > > luck. I see that there are some helpers that were added to phylink to allow
> > > > > setting PHY advertisements and reading PHY status from clause 22 PHY
> > > > > devices, so I'm guessing that is the way to go in this case? Something like:
> > > > > 
> > > > > axienet_mac_config: if using in-band mode, use
> > > > > phylink_mii_c22_pcs_set_advertisement to configure the Xilinx PHY.
> > > > > 
> > > > > axienet_mac_pcs_get_state: use phylink_mii_c22_pcs_get_state to get the MAC
> > > > > PCS state from the Xilinx PHY
> > > > > 
> > > > > axienet_mac_an_restart: if using in-band mode, use
> > > > > phylink_mii_c22_pcs_an_restart to restart autonegotiation on Xilinx PHY
> > > > > 
> > > > > To use those c22 functions, we need to find the mdio_device that's
> > > > > referenced by the phy-handle in the device tree - I guess we can just use
> > > > > some of the guts of of_phy_find_device to do that?
> > > > 
> > > > Please see the code for DPAA2 - it's changed slightly since I sent a
> > > > copy to the netdev mailing list, and it still isn't clear whether this
> > > > is the final approach (DPAA2 has some fun stuff such as several
> > > > different PHYs at address 0.) NXP basically didn't like the approach
> > > > I had in the patches I sent to netdev, we had a call, they presented
> > > > an alternative appraoch, I implemented it, then they decided my
> > > > original approach was the better solution for their situation.
> > > > 
> > > > See http://git.armlinux.org.uk/cgit/linux-arm.git/log/?h=cex7
> > > > 
> > > > specifically the patches from:
> > > > 
> > > >     "dpaa2-mac: add 1000BASE-X/SGMII PCS support"
> > > > 
> > > > through to:
> > > > 
> > > >     "net: phylink: add interface to configure clause 22 PCS PHY"
> > > > 
> > > > You may also need some of the patches further down in the net-queue
> > > > branch:
> > > > 
> > > >     "net: phylink: avoid mac_config calls"
> > > > 
> > > > through to:
> > > > 
> > > >     "net: phylink: rejig link state tracking"
> > > 
> > > I've been playing with this a bit on a 5.4 kernel with some of these patches
> > > backported. However, I'm running into something that my previous hacks for
> > > this basically dealt with as a side effect: when phylink_start is called,
> > > sfp_upstream_start gets called, an SFP module is detected,
> > > phylink_connect_phy gets called, but then it hits this condition and bails
> > > out, because we are using INBAND mode with 1000BaseX:
> > > 
> > > 	if (WARN_ON(pl->cfg_link_an_mode == MLO_AN_FIXED ||
> > > 		    (pl->cfg_link_an_mode == MLO_AN_INBAND &&
> > > 		     phy_interface_mode_is_8023z(interface))))
> > > 		return -EINVAL;
> > 
> > I'm expecting SGMII mode to be used when there's an external PHY as
> > that gives greatest flexibility (as it allows 10 and 100Mbps speeds
> > as well.)  From what I remember, these blocks support SGMII, so it
> > should just be a matter of adding that.
> 
> They do support SGMII, but unfortunately it's not a runtime configurable
> parameter, it's a synthesis-level parameter on the FPGA IP core so you have
> to pick one or the other for any given build. We want to be able to support
> various fiber module types as well, and my understanding is that at least
> some of those only do 1000BaseX, so that ends up being the standard in
> common that we are using.

1G Fibre modules are all 1000BaseX only.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
