Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6567F30568
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 01:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZIVthahE69fVBYYAxRamDV0QSrVK8kQCqVJV3QyMF5A=; b=DCRwSAEwS7UDkl
	d5PGVwYYXEv1lxFWcGmme5SdOnaSwjQjbT2cQiM2r2ZX4cJn6p0CEbL1Z4DfzfwscY9JSSG+sSg2R
	eZsFb14+bIMaAe8nXy7zW0nbxoSlhMRPmIc+GGGoAtxwy6dMxptgZdfozKTb03k1XPbz7suD+hkFy
	6Njz/GAN5BDJ1sAFY41scpkwiwQUnPvbyr8PZ+LIVYUSiKEdjECA5mVkbSBIkNuSYd50fGsBClMDa
	8ysjmT/z8CXQuqFFCh+p7cR1HH1AItbC6thgn54yeN+HU9Voc8MgYxg0L0OiwyGMznInPbVicG8gO
	5UFz6rotPgu+Nd8Z0NrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWUIw-0008Im-Lg; Thu, 30 May 2019 23:17:50 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWUIp-0008II-7J
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 23:17:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aEc6ykxVWtoFlsoR9RzSRB7dyu5aRF0W+qRG3bvM/DI=; b=ROS5L4ZeqWRKJITipcJ0uftDf
 WOdDNP4RmpLF/2/UEnn+vuyDpTopw0+I19WAAqdLQkZ52Krg6KH4N8VxhjrQ/a5zwCfmG+xegBPP9
 xucwVi5FbHesiYS6y2SfIM8jQ4bkr81etYxucwggDoDQVbCQ0BzuJ6MwzGSBhWGyXwObUN9hwBTDs
 14QLSVXJ93ucjokginRWqBt1nyQlPtN+3sqEPTQNMekx+BcDtaAIp473a9JGeANdSrSV0c1rfwNPu
 IgJAvf69klEWbeK4I7kMI9lBi6og64RQPu1rAFNFaxJFXkIr51zHufWCY8k81SxWVkeqr3wPj0O71
 S99ARoxZA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:52728)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hWUIk-0005eE-57; Fri, 31 May 2019 00:17:38 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hWUIh-0005n8-F3; Fri, 31 May 2019 00:17:35 +0100
Date: Fri, 31 May 2019 00:17:35 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 0/2] arm64: smp: Include smp_plat.h from smp.h
Message-ID: <20190530231735.n7so5mhec72xjmhm@shell.armlinux.org.uk>
References: <20190530230518.4334-1-f.fainelli@gmail.com>
 <c0492b62-0ad2-3dae-7a6d-06e89afd59fe@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c0492b62-0ad2-3dae-7a6d-06e89afd59fe@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_161743_270640_9DED7AB7 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: marc.zyngier@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, open list <linux-kernel@vger.kernel.org>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 04:14:28PM -0700, Florian Fainelli wrote:
> On 5/30/19 4:05 PM, Florian Fainelli wrote:
> > Hi ARM64 maintainers,
> > 
> > This patch series aims at enabling irq-bcm7038-l1.c on
> > ARM64/ARCH_BRCMSTB, this driver makes use of cpu_logical_map[] and in
> > order to avoid adding a CONFIG_ARM64 conditional inclusion of
> > smp_plat.h, instead smp.h includes smp_plat.h, which is in turn included
> > by linux/smp.h.
> > 
> > If you like the approach, I would suggest to carry that through the
> > Broadcom ARM64 SoC pull request for 5.3.
> 
> ARM (32-bit) needs the same thing kind of thing so a conditional include
> may be appropriate after all...

The whole idea of the smp_plat.h vs smp.h separation is to avoid
including lots of arch-private stuff in the rest of the kernel
build, thereby exposing arch-private stuff to the world.  I'm be
opposed to that.

> 
> > 
> > Thank you!
> > 
> > Florian Fainelli (2):
> >   arm64: smp: Include smp_plat.h from smp.h
> >   arm64: Enable BCM7038_L1_IRQ for ARCH_BRCMSTB
> > 
> >  arch/arm64/Kconfig.platforms      | 1 +
> >  arch/arm64/include/asm/smp.h      | 1 +
> >  arch/arm64/include/asm/smp_plat.h | 1 +
> >  3 files changed, 3 insertions(+)
> > 
> 
> 
> -- 
> Florian
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
