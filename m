Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 856BB172AF0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 23:14:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tu+b23UZXTYIHb+JMfwqpZeoTNuCO6eSWgn5rOpiX7Y=; b=Dz1eKWZk+vNBU3
	+yfaXcDTmxptoLr+v21z2m6uFWHILgqAq3alEUoywry709EWPE/gR6/+FBrDocP7N0yEqp/nJqcGt
	ZUwmjWtvZKgq4seZbfCc/h3UcDxW6STlJbuErhj520H/GvEagSKK+oHachVeOlWVTv/N6Qgvw5m49
	uExDhhb6IAjxGJWvBgFHUhs1zPmA2vTP3V90+GbQaqZOaFxiEFAS2nxZnRVtpADvci3imDnvdlf0H
	KkHmd25S+wxrQ/6yBsguXdoE79LWshYrO20FH+dVV754mudBKqPdDhrDrDHQkznRX6E9foOv6unz1
	2SjuEXdL8Umpr1M/pNcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7RQA-0003oJ-O2; Thu, 27 Feb 2020 22:14:18 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7RPw-0003nG-Q9; Thu, 27 Feb 2020 22:14:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TLyRnJ1kCDzmRuRPTz7K92VaFFh1/vMyyOGH0HaTtQU=; b=hCxh6qfDzl2vp7DfzH7YiKHP4
 DhRLp6tdz6Pf8sxKQD3D3uLhUeE+80ZYoKZT3UyLGQSdNw2BZ2vr/HFjStzNnKnsTYpuy/9jOOGfk
 6he1mGrm1X7/9X5DeNZUs1Z0YBlJbGOhyg/Mxqn/zwJREwIsRGrpgC623yJdZzyZ7xB5x/DQCzdNa
 fm5KA+xAB23YrLCSiNZBi0hBMiSRKZamKETgxTXepn1R/l59dEmUXwWzllDpEEhgRZJDxCjgOc3kp
 mQO+YUx+2XZASMjQcq5zZM75k/L8YzXGdqB7mqjRvkBPzH4TlE6bzD5IbwetU/vIwC7WwXYqo+UDW
 J0cfEvkEA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:53650)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j7RPK-0008OF-2y; Thu, 27 Feb 2020 22:13:26 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j7RP9-0001Kj-JH; Thu, 27 Feb 2020 22:13:15 +0000
Date: Thu, 27 Feb 2020 22:13:15 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH net-next v2 0/8] rework phylink interface for split
 MAC/PCS support
Message-ID: <20200227221315.GS25745@shell.armlinux.org.uk>
References: <20200226102312.GX25745@shell.armlinux.org.uk>
 <20200227.120254.241641132362203475.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227.120254.241641132362203475.davem@davemloft.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_141404_848654_66B5A103 
X-CRM114-Status: GOOD (  19.09  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, linux-doc@vger.kernel.org, thomas.petazzoni@bootlin.com,
 ioana.ciornei@nxp.com, linux-stm32@st-md-mailman.stormreply.com,
 f.fainelli@gmail.com, corbet@lwn.net, michal.simek@xilinx.com,
 hkallweit1@gmail.com, joabreu@synopsys.com, kuba@kernel.org,
 vivien.didelot@gmail.com, sean.wang@mediatek.com, alexandre.torgue@st.com,
 hauke@hauke-m.de, radhey.shyam.pandey@xilinx.com,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 peppe.cavallaro@st.com, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, Mark-MC.Lee@mediatek.com, mcoquelin.stm32@gmail.com,
 olteanv@gmail.com, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 12:02:54PM -0800, David Miller wrote:
> From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
> Date: Wed, 26 Feb 2020 10:23:12 +0000
> 
> > The following series changes the phylink interface to allow us to
> > better support split MAC / MAC PCS setups.  The fundamental change
> > required for this turns out to be quite simple.
> > 
> > Today, mac_config() is used for everything to do with setting the
> > parameters for the MAC, and mac_link_up() is used to inform the
> > MAC driver that the link is now up (and so to allow packet flow.)
> > mac_config() also has had a few implementation issues, with folk
> > who believe that members such as "speed" and "duplex" are always
> > valid, where "link" gets used inappropriately, etc.
> > 
> > With the proposed patches, all this changes subtly - but in a
> > backwards compatible way at this stage.
> > 
> > We pass the the full resolved link state (speed, duplex, pause) to
> > mac_link_up(), and it is now guaranteed that these parameters to
> > this function will always be valid (no more SPEED_UNKNOWN or
> > DUPLEX_UNKNOWN here - unless phylink is fed with such things.)
> > 
> > Drivers should convert over to using the state in mac_link_up()
> > rather than configuring the speed, duplex and pause in the
> > mac_config() method. The patch series includes a number of MAC
> > drivers which I've thought have been easy targets - I've left the
> > remainder as I think they need maintainer input. However, *all*
> > drivers will need conversion for future phylink development.
> > 
> > v2: add ocelot/felix and qca/ar9331 DSA drivers to patch 2, add
> >   received tested-by so far.
> 
> In order to end the storm in a teacup, I've applied this series.
> 
> :-)
> 
> Thanks Russell.

Thanks David, I was getting concerned that the teacup might break! :p

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
