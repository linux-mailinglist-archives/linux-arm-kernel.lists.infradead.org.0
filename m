Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C001AE2FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 19:02:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ksgXIFsyWiFY0o0+bbuCSmal2ynb1mWWNgIK7YklTY=; b=DSUaIv0JwiOjwy
	4i+bZdc1y49dBpVIlbaiCm38iAcUT6xqKV9CH2tIFZQmIDldIs5YZRagHX9gT2HN97qm/0HJtpLNi
	KwV7Kx4ImzQ+l5WhQfwxLhF4yk6nOm9zikBK9TxMZ7AZsc6DM4/a7rywGUgIws+DuJFela8T4c6so
	jW+3gqLGhS6GK0VQUIAZFsjfHZyXGrBFt/qWbcLULmCOkhKamBBQM+g1+Fc5goo7P++lFp3xg1z6c
	GHRCWgZ3enoVgDZXJ7Kf4TuE7QY3m+tmZjxFJkSTZ6Ypu0AdCIIkHwXUTmIhgNo53+OZhw+C0Lgs6
	WCRkNWSywkt59nZFLcXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPUNP-0002pv-Qu; Fri, 17 Apr 2020 17:02:03 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPUNG-0002nX-CF
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 17:01:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GDt6Kg65vGRHTbVpxtwsO49QfnwXL2hG69odrZ95CMU=; b=hFTCB2elCtEZeaC6o6m91HbKSs
 e+jNfounAVKh/FRtsRCRy+TsjFMezugcIv1OgyXfebFunp2bndZ8jG4CHHlKqnoaTJBumqO7iwjyn
 hFoD69plmRq81SR0UsS5SnRTFij5AMkSacKykva5C4O/TS1PCPjGqwDbcRh+lgLGUwhc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jPUN0-003JwF-8T; Fri, 17 Apr 2020 19:01:38 +0200
Date: Fri, 17 Apr 2020 19:01:38 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [RFC PATCH 2/4] net: phy: Add support for AC200 EPHY
Message-ID: <20200417170138.GD785713@lunn.ch>
References: <20200416185758.1388148-1-jernej.skrabec@siol.net>
 <20200416185758.1388148-3-jernej.skrabec@siol.net>
 <0340f85c-987f-900b-53c8-d29b4672a8fa@gmail.com>
 <6176364.4vTCxPXJkl@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6176364.4vTCxPXJkl@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_100154_419286_7AFC76E2 
X-CRM114-Status: GOOD (  13.01  )
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
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > You could use PHY_ID_MATCH_MODEL() here.
> 
> Hm... This doesn't work with dynamically allocated memory, right?

I would suggest we get the right structure first, then figure out
details like this.

Depending on when the device will respond to MDIO, we might be able to
make this a normal PHY driver. It then probes in the normal way, and
all the horrible dependencies you talked about, module loading order,
etc all go away.

There were 3 things you talked about to make the PHY usable:

1) Clock
2) Reset
3) Must be enabled and configured through I2C

We already have the concept of a PHY device having a reset controller
as a property. e.g. Documentation/devicetree/bindings/net/ethernet-phy.yaml

resets = <&rst 8>;

So if the MFD exports a reset controller, we can control that from the
PHY core. If the MFD has not probed yet, the reset core code will
return EPROBE_DEFFER, and the PHY probe will get differed until late.
That solves a lot of probe order issues.

The clock can be handled in two different ways, depending on if the
clock needs to be ticking to read the PHY ID registers. If it does
need to be ticking, we add support for a clks property in just the
same way we have support for the reset property. The PHY core will
clk_enable_prepare() the clock before probing the PHY. If the clock is
not needed for probing, the PHY driver can enable the clock as needed.

The last part, Must be enabled and configured through I2C, we need to
look at the details. It could be the reset controller also enabled the
PHY. If that is enough that the PHY then probes, the PHY driver can
then configure the PHY as needed via i2c.

     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
