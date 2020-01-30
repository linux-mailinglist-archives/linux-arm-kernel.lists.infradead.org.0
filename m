Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 290C414D736
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 09:03:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V2WcLSfHeWTGB/CpPEX4dKcrMJya1T9bCCD+lbhEjUw=; b=l3xfNmTQ1ABVCBa3GOhUjzqCC
	gN2CZDx6+kqAtVco/z7yL8XiCdXgfY8BUr26TmFdfkg3g9o2P889/TcyXI+MLXX1IPwnh9R/bwnQL
	8mZ/7Z99v4IU9fj66UjqS4PQC1PRevMDYudBXbM2Im59AsDMQ7WjM6rV58II1m5k+q89ej7zLDt3C
	8z6RjLp0PUD2N7KR+sjHc4lX8ZeOwQZSAj9BeYqQNIYHIa46OT0QTpPwwq+FErrX4HAvUFCoL3TTS
	FOnCMl1F3By3nNRucFmiqanptmG9y9+89PreMxFbw0vHBAzp3j05mIsXgPgJCO/V6+uAtwnpOQeaS
	tQCIGrKQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix4nK-0005Hp-1a; Thu, 30 Jan 2020 08:03:22 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix4nB-0005HM-5l
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 08:03:14 +0000
Received: from localhost (p54B33261.dip0.t-ipconnect.de [84.179.50.97])
 by pokefinder.org (Postfix) with ESMTPSA id 6EABE2C0697;
 Thu, 30 Jan 2020 09:03:11 +0100 (CET)
Date: Thu, 30 Jan 2020 09:03:07 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: alex.williams@ettus.com
Subject: Re: [PATCH] i2c: cadence: Handle transfer_size rollover
Message-ID: <20200130080307.GA2208@ninjato>
References: <20190131213957.11568-1-alex.williams@ettus.com>
MIME-Version: 1.0
In-Reply-To: <20190131213957.11568-1-alex.williams@ettus.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_000313_364251_4CBEEA21 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, Alex Williams <alex.williams@ni.com>,
 linux-arm-kernel@lists.infradead.org, mical.simek@xilinx.com,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7830630967765592191=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7830630967765592191==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="J/dobhs11T7y2rNN"
Content-Disposition: inline


--J/dobhs11T7y2rNN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 31, 2019 at 01:39:57PM -0800, alex.williams@ettus.com wrote:
> From: Alex Williams <alex.williams@ni.com>
>=20
> Under certain conditions, Cadence's I2C controller's transfer_size
> register will roll over and generate invalid read transactions. Before
> this change, the ISR relied solely on the RXDV bit to determine when to
> write more data to the user's buffer. The invalid read data would cause
> overruns, smashing stacks and worse.
>=20
> This change stops the buffer writes to the requested boundary and
> reports the error. The controller will be reset so normal transactions
> may resume.
>=20
> Signed-off-by: Alex Williams <alex.williams@ni.com>

Applied to for-next with another Rev-by from Michal given in another
thread, thanks!


--J/dobhs11T7y2rNN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4yjbcACgkQFA3kzBSg
Kbb8RxAAiCoAtge6yROLbqYc4Ruq1gKWnE76UU2AbpwSK1GEFdyKat70l9hN0Edb
7ISc+b+z9X8gYfm8Sx8CjKoqC+B4ldxyZM+hNCOzkMfzbIGUNTllajhZIAb5MEhI
E405O36pd94ogiFGcTALsgtLgfaC2HDzVTqm5xOyJqJRte+W0palPx4UL6+33PbR
QYmMkPhA+6AUlnCXsrtDjM13eg3u6gRn/IG/ZfztOPufyzsE3sHaMgyqLhE1puI/
5N3kjDQQAfespuTspjLm8S7J4cqSxEYpieog6II6NGCRFQTsfiYv6iHCzyywJ5Xk
t5CgEaqnqZBzr8WFWmpgngz33RrYBTEOPbM5WScvVKaMfm3bKAP20Q23yEaDwZAC
SfI0SQJAyJ9EZi/z2NuDRi8QgED5hoqchWN0MT9VYhGsSEfZA4q4LiECkHL8Zg85
VxZMCZcfQHzER3epg0P3imvP5slj6L4LhSzg2mu9JdHUSqcsjIA16E+Di9kZ/eCF
rJkh8Sb4tK1ClVlnTW4/YtmfC7Ru0XrN5ZFeugZxUurByG5Q3NtezkJHAzrVJGFz
L3AbX0Fl7lA3/nX/astrsUgG4sXoOG7bWW/7FiA0jWPrX+WglbEbXZQ64I6MXN5E
TOjyGoxiXCU2zyrlqeiHwf7XDRmzMpxAOLYZjmKgibcX1OcjLBw=
=WTaX
-----END PGP SIGNATURE-----

--J/dobhs11T7y2rNN--


--===============7830630967765592191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7830630967765592191==--

