Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3B6E5DF1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 17:33:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=axRnQpDzhyaU9sD4JoMLwntQUczltwRIwrWKmbq52w8=; b=L0FaVKIwYh8ib6YKtPDCKO0vy
	cYHtAUewzMTegUCSSd4xx5u1jhigz3urq5BuqJGNZoTWByjqjYk4o8uJVOP5Zuhk0TJeeZuEogYQz
	CZrRiXfahAvXp7qv8RiQoEra7LYebW9BAYkiJjpo7/Z3+V08AcPmd3/07lZUCNAreElkb26zteNRj
	YssNK6cwi68ZloCQxfkeyJW+O/hUzGysbp7WFUqavYxyOW8Ez3isyORG/9Fdf7YiHqUS5FU/OYwwb
	rWaTUw5h9GuCh3AuCWQW6nix2tvPwcUpA+/sS34vaRRd6Ee+WkU3HZdqkuDyTGpvHF9nOJDBc7RbG
	ZNtcp6SwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOO4H-0005Ph-Fu; Sat, 26 Oct 2019 15:33:29 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOO47-0005P8-Tj
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 15:33:21 +0000
Received: from localhost (p5486CC3E.dip0.t-ipconnect.de [84.134.204.62])
 by pokefinder.org (Postfix) with ESMTPSA id 547462C03C5;
 Sat, 26 Oct 2019 17:33:15 +0200 (CEST)
Date: Sat, 26 Oct 2019 17:33:15 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH RFC] i2c: bcm2835: Store pointer to bus clock
Message-ID: <20191026153314.GA5137@kunai>
References: <1572093288-6223-1-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
In-Reply-To: <1572093288-6223-1-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_083320_108792_837671C7 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Annaliese McDermond <nh6z@nh6z.net>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-i2c@vger.kernel.org,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7678244681165576323=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7678244681165576323==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SUOF0GtieIMvvwua"
Content-Disposition: inline


--SUOF0GtieIMvvwua
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> a NULL pointer dereference on driver unload. It seems that we can't fetch
> the bus clock via devm_clk_get in bcm2835_i2c_remove. As an alternative

Uh, yes, devm_* doesn't make sense in a remove function. We could
probably use plain clk_get/put here, but a pointer seems fine, too.



--SUOF0GtieIMvvwua
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl20ZzYACgkQFA3kzBSg
KbakVA/+K2R/9SirG2DNayuOk52DPILr/uDihZvMo7UkD0EyCWhk+q/hJSTAZZD9
+cgGElLwuKJ6egXWaUuN9rgEIsjRU7kfnuBAf6lstPeLUWBJM8Xzl7OprTKVX0FH
hGXR86MehWVEfAcAvTOKYrDAB2jTuwTiYasdQmF2jHipgdN8gOl5NRErGBfWPApq
ICAr4I7PuwOrRqT8cXyX5j7A1USDx4GBa1424aygQ892SLc+r5chSmlEvGOxQZ40
QRxdVhGlHDWvO5C/kvppVvKxI/BwQN2mQ9el/bkkFBEYuqKC0bv1aMkAAothWRP2
o0yNRQcqz4aZv07ve/RuyMxQyFXJMjIutHs72SwiHhlpVNxIg2PiyEYDx02wS36v
ZTLnMnZWfYIEHmTkpyzgcZh12WKWpCSUmDWuJCofslPadCXhxWYYt6GNMr1oEeac
4HbSW28ngj1zM8buQRQPt1bgGfFNcVLHi8uZqAzi9vfBBIo/mFF3d44adxB/h1JN
BfYCcVODBDYABWIAAKLstydW7LLy5EjgpOQLe+DHb7+XjRKsU0VkVARCsGSDcSd1
TkRuGJCYaF0cJ2cW/k1MnROE9C+W6M2fAZJfrWB8gOO0EmWMsSeMt5GzaARjTUq0
1iBLQYhmi+SQNUHL882J8mrGY+95bdXJk06S9WVtChiai3GRdJM=
=xaw5
-----END PGP SIGNATURE-----

--SUOF0GtieIMvvwua--


--===============7678244681165576323==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7678244681165576323==--

