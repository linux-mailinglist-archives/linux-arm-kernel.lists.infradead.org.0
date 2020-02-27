Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA5E171463
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 10:52:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rcIVHTPGvxhs3Dq4bVqaAVgt4lZdLnU+DPB6JCDB1L0=; b=upT5iSDAlJPHaW
	gPyKw3tYA+XmAVMRhtTrI/3FdpAidK2NaP1E6w1OZuhTLdCz5frvKya70+IOQf7ZKnpHvEyUNaYwM
	3xY9knX6kL0/kQr8zTjpeUlIWvXIU6HF6eiYjHJ8WqvICgwxf/iad4lbPUaK8CrjHD+yTPx47bJyG
	xWknpZk4yLrxka8bowaeakCl0AaP7Pgpn/rXSuZUzr6icSDGrvTaioouR/WZ/L2bOXujfH4yraXp+
	8fDFEmnWQGx0vuBhDajqOd8QwtMb9cm8zZG4VvrZzcQ2DQwuUZIVPEBwHP+zI9QTbxLG7aemhX/SA
	p/UOPX75WdGthwDs7r3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7FqI-0006Mo-8h; Thu, 27 Feb 2020 09:52:30 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Fq8-0006Lw-0Q
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 09:52:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z5m6tXTkAlYXzgJ0FVS+LQjBt3YsmaLrgFprtN/HLGU=; b=co9MkkZO2CvSkAY7CttBdobQ+
 MjldDFkFeKU5971bjJoiCEi5snDcuHNNWr+IZVNJfTXZx2Ne522Ob7Bhe2mGv7IyuXf95HFJBR1X/
 8zHJAU/adyXtncWo/J/rTRrvOjhRxrojgbXNvmaw/FA4vmpRl4UnP991Vs91Y47NNoISczUTAcWy4
 iORstvGRZgfErvbT+VbS3QMjTl6JCEDTaG/jIwU/bSZKTRl1Y//FWdmZ9T/v/ZD854N5xXsbj1s3U
 9GBu0tdVZQNOT1BiHd6AYNyIHMfIwPH/Pk6pGbMN9tGjuGNIGxMY6CgxE/D33vruDRRHQ641djYMH
 wqGa4xQEA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:45908)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j7Fpr-0004jk-Bx; Thu, 27 Feb 2020 09:52:03 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j7Fpn-0000st-EX; Thu, 27 Feb 2020 09:51:59 +0000
Date: Thu, 27 Feb 2020 09:51:59 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH net-next 0/3] Add support for configuring Marvell 10G PHY LEDs
Message-ID: <20200227095159.GJ25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_015220_050268_925D793F 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, netdev@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series makes it possible to configure the PHY LEDs on the Marvell
88x3310 and similar PHYs.

We introduce a new DT property called "marvell,led-mode" which allows
the register values (up to four) for the LEDs to be given and programmed
into the PHY by the driver.

 .../devicetree/bindings/net/marvell,10g.yaml       | 31 +++++++++++
 arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts  |  2 +
 drivers/net/phy/marvell10g.c                       | 62 +++++++++++++++++++---
 3 files changed, 88 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/marvell,10g.yaml

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
