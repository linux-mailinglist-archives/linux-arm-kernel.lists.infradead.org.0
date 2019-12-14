Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CDA11F2A9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 16:55:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8JyWB3ZQ+aG7c0LfUFYPQxJVqPb1XMrHZszrVdqzyYU=; b=Sml2CKn0OaUecr
	xSVes6ia3Azs0e9oq9hSx8nsXyFST3Dd6eyxpjPbqxcGHQ5y9EJHo0otVyJRO9kZ+UeSCt11P8iUH
	OYzU/1HUKJteoTDlRRZLAb9mW4C7t7Km481nQSoX3ySrrf7YjcktSM96orsgks654vxwlnvar0VIJ
	tpp1ebv5JMUmf5buNXw4OxZIF/yRF4m+pJJSaHRYXRtvPa5V0EkEBS1gOfk5TBKKU3yTy+z0bzNkZ
	vmbFd414SiL0foR0Ng+FOZhNRi29aVlKBbKG4dyo/aLg0r2Eoc15W3xipUtWGes00VCeyU5w7gq8V
	bZye5x2TDHM/5YoRvX+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ig9lA-0001Fa-9G; Sat, 14 Dec 2019 15:55:12 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ig9kt-0001F6-Gh; Sat, 14 Dec 2019 15:54:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RGWmKTY/yyH/XxxUvdn8dLr0Xj3UkAx6dUbBBDhQWg4=; b=NAhC7mF/Yab18ZaE+pUkHVnuQc
 Rgvf7NPxBLw0tPcMFS6J2+w0oSjKt3kbCD48Lrh7o00GEuT5CRpwn07PICo4cINX4MHKu7BlM/Xhy
 38qndSEf6wUIzDc6FsC5/uWaF2b8P6Z3uWsXfLfTXHxsgIlzYi+cGSgXXHnYtsYwLruo=;
Received: from p200300ccff382f001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff38:2f00:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1ig9ke-0003oA-QQ; Sat, 14 Dec 2019 16:54:41 +0100
Date: Sat, 14 Dec 2019 16:54:39 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [Letux-kernel] BUG - was: [GIT PULL 2/3]
 bcm2835-soc-next-2019-10-15
Message-ID: <20191214165439.6873625b@aktux>
In-Reply-To: <20191214125947.GD1337@shell.armlinux.org.uk>
References: <1571159725-5090-1-git-send-email-wahrenst@gmx.net>
 <1571159725-5090-2-git-send-email-wahrenst@gmx.net>
 <12244E4E-A1A0-4EE9-ACD3-EA165D9A2C79@goldelico.com>
 <20191214125947.GD1337@shell.armlinux.org.uk>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_075455_852174_21EF108B 
X-CRM114-Status: GOOD (  25.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Tony Lindgren <tony@atomide.com>, "H.
 Nikolaus Schaller" <hns@goldelico.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 14 Dec 2019 12:59:47 +0000
Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:

> On Sat, Dec 14, 2019 at 11:54:19AM +0100, H. Nikolaus Schaller wrote:
> > Hi Stefan,
> >   
> > > Am 15.10.2019 um 19:15 schrieb Stefan Wahren <wahrenst@gmx.net>:
> > > 
> > > Hi Florian,
> > > 
> > > The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> > > 
> > >  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> > > 
> > > are available in the git repository at:
> > > 
> > >  git://github.com/anholt/linux tags/bcm2835-soc-next-2019-10-15
> > > 
> > > for you to fetch changes up to 781fa0a954240c8487683ddf837fb2c4ede8e7ca:
> > > 
> > >  ARM: bcm: Add support for BCM2711 SoC (2019-10-10 19:21:03 +0200)  
> > 
> > this patch has finally arrived in v5.5-rc1 but it seems to break
> > multiplatform build.
> > 
> > We run a distribution kernel that supports OMAP3/4/5, i.MX6 and RasPi 3B+
> > but since rebasing to v5.5-rc1 the kernel hangs after "Starting Kernel ...".
> > On all ARM devices (incl. RasPi 3B+).
> > 
> > Playing with our defconfig did show that deconfiguring CONFIG_ARCH_BCM2835
> > makes the kernel work again.
> > 
> > After further analysis it turns out that reverting this patch also
> > makes the boards work again.
> > 
> > I am not exactly sure what the reason is, but it may have something to
> > do with the new auto-selection of CONFIG_ZONE_DMA which is not automatically
> > selected by OMAP and i.MX6.
> > 
> > To reproduce on some OMAP device (i.MX6 should be similar)
> > 
> > 1st test:
> > 
> > git checkout v5.5-rc1
> > make omap2plus_defconfig
> >   
> > => boots OMAP device  
> > 
> > 2nd test:
> > 
> > ( echo CONFIG_ARCH_BCM2835=y; echo CONFIG_ARCH_BCM=y ) >>arch/arm/configs/omap2plus_defconfig
> > make omap2plus_defconfig
> >   
> > => fails to boot OMAP device  
> > 
here it does not give any output at all if earlycon is appended to
kernel parameters.

> > 3rd test:
> > 
> > git revert 781fa0a954240c8487683ddf837fb2c4ede8e7ca
> > make omap2plus_defconfig
> >   
> > => boots OMAP device  
> > 
> > BTW: the RasPi 3B+ runs equally well without this patch. So what is it
> > good for?
> > 
> > So please check and fix this patch.  
> 
> Enabling ZONE_DMA shouldn't cause this problem - but as it does, please
> enable memblock debugging and early console, and please send any boot
> messages you can get from the system when it fails to boot.  Also
> having a successful boot log may be useful.
> 
diff --git a/arch/arm/mach-omap2/Kconfig b/arch/arm/mach-omap2/Kconfig
index ad08d470a2ca..b46cf3d5e389 100644
--- a/arch/arm/mach-omap2/Kconfig
+++ b/arch/arm/mach-omap2/Kconfig
@@ -17,6 +17,7 @@ config ARCH_OMAP3
        select OMAP_INTERCONNECT
        select PM_OPP if PM
        select PM if CPU_IDLE
+       select ZONE_DMA
        select SOC_HAS_OMAP2_SDRC
        select ARM_ERRATA_430973

seems not to cause problems with make omap2plus_defconfig
here.

Regards,
Andreas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
