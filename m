Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1F3892AA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 18:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXoyxbqZSHGk+V0qSySo+RFi9iP37LcAXiKfgSVDkuY=; b=fBXFvlpEqNXKcC
	Bvmo8X/XSU7JCknuNkNBX/dCZwqFCwtPlgIN3gfNav6lb8VsKSIj/Cjlig5cdrWwbevTl1mG9+yyp
	N541TnYeVh9KokmKTpWa+dTllmR6V5pxB09M0P2XjOHrHccy48odrzxPhAY6V/fKNT6bEquDPgK6W
	R+OwD3kOHnLlImZadGELY6I4PkD4XIVdtRdDX6QyrONE7Ecp7Y9ON0vLb/n2/7Q2tc7QO/BimtMtn
	M3D8pVvF6RcCPEtmzgDWcPr/OI1zevr0NliwaIY41xRZk8/dPgRVQ/7zZS4WLtXPcUsVDdV69fYyr
	9pw8GmgMS89vC1wb0YVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwqxJ-0007Gj-PG; Sun, 11 Aug 2019 16:44:29 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwqxE-0007GR-6g
 for linux-arm-kernel@lists.infradead.org; Sun, 11 Aug 2019 16:44:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TUcPvdon//cRSTNaWWbwC4+UhxIzQPVa/qaFVB2nzoo=; b=Ct70SbppQ1TFQY+VVbKLFZPGUK
 Z/BYxeHlpx0IxYzjtXD+/cJf+0EE4vVWDjiisTrNSS4ggIFouIghmcSLX0YESu4YUv5YbWStYOOto
 Lod9doT6ZCkVmoEMhTvag1I3SkgNwi6Acef3bWdlsmc0C4D1EFANdIcJucrn5uP+I+cA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hwqxC-0004Fo-Fq; Sun, 11 Aug 2019 18:44:22 +0200
Date: Sun, 11 Aug 2019 18:44:22 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [BUG] fec mdio times out under system stress
Message-ID: <20190811164422.GF14290@lunn.ch>
References: <20190811133707.GC13294@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190811133707.GC13294@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_094424_428665_9BAC84D0 
X-CRM114-Status: UNSURE (   8.14  )
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
Cc: netdev@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Maybe phylib should retry a number of times - but with read-sensitive
> registers, if the read has already completed successfully, and its
> just a problem with the FEC MDIO hardware, that could cause issues.

Hi Russell

At the bus level, MDIO cannot fail. The bits get clocked out, and the
bits get clocked in. There is no way for the PHY to stretch the clock
as I2C slaves can. There is nothing like the USB NACK, try again
later.

If something fails, it fails at a higher level, which means it is a
driver issue. In this case, the interrupt got delayed, after the timer
interrupt.

The FEC is also quite unusual in using an interrupt. Most MDIO drivers
poll. And if time gets 'stretched' because the system is too busy,
generally, the right thing happens anyway.

So i don't think it is phylib job to work around this issue.

   Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
