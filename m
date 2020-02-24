Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BC716A6BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 14:01:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvTo8JLvniheZgZCLfkiQb4Q+Pe3twFefTqWp2QyMws=; b=Z+VYr5mtiVosk1
	fhxP+66DCA585yTYVdbXHT6FSnHbOgLNFxzZfeC0N44mMKOfFPilUiIaQKOFBBn6oNbZX0pPgUapl
	6KLBjkUZc+cb/LRFQxqdkIMjANzs7M5/weqFjvBs9nDkOJ32hQopg+3fzZNEfp8EKLIkxiUlmAYN8
	qqATlJig6b+DRv2FqxTN3dcxyU4hvTu9dHQUoB7hx6w7+Vtv65rPJHz4J0dL98HoHXR4Un+aaBZBq
	S6mJXZLrDM6YMT+TmXjZRus38G2lSSRV4dMN90Osf9hT4uQDmwxlZqu6YcmFR8fI4aRdWrzxXIJcw
	wni8JxXifBcU0aDiInDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6DMs-0002ik-JI; Mon, 24 Feb 2020 13:01:50 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6DMg-0002i3-Sm
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 13:01:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h+3s0EUrRBksVeRKHsOpEHk0OsUdcbcFmyIf7lBNhVM=; b=wJkVsMngh1Jrz8dcG8Lqs1NAm
 /VgObCegzrsxkD+qitQkA9efPrHot0fZMcl+SbxFIQCYrKYjfTZR5Rn0gma7y1DsWYMavDHPelqXw
 l6tuoIA+Q8/DOvT+bsQQQpz19Zs+hzStgeVtCRiXVtLnwp0M/miaSTGjvBUz2RRzd/KZBeZKBRP1V
 Av9KqPUdPSrdnlKkwIDVqxVXIawhdQMysiYhBTeQnH14fbWTo2YrPA5BmAFhhlTCZH/PeX+2y7I7Z
 hMLHuEEjCYTo08znh2zuNqKYPU8Ya9a9Z2z//D58cSlwZi3X4UwQSRZt0+A2qXVsp91McEXSc2SPI
 9KyNV9iQQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:44630)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j6DMQ-0002pF-KV; Mon, 24 Feb 2020 13:01:22 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j6DMM-0006Rj-PS; Mon, 24 Feb 2020 13:01:18 +0000
Date: Mon, 24 Feb 2020 13:01:18 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [CFT 4/8] net: axienet: use resolved link config in mac_link_up()
Message-ID: <20200224130118.GR25745@shell.armlinux.org.uk>
References: <20200217172242.GZ25745@shell.armlinux.org.uk>
 <E1j3k7t-00072J-RS@rmk-PC.armlinux.org.uk>
 <20200224122421.616c8271@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224122421.616c8271@donnerap.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_050138_933402_38F4FA49 
X-CRM114-Status: GOOD (  12.24  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 12:24:21PM +0000, Andre Przywara wrote:
> On Mon, 17 Feb 2020 17:24:09 +0000
> Russell King <rmk+kernel@armlinux.org.uk> wrote:
> 
> Hi Russell,
> 
> > Convert the Xilinx AXI ethernet driver to use the finalised link
> > parameters in mac_link_up() rather than the parameters in mac_config().
> 
> Many thanks for this series, a quite neat solution for the problems I saw!
> 
> I picked 1/8 and 4/8 on top of net-next/master as of today: c3e042f54107376 ("igmp: remove unused macro IGMP_Vx_UNSOLICITED_REPORT_INTERVAL") and it worked great on my FPGA board using SGMII (but no in-band negotiation over that link). I had the 64-bit DMA patches on top, but that doesn't affect this series.
> 
> Tested-by: Andre Przywara <andre.przywara@arm.com>

Great, thanks for testing!

> Is this heading for 5.7?

Yes, that is my hope.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
