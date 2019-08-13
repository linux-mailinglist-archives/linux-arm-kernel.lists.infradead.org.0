Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3684A8C242
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 22:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wx2CMF/ibpg8OifKvtNoWyhLzov0Y7eUvTcPXm34F1o=; b=kVxrmV05Yd9GRzoigYzQYAT5z
	TPv9lzMGSti/C/xomeuVCbHrj+L9XcZX6rkoDkR1KwWx6fHFo4iGBW8Ah2P2uAHcLHvdMtrfxc3Pz
	YSMnXbz5MZj2ErE5p3mKXqlpQWEKfVuJARCRXAR/WsmdXCE4TdDNqn5TBbRnC9pGnr+os17360pZm
	8YhGZYUJ05Z0169b9E8rf00lpzoMsTN23Xisr5I05dkAxSMLv8U5RNOsMnp2hSYTXppLMAvYcZC7y
	kbOa4Iwse0ns9K5GCKVKXSCrEaQrclamTUu78/JvD5Oi1UHfb1o36mIDBIQYXeCFQx1atxMJGmORp
	kOWH0/Fow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxdd5-0008Q9-MX; Tue, 13 Aug 2019 20:42:51 +0000
Received: from anholt.net ([50.246.234.109])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxdcx-0008Pe-57; Tue, 13 Aug 2019 20:42:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 38EDA10A335B;
 Tue, 13 Aug 2019 13:42:38 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
 by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id gls5KwEquMNN; Tue, 13 Aug 2019 13:42:37 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id DFF6E10A13E4;
 Tue, 13 Aug 2019 13:42:36 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
 id 49DD42FE2547; Tue, 13 Aug 2019 13:42:37 -0700 (PDT)
From: Eric Anholt <eric@anholt.net>
To: Stefan Wahren <wahrenst@gmx.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH V2 00/13] ARM: Add minimal Raspberry Pi 4 support
In-Reply-To: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1
 (x86_64-pc-linux-gnu)
Date: Tue, 13 Aug 2019 13:42:35 -0700
Message-ID: <87mugc7q6c.fsf@anholt.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_134243_233230_D9815255 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [50.246.234.109 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5941243146857783418=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============5941243146857783418==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Stefan Wahren <wahrenst@gmx.net> writes:

> This series adds minimal support for the new Raspberry Pi 4, so we are able
> to login via debug UART.
>
> Patch 1-2:   Prepare platform and DTS for the new SoC BMC2711
> Patch 3-6:   Enable clock support for BCM2711
> Patch 7-8:   Add I2C support for BCM2711
> Patch 9-12:  Add Raspberry Pi 4 DTS support
> Patch 13:    Update MAINTAINERS

Series is:

Reviewed-by: Eric Anholt <eric@anholt.net>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAl1TILsACgkQtdYpNtH8
nuh8EQ/8CIWIRxuKEDNPwD+swJlhNQsyfP+MqfY6OENxoLeBv7u23S7jc6OEm9Si
9vszx+5zyVzb33gGJv/Tg0XUwiIEWu8R2cEbLAi366056yJ8SrMH9ibaSKU+OsMT
3uN+Px/ahVT1s6WFnmdsRCEwBdRoMjRztBpr4ssRKbXUxZGjjXFVYscOqXqCmu/+
6Z+D9EMe2yL08QqyEK1151HDNgzAqh3kECGJorPBq2V3aL0dJ/sv5Mg62fFO8kKA
kpqQfcEFwIhD3vbSlA6MNU6mC1tpLhhJTjMAcbwCXsE3A+TwUNioJva0L1OovsVH
3HN/4S5O4bXKf6O14tU+FLWDzh61SmAui8hpOOM6yLusJ/NuULnEYx8PeAp7Nh8K
4p0cXay44zdq47Jlt8fXc7MIhAeV5ofjqJvxj0par/mncrpOk6AonN13Ng8XjqGJ
+8LLs+xOrT0wk5RYAMRIzxn5XALtaquHJDL5sb/Vi3Z4sb7QDA+z6+jeHKqPVLO3
kbRmCAx0uE+yZrRXKlcmXTkP4z0pq0ZPC45zRwFR5iHQXdKQ5nvU1liJD1kE0UgL
5viA8cds+hQNsYhKGQbQMdqztBv/dBE3ZHPZCZRkgsSysrPPX77MJSvJPNMs9v0A
d8v2BZQXBmQqRtwaOc2yvjJ2K/w4uZhS1XOrWMyvir7kKDBgvZc=
=TJWO
-----END PGP SIGNATURE-----
--=-=-=--


--===============5941243146857783418==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5941243146857783418==--

