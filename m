Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8671AD245
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 23:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vdSu4u1s0Ea0FljMfSOjbp8Vl9mD2GT6LKHDFd8o1HI=; b=XN//IiWem3Uobo
	Cu0ZDjy72QxmXD/2JSyytnVIQFu7CDLU6HCebeT90wHITEHBe7UCNg27Mor0UqgzBDwh1oqZBpszF
	NDFAWqhbEdHF7pCKSPBJ1DsX0tifANx/O6iK+e6t4mjgivs7caj8Grxgidu/FVLzHnv/sEDbSYbOG
	lCjT4ELUlviQoW5dRBE5l8ixlu8KmZ3IHcBLsfwkv8CVi/5C5935Mel7QeyfWIVJj8ghmPBn/6/x5
	PNqd1K1qvj1Y4bAG4vXrUB2vMo+GBTB/HFGdv0eZF52BrmsWk4jmoC710LOfCLaxFbllCSOM9ZaM8
	FcbYCyk6WoXXI4/In94w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPCSy-0002ZU-8T; Thu, 16 Apr 2020 21:54:36 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPCSr-0002Z4-3Y
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 21:54:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sJoGlhke6RR1kM1TPJ0UiaTv4A4MkV9oORpm3epxYVo=; b=nZ3mWs5Mhk/fuDnxYopkcIKFaE
 LshpNurBHLFjJUZxbiuJacFvfKjdEEOgJeVcPm7Rrn1WS20bJJ8PUwAXd+IKXuBFVpnS3sWr91Hfr
 G2BtgK95aGgvhkCtY0nDAau4JvHXufNdeHebUHj4R4BqodB35M2iPaivoSO7q07zPp6k=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jPCSa-0039j7-Qz; Thu, 16 Apr 2020 23:54:12 +0200
Date: Thu, 16 Apr 2020 23:54:12 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [RFC PATCH 0/4] net: mfd: AC200 Ethernet PHY
Message-ID: <20200416215412.GD744226@lunn.ch>
References: <20200416185758.1388148-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416185758.1388148-1-jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_145429_149201_AAF7EC11 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, netdev@vger.kernel.org,
 linux@armlinux.org.uk, mripard@kernel.org, linux-kernel@vger.kernel.org,
 wens@csie.org, robh+dt@kernel.org, lee.jones@linaro.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 08:57:54PM +0200, Jernej Skrabec wrote:
> This is attempt to support Ethernet PHY on AC200 MFD chip. I'm sending
> this as RFC because I stumbled on a problem how to properly describe it
> in DT. Proper DT documentation will be added later, once DT issue is
> solved.
> 
> Before Ethernet PHY can be actually used, few things must happen:
> 1. 24 MHz clock must be enabled and connected to input pin of this
>    chip. In this case, PWM is set to generate 24 MHz signal with 50%
>    duty cycle.
> 2. Chip must be put out of reset through I2C
> 3. Ethernet PHY must be enabled and configured through I2C

Hi Jernej

This is going to be interesting to describe in DT.

At what point does the PHY start responding to MDIO request? In
particular, you can read the ID registers 2 and 3? You list above what
is needed to make it usable. But we are also interested in what is
required to make is probe'able on the MDIO bus. We have more
flexibility if we can first probe it, and then later make it usable.

Thanks
	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
