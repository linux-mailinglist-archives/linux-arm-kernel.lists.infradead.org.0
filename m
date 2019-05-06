Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1054F1537A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 20:14:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sybSqPCGR8vgvD+HOyIl8CpF+ifL+L206m0Q4BCLTnE=; b=UWCxGeFOqrwXC7KRrufdgCfBx
	23FVeFgnM6sjPlJF5XgN6Gci6xUVwa4BUEBFFKhY+PvBaQuQp1VJ/jJBhY6CLubzgKdi8KDxR/Zv1
	H5Pf2V4IYUO9hd7YXVxc+McSAbtfl9D6yNRQE4Tvcmlg3s66Mn6rSaGgHVcnz2vM0dvZdQSMdlSzG
	JIunc283jDxRhmB19yDzVKw6hiiGXoXtIX2ASN+QCMvI0jgyD4zcQf5ZRXVsmNGDvJmTxHPZ47/rO
	PEyjpT8evwLA9SwO2Mqm7mvTOOUCkw9dfmcFZEdX67WGfli/MQ9FGS0dKAhbjuxmGu35ef4fOhEVO
	egUURRHjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNi7z-000070-63; Mon, 06 May 2019 18:14:15 +0000
Received: from anholt.net ([50.246.234.109])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNi7s-00006V-Ho; Mon, 06 May 2019 18:14:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 4B57710A346B;
 Mon,  6 May 2019 11:14:05 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
 by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id hKW1Zyu9ecRG; Mon,  6 May 2019 11:14:04 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 09B1410A3468;
 Mon,  6 May 2019 11:14:04 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
 id 5AA492FE3AA9; Mon,  6 May 2019 11:14:03 -0700 (PDT)
From: Eric Anholt <eric@anholt.net>
To: Annaliese McDermond <nh6z@nh6z.net>, stefan.wahren@i2se.com,
 f.fainelli@gmail.com, wsa@the-dreams.de, swarren@wwwdotorg.org,
 linux-i2c@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] i2c: bcm2835: Model Divider in CCF
In-Reply-To: <20190505034339.30778-1-nh6z@nh6z.net>
References: <20190505034339.30778-1-nh6z@nh6z.net>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1
 (x86_64-pc-linux-gnu)
Date: Mon, 06 May 2019 11:14:03 -0700
Message-ID: <87o94fo3h0.fsf@anholt.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_111408_623672_4F067BC2 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [50.246.234.109 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: team@nwdigitalradio.com, Annaliese McDermond <nh6z@nh6z.net>
Content-Type: multipart/mixed; boundary="===============7674460212077477684=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7674460212077477684==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Annaliese McDermond <nh6z@nh6z.net> writes:

> Model the I2C bus clock divider as a part of the Core Clock Framework.
> Primarily this removes the clk_get_rate() call from each transfer.
> This call causes problems for slave drivers that themselves have
> internal clock components that are controlled by an I2C interface.
> When the slave's internal clock component is prepared, the prepare
> lock is obtained, and it makes calls to the I2C subsystem to
> command the hardware to activate the clock.  In order to perform
> the I2C transfer, this driver sets the divider, which requires
> it to get the parent clock rate, which it does with clk_get_rate().
> Unfortunately, this function will try to take the clock prepare
> lock, which is already held by the slave's internal clock calls
> creating a deadlock.
>
> Modeling the divider in the CCF natively removes this dependency
> and the divider value is only set upon changing the bus clock
> frequency or changes in the parent clock that cascade down to this
> divisor.  This obviates the need to set the divider with every
> transfer and avoids the deadlock described above.  It also should
> provide better clock debugging and save a few cycles on each
> transfer due to not having to recalcuate the divider value.

Any chance we could reuse clk_register_divider() instead of having our
own set/round/recalc rate implementations?

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAlzQeWsACgkQtdYpNtH8
nuh5Lg/9Hz9DEDFEVdhjXtd+t3vKtl5okxkdaEIugqXb/lA3D71R/ish1ONL2sDL
09JoAA3Zt+WTMAZM/qPmU7GaDh1gJ9sRNzKi4AktA+XPZK/TUrFdGqZEpwhTYcEe
NHc3bp6TIzi6zDffoleIwIEhbJbfM42j/XlOycFSocqkIajreaYlofCxMNwQGn80
+JxoQbixw4xhq+0eTbDxO5rwrocM7++l4egkimH3/oX6y+mv39k+T/wwk5zLUQZS
KNqQgH9Z5Ad12lORo/OxO4XwCwXvFXWQpbAsu27W91d0dRV+SvHJcFNHAYWj7Wol
lJa6LpDoxLUZBMSroI0qZT3XcQCjJ7Szt18MIGj5AKoRZb3qUK6wI4eRM3CLtSwi
9FyKLMb7anvfubplCKHT2zBr1CpZRHQAafWQEDmlNyqqsfQRU4w66RuhUwtZ9BXy
zCCLNsPB2C+oi9bF7RTdsbNWysD0qzT1dGYJIh3FRDjeuAdsKfUqeToXWTnQIxod
kxpvC84lZgwfJohqt1QLe0vYXmMJ7m24+fwK9U8B7oBCMMvP574VJpUaJUHQUt+l
WSGN3bihzs1TZOBHyVBuA/ewQndOGbYamLUYXSf0fb6f6JYVFDc42zOh2VGDt+ts
Qw2bMUaviG5cse6/C25pPYeLiCiH5oX6MGptPmMd+ExHd/shC+Y=
=Gimv
-----END PGP SIGNATURE-----
--=-=-=--


--===============7674460212077477684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7674460212077477684==--

