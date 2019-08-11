Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34625891DE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 15:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hTTIqxe6dzAjwsASKRv95upr+8i5DqUiTCyDuoMHcQw=; b=ZZsV+RlndnaGfY
	Cl10A+u1a63GFeKDAUYCwxVZLeWWrAA7P92NdBg0f5CBZ0v9ClWzvqthlfBXyUCLU1fhwpiQ08MjI
	1PlRWn9lIeB0ecoBfpYDvOZrtz9SG6bvLw2XonPlt1UzbMp5or8jqTRK+j6J1pLi/Fu91cBIzRNJm
	DfO8QPzoDCq7tgSceATeqkhLyBsy9DeVvNig3FKc47/1rsnTilcY9IHmamtLxVnjY4LV2RncgR2z5
	ngvwE4dCbFZgEHpA89gDffKvaM/pETFwPF+uXGejLLmRyCtvZ5Yg98bjqgpTJ7j3skwfZ1UBBka5Q
	PT9xzPkhhevArKjrQRPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwo2K-0003CH-U5; Sun, 11 Aug 2019 13:37:28 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwo2D-0003Bs-Jm
 for linux-arm-kernel@lists.infradead.org; Sun, 11 Aug 2019 13:37:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hLAgx8JYnhMOKraiq5vnyTU065BiPtmobxh1PiL6lCo=; b=DsY8cgoP3Zr8v7CIYT2P+2Uba
 oCX8MUifxMincmBKGu20CPWHXdUnTdU6vTJNtdzn/K0vciZDziYcJlVcIuUKWNKaRC2jo5lDI9Yn6
 fSABhtvHVoOtEYt5HMmMgmJufO8LjuFn6XCj940GKSBMaPj7hsffHVY5EntlZv5nBgKOqwoPsIQQZ
 676Bsxhld2FDdyvOPGkKD3GdT5FViw4yHT5rrvxxiY8K3k0rC96UhwV1Zszj1+QD2PMVQsAogX5n9
 ZPhgy33C5e+rTm6g0OhYC26oC1TqCaGW6ky9GfSC2J+RC17+t3T35jX5iMM0sFB/hztHzqH/feD63
 3kXeDIi5A==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:55318)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hwo21-0005Sr-4x; Sun, 11 Aug 2019 14:37:09 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hwo1z-0005cR-Ky; Sun, 11 Aug 2019 14:37:07 +0100
Date: Sun, 11 Aug 2019 14:37:07 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org,
 Fabio Estevam <festevam@gmail.com>, netdev@vger.kernel.org,
 Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [BUG] fec mdio times out under system stress
Message-ID: <20190811133707.GC13294@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_063721_828670_15343FFE 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

When I woke up this morning, I found that one of the Hummingboards
had gone offline (as in, lost network link) during the night.
Investigating, I find that the system had gone into OOM, and at
that time, triggered an unrelated:

[4111697.698776] fec 2188000.ethernet eth0: MDIO read timeout
[4111697.712996] MII_DATA: 0x6006796d
[4111697.729415] MII_SPEED: 0x0000001a
[4111697.745232] IEVENT: 0x00000000
[4111697.745242] IMASK: 0x0a8000aa
[4111698.002233] Atheros 8035 ethernet 2188000.ethernet-1:00: PHY state change RUNNING -> HALTED
[4111698.009882] fec 2188000.ethernet eth0: Link is Down

This is on a dual-core iMX6.

It looks like the read actually completed (since MII_DATA contains
the register data) but we somehow lost the interrupt (or maybe
received the interrupt after wait_for_completion_timeout() timed
out.)

From what I can see, the OOM events happened on CPU1, CPU1 was
allocated the FEC interrupt, and the PHY polling that suffered the
MDIO timeout was on CPU0.

Given that IEVENT is zero, it seems that CPU1 had read serviced the
interrupt, but it is not clear how far through processing that it
was - it may be that fec_enet_interrupt() had been delayed by the
OOM condition.

This seems rather fragile - as the system slowing down due to OOM
triggers the network to completely collapse by phylib taking the
PHY offline, making the system inaccessible except through the
console.

In my case, even serial console wasn't operational (except for
magic sysrq).  Not sure what agetty was playing at... so the only
way I could recover any information from the system was to connect
the HDMI and plug in a USB keyboard.

Any thoughts on how FEC MDIO accesses could be made more robust?

Maybe phylib should retry a number of times - but with read-sensitive
registers, if the read has already completed successfully, and its
just a problem with the FEC MDIO hardware, that could cause issues.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
