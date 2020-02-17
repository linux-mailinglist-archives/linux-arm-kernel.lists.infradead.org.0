Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 082281618FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 18:43:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EGu4AP4RrV7x6q6A8OC92VvlpOAg/sEPyDPQJewZY2Q=; b=gVmX8Fpe3sBfBZ
	bUvZbFCbEPpwb4GJbenxhSC5LDNwvgHtO5IgvS0eHytNU3jO1enhH5jS9nEonapMXHH6miKjDXbun
	Fbhh+AGSKSZdZAjKg8q6J4wUoqg9kPw1Hx1EBCDuT2aWIDR0WlzxXZU42xsRDnJgf0z4vwKAOjSlG
	W5Fz4owFgfpFk6nME3Ni+L9kvlItBYBE68JsD8GfILY6KISLy9UXt3jZkAX/61Tosnuf/Q88O/RQC
	bPP1OEyOE9RR1fj2lzPqfb7aTMcS85U1fqV+FZhf0oI9vgEdL44/ezpUGENUSff7zP0LLlByZTKGf
	gPSxnMHGrm4cdRykLG1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3kQB-00022j-1h; Mon, 17 Feb 2020 17:43:03 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3kQ3-000225-4z
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 17:42:57 +0000
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 83AE024000D;
 Mon, 17 Feb 2020 17:42:44 +0000 (UTC)
Date: Mon, 17 Feb 2020 18:42:44 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH net] net: macb: Properly handle phylink on at91rm9200
Message-ID: <20200217174244.GD3316@piout.net>
References: <20200217104348.43164-1-alexandre.belloni@bootlin.com>
 <20200217165644.GX25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217165644.GX25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_094255_330210_FB0A12F8 
X-CRM114-Status: GOOD (  21.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Antoine =?iso-8859-1?Q?T=E9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/02/2020 16:56:44+0000, Russell King - ARM Linux admin wrote:
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

This is the issue, I'll rework the commit message.

> Next, there's some duplication of code introduced here - it seems
> that the tail end of macb_mac_link_down() and at91ether_mac_link_down()
> are identical, as are the tail end of macb_mac_link_up() and
> at91ether_mac_link_up().
> 

I was split between having a new phylink_mac_ops instance or
differentiating in the various callbacks. If your preference is the
latter, I'm fine with that.

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
> 

Does that help if I change the callbacks instead of adding a new
phylink_mac_ops instance? I can also wait for your work and rebase on
top of that but that would mean that the fix will not get backported.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
