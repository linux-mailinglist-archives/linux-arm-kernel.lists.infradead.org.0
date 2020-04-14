Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FB11A860F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:56:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvIxJX6klyITWrelfSJvU0iFU1qtwiMAX1m3Ny3PLTw=; b=cohZOU+HIFyy2C
	CKl/0KujR9sM0WpBlKkxlNAx+RZR4CUV/pBPKJ5rIYUpaLx8GCav9QIC/7xe9qFLAOqKpuKUKSdrb
	L3ZpceDMJKGx+nCmN7COzWmZr9xWouJMEIC4HCIRzOTcxCp4u9xJplqFB4Ueu9xmtW1IaxX75f8Ql
	pzTSG7xEoUIVMxZY029iRIJ5asI3niB9pk2xDw/glWWVPo8Epj0AYb7DxYN0JygGp4nWY23SGDg5D
	6eWkmMeFZ8Uy+MihmRUx3orV/uP3WaWdjXH9ievofnjvI1LM/prbXFukIytl7mtHgjnWgzr34uh0f
	4vIHxHp7AnwWEdEo+zbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOrF-0006MT-GK; Tue, 14 Apr 2020 16:56:21 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOr4-0006Iy-Rf
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 16:56:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DFng2zEQhZiSk08ixA4j2g0MhkEE7yI+dH1GknnzSZk=; b=jmoyuXDyTWpxwakI8fcCaqWaq
 wTovPCgU6r0w4ORyo29f44cg1XJnm2qmhR9YwEVNJK39qgICulPnfa9VK8t9yToPOConMoru2VxKM
 VQ8l6aCOmOh6U2BCkPj8xd3H5iEuQ/0hMJgPJJsxOK+EmMdmZyFTtSLJCrwXVEIGmWgO9tl0162LY
 jZIoVHtspoXUj1jE3igLT0NqJJZuB00BvmoEHNfurm6sV3A+n3O6t7bNBOFLVfcdvsuHQRpt8BMu1
 zbaYUlDALiNpZvvj2KDIp46Fbc8m6hytp7vgIdT7wHnDhyHkyU5Q2dX/d1Vx8aqFz1t0152Ub4kBy
 th8/S3ugw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:38372)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jOOqg-0000oG-OG; Tue, 14 Apr 2020 17:55:46 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jOOqT-0008HG-TB; Tue, 14 Apr 2020 17:55:33 +0100
Date: Tue, 14 Apr 2020 17:55:33 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Willy Tarreau <w@1wt.eu>
Subject: Re: [bug report] armada-8040-mcbin: 5.6-rc5 boot failure
Message-ID: <20200414165533.GX25745@shell.armlinux.org.uk>
References: <20200413220520.GA25917@curiosity>
 <20200413222645.GT25745@shell.armlinux.org.uk>
 <20200414160354.GA463339@curiosity> <20200414160838.GA21435@1wt.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414160838.GA21435@1wt.eu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_095610_893137_0D4EF44D 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Baruch Siach <baruch@tkos.co.il>,
 Sergey Matyukevich <geomatsi@gmail.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 06:08:38PM +0200, Willy Tarreau wrote:
> Hi,
> 
> On Tue, Apr 14, 2020 at 07:03:54PM +0300, Sergey Matyukevich wrote:
> > I have not changed configuration since 5.3, so all the marvell phy
> > drivers are in place. Is there anything in configuration that could
> > be missed after moving from 5.3 to 5.6 kernel ?
> 
> FWIW mine works perfectly fine with 5.4 at 1G/2.5G/10G. From what I can
> quickly check here are the relevant parts in my config for ethernet (not
> sure all are needed though):
> 
> CONFIG_NET_VENDOR_MARVELL=y
> CONFIG_MVMDIO=y
> CONFIG_MVPP2=y
> CONFIG_MDIO_DEVICE=y
> CONFIG_MDIO_BUS=y
> CONFIG_MDIO_BITBANG=y

Macchiatobin doesn't bitbang the MDIO bus.

> CONFIG_MDIO_BUS_MUX=y
> CONFIG_MDIO_BUS_MUX_MMIOREG=y
> CONFIG_MDIO_BUS_MUX_MULTIPLEXER=y

There's no MDIO bus muxing on Macchiatobin.

> CONFIG_MDIO_I2C=y
> CONFIG_PHYLINK=y
> CONFIG_PHYLIB=y
> CONFIG_SWPHY=y
> CONFIG_SFP=y
> CONFIG_FIXED_PHY=y

CONFIG_FIXED_PHY should no longer be required.

> CONFIG_MARVELL_PHY=y
> CONFIG_MARVELL_10G_PHY=y
> 
> Not tested 5.6 yet.
> 
> Hoping this helps,
> Willy
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
