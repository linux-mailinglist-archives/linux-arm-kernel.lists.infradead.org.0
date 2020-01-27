Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DE814A950
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 18:57:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Zu42vs+bvqaZ0KDt298dFS0Z0R3qYxyViP5RQfICVY=; b=OcalAGLjwYLCuN
	aKKfY2BhClXU1VN3+NqJdP39rSbk1IUVeA3E/EPmxtl0t/F1W4LHK/DZsDYD5aTdJc4JMATVOWhc+
	W9gb9IJlLzpG0TCAtDwsnaMEVEuaBqKL/x/1+pZ7lR90XPs4MNGs8U2kReWVTeMdzEhyzyQV0SaHL
	fSC9xrFbYGhOOKeTwUfMLEnDLpPtAxw5Zbcnh4yVHpP5B3Sp2DVOp4DrOCP8jPQhscD7Gj+9KS3CX
	uMp/RCWDy61LFowTadxoMVDZvCMU6FBcSY3wcqnmEG0DmS7GDH2rOT57oZYTyDraemDlsTebDo99u
	QfzY6FOavDVj2Ze1jMNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw8d1-0000bD-4R; Mon, 27 Jan 2020 17:56:51 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw8cq-0000aD-Ss
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 17:56:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+pgM004QYnoz29dLdl6cQI6MAMztJHbXMIE6Mk2wd9E=; b=hrmN0Jqo5RN46j8mJrWc0QFxt
 i0o1dz1saSXn0aEOLYzyy+sxzAZT8OkIzKZoPM+U/9IVSJ/Gibx6ztmXNulZyzder7F16lY6y88vm
 j2fOgw0H+uYYgnl7sNvtMaMB1x6KHI1QXguengDBwkTLETebOvpt5xb4r3qGezpJb3jsT1Ptafy6K
 hc2GF9Fz9geX+wrFTzLQtEktiC+US7EHLFWmhCMFHyD77kBWCNXig6IhSXLlnu6XVDeXQ0WpKjUJC
 9FPM+8xe5L6RkT3i8IlRznv/IpRnpdoUST+t5R/SYZ2uTU7IPd/25n1J6gIpnBG8msYo2t6uGx7Ia
 dOsUXx+qw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:60650)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iw8cW-0002lu-E0; Mon, 27 Jan 2020 17:56:20 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iw8cS-0001bc-5y; Mon, 27 Jan 2020 17:56:16 +0000
Date: Mon, 27 Jan 2020 17:56:16 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [RFC net-next 6/8] net: phylink: Configure MAC/PCS when link is
 up without PHY
Message-ID: <20200127175616.GZ25745@shell.armlinux.org.uk>
References: <cover.1580122909.git.Jose.Abreu@synopsys.com>
 <9a2136885d9a892ff170be88fdffeda82c778a10.1580122909.git.Jose.Abreu@synopsys.com>
 <20200127112102.GT25745@shell.armlinux.org.uk>
 <BN8PR12MB3266714AE9EC1A97218120B3D30B0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20200127114600.GU25745@shell.armlinux.org.uk>
 <20200127140038.GD13647@lunn.ch>
 <20200127140834.GW25745@shell.armlinux.org.uk>
 <20200127145107.GE13647@lunn.ch>
 <20200127161132.GX25745@shell.armlinux.org.uk>
 <20200127163241.GK13647@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127163241.GK13647@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_095640_933567_68CD39A7 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jakub Kicinski <kuba@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 05:32:41PM +0100, Andrew Lunn wrote:
> > Presumably, all these should be visible on the ZII rev B as well?
> 
> Maybe. The two SFF mounted on most rev B are connected to ports which
> only do SGMII, not 1000Base X. They tend to work by chance, and as
> such, i've never taken them seriously.
> 
> If i remember correctly, you modified your board, moved the SFF over
> to the normally unpopulated slots, and removed a resistor. That setup
> then has the SFF connected to the 6352, which can do both SGMII and
> 1000BaseX.

Yes, I modified the board to fix a design mistake - removing R412.
The SFF are where they are when they were delivered:

OPT P1 - no module fitted, and the serdes signals are not routed.
	 This might as well not exist.

OPT P2 - Cotsworks SFBG53DRAP.
	 This is connected to port 4 of switch 0, one of the 88E6352.

The 88E6352 can have the serdes block associated with either port 4 or
port 5 depending on the state of the S_SEL signal.  The serdes will be
associated with port 4 if S_SEL is low at reset, and with port 5 if
S_SEL is high at reset.

88E6352 Port 4 RGMII signals are not used.  Port 5 RGMII is used to
connect to the next 88E6352 switch.  So, if the serdes is associated
with port 5, and if RGMII is used, it prevents the use of the serdes.

With R412 fitted, S_SEL is pulled high, and assocates the serdes with
port 5, and hence is unusable.  When R412 is removed, the serdes is
associated with port 4, and can be configured for either SGMII or
1000baseX mode via the PHY detect bit.

So, the ZII rev B, OPT P2 only becomes useful if R412 is removed.

OPT P3 - Cotsworks SFBG53DRAP
	 This is connected to port 3 of switch 2, one of the 88E6185.
OPT P4 - AVAGO AFBR-59R5ALZ
	 This is connected to port 4 of switch 2, one of the 88E6185.

The 88E6185 can only have ports 7, 8 or 9 configured for 1000BASE-X
mode.  These two ports end up configured for cross-chip serdes mode
which is 1000BASE-X but with manually controlled link status, as
this mode is designed to link two 88E6185 to each other (hence
"cross-chip").  There appears to be no accessible serdes block on this
device to give us any interrupts.

With my suggestion for a polling mode in phylink, it may be possible
to get OPT P3 and OPT P4 working.

> It could also be that the 6352 does have pass through from the PCS to
> the MAC, where as the 6390 does not? The 6390 is much more capable,
> having 2.5G and 10G support. The SERDES registers are very different,
> C45 vs C22 of the 6352.

My feeling is that the issues you're seeing with the ZII rev C come
down to the phylink implementation for MV88E6xxx lacking some of the
necessary support, and this has probably been broken ever since
phylink was introduced into the mainline MV88E6xxx driver.

Try

http://git.armlinux.org.uk/cgit/linux-arm.git/patch/?id=eb717ca455b1ae425a4d4b60615ba3e4d0ba35d4

which will be 5.4 based; I haven't pushed out my 5.5 based tree yet
as I'm busy writing emails rather than testing it, and running out
of time to do so before tomorrow!

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
