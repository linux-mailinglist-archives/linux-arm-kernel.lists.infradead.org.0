Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2105B172538
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:37:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jH/CFN7z/ZBGzZCS13GkV5n36m7dobkLDDhUubUEl4w=; b=X+S39rwEjDzdoj
	e4t13Dbon5EWAAKTW092KoH9q4/VhHC30d2ZX4p/Bc4maDi2PiRrnC4Q7t7UvwT76Xs99cv6xVW1s
	3UvKA3JHC5MBwC+Vkr9mo0epr2LU3RN1t3KzqrJF/vaN2XE6++rrA94uc/BcrtlRgYftE+xVtGSb8
	LL1sg2rBy3wlqqwpP70kQAfX5QQbYNq0gwp3Ao1hOMejz2eflYzhaDNbL93iTD5uwuUPFmeYaeioR
	4stjGKJ0PuOOmI8TnUV2vwN2Ih6J/pZD4su0koe+HD0zPNsxANmAQS0/P50Iij1VnZPuJnHgaCDVX
	NVgNmMyOeuxHEWOIygmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7N5k-0006I4-G6; Thu, 27 Feb 2020 17:36:56 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7N5Z-0006He-MX
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 17:36:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0F0tK5/ubcWROjWTPQxm6Y15x5cP/M3Yx4UdnWKYU5s=; b=vJqihBENKh82ptrEG8k2m+03Hs
 tf6ULdHn5bXGkWoqJFRY17MR3qEapLlh2RJZ/WBl4zKLI1YzCWGlF/Vjc6MVgFZuwE3OHYVQhdV2b
 C4EUwx9KiAfS6viubwFhiykxps8m0Jjt30ANmwcdE6FFwga6FOrVfXKrz4UvYwYXaA90=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1j7N5Q-0006eR-NP; Thu, 27 Feb 2020 18:36:36 +0100
Date: Thu, 27 Feb 2020 18:36:36 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH net-next 1/3] dt-bindings: net: add dt bindings for
 marvell10g driver
Message-ID: <20200227173636.GE5245@lunn.ch>
References: <20200227095159.GJ25745@shell.armlinux.org.uk>
 <E1j7FqO-0003sv-Ho@rmk-PC.armlinux.org.uk>
 <CAL_JsqK9SLJKZfGjWu3RCk9Wiof+YdUaMziwOrCw5ZxjMZAq_Q@mail.gmail.com>
 <20200227172608.GO25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227172608.GO25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_093645_741708_1E0135F5 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 netdev <netdev@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint16-array
> > > +      - minItems: 1
> > > +        maxItems: 4
> > > +
> > > +examples:
> > > +  - |
> > > +    ethernet-phy@0 {
> > > +        reg = <0>;
> > 
> > This needs to be under an 'mdio' node with #address-cells and
> > #size-cells set correctly.
> 
> I wish these things were documented somewhere... I'm pretty sure this
> passed validation when I wrote it.

Documentation/devicetree/bindings/net/mdio.yaml

Rob, is there a way to express the hierarchy between yaml files and
properties? Can we say that a phy, as defined by ethernet-phy.yaml
should always be inside an MDIO bus as defined in mdio.yaml?

Thanks
	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
