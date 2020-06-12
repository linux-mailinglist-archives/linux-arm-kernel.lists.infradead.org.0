Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821A71F7786
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 13:53:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qe81C2U2hf4IREwCKE4Db1gVe+n5ycuLuLf2N0TN6vI=; b=WaKrFz/rVBms8v
	cUuyCzC33drBwmtxDZajL9Or2xvMUaCoGsEo8Utt7KEirusnnJDbzUmTnUlhIKQ7lLkP8DJT7Ekdn
	PjXG5ExmRaigZK4DNqhXi5GzNiVlDExGdrISKzEw289logCFs4kipyEvjRwJJ1k+hJepV9dHwNK6j
	tJV5AFfE5t47zCwAUS4Ff5Vi3CD778UAffZ0bXBoV5MekMuQ2iUEZyQ7Wyhg1zIuBEFu5/tMcfeYK
	3jLGGBhS1yteaCa8CM6FbcywOpBm7vmiJ/huOc9C3lE0J1Q6jFMkp5okEHp/OIwb0rNwSpbFPHi1y
	lwKWKy0DOjG2Jagwyy7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjiF4-0003xN-Aw; Fri, 12 Jun 2020 11:53:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjiEw-0003wu-Bm
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 11:52:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jjiEt-0001TX-HX; Fri, 12 Jun 2020 13:52:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jjiEs-0008JZ-6d; Fri, 12 Jun 2020 13:52:50 +0200
Date: Fri, 12 Jun 2020 13:52:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v2] net: mvneta: Fix Serdes configuration for 2.5Gbps modes
Message-ID: <20200612115250.GS11869@pengutronix.de>
References: <20200612083847.29942-1-s.hauer@pengutronix.de>
 <20200612084710.GC1551@shell.armlinux.org.uk>
 <20200612100114.GE1551@shell.armlinux.org.uk>
 <20200612101820.GF1551@shell.armlinux.org.uk>
 <20200612104208.GG1551@shell.armlinux.org.uk>
 <20200612112213.GH1551@shell.armlinux.org.uk>
 <20200612113031.GI1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612113031.GI1551@shell.armlinux.org.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:42:38 up 113 days, 19:13, 128 users,  load average: 0.04, 0.14,
 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_045254_402811_9DB06F0B 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 12:30:31PM +0100, Russell King - ARM Linux admin wrote:
> On Fri, Jun 12, 2020 at 12:22:13PM +0100, Russell King - ARM Linux admin wrote:
> > On Fri, Jun 12, 2020 at 11:42:08AM +0100, Russell King - ARM Linux admin wrote:
> > > With the obvious mistakes fixed (extraneous 'i' and lack of default
> > > case), it seems to still work on Armada 388 Clearfog Pro with 2.5G
> > > modules.
> > 
> > ... and the other bug fixed - mvneta_comphy_init() needs to be passed
> > the interface mode.
> 
> Unrelated to the patch, has anyone noticed that mvneta's performance
> seems to have reduced?  I've only just noticed it (which makes 2.5Gbps
> rather pointless).  This is iperf between two clearfogs with a 2.5G
> fibre link:
> 
> root@clearfog21:~# iperf -V -c fe80::250:43ff:fe02:303%eno2
> ------------------------------------------------------------
> Client connecting to fe80::250:43ff:fe02:303%eno2, TCP port 5001
> TCP window size: 43.8 KByte (default)
> ------------------------------------------------------------
> [  3] local fe80::250:43ff:fe21:203 port 48928 connected with fe80::250:43ff:fe02:303 port 5001
> [ ID] Interval       Transfer     Bandwidth
> [  3]  0.0-10.0 sec   553 MBytes   464 Mbits/sec
> 
> I checked with Jon Nettleton, and he confirms my recollection that
> mvneta on Armada 388 used to be able to fill a 2.5Gbps link.
> 
> If Armada 388 can't manage, then I suspect Armada XP will have worse
> performance being an earlier revision SoC.

I only have one board with a Armada XP here which has a loopback cable
between two ports. It gives me:

[  3] local 172.16.1.4 port 47002 connected with 172.16.1.0 port 5001
[ ID] Interval       Transfer     Bandwidth
[  3]  0.0-10.0 sec  1.27 GBytes  1.09 Gbits/sec

Still not 2.5Gbps, but at least twice the data rate you get, plus my
board has to handle both ends of the link.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
