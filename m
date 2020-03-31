Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE5F199A02
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvS9X+I1CI5qfIH4zl05mBE0enqNMRA0Qyf83Ql85fc=; b=HWZOI5okTFhidN
	4/oHEZDBE3tsINh4JrMzslageHDaWmBLzpvtE33IJNklBssnC3EfsaKuQfwb0ChFySGLn9ouGg8I1
	BtxjLohWwqSgLO1hIjyMtr7eeWVfp4nKfttSu2hUdzGsF6gT8cxw7RqVbaIVZhsoPoCa+KAezlKmo
	Ht7ua1CL0bFH6Ke9PeSJTGkRVYOkOBnf842RtIiozJwea5zkvQaCNiM+RRhow4dCyh414nBcQGXZ4
	dQu9IHpgS/yV+YHiS/fLc56uKO4+R/jYdL896S9N2+5HEmt9FbOA6jBI+vTRhBiLoGuxuyjGGsFuC
	STz8BUYPLqqPnIl8eyKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ1x-0007fZ-6k; Tue, 31 Mar 2020 15:42:21 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJ1N-0007bD-Sp
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 15:41:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Ua1WXkeFaUxFqYZ8nyjvVXr7TgKUx9K5IEqWgK09E6E=; b=Ph5k02MlLQelpvlcO8nXXksUgh
 1ozZpWEoY61Zwnh/T/nsnjM2jyS75/LK/3//U09vMorXKaMhNwEZwmPT+Zo64igmZMfsYw4PzZ2qC
 stHA0FmyTxN69DPHTTwhE5jJqJ0o4cLv4vac1JIyiHDgpk/HZQjOU6uaBDn5FUcfK02WJaM8Jmwir
 sKH+owbzSeinuxK7VQeGgiXhTk9TkQ6iz/pnYvwXwv/0e8IbDBxE/yAg8Zp67YaOvXdyu8/X285+m
 nYgqocPpo1pyLksmUN24sNKG0PkGvk/G9Wru5dikprxmS2qPI7RCVQ6c1CmIMFtRlhjIMwhjJbVUa
 ubLIPJmg==;
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJIca-0004ui-8q
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:16:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ua1WXkeFaUxFqYZ8nyjvVXr7TgKUx9K5IEqWgK09E6E=; b=d/6i2AgJalK+/AfRhqPC0JamZ
 vDIGWTPhwt8nNVux6QO18V6ZX4UKDLp/UngANMQP30Y4sSgi+GrILXyOWDz9uznlA+H92XcypNo15
 lvu0DSuS2aCzyQcIl7ag9mPfNB99OT74LhNqUaNGi4Ii5TLJTwV3ASEvyFwIBPLvAzpubYzaR6MaX
 JU9DE1N0LwQkQ4+IDzYC/aMQvw3WIW2htfHHzkbVmapZ7O7qqjesWVFJQhiQJzix8WreOGKHCFT4v
 O8JXvmbDLiJQjpt/W1CCxui1cekU5vyUbnERQBB8z06HWJFrSyV0eUTNBytzs3ArMfzOvZRIaCdFR
 MCzbaV6oA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:43838)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jJIba-0000Tp-VP; Tue, 31 Mar 2020 16:15:07 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jJIbX-0008DZ-Cx; Tue, 31 Mar 2020 16:15:03 +0100
Date: Tue, 31 Mar 2020 16:15:03 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v2] ARM: imx: allow to disable board specific PHY fixups
Message-ID: <20200331151503.GO25745@shell.armlinux.org.uk>
References: <20200329110457.4113-1-o.rempel@pengutronix.de>
 <20200329150854.GA31812@lunn.ch>
 <20200330052611.2bgu7x4nmimf7pru@pengutronix.de>
 <40209d08-4acb-75c5-1766-6d39bb826ff9@gmail.com>
 <20200330174114.GG25745@shell.armlinux.org.uk>
 <20200331104459.6857474e@erd988> <20200331125433.GA24486@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331125433.GA24486@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_161608_530141_783E580B 
X-CRM114-Status: GOOD (  33.72  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-2.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Oleksij Rempel <o.rempel@pengutronix.de>, linux-imx@nxp.com,
 kernel@pengutronix.de, David Jander <david@protonic.nl>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 02:54:33PM +0200, Andrew Lunn wrote:
> >  - Disable the SmartEEE feature of the phy. The comment in the code implies
> >    that for some reason it doesn't work, but the reason itself is not given.
> >    Anyway, disabling SmartEEE should IMHO opinion be controlled by a DT
> >    setting. There is no reason to believe this problem is specific to the
> >    i.MX6. Besides, it is a feature of the phy, so it seems logical to expose
> >    that via the DT. Once that is done, it has no place here.
> 
> The device tree properties are defined:
> 
> bindings/net/ethernet-phy.yaml:  eee-broken-100tx:
> bindings/net/ethernet-phy.yaml:  eee-broken-1000t:
> bindings/net/ethernet-phy.yaml:  eee-broken-10gt:
> bindings/net/ethernet-phy.yaml:  eee-broken-1000kx:
> bindings/net/ethernet-phy.yaml:  eee-broken-10gkx4:
> bindings/net/ethernet-phy.yaml:  eee-broken-10gkr:
> 
> And there is a helper:
> 
> void of_set_phy_eee_broken(struct phy_device *phydev)

Disabling the advertisement may solve it, but that is not known.
What the quirk is doing is disabling the SmartEEE feature only
(which is where the PHY handles the EEE so-called "transparently"
to the MAC).

It's all very well waving arms years later and saying we don't
like code that was merged, but unless someone can prove that an
alternative way is better and doesn't regress anything, there
won't be a way forward.

> >  - Enable TXC delay. To clarify, the RGMII specification version 1 specified
> >    that the RXC and TXC traces should be routed long enough to introduce a
> >    certain delay to the clock signal, or the delay should be introduced via
> >    other means. In a later version of the spec, a provision was given for MAC
> >    or PHY devices to generate this delay internally. The i.MX6 MAC interface
> >    is unable to generate the required delay internally, so it has to be taken
> >    care of either by the board layout, or by the PHY device. This is the
> >    crucial point: The amount of delay set by the PHY delay register depends on
> >    the board layout. It should NEVER be hard-coded in SoC setup code. The
> >    correct way is to specify it in the DT. Needless to say that this too,
> >    isn't i.MX6-specific.
> 
> Correct:
> 
>       # RX and TX delays are added by the MAC when required
>       - rgmii
> 
>       # RGMII with internal RX and TX delays provided by the PHY,
>       # the MAC should not add the RX or TX delays in this case
>       - rgmii-id
> 
>       # RGMII with internal RX delay provided by the PHY, the MAC
>       # should not add an RX delay in this case
>       - rgmii-rxid
> 
>       # RGMII with internal TX delay provided by the PHY, the MAC
>       # should not add an TX delay in this case
>       - rgmii-txid
> 
> The needed properties exist.
> 
> I think part of the issue is that there are iMX6 board which are not
> device tree?

I think it's historical - iMX6 never used to be able to enumerate
anything on the MDIO bus, so the only way to configure stuff on the
PHY was via quirks.  That seems to have changed in v3.17-rc1 without
anyone noticing, which happened after the SolidRun support was merged
(v3.14-rc1).  So, not surprisingly, SolidRun platforms don't make use
of the DT properties - quite how one is supposed to know about this
stuff, I've no idea (short of following almost every damn subsystem
mailing list and reading tonnes of email - that's highly impractical.)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
