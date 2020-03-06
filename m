Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A6317BB55
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 12:14:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dlJmpfInWuNyMDmpkavQydWJ+BK2BHThA7uviYWwA2Y=; b=BcnspobW1jUCNP
	UB2tDOpuMYg37ik4f0YzieDRBPh2QzzJhw3v7s+mH4+t/G7Pw63EwKq2Bq2w7p8shtbRHYrASO8Kf
	+7Vs2N7IRAi8Ri5zqyPH2YLdm/O5iC/UQM/EUHKaHpMpq+TDLLrifm/ZQ2vkJy7MPMpciF2HsZiXw
	sC6IXmXpcy8s8HR/Upx38a8O5ypvjvSDS7WHD0eAux7DJP3QMhZbbIUtR5Ef6i8WAD6O3YtleIIkR
	eXXcqYvQEkO7ieWMyJtl5o79JTisqe8+t/fX6hAAJOlaLZ7IexSEVFoGeDkT/mpRjxZV8iGHYbGZM
	NZHapS3Cd1AKd3VW5XKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAw8-0000Vg-6u; Fri, 06 Mar 2020 11:14:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAvy-0000UZ-Gm
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 11:14:27 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1jAAvv-0007qh-Fv; Fri, 06 Mar 2020 12:14:23 +0100
Subject: Re: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
To: Philippe Schenker <philippe.schenker@toradex.com>,
 "o.rempel@pengutronix.de" <o.rempel@pengutronix.de>,
 "andrew@lunn.ch" <andrew@lunn.ch>
References: <20200305134928.19775-1-philippe.schenker@toradex.com>
 <20200305143805.dk7fndblnqjnwxu6@pengutronix.de>
 <20200305165145.GA25183@lunn.ch>
 <7191ffe6-642a-477c-ec37-e37dc9be4bf8@pengutronix.de>
 <4e48d56f184ed56d15d2ae6706fdb29e4c849132.camel@toradex.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f47a46b9-6d6a-e257-4309-7e49852bc88e@pengutronix.de>
Date: Fri, 6 Mar 2020 12:14:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <4e48d56f184ed56d15d2ae6706fdb29e4c849132.camel@toradex.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_031426_556281_12C2E0FF 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Philippe,

On 3/6/20 10:46 AM, Philippe Schenker wrote:
> Hi Andrew and Ahmad, thanks for your comments. I totally forgot about
> those more specific phy-modes. But just because none of our driver
> supports that. Either the i.MX6 fec-driver as well as the micrel.c PHY
> driver supports this tags.
> What do you guys suggest then how I should implement that skew stuff?

I think implementing them in the Micrel driver would make sense.
When more specific skews are supplied, these are used.
If not, the rgmii_[tx]?id applies the appropriate timings for length matched
lines. Device trees matching your use case will then only have to specify
rgmii-txid. 

> The problem is that i.MX6 has an asynchronic skew of -100 to 900ps only
> enabling the PHY-delay on TXC and RXC is not in all cases within the
> RGMII timing specs. That's why I implemented this 'weird' numbers.

I am not too well-versed with this. What's an asynchronic skew?
A non-deterministic internal delay..? So, you try to be as accurate as
possible, so the skew is within the acceptable margin?

Cheers
Ahmad


> 
> Philippe
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
