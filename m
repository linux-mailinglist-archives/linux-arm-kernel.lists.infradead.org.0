Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9B81374DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:33:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tXLP1Srwmm2Wk63yuPSMpqqWMbveIIjPvESXU55tFwo=; b=oOqKP7HXGooNyJ
	MpyEwqrsUjIOt5BPiAXSA+BQkdn9yEzgY6FSSdjNVFnbgoXo3PhlL3sGE1duHbHid+uhZJzcP8ibN
	YGzueT168YfpLJnOaDb06XtsweVZxeCtPmqtoyy4+4XZqbks1UIcvOftKZ8CMByjY/tj9gNeR29PP
	wcr4QmcFWHWUUuXyBzNwNKsNT5sQp64B6XZPfvlR6oUQcLxhaJr4AHUvwBFV1TfO7xcy+dD1V4zF/
	VCVFqc6VHwY1HePc2s2uiHHXh4jJ5hD+RRRjaGHJW1nMcW5YDCGGbbnKMyy9VjVLiBXMyJh1m+7MI
	CCLQ5lR5T2Z7C0E5LTFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipy9e-00009D-A5; Fri, 10 Jan 2020 17:33:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipy9X-00008A-0P
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:32:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2653E30E;
 Fri, 10 Jan 2020 09:32:53 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0BE693F6C4;
 Fri, 10 Jan 2020 09:32:51 -0800 (PST)
Date: Fri, 10 Jan 2020 17:32:49 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 07/14] net: axienet: Fix SGMII support
Message-ID: <20200110173249.0b086a76@donnerap.cambridge.arm.com>
In-Reply-To: <20200110145849.GC25745@shell.armlinux.org.uk>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-8-andre.przywara@arm.com>
 <20200110145849.GC25745@shell.armlinux.org.uk>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_093255_097983_9E9FB20F 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: netdev@vger.kernel.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Robert Hancock <hancock@sedsystems.ca>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 14:58:49 +0000
Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:

> On Fri, Jan 10, 2020 at 11:54:08AM +0000, Andre Przywara wrote:
> > With SGMII, the MAC and the PHY can negotiate the link speed between
> > themselves, without the host needing to mediate between them.
> > Linux recognises this, and will call phylink's mac_config with the speed
> > member set to SPEED_UNKNOWN (-1).  
> 
> I wonder whether you have read the documentation for the phylink
> mac_config() method (if not, please read it, it contains some very
> important information about what mac_config() should do.)  When
> operating in SGMII in-band mode, state->speed and state->duplex are
> not actually valid.
> 
> You'll probably want to submit a better patch after reading the
> documentation.

Sure, I am admittedly quite clueless about phylink in particular, and found the available information quite daunting.
So I tried my best in looking at what other drivers do. From what I got there is that you speed=-1 should be ignored, but the other fields still handled.
Also I was somewhat puzzled, as I was expecting "mode" being MLO_AN_INBAND. But in fact it's called twice with MLO_AN_PHY, and mac_pcs_get_state() never gets called:

[  166.516583] xilinx_axienet 7fe00000.ethernet eth0: PHY [axienet-7fe00000:01] driver [Generic PHY]
[  166.547309] xilinx_axienet 7fe00000.ethernet eth0: configuring for phy/sgmii link mode
[  166.572343] axienet_mac_config(mode=0, speed=-1, duplex=255, pause=16, link=0, an_en=1)
udhcpc: sending discover
[  168.652152] axienet_mac_config(mode=0, speed=-1, duplex=255, pause=0, link=1, an_en=0)
[  168.683538] xilinx_axienet 7fe00000.ethernet eth0: Link is Up - Unknown/Unknown - flow control off
[  168.712560] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
udhcpc: sending discover
udhcpc: sending select for 10.1.x.y
udhcpc: lease of 10.1.x.y obtained, lease time 691200

I was just wondering if the DT description is giving Linux a wrong impression, but I have phy-mode set to sgmii, also just tried phy-connection-type on top of that. The DT snippet is the same as the example in patch 14. The PHY is a Marvell 88E1111, connected via SGMII.
 
I would be grateful for any advice!

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
