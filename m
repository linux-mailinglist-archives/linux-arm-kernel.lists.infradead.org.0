Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6485411F2B8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 17:01:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxCigykI+kvdkv6n5RmwzBYBKMFRhInHiK4KoyUrJqA=; b=ksBZgcSFei/BzZ
	1tI2FMXSrubIcaXZsOuVMeW4EFNdf9QYkWOSCD44YHni80/CQ/TiWkB9+kP5YaT9U+LLRxB91Iz41
	MnnfuetmiAEwHOZKwIIgbIYFNrQ34kxYgj4l3Wlm6NU1z5N8J+n2INdUyWyZ3Hmu5jyh5DODvLyUz
	BxPfEcL1YXhQRQBzI4CbsGsi5ttCipCPPJMd44bsnmaYkE6otyASP0DX6++LQ/jEV5e0FAhrFoOFv
	jbLmifWWAHr0/C65TmUpsoFpRLBmLkD4EKk1ZZSyYdCg0ZMnaZX9X1Kj9S2rTyGV7BT0q8UUUkToL
	qm3OIGtU/XNj0DUDI1Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ig9rH-0004eg-4o; Sat, 14 Dec 2019 16:01:31 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ig9qn-0004bw-Cg; Sat, 14 Dec 2019 16:01:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cVfsByPBGAH0nlXQRgx8tkvnwPRM93zqT8emFAC0MMo=; b=NYBnGKnByJHlzENS5UPOeXPvF
 lDm53oKLDryplzcg2wtiqsmjk3vVDVik46mpm2X542ZB8jgKcPYXLegNwiMKoe4d/3zB/HFIpweM3
 W9zQNX2o0ic0jH6Xf1nD2ANFnYiJlYjPoErAzdJGnDjLlJNXwP6FaMq4iNpGOlslXBp3lY4Q1YfNZ
 w7c61lybarYqsCdd00nAaqbA6LMJjEqcOt3OUo2xgdSp0A6sZSEZU0regJQgOud95o2biPA9vHEu9
 6z87usN65hGtdKwyFimNG1lclpP+feXTewWQLO1uyc6CFoN3NYiXmGfYCsCkUKChTdYYOtCTKUm45
 Rj/NHc5jw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:41234)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ig71T-0002v6-Ew; Sat, 14 Dec 2019 12:59:51 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ig71P-0000SH-FH; Sat, 14 Dec 2019 12:59:47 +0000
Date: Sat, 14 Dec 2019 12:59:47 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: BUG - was: [GIT PULL 2/3] bcm2835-soc-next-2019-10-15
Message-ID: <20191214125947.GD1337@shell.armlinux.org.uk>
References: <1571159725-5090-1-git-send-email-wahrenst@gmx.net>
 <1571159725-5090-2-git-send-email-wahrenst@gmx.net>
 <12244E4E-A1A0-4EE9-ACD3-EA165D9A2C79@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12244E4E-A1A0-4EE9-ACD3-EA165D9A2C79@goldelico.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_080101_580834_7022A48E 
X-CRM114-Status: GOOD (  22.01  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Tony Lindgren <tony@atomide.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-OMAP <linux-omap@vger.kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Dec 14, 2019 at 11:54:19AM +0100, H. Nikolaus Schaller wrote:
> Hi Stefan,
> 
> > Am 15.10.2019 um 19:15 schrieb Stefan Wahren <wahrenst@gmx.net>:
> > 
> > Hi Florian,
> > 
> > The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> > 
> >  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> > 
> > are available in the git repository at:
> > 
> >  git://github.com/anholt/linux tags/bcm2835-soc-next-2019-10-15
> > 
> > for you to fetch changes up to 781fa0a954240c8487683ddf837fb2c4ede8e7ca:
> > 
> >  ARM: bcm: Add support for BCM2711 SoC (2019-10-10 19:21:03 +0200)
> 
> this patch has finally arrived in v5.5-rc1 but it seems to break
> multiplatform build.
> 
> We run a distribution kernel that supports OMAP3/4/5, i.MX6 and RasPi 3B+
> but since rebasing to v5.5-rc1 the kernel hangs after "Starting Kernel ...".
> On all ARM devices (incl. RasPi 3B+).
> 
> Playing with our defconfig did show that deconfiguring CONFIG_ARCH_BCM2835
> makes the kernel work again.
> 
> After further analysis it turns out that reverting this patch also
> makes the boards work again.
> 
> I am not exactly sure what the reason is, but it may have something to
> do with the new auto-selection of CONFIG_ZONE_DMA which is not automatically
> selected by OMAP and i.MX6.
> 
> To reproduce on some OMAP device (i.MX6 should be similar)
> 
> 1st test:
> 
> git checkout v5.5-rc1
> make omap2plus_defconfig
> 
> => boots OMAP device
> 
> 2nd test:
> 
> ( echo CONFIG_ARCH_BCM2835=y; echo CONFIG_ARCH_BCM=y ) >>arch/arm/configs/omap2plus_defconfig
> make omap2plus_defconfig
> 
> => fails to boot OMAP device
> 
> 3rd test:
> 
> git revert 781fa0a954240c8487683ddf837fb2c4ede8e7ca
> make omap2plus_defconfig
> 
> => boots OMAP device
> 
> BTW: the RasPi 3B+ runs equally well without this patch. So what is it
> good for?
> 
> So please check and fix this patch.

Enabling ZONE_DMA shouldn't cause this problem - but as it does, please
enable memblock debugging and early console, and please send any boot
messages you can get from the system when it fails to boot.  Also
having a successful boot log may be useful.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
