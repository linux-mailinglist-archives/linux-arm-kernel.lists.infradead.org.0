Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEAAD95B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7iTgOVHXv3cobpePgkr/GIQogcv+ghY0tkLi/BNjHs=; b=DMprdknd1Gahyq
	eNLkBu8039lTtRfzYzCdQlENLQAWpqp+i3OSu1AiECK3aSzEY3Q7tL0cdd4pXtriMNorxvMUCVexP
	v7cJDWeeuf8JC0ciw9D9YzZQyHbBVdwQCv9TWfX1ANrb/RMY73YVBKnVZqUDl1NS/Bv5bu9KPxXVl
	Bmb22EPHS7uOEwI+MAFG9E0QVx2QUsk8qbnbcOowvwvldJngfsyiwakWcitPM81L3yJiTh2Dchyhw
	LoAwAfkDPzX1APR3MnRVNLpva6L5DN2a1+V0GjQmcCJA/fdXh9flx3nLzcj40NSVtrZvBLN9D+SNA
	ulQBHLN26LPxY9Wn7jpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKlMI-0003Bz-6x; Wed, 16 Oct 2019 15:37:06 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKlM8-0003BP-UO; Wed, 16 Oct 2019 15:36:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+5f6dY8evhyxODaTKehL/4N9iRbwuC90F8UXeraO9vA=; b=KGODKytivjW/MSdVeEUIQ+rVkz
 3ilT5scwlhtrAdRHOF5qItaKrEvpjoegAiPCMPGunYirlMsdopw/WifZ62cYSu1bXEWg3cGchJyqv
 I2zBjIlQlLU5Ufceb9tXkmUxGwTa9MBw9eRtzdp5iw7V2/FWc8ui2HX70BCRCMcncdK8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iKlLy-0008Fe-Gc; Wed, 16 Oct 2019 17:36:46 +0200
Date: Wed, 16 Oct 2019 17:36:46 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: lan78xx and phy_state_machine
Message-ID: <20191016153646.GG17013@lunn.ch>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191014163004.GP25745@shell.armlinux.org.uk>
 <20191014192529.z7c5x6hzixxeplvw@beryllium.lan>
 <25cfc92d-f72b-d195-71b1-f5f238c7988d@gmx.net>
 <b9afd836-613a-dc63-f77b-f9a77d33acc4@gmail.com>
 <20191014221211.GR25745@shell.armlinux.org.uk>
 <524267e6-df8e-d884-aeef-1ed8700e4e58@gmail.com>
 <20191015220925.GW25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015220925.GW25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_083656_979565_0AFA035C 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Woojung Huh <woojung.huh@microchip.com>,
 linux-rpi-kernel@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Wagner <dwagner@suse.de>, netdev@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > - lan78xx_phy_init() (incl. the call to phy_connect_direct()) is called
> >   after register_netdev(). This may cause races.
> 
> That isn't a problem.  We have lots of network device drivers that do
> this - in their open() function.

Hi Russell

Actually, here is it. lan7801_phy_init() finds the PHY device and
connects it to the MAC. lan78xx_open() calls phy_start(), with the
assumption lan7801_phy_init() has been called.

But the stack trace just provided shows this assumption is wrong. As
soon a register_netdev() is called, the kernel auto configuration is
kicking in and opening the device.

lan78xx_phy_init() needs to happen before register_netdev(), or inside
lan78xx_open().

	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
