Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FCD1B396B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 09:52:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VV79ZdMaDTj/iAn0gMmEsIrXbEezxFR556q/MVK5Lcw=; b=MDVbp2AFKcqIyk
	o0ZhT/9Wt80oUtLylREHpq9/U59x5NlgfPn2ZSXDRqCEsXJb/aOjUzjRmqufqfCnxmh+BKXY4Jp2+
	wTWKD99iaYmzcHutHm1YsIbrahKXRBWyivoWkSQOApCj1VDu84Lsw+x5jGNsczhHnExqB07X/8Qjm
	L/D+pUsSukZ3d7Gd+R3dzKHjixZtHDJTyWvO5s0PFWf0xzi3E3N08by+JwHzpmmivnbgP5XW+86ag
	fkSexYjQJm4BabTZVGL72PxCKkxEK0BMW0q/+o4CPmAul12WZUrkcWvmeppj8h+DmQMtDyND6Uxpi
	WHvYk/qfmA89o4hiiSjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRAAx-0002ar-2Q; Wed, 22 Apr 2020 07:52:07 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRAAk-0002Xw-VY
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 07:51:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KWg+XuhGzP1BBFs/gHc4oZn4yxp0P4XqZNSIS4Th3Qc=; b=0a/pZ1EExYsog3tfKvmCp22h/
 RhiepO8ZTm5hZm7PLVWb7ZG0C4jU+jQkbGGy4aN3DOiS2ndWNKzPX7qBEMsmNi9KT7yLFpbDREuoi
 xSMifzC5Kud+OMTyxp1SrDitwWb/JlNouTzA3VTVfGgCppTPTQ2VB2TcPE9LZYiUVbsJSkhh4knWm
 RpVxrWcRgXW4VwtVhsVHrGW5m1C4quEDWIy671Z5KpqVqIsz5Bghoyx9GCkMfBqjJPCr7LgKblJb0
 uPBL599FAhFNAm+g/IkhDA+Z0qHIVadw4KYAMhX/kw+E5YV2XEW1E63/vxEdhQd4gx0JiYPagVan/
 j6BmTvElA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:49512)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jRAAL-0006kT-Oi; Wed, 22 Apr 2020 08:51:29 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jRAAG-0007yR-GD; Wed, 22 Apr 2020 08:51:24 +0100
Date: Wed, 22 Apr 2020 08:51:24 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Robert Hancock <hancock@sedsystems.ca>
Subject: Re: Xilinx axienet 1000BaseX support (was: Re: [PATCH 07/14] net:
 axienet: Fix SGMII support)
Message-ID: <20200422075124.GJ25745@shell.armlinux.org.uk>
References: <20200110142038.2ed094ba@donnerap.cambridge.arm.com>
 <20200110150409.GD25745@shell.armlinux.org.uk>
 <20200110152215.GF25745@shell.armlinux.org.uk>
 <20200110170457.GH25745@shell.armlinux.org.uk>
 <20200118112258.GT25745@shell.armlinux.org.uk>
 <3b28dcb4-6e52-9a48-bf9c-ddad4cf5e98a@arm.com>
 <20200120154554.GD25745@shell.armlinux.org.uk>
 <20200127170436.5d88ca4f@donnerap.cambridge.arm.com>
 <20200127185344.GA25745@shell.armlinux.org.uk>
 <bf2448d0-390c-5045-3503-885240829fbf@sedsystems.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bf2448d0-390c-5045-3503-885240829fbf@sedsystems.ca>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_005157_446040_4D327DAA 
X-CRM114-Status: GOOD (  22.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Andre Przywara <andre.przywara@arm.com>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 07:45:47PM -0600, Robert Hancock wrote:
> Hi Andre/Russell,
> 
> Just wondering where things got to with the changes for SGMII on Xilinx
> axienet that you were discussing (below)? I am looking into our Xilinx setup
> using 1000BaseX SFP and trying to get it working "properly" with newer
> kernels. My understanding is that the requirements for 1000BaseX and SGMII
> are somewhat similar. I gathered that SGMII was working somewhat already,
> but that not all link modes had been tested. However, it appears 1000BaseX
> is not yet working in the stock kernel.
> 
> The way I had this working before with a 4.19-based kernel was basically a
> hack to phylink to allow the Xilinx PCS/PMA PHY to be configured
> sufficiently as a PHY for it to work, and mostly ignored the link status of
> the SFP PHY itself, even though we were using in-band signalling mode with
> an SFP module. That was using this patch:
> 
> https://patchwork.ozlabs.org/project/netdev/patch/1559330285-30246-5-git-send-email-hancock@sedsystems.ca/
> 
> Of course, that's basically just a hack which I suspect mostly worked by
> luck. I see that there are some helpers that were added to phylink to allow
> setting PHY advertisements and reading PHY status from clause 22 PHY
> devices, so I'm guessing that is the way to go in this case? Something like:
> 
> axienet_mac_config: if using in-band mode, use
> phylink_mii_c22_pcs_set_advertisement to configure the Xilinx PHY.
> 
> axienet_mac_pcs_get_state: use phylink_mii_c22_pcs_get_state to get the MAC
> PCS state from the Xilinx PHY
> 
> axienet_mac_an_restart: if using in-band mode, use
> phylink_mii_c22_pcs_an_restart to restart autonegotiation on Xilinx PHY
> 
> To use those c22 functions, we need to find the mdio_device that's
> referenced by the phy-handle in the device tree - I guess we can just use
> some of the guts of of_phy_find_device to do that?

Please see the code for DPAA2 - it's changed slightly since I sent a
copy to the netdev mailing list, and it still isn't clear whether this
is the final approach (DPAA2 has some fun stuff such as several
different PHYs at address 0.) NXP basically didn't like the approach
I had in the patches I sent to netdev, we had a call, they presented
an alternative appraoch, I implemented it, then they decided my
original approach was the better solution for their situation.

See http://git.armlinux.org.uk/cgit/linux-arm.git/log/?h=cex7

specifically the patches from:

  "dpaa2-mac: add 1000BASE-X/SGMII PCS support"

through to:

  "net: phylink: add interface to configure clause 22 PCS PHY"

You may also need some of the patches further down in the net-queue
branch:

  "net: phylink: avoid mac_config calls"

through to:

  "net: phylink: rejig link state tracking"

> One concern I have is that there may be things that the PHY subsystem would
> configure on the device that may need to be replicated in order to get it to
> actually work - things like setting auto-negotiate enable/disable, the
> BMCR_ISOLATE bit, etc - is that something that belongs in our mac_config or
> in the phylink core in phylink_mii_c22_pcs_set_advertisement etc?

I think some of that is addressed in the above patches, except for
the isolate bit - do your PHYs come up with the isolate bit set?
Under what circumstances would you need to set it?

Let me know how you get on.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
