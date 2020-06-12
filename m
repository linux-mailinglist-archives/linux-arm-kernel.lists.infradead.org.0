Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E57F1F7869
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUeFR2wfC4clnCbWWQPjS3Qf9+l9iJ8uNGWaA+dYutY=; b=IFt9Y4Hwed30sS
	1YMIYo10fRzUBEyJeH5bLEl6hn8bCGHa5C0PfEWfS+d5xhm6REFUK84dW2+9gYPlc4f2Aoo0Os6e+
	AyaXZ6t86pjFU//nt9CYPUqKPhDWqr6sPlED58VgmCWHAHNGuB0rpLk6eQpdwQepuvDcQ8O5yYIYL
	bwkz5KsRM2npjbajP6N1z0wijc+C1vhSGPOIW6IlJUWD/r8ly9IxsmX2TI2miu6d0XFQCfNxskUjB
	+uzXh/sEEUwiHEfZU7TXi4dyT4S0Ib4+ej2Zi3ACJXlGv7MCwfysUhDzaDrHeSmNALnLC3qrxR8aw
	4h0dIEVEjyS0fdxE2AaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjjNJ-0006LU-7a; Fri, 12 Jun 2020 13:05:37 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:32c8:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjjMi-0004Bc-AW
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:05:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E7wnM0rKBf6TvnMCfTzhppDTlMnoMI+6aXvBFjU1oaY=; b=fB2L9x1NXIOfqrJjiqheAb6J9
 oY+GoCff/lj313Fc05rmN8EmfEpKvUSOwdvZRDV1Fq4PVftQjY5zBh9dL3tgmEbVsq6dNuemiEDZ3
 pI59BQW17QwDy7eYn3jDcSIzOmy8TzRusnIlJdfLNUVnKZzA+1GSSNMx3SMnIICGRiSHTp3IO/684
 45T0ZyGHn+rqIs87CbPH21fkrA2Zq9+ijyLeVbCuEJZP5fzqyD8VtOyDB3vG5wbUXPjVMOvCBcYk6
 r4lHTS+UqHlmidcrNFVsw2gVvi86hoHbTjQIAIqaZjRZZ17/lJ5y+NV9hegsXWo3QcJXKTIQV6jVp
 GsXBMRbsg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:43538)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jjjKe-0002tP-1z; Fri, 12 Jun 2020 14:02:52 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jjjKc-0006Hb-SO; Fri, 12 Jun 2020 14:02:50 +0100
Date: Fri, 12 Jun 2020 14:02:50 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v2] net: mvneta: Fix Serdes configuration for 2.5Gbps modes
Message-ID: <20200612130250.GK1551@shell.armlinux.org.uk>
References: <20200612083847.29942-1-s.hauer@pengutronix.de>
 <20200612084710.GC1551@shell.armlinux.org.uk>
 <20200612100114.GE1551@shell.armlinux.org.uk>
 <20200612101820.GF1551@shell.armlinux.org.uk>
 <20200612104208.GG1551@shell.armlinux.org.uk>
 <20200612112213.GH1551@shell.armlinux.org.uk>
 <20200612113031.GI1551@shell.armlinux.org.uk>
 <20200612115250.GS11869@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612115250.GS11869@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_060500_381687_5E51C577 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 01:52:50PM +0200, Sascha Hauer wrote:
> On Fri, Jun 12, 2020 at 12:30:31PM +0100, Russell King - ARM Linux admin wrote:
> > On Fri, Jun 12, 2020 at 12:22:13PM +0100, Russell King - ARM Linux admin wrote:
> > > On Fri, Jun 12, 2020 at 11:42:08AM +0100, Russell King - ARM Linux admin wrote:
> > > > With the obvious mistakes fixed (extraneous 'i' and lack of default
> > > > case), it seems to still work on Armada 388 Clearfog Pro with 2.5G
> > > > modules.
> > > 
> > > ... and the other bug fixed - mvneta_comphy_init() needs to be passed
> > > the interface mode.
> > 
> > Unrelated to the patch, has anyone noticed that mvneta's performance
> > seems to have reduced?  I've only just noticed it (which makes 2.5Gbps
> > rather pointless).  This is iperf between two clearfogs with a 2.5G
> > fibre link:
> > 
> > root@clearfog21:~# iperf -V -c fe80::250:43ff:fe02:303%eno2
> > ------------------------------------------------------------
> > Client connecting to fe80::250:43ff:fe02:303%eno2, TCP port 5001
> > TCP window size: 43.8 KByte (default)
> > ------------------------------------------------------------
> > [  3] local fe80::250:43ff:fe21:203 port 48928 connected with fe80::250:43ff:fe02:303 port 5001
> > [ ID] Interval       Transfer     Bandwidth
> > [  3]  0.0-10.0 sec   553 MBytes   464 Mbits/sec
> > 
> > I checked with Jon Nettleton, and he confirms my recollection that
> > mvneta on Armada 388 used to be able to fill a 2.5Gbps link.
> > 
> > If Armada 388 can't manage, then I suspect Armada XP will have worse
> > performance being an earlier revision SoC.
> 
> I only have one board with a Armada XP here which has a loopback cable
> between two ports. It gives me:
> 
> [  3] local 172.16.1.4 port 47002 connected with 172.16.1.0 port 5001
> [ ID] Interval       Transfer     Bandwidth
> [  3]  0.0-10.0 sec  1.27 GBytes  1.09 Gbits/sec
> 
> Still not 2.5Gbps, but at least twice the data rate you get, plus my
> board has to handle both ends of the link.

It turns out I still had various locking debugs and DMA API debug
enabled:

[  3] local fe80::250:43ff:fe21:203 port 39326 connected with fe80::250:43ff:fe02:303 port 5001
[ ID] Interval       Transfer     Bandwidth
[  3]  0.0-10.0 sec  2.70 GBytes  2.32 Gbits/sec

... which is more like it for this platform!

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
