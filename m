Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A24501D1658
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:47:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ab62Zomrt4Q/wToMz6gt53JH+sflVPd7T03Va/0GAic=; b=AXweMPT75+iZ5s
	In8nBiZ6KiczNa9lUWArJNii36TLuaJpVRY9jjaM891agDR7Ad4x8JhakJoyqANGw9aKWssFy6jbt
	gT+iYaYm0Qest5X/nmoD0MomYNods7x3nRYfNeO8706pGXCRd3Eg3caLdGtJarZOWrI4HZtr07uJL
	FC8h0BcTIAfgZwm8wBMx5GG8Es1o7yxLZR2DTxjAwLSaQYrCxYtt+jTWwtJUu6owMhzu0Fi7ebnyJ
	/wWB7Au8JOPsAwlgCCZmbHQKLKJd4zeX+4sqOAvA8URxVl/5Ah5Ia3AtQDgD39qGWdpuRfuRgxi5m
	lkJo+nWt2muf64vRFihA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrjD-0003ki-Lm; Wed, 13 May 2020 13:47:19 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrZq-0007by-H0
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:37:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CT8QafuNU7nLW58gRG75IH2d/SNOoLj5Pkh6RsDK2u0=; b=DB1u96VASarFExlYVvTN2K4FF
 YcWgO4N/Pv/7rjUwfqYgwZzwFq83aUexyQlS0nCAYIIXLmIB+NxaVmv4qU+wi8Gg9CjGaX/JyUX5f
 KfEkgGylGwbYY1gc5y+4a3myt/YWd09VH4dnEhbYWl3ZT3wAo9hJCw51Q2bm/7feFrrai2HMkHBSV
 +rhzet+/uD9KCl+EkC/RpgUKU27k9nbKLwfvMorD16UTwETE/H3U/9TiQTJjqZsPm2BYynJ5ALsfz
 smTKoZptXIo9MJ7w/bvIachtZYcbNozvC47ygP4FLFac2zgGFgVCjdEgoiydosTgWsg4SosQaQv7o
 K2jOKiUZg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:59948)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jYrZe-0004jS-7F; Wed, 13 May 2020 14:37:26 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jYrZb-0007oW-Ux; Wed, 13 May 2020 14:37:23 +0100
Date: Wed, 13 May 2020 14:37:23 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] i2c: pxa: implement generic i2c bus recovery
Message-ID: <20200513133722.GJ1551@shell.armlinux.org.uk>
References: <E1jYnlI-0002Nw-83@rmk-PC.armlinux.org.uk>
 <20200513131843.GB499265@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513131843.GB499265@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063738_784359_BAC95783 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Vladimir Vid <vladimir.vid@sartura.hr>, Rob Herring <robh+dt@kernel.org>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 03:18:43PM +0200, Andrew Lunn wrote:
> On Wed, May 13, 2020 at 10:33:12AM +0100, Russell King wrote:
> > Implement generic GPIO-based I2C bus recovery for the PXA I2C driver.
> 
> Hi Russell
> 
> I assume this is going to be merged via i2c? So Wolfram Sang?  He is
> not on To: or Cc:

Yes, just as my other patches I've posted to the linux-i2c list that
Wolfram has picked up.  I think he works from patchwork.

I assume Wolfram doesn't want to be Cc'd, as per the current setup in
MAINTAINERS.  If that's not the case, MAINTAINERS needs to be fixed.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
