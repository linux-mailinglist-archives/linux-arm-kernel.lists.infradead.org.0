Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0591B612E4
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 22:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vAM5egwgeOevR+Cj99R1/vaxBTgR0gmR7YWMsTWdsCY=; b=mjGqGCJXEX2JjE
	VO+oOpVE7nVGtcFMrJF1zvDQmq2CVgtQHQHNLDJWbGpvORGl4rNk2aKZeHVvhWLXgGPQf3UDdgJUJ
	lZRaALwBr6mMY7oChiXRIr44PZgQUf8BSYI8kxH9vNt1H3FFxWqt+NXZmt7BLqwr7HLNUqfY4tkvr
	aD+jio1GmnrYBc1Xnv6jkPV/hi50UC3Cmf1HEO8k/VGlcQaN3A5dD9oaYFQfWkskkZ62KpCeQTp1A
	/nLljCtRfMKjR0Da98lRAKYffwl/Fnhp+iP1WScNFXVV6CGXqzZOZl41HWbVkelluSpiMVLZ0SO5F
	N9wPMG2BFeYktrm1gMyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjqvq-0000D0-LH; Sat, 06 Jul 2019 20:05:14 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjqvf-0008B4-5j; Sat, 06 Jul 2019 20:05:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xPPW0Y+V/+W7+A623cn0ORRSiYMjDSZxwPi+8VYEw+8=; b=zZlZPQnWO7vWzTIv2p5qgeWLA
 GnIK2ck7h40M9+OXU5EUmQBqTzoVieREz8v3gF+fPLzkxcs2o6GSOeV2O9vSwrVle6c7TR5MGjq16
 1vtuLsc0X6YvKC6kMMGMR4GkNKBuhx4l7+lpeU5Fta0naCQ8wX/WZLPlw1AAnznZ46/3A+rVPfbrf
 wHycg9H0AvLwT2mGeJlTdtq4+qJvrzMbSnbXySCaa3djbTVK7A5jUZBHwALMHay2AT/GJM+undWJd
 LZGKOlU+OP7NWviz17K36FI5aXzCDSsEeuYDbAlob/Re5e+SROgktANwFH0NaHr64yTt4lH5JYAOL
 pcwXiKXWA==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjqva-000360-CV; Sat, 06 Jul 2019 20:04:59 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 4B50AE0003;
 Sat,  6 Jul 2019 20:04:20 +0000 (UTC)
Date: Sat, 6 Jul 2019 22:04:20 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: Re: Re: [PATCH v2 3/7] rtc: mt6397: improvements of rtc driver
Message-ID: <20190706200420.GE12409@piout.net>
References: <20190703164822.17924-1-frank-w@public-files.de>
 <20190703164822.17924-4-frank-w@public-files.de>
 <20190704204336.GJ3692@piout.net>
 <trinity-7b1977bd-252b-4482-b708-cf704a9d3da1-1562340946396@3c-app-gmx-bs68>
 <20190705212448.GB12409@piout.net>
 <trinity-a4e5f99f-00bc-4e90-9a48-64dbc6ba9c08-1562429720701@3c-app-gmx-bs42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-a4e5f99f-00bc-4e90-9a48-64dbc6ba9c08-1562429720701@3c-app-gmx-bs42>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Lee Jones <lee.jones@linaro.org>,
 linux-rtc@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Allison Randal <allison@lohutok.net>, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/07/2019 18:15:20+0200, Frank Wunderlich wrote:
> > Gesendet: Freitag, 05. Juli 2019 um 23:24 Uhr
> > Von: "Alexandre Belloni" <alexandre.belloni@bootlin.com>
> 
> > Let's say the RTC has been used to start your platform, then the irq
> > handler will be called as soon as the irq is requested, leading to a
> > null pointer dereference.
> 
> i cannot test this with my platform, but i have changed it in my repo
> 
> https://github.com/frank-w/BPI-R2-4.14/commits/5.2-poweroff-mainline
> 
> > Yes and IIRC, I did comment that the rtc change also had to be separated
> > from 1/7.
> 
> also this is put in separate commit, can you take a look before i post v3?
> 
> > Also, I really doubt this new compatible is necessary at all as you
> > could simply directly use mediatek,mt6397-rtc.
> 
> imho this can confuse because the wrong chip-name is used in dts
> 

This is not true, we do that all the time and the immediate benefit of
using the mt6397 compatible is that then there is no need to
synchronize between subsystems. If you want to be absolutely
conservative, you could use

compatible = "mediatek,mt6323-rtc", "mediatek,mt6397-rtc";

in your DT.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
