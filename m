Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B63441724C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:15:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5Aa3+MiR57SJpIjU1s+Pd6rJwx7yrZXovApS/yBDAg=; b=NgRdD1veB21zJe
	GlEvr8TsFwzA2HLMmgO6ph6OrOubZkl2xIrnJR/Bs+btsaTJlxXvN51I/pZM9zFEn9lgNvEtQKpN3
	B8jyschk7dINSe+IjkTRNJ/6hurFuagsPXof/f4WdikyG7TfmTcDl+gz9/91nRts8noplULDTq3Hp
	VQ49thMEq0/tHcCG3oniSh2ZhF+NjFqSNYKFw0UAZQ1C3RfIJaAaTnL6LuA0Ch54fEBmijkDcajlq
	w8BLfBiPwhuyVHmIKB/Ii4YfK0AFVDzAoJ8Xyk3bRcmEYrcSD4GZfzk2qbNOoz4/1q49D55hEdNBP
	JvEIF+GckGgsEwnG6ryQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Ml0-0004zc-H8; Thu, 27 Feb 2020 17:15:30 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Mkp-0004yp-PO
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 17:15:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=noUPQ8VF9BgHXXRmi4Zafg9lbKawS8P8sb9LIKLRyWA=; b=XtHKNl5/arohmn+d0Hb12YLZq
 K/INo0Fy8/F9JtT3GwQgnRdJLjVb5JzuPwQixo5mN73/TWTfHRc+bnlDYGKIu/65eaHA7K6wXI25a
 Qx78mmjK/fVtU1rp2IaWWCatHW7bMoBYHLjDFRQREBbUWZa7mI0hRJp1mKa9vqMK4gFmcAuudJ2ic
 Y8ApC5gPR8rDAqHLxVxldeBGHLwf/HoPtUH+Fgo9mNJRdaotiso1zZUevWpCSWjCiodfrbP7iPFgX
 Rrl4bNQpNoD/OosY50F0MYHCtju28ZYot9n0/A+wEOfpaRVLECUHHQTtlxSOzH4FdxHeEi776rxnO
 hV78Yzq5Q==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:46042)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j7MkY-0006tm-7R; Thu, 27 Feb 2020 17:15:02 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j7MkU-00018x-Se; Thu, 27 Feb 2020 17:14:58 +0000
Date: Thu, 27 Feb 2020 17:14:58 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH net-next 1/3] dt-bindings: net: add dt bindings for
 marvell10g  driver
Message-ID: <20200227171458.GN25745@shell.armlinux.org.uk>
References: <20200227095159.GJ25745@shell.armlinux.org.uk>
 <E1j7FqO-0003sv-Ho@rmk-PC.armlinux.org.uk>
 <20200227170858.GA2831@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227170858.GA2831@bogus>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_091519_829306_2AE4CCBE 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, netdev@vger.kernel.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 11:08:58AM -0600, Rob Herring wrote:
> On Thu, 27 Feb 2020 09:52:36 +0000, Russell King wrote:
> > Add a DT bindings document for the Marvell 10G driver, which will
> > augment the generic ethernet PHY binding by having LED mode
> > configuration.
> > 
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > ---
> >  .../devicetree/bindings/net/marvell,10g.yaml  | 31 +++++++++++++++++++
> >  1 file changed, 31 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/net/marvell,10g.yaml
> > 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
> Documentation/devicetree/bindings/net/marvell,10g.example.dts:18.13-23: Warning (reg_format): /example-0/ethernet-phy@0:reg: property has invalid length (4 bytes) (#address-cells == 1, #size-cells == 1)
> Documentation/devicetree/bindings/net/marvell,10g.example.dt.yaml: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/net/marvell,10g.example.dt.yaml: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/net/marvell,10g.example.dt.yaml: Warning (spi_bus_reg): Failed prerequisite 'reg_format'

It looks like your bot has made a mistake, or I don't understand the
error messages. It seems to be trying to treat the example as a PCI
device, but it isn't, it is a PHY device.

I don't think that's something I can fix, sorry.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
