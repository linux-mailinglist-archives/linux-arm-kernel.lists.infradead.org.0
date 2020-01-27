Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B11FF14A33D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 12:46:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0KynvyEkOzrXowpoCh3Fy4eHz/LHPZQ7ePnUBpQCqVg=; b=X7hlsadysZZZ8E
	QNG+waudS8b9+Ks0QtQwP/b8OJd5BxO5Oq9/mvcMu5uE92+XdTrWAAvgWL1wqdCDgA6noI6pTvE6T
	jOqtMVNTUXqr4yt8bWlPD820nTV8vDbfIxAfgAXKapgoCA1d2mIHC6IhRue3eVHjoIIHGJUWoWnxY
	EGTEC+pXEZT4Adwg4PyBP2vJfZc1MmNXSUanY68gEvD7XNTKNAR/vjQFrR3PDr8B7Vo1hAWSu/Gkx
	MhzLU0GUwEvr33xEm0sogduvCmI2mifzVMMITvpBNJk/i3U7Ncjk5JJvsf16kJDwZOiMj7zUAoTAx
	B0/L/HeoTT6mXk6xlpVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw2ql-0006hn-0Y; Mon, 27 Jan 2020 11:46:39 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw2qY-0006hD-9Z
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 11:46:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=py0/AUeA9tDP937GDApbDIhhJ7mPRllvuk6jqlAolLw=; b=GOimjhJ60sQTWMTcrsW+8/RXc
 I/aWpmkEN1wmeFYPsQY7wYMww/awb5QDQvVADkiDJ8Kkq8Php4f3d88i2W9V47tt++YlKWm9XXY1W
 WF5JpCLsAOk26UM8d6w4yKz+u2VydMbhoIV/8rlUAxiJzHFEt0EL9fuYggga9AAAgbMlT3aI2iR3b
 NXnUV9CoULdc5yTeNdth7mWTKstGISo1EUfc/a7tX1Fka7NruUDvVsnhWBAJ1FzbLutTDXGyXzQo4
 Ont9UQf1UtnTB+ofsYzuMZTTWFeev5RFoAtVlW3yhao9YTXbDBcJbzTolNMYK8CICjggq8hEM1G8j
 T+tWanbag==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:60536)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iw2qC-00011S-Lg; Mon, 27 Jan 2020 11:46:04 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iw2q8-0001NE-Ro; Mon, 27 Jan 2020 11:46:00 +0000
Date: Mon, 27 Jan 2020 11:46:00 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [RFC net-next 6/8] net: phylink: Configure MAC/PCS when link is
 up without PHY
Message-ID: <20200127114600.GU25745@shell.armlinux.org.uk>
References: <cover.1580122909.git.Jose.Abreu@synopsys.com>
 <9a2136885d9a892ff170be88fdffeda82c778a10.1580122909.git.Jose.Abreu@synopsys.com>
 <20200127112102.GT25745@shell.armlinux.org.uk>
 <BN8PR12MB3266714AE9EC1A97218120B3D30B0@BN8PR12MB3266.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN8PR12MB3266714AE9EC1A97218120B3D30B0@BN8PR12MB3266.namprd12.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_034626_331540_93591093 
X-CRM114-Status: GOOD (  14.19  )
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
Cc: Andrew Lunn <andrew@lunn.ch>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 11:38:05AM +0000, Jose Abreu wrote:
> From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
> Date: Jan/27/2020, 11:21:02 (UTC+00:00)
> 
> > On Mon, Jan 27, 2020 at 12:09:11PM +0100, Jose Abreu wrote:
> > > When we don't have any real PHY driver connected and we get link up from
> > > PCS we shall configure MAC and PCS for the desired speed and also
> > > resolve the flow control settings from MAC side.
> > 
> > This is certainly the wrong place for it.  Please hold off on this patch
> > for the time being.  Thanks.
> 
> This is actually the change that makes everything work ...
> 
> I need to configure PCS before Aneg is complete and then I need to 
> configure MAC once Aneg is done and link is up with the outcome speed and 
> flow control.

Yes, I realise that, but it comes with the expense of potentially
breaking mvneta and mvpp2, where the settings are automatically
passed between the PCS and MAC in hardware. I also believe DSA
works around this, and I need to look at that.

However, right now I'm in the middle of rebasing my git tree on
top of v5.5 and can't say much more until I've finished that.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
