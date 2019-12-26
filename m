Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E2912AC04
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 13:02:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWTkKIuOEEIDYEf4TR9FoLrDaHSQmcA5xVRkFqHAQrg=; b=T6Ev5tvYPvM+/D
	mlfEPlX9EpZ6Kjei3MSBAUWq99Qm9OxK1/1X70dYKQLnngZmYnGJa9DwWPqtZ1yBcRHIDZ6YUt+ob
	gckYLpSQUaNse/kK68SSlnLrf0CYA59uii2NhNjr9+/Th7GOWu1SZDlt20UZiWKLIHmSE9SKTT0Y2
	iHUzakGaMFlcJYvdj7JqMIvlyLy1ONgk7jI9H4FIo7BJpuOgZiuRnv6ye0SBYD/2s5/V7TJFKJkDX
	CY9ya8BDxAt/m1BstI+h0iguM9htIQauR4vUpBJiSadmBWuPkB+WakeMujMZ1b/xKf6Cu8ZkTEtNW
	1aFJ9b/XayLiDw0iwblg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikRq0-0001e9-K9; Thu, 26 Dec 2019 12:01:56 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikRpo-0001cy-8v; Thu, 26 Dec 2019 12:01:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5f9FO2IjRXu6jiUBvxbXob0IdCuPlK4tpmU4a1BrtKg=; b=rWgcDHsfNjmGjaw6IwHYelifmr
 fj0xuVrH1RZMuSbTKnitSYFhi8p7na9PWEenybBSr5DX/hFOYl8KAbjPKRxbmRabaD/gCNMjPnNW2
 ef8wtzMjzYeXZQJ3Oz5WBfb5+R3drXTZ0xjiYLJaBhXOhbmZDXqklw5xZ4DCfZxwtJ/w=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ikRpd-0001x6-Vp; Thu, 26 Dec 2019 13:01:33 +0100
Date: Thu, 26 Dec 2019 13:01:33 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH 1/3] net: stmmac: dwmac-meson8b: Fix the RGMII TX delay
 on Meson8b/8m2 SoCs
Message-ID: <20191226120133.GI1480@lunn.ch>
References: <20191225005655.1502037-1-martin.blumenstingl@googlemail.com>
 <20191225005655.1502037-2-martin.blumenstingl@googlemail.com>
 <20191225150845.GA16671@lunn.ch>
 <CAFBinCA4X1e5_5nBiHmNiB40uJyr9Nm1b2VkF9NqM+wb7-1xmw@mail.gmail.com>
 <20191226105044.GC1480@lunn.ch>
 <CAFBinCB8YQ-tuGBixO_85NFXDdrH5keDURFgri5tFLdrAwUJKg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFBinCB8YQ-tuGBixO_85NFXDdrH5keDURFgri5tFLdrAwUJKg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_040144_317859_D4FCB2CA 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, linus.luessing@c0d3.blue,
 balbes-150@yandex.ru, khilman@baylibre.com, linux-kernel@vger.kernel.org,
 ingrassia@epigenesys.com, netdev@vger.kernel.org,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> the MAC is not capable of generating an RX delay (at least as far as I know).

So that immediately means rgmii is invalid as a phy-mode, since the
documentation implies the MAC needs to add RX delay.

> it's mostly "broken" (high TX packet loss, slow TX speeds) for the two
> supported boards with an RGMII PHY (meson8b-odroidc1.dts and
> meson8m2-mxiii-plus.dts)
> examples on the many ways it was broken will follow - feel free to
> skip this part

That is actually good. If it never worked, we don't need to worry
about breaking it! We can spend our time getting this correct, and not
have to worry about backwards compatibility, etc.

> > What we normally say is make the MAC add no delays, and pass the
> > correct configuration to the PHY so it adds the delay. But due to the
> > strapping pin on the rtl8211f, we are in a bit of a grey area. I would
> > suggest the MAC adds no delay, phy-mode is set to rmgii-id, the PHY
> > driver adds TX delay in software, we assume the strapping pin is set
> > to add RX delay, and we add a big fat comment in the DT.
> >
> > For the Micrel PHY, we do the same, plus add the vendor properties to
> > configure the clock skew.
> >
> > But as i said, we are in a bit of a grey area. We can consider other
> > options, but everything needs to be self consistent, between what the
> > MAC is doing, what the PHY is doing, and what phy-mode is set to in
> > DT.

> do you think it's worth the effort to get clarification from Realtek
> on the RX delay behavior (and whether there's a register to control
> it)?

You can ask. There are also datasheet here:

http://files.pine64.org/doc/datasheet/rock64/RTL8211F-CG-Realtek.pdf
https://datasheet.lcsc.com/szlcsc/1909021205_Realtek-Semicon-RTL8211F-CG_C187932.pdf

It looks like both RX and TX delay can be controlled via
strapping. But the register for controlling the TX delay is not
documented.

> you mentioned that there was breakage earlier this year, so I'm not sure anymore
> (that leaves me thinking: asking them is still useful to get out of
> this grey area)

It was an Atheros PHY with breakage.

If we can fully control the RX and TX delays, that would be great. It
would also be useful if there was a way to determine how the PHY has
been strapped. If we cannot fully control the delays but we can find
out what delays it is using, we can check the requested configuration
against the strapped configuration, and warn if they are different.

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
