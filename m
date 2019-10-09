Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F71CD1369
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 18:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MCfgdLJW5P27FK1YKovuv/VVeKzjU1s8c2gacWven4Q=; b=RyWPuKCKMCK0kw
	qPt4/I8EM1MiNrFYak0qwOYudVKGP01vqhusRvXGx/aDEpT0MajXY2vaPAVptHOh546RyfDrtmm2u
	po7exuj/CEzEJ5wtbhIbfUSGhtwnMfl2Zh3GE3X6KA1FnadGZ400Nq22hhd6Fjy7QlI8Ls/XJf94H
	NeAfK1UcDtinejQm2hmhle4X1Jjb9vmQlifxkuICGjTQoPyyUK9Rc/poHQMmgsERMf+c3gehwcuNI
	QEpyXMizeyi6FtGzOp/EepoeE3LVsIkC4zqv0Azcy1AMQnxYACPElN1YN/EazthrpbqXPXTc//TKw
	ZHfgOxTR8hnR1Kcy4+zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIEOW-000191-Si; Wed, 09 Oct 2019 16:00:56 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIEON-00018B-4B
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 16:00:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ucukg7GkJP+9N99+SHGJ51rDh7KmVsHZaDdL2vdNYvI=; b=PTHd4OIm3asTL7UL7U9J28ecZ
 GenacwlVK0tKU+mVwoLoJz21yiYfHCd9s1neMVKyUv7EYWkRdR0P40oO91YNtFRt+c8NEt6OonZNo
 YjagggcZBif9Paae0zCJAAEsVsqUMGbNEh6kpLlamxM1tS/Sy+6BS6LssIhmYwp7+lrm1bd8UNzxW
 wQ7Cw8tM53yZI1G7XBX3KorimAqycswt25k8uRm7kYbRm/CN6FKU7HhrrLREchfPef6liU+djMmVu
 34YX/HVA6oc/zLqymTH7FcaCyFBqVdP5zUZJdUA2umE1hnjSsLMtMqzJil+sNwtx0G3wzJ1NEHqwQ
 8x3fRStIQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:49526)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iIEO0-0002RS-7o; Wed, 09 Oct 2019 17:00:24 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iIENv-0007p4-Ua; Wed, 09 Oct 2019 17:00:19 +0100
Date: Wed, 9 Oct 2019 17:00:19 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ben Dooks <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] mvebu: fix __iomem on mvebu_pm_store_armadaxp_bootinfo()
Message-ID: <20191009160019.GF25745@shell.armlinux.org.uk>
References: <20191009153342.23789-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009153342.23789-1-ben.dooks@codethink.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_090047_393763_AB20AF6F 
X-CRM114-Status: GOOD (  19.76  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@lists.codethink.co.uk, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>,
 Gregory Clement <gregory.clement@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 04:33:42PM +0100, Ben Dooks wrote:
> The mvebu_pm_store_armadaxp_bootinfo() uses writel to
> store data, so the pointer into it should be __iomem
> annotated. Fixes the following sparse warnings:
> 
> arch/arm/mach-mvebu/pm.c:124:9: warning: incorrect type in argument 2 (different address spaces)
> arch/arm/mach-mvebu/pm.c:124:9:    expected void volatile [noderef] <asn:2> *addr
> arch/arm/mach-mvebu/pm.c:124:9:    got unsigned int [usertype] *
> arch/arm/mach-mvebu/pm.c:125:9: warning: incorrect type in argument 2 (different address spaces)
> arch/arm/mach-mvebu/pm.c:125:9:    expected void volatile [noderef] <asn:2> *addr
> arch/arm/mach-mvebu/pm.c:125:9:    got unsigned int [usertype] *
> arch/arm/mach-mvebu/pm.c:133:9: warning: incorrect type in argument 2 (different address spaces)
> arch/arm/mach-mvebu/pm.c:133:9:    expected void volatile [noderef] <asn:2> *addr
> arch/arm/mach-mvebu/pm.c:133:9:    got unsigned int [usertype] *
> arch/arm/mach-mvebu/pm.c:134:9: warning: incorrect type in argument 2 (different address spaces)
> arch/arm/mach-mvebu/pm.c:134:9:    expected void volatile [noderef] <asn:2> *addr
> arch/arm/mach-mvebu/pm.c:134:9:    got unsigned int [usertype] *
> arch/arm/mach-mvebu/pm.c:140:9: warning: incorrect type in argument 2 (different address spaces)
> arch/arm/mach-mvebu/pm.c:140:9:    expected void volatile [noderef] <asn:2> *addr
> arch/arm/mach-mvebu/pm.c:140:9:    got unsigned int [usertype] *
> arch/arm/mach-mvebu/pm.c:141:9: warning: incorrect type in argument 2 (different address spaces)
> arch/arm/mach-mvebu/pm.c:141:9:    expected void volatile [noderef] <asn:2> *addr
> arch/arm/mach-mvebu/pm.c:141:9:    got unsigned int [usertype] *
> arch/arm/mach-mvebu/pm.c:148:50: warning: incorrect type in argument 1 (different address spaces)
> arch/arm/mach-mvebu/pm.c:148:50:    expected unsigned int [noderef] [usertype] <asn:2> *store_addr
> arch/arm/mach-mvebu/pm.c:148:50:    got unsigned int [usertype] *[assigned] store_addr
> arch/arm/mach-mvebu/pm.c:150:9: warning: incorrect type in argument 2 (different address spaces)
> arch/arm/mach-mvebu/pm.c:150:9:    expected void volatile [noderef] <asn:2> *addr
> arch/arm/mach-mvebu/pm.c:150:9:    got unsigned int [usertype] *[assigned] store_addr
> 
> Note, this doesn't take into account writel() is probably heavy
> handed here and just writing the data and then flushing all the
> caches etc would be good enough.

This is definitely wrong.

> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
> ---
> Cc: Jason Cooper <jason@lakedaemon.net>
> Cc: Andrew Lunn <andrew@lunn.ch>
> Cc: Gregory Clement <gregory.clement@bootlin.com>
> Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm/mach-mvebu/pm.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-mvebu/pm.c b/arch/arm/mach-mvebu/pm.c
> index c487be61d6d8..c223f87ed338 100644
> --- a/arch/arm/mach-mvebu/pm.c
> +++ b/arch/arm/mach-mvebu/pm.c
> @@ -106,7 +106,7 @@ static phys_addr_t mvebu_internal_reg_base(void)
>  	return of_translate_address(np, in_addr);
>  }
>  
> -static void mvebu_pm_store_armadaxp_bootinfo(u32 *store_addr)
> +static void mvebu_pm_store_armadaxp_bootinfo(u32 __iomem *store_addr)
>  {
>  	phys_addr_t resume_pc;
>  
> @@ -152,9 +152,9 @@ static void mvebu_pm_store_armadaxp_bootinfo(u32 *store_addr)
>  
>  static int mvebu_pm_store_bootinfo(void)
>  {
> -	u32 *store_addr;
> +	u32 __iomem *store_addr;
>  
> -	store_addr = phys_to_virt(BOOT_INFO_ADDR);
> +	store_addr = (__force __iomem u32*)phys_to_virt(BOOT_INFO_ADDR);

phys_to_virt() does not return an iomem pointer, so the memory pointed
to here is _not_ iomem.  Thus, iomem accessors should not be used - and
that's where the problem actually lies.

>  
>  	if (of_machine_is_compatible("marvell,armadaxp"))
>  		mvebu_pm_store_armadaxp_bootinfo(store_addr);
> -- 
> 2.23.0
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
