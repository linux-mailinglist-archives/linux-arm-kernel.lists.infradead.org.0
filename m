Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DCF433E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 09:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E5N0Np0vGb/9YXOvMmAIklv8GoTAdR5J3cDSl8h0ZWE=; b=I/vjpDzeydD5Hxdrebp/9YupN
	Z6zaiU2X3QIkKuqWniE0Brcv5U+97yvHWMjbwQzqCGnOC1evcelq38iZuTdkPcvmV9pqy8efjOwSW
	rVUa9oeK1YVJWHAmT5CXXkeSHnH4CPS2iC4sqC0n4sN3qCk5CO3VnTJ5yV0NBW1irBZ1aaCxP7G24
	Xkir1DIdi+3Lwm2sqf2Vdmhw2wTsragKWm/PVhETOBPDysLSQ4oIGM9BclfhSyCQMKD1kV71ikJ0Z
	ZzseXCompK/AJOye3o6j/WJJXlRi6ZiFTFmeg+9o9+w1OwHIRHIfpFTxebyEQS5u7CUAehXnhiwwN
	l6HcSMIrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbKXt-0004G3-CX; Thu, 13 Jun 2019 07:53:17 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbKXZ-0004FK-Ib; Thu, 13 Jun 2019 07:52:59 +0000
Received: from localhost (unknown [84.134.207.153])
 by pokefinder.org (Postfix) with ESMTPSA id BE0882C3559;
 Thu, 13 Jun 2019 09:51:03 +0200 (CEST)
Date: Thu, 13 Jun 2019 09:50:35 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Annaliese McDermond <nh6z@nh6z.net>
Subject: Re: [PATCH v4] i2c: bcm2835: Model Divider in CCF
Message-ID: <20190613075035.GA952@kunai>
References: <20190529042912.12956-1-nh6z@nh6z.net>
 <20190608171443.14484-1-nh6z@nh6z.net>
 <20190612104107.ndbo55ii2w3ahtzr@ninjato>
 <2E838B63-DD8D-40AC-AA31-7C0FEF8B4424@nh6z.net>
MIME-Version: 1.0
In-Reply-To: <2E838B63-DD8D-40AC-AA31-7C0FEF8B4424@nh6z.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_005257_775527_9C5DBE87 
X-CRM114-Status: UNSURE (   8.26  )
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, swarren@wwwdotorg.org,
 NWDR Team <team@nwdigitalradio.com>, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5415126838266335312=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5415126838266335312==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wac7ysb48OaltWcw"
Content-Disposition: inline


--wac7ysb48OaltWcw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > Applied to for-next, thanks for keeping at this!
>=20
> Thanks for your patience with this.  I know it=E2=80=99s hard to deal with
> newer folks sometimes, but I really appreciate your forbearance.

For me, it was not hard but technically interesting. The solution to
have a CCF driver embedded in a master driver might come useful in the
future again. So, thanks again everyone!


--wac7ysb48OaltWcw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0CAEcACgkQFA3kzBSg
KbaNzBAAhtuYUWBJQnLoUF/+8qEPgUSZwpVqbMV50CdW2Pxy58COjEmlVe/uiqvh
BfTyj5kSdSwqtp52oSILSpMXYzEoThEY30ssv6nARanw/LmMc4/VJ3lOtpuHL/6D
im9o4osWaUfcBJKmOChoZQ16gB5C0iYUhPBsi+IEq3Gy5hv/cE0CDGHmNC4yv3Zs
0o4uUNtQdlamHVO2pXGKeUavCqM/2qZvhI64JCFxuvL1H72FCFAo1bePRyzX3VNj
2ZL99io1J9VqUeIg7FkwfwZA/On6ngtC16tFNXsgguVeBlRrwZXKLMribxWwkPlO
6j9aJ9dk6zXLvcKT0CsFSw7NAW1ltr4g1rPTSA8n5Jy6289gtDhmpb5dghls6R2X
2ocSATm8q8kpPRIhl3UNQcjvLwkRD7J2KK57wH4GI6gqnpyRwT32V1O4vTJCJeoA
o+L8bJSxdfSTq40VQC7IdSE0XnsddhFuLVlPebiQK54XTWCxdAYKyE1PsM7n7Rem
akUDVH2FHBK3dMWZJGiVoJNTIVtvAW8HTBwTI72nsEzmaLUZUIqT0uyxDicNWXtc
xKP6HSgRwoEaMBhS2SiZT5HfFXZlzN2uKU4WlwGXSdqjKg4Jv5th19FtejmZpEfh
7hdig75Xj8Pe9INcHyjfqKFZcDvUwuwa2KudNjsdxd8mEqQqFzk=
=5B77
-----END PGP SIGNATURE-----

--wac7ysb48OaltWcw--


--===============5415126838266335312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5415126838266335312==--

