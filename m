Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F40121588E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 06:32:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bWi8fSpxE0rA+Is96mmQGO/AmwGeks8hdAjA2S1V9ew=; b=mQc03juwF9zXz4fKbEO44USop
	ioufkuzm+Yy58/uvcAauQthvqoj1s3R9Pl1k3jKfHxvuvKpov+wO9RhQGMMtZPs0ULeRuql/DkiW+
	KXS2/ZjlXhNV4KjTSyl8VnXhoMvyGln56lkDvzD5XfQyqzkTZeCLcmZ2i+Brim5E1/hooEgDeQf9/
	cJxAebkjQrj6W58jKp4EJeGyhTTdm5OFuGt/B0RMUY99jkwoS3HxnGEtzYjKQh6NtZ4tTmgVFZSCU
	gthxYfT8hgEj3Rvc73ERDlWJrxd7UbmZWBQBtXL8zBYoRrLmnK9vTOYL5xALasSJT0wMMA/Y4pLDl
	B9C7G72QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNrmU-0005Bk-L2; Tue, 07 May 2019 04:32:42 +0000
Received: from anholt.net ([50.246.234.109])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNrmO-0005BM-7G; Tue, 07 May 2019 04:32:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id F0AB910A3478;
 Mon,  6 May 2019 21:32:33 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
 by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id Yb8W5H_O_FK7; Mon,  6 May 2019 21:32:32 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 7D37910A346E;
 Mon,  6 May 2019 21:32:32 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
 id 04B9C2FE3AA9; Mon,  6 May 2019 21:32:30 -0700 (PDT)
From: Eric Anholt <eric@anholt.net>
To: Annaliese McDermond <nh6z@nh6z.net>
Subject: Re: [PATCH] i2c: bcm2835: Model Divider in CCF
In-Reply-To: <C611AB4D-7674-438D-BB95-9F83852043EA@nh6z.net>
References: <20190505034339.30778-1-nh6z@nh6z.net> <87o94fo3h0.fsf@anholt.net>
 <C611AB4D-7674-438D-BB95-9F83852043EA@nh6z.net>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1
 (x86_64-pc-linux-gnu)
Date: Mon, 06 May 2019 21:32:29 -0700
Message-ID: <878svivq8y.fsf@anholt.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_213236_296468_5DC41104 
X-CRM114-Status: GOOD (  13.18  )
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, swarren@wwwdotorg.org,
 wsa@the-dreams.de, team@nwdigitalradio.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6135864611534393706=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6135864611534393706==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Annaliese McDermond <nh6z@nh6z.net> writes:

>> On May 6, 2019, at 11:14 AM, Eric Anholt <eric@anholt.net> wrote:
>>=20
>> Annaliese McDermond <nh6z@nh6z.net> writes:
>>=20
>>> Model the I2C bus clock divider as a part of the Core Clock Framework.
>>> Primarily this removes the clk_get_rate() call from each transfer.
>>> This call causes problems for slave drivers that themselves have
>>> internal clock components that are controlled by an I2C interface.
>>> When the slave's internal clock component is prepared, the prepare
>>> lock is obtained, and it makes calls to the I2C subsystem to
>>> command the hardware to activate the clock.  In order to perform
>>> the I2C transfer, this driver sets the divider, which requires
>>> it to get the parent clock rate, which it does with clk_get_rate().
>>> Unfortunately, this function will try to take the clock prepare
>>> lock, which is already held by the slave's internal clock calls
>>> creating a deadlock.
>>>=20
>>> Modeling the divider in the CCF natively removes this dependency
>>> and the divider value is only set upon changing the bus clock
>>> frequency or changes in the parent clock that cascade down to this
>>> divisor.  This obviates the need to set the divider with every
>>> transfer and avoids the deadlock described above.  It also should
>>> provide better clock debugging and save a few cycles on each
>>> transfer due to not having to recalcuate the divider value.
>>=20
>> Any chance we could reuse clk_register_divider() instead of having our
>> own set/round/recalc rate implementations?
>
> Eric --
>
> I=E2=80=99d love to, but the set_rate implementation includes setting the
> BCM2835_I2C_FEDL_SHIFT and BCM2835_I2C_REDL_SHIFT registers for the=20
> rising and falling edge delay on the I2C bus based on what the divider
> value is.

Hmm.  I ran into that in clk-bcm2835.c as well, and the solution was
that bcm2835_register_pll_divider() sets up the divider structure and
then reuses clk_divider_ops.round_rate() and .recalc_rate()

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAlzRCl0ACgkQtdYpNtH8
nuiKtBAAs4+IMBaTZZ0RlmahxxJEhKLnDjOpLoGSfWG50cMiH4PckvwlRdFWL5Rn
nanNZ/qYTu24BIdlPffgEShPFxuIH94wMSM34F1CCM7G8H7uRfqZtuM9c1MC+mIo
FwYy1lHxuQm7vZ87XSvPoTCsaT8n+Co4kvReVUmy8jR+N0SsohIlZOSXLUbaGBcT
l2JFVbDGBKHAN6gH0Jb30NK95toeT8jiXDNxG2FJPosMeHL/FRLUGIJrN7+IVSzh
dZTSglUbJxUI9uT6JIMnfX6Qf0piD/fC2xQs4c+DfxxVCP44NJHCuieBGoCBOvh+
ZsYiPXBsYmaA/n+tou7LMkkhJMv5r+XzEOYDZI+llZxgyvDdO9c8t84YOpUl3eve
Vy36h2QfMJwk5eMljlWRVJr6MiRTOC1c0JBBq1K6wB+L8PFnzVjW7Cd5ffRBoi+N
8YOjJ3rHvS/hgCaHvizwbX3at3/cEWUAuJwWrt6pS2xPzFz2Yk73njBEuU0j/RcZ
4rdSMSuFLGW/0JPE2tTawVRQCvwYQjin2QFhc0P7N9fOudCUvoxZm6QT7S2yv5b7
OPuRe2KBYlDbkI+a/ltZT2GFWfmTZ+EG0a1k/583TyNljFgYRC7c9ZE2NQYYh8wT
+zSD1M6lhkbVcNXfzB2KtL/ht559VjaunsgSJI+iijodNs5nIMU=
=U+1L
-----END PGP SIGNATURE-----
--=-=-=--


--===============6135864611534393706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6135864611534393706==--

