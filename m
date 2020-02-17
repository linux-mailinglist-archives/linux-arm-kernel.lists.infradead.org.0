Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD29E16187C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 18:07:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/jvthRhXeWwNDiJfOo52AZ945t3zwNBPvLdRNZfniW0=; b=R8X3EVPpY3E/C3
	LNBJJDbs/OoAWooXCJCPL9WJhK24wWtvNp7lx585J6BTyAf/mpE9dha8G/RVEy8eQw5f2CPYpeg5o
	YVY1+MPhHOegf4xzAPvJ1YmoREWoRrlNbjAluhBFH6FPih4ueIzspqvHL8EPosYoIc+QS6SeKuvGb
	F4V/Qw2WzR0iRW5zow0+SnnTlTouy34sXIWJpAHtaJJHMvTRxsQs/absg6cQwkSYcTuwDwVpxr99j
	yFS4WYcq3wO3GVybSsJh0xzqpnG7QVqtISX6lORzFXN9ryN4dB4fmQc3PYwodfWqz3OIvtwEBSrBq
	BbrVa5UvC3zLacp4LO9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3jrm-0005Vn-AL; Mon, 17 Feb 2020 17:07:30 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3jrR-0005UW-Gp
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 17:07:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V2b0d1gUR930/id42O1ijC2yJQ/z2WLsY4dFHF7zz9k=; b=TT35hLrOxBVLzCKJph9tBQ4I9
 9qjfMI6ImhwTUvtKySaL+IoXUyRExCX181Kyao7+OvlCpIn2KUte7mEJImazIdbuL+X8RVggxkA+1
 SOBF21/nbzYN1UA93A3m9qzdLRIFxHB1Mbupvuo4laKp4GBQOe6wrXt4HkagkEGw/bVaY965HSLme
 +CyU8K5lRCjuHpoKdkcbfTJgLhHqhU7pedP0CP4XkvZiFTUNCfz73R0FxYffyaLKHtP5ZqBQvU1XI
 gdg2bNamdlh/MIRODoV4PQoWU0SQUEDDd3cZodhzPyxQP2cK8ASvh3lMf0Elalxf8WaeeVT3wDuML
 SHaRTJEVw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:49118)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j3jrF-00021x-7A; Mon, 17 Feb 2020 17:06:57 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j3jrE-0006T8-Ig; Mon, 17 Feb 2020 17:06:56 +0000
Date: Mon, 17 Feb 2020 17:06:56 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH net] net: macb: Properly handle phylink on at91rm9200
Message-ID: <20200217170656.GY25745@shell.armlinux.org.uk>
References: <20200217104348.43164-1-alexandre.belloni@bootlin.com>
 <20200217165644.GX25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217165644.GX25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_090709_760974_7A5E3973 
X-CRM114-Status: GOOD (  20.51  )
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
Cc: Antoine =?iso-8859-1?Q?T=E9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 04:56:44PM +0000, Russell King - ARM Linux admin wrote:
> On Mon, Feb 17, 2020 at 11:43:48AM +0100, Alexandre Belloni wrote:
> > at91ether_init was handling the phy mode and speed but since the switch to
> > phylink, the NCFGR register got overwritten by macb_mac_config().
> 
> I don't think this actually explains anything - or at least I can't
> make sense of it with respect to your patch.
> 
> You claim that the NCFGR register gets overwritten in macb_mac_config(),
> but I see that the NCFGR register is read-modify-write in there,
> whereas your new implementation below doesn't bother reading the
> present value.
> 
> I think the issue you're referring to is the clearing of the PAE bit,
> which is also the RM9200_RMII for at91rm9200?
> 
> Next, there's some duplication of code introduced here - it seems
> that the tail end of macb_mac_link_down() and at91ether_mac_link_down()
> are identical, as are the tail end of macb_mac_link_up() and
> at91ether_mac_link_up().
> 
> > Add new phylink callbacks to handle emac and at91rm9200 properly.
> > 
> > Fixes: 7897b071ac3b ("net: macb: convert to phylink")
> > Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > ---
> 
> I posted a heads-up message last week about updates to phylink that
> I'll be submitting soon (most of the prerequisits have now been sent
> for review) which touch every phylink_mac_ops-using piece of code in
> the tree.  Unfortunately, this patch introduces a new instance that
> likely isn't going to get my attention, so it's going to create a
> subtle merge conflict between net-next and net trees unless we work
> out some way to deal with it.
> 
> I'm just mentioning that so that some thought can be applied now
> rather than when it actually happens - especially as I've no way to
> test the changes that will be necessary for this driver.

I'm going to post these changes shortly, but not for davem to merge
yet - it would be a good idea if people can test the changes first.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
