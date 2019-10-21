Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E75DEBA9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 14:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X/sWYqEBsLY0COfB4UkiHbo7HOUC37nQgnwy8sDGm5A=; b=t3JjS/i60v4q+Tzafjsqrwi2s
	Ne1YmIeNTGximeHINHbJQXRvnSKTrN6xgU/+VLlNw50n/AKESO0MO4iuYmBP+frLpaTo/tlkP0kcL
	2lP7JRPOi4TKItnCRcKU+nEdtk+gB3qTTGtszeU/DEMOuD7N9ZUYIoBLf98e7TWvDZLligGJVz/qp
	Pb55FB8A2Ooj/up4UCQLIuHa+1JErk27n3kR3EAYF/VrD3KUqPUHARZ1zPZ6A54TI6ftrRZWGrYQF
	vVKiQ7FLrf/BKZxO65lZtsp3Vqb30vofvLmh4g4VOUWBozwG8XA273E67ElP+uMz8/fhYngMoO++3
	1UBuqrx5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWVo-0001cT-SL; Mon, 21 Oct 2019 12:10:12 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWVT-0001a3-UC
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 12:09:54 +0000
Received: from localhost (p54B33572.dip0.t-ipconnect.de [84.179.53.114])
 by pokefinder.org (Postfix) with ESMTPSA id 47D132C0076;
 Mon, 21 Oct 2019 14:09:46 +0200 (CEST)
Date: Mon, 21 Oct 2019 14:09:45 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Subject: Re: [PATCH] i2c: aspeed: fix master pending state handling
Message-ID: <20191021120945.GC1145@ninjato>
References: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_050952_120463_A9ED8009 
X-CRM114-Status: GOOD (  10.01  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 Brendan Higgins <brendanhiggins@google.com>, linux-i2c@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Tao Ren <taoren@fb.com>, linux-arm-kernel@lists.infradead.org,
 Cedric Le Goater <clg@kaod.org>
Content-Type: multipart/mixed; boundary="===============3300174731796616513=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3300174731796616513==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4ZLFUWh1odzi/v6L"
Content-Disposition: inline


--4ZLFUWh1odzi/v6L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 09, 2019 at 02:20:34PM -0700, Jae Hyun Yoo wrote:
> In case of master pending state, it should not trigger a master
> command, otherwise data could be corrupted because this H/W shares
> the same data buffer for slave and master operations. It also means
> that H/W command queue handling is unreliable because of the buffer
> sharing issue. To fix this issue, it clears command queue if a
> master command is queued in pending state to use S/W solution
> instead of H/W command queue handling. Also, it refines restarting
> mechanism of the pending master command.
>=20
> Fixes: 2e57b7cebb98 ("i2c: aspeed: Add multi-master use case support")
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Applied to for-current, thanks!


--4ZLFUWh1odzi/v6L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl2toAUACgkQFA3kzBSg
Kba5gw//TeZ9Sn0wM9c2yDDqlKcM/U6TRZYv/mqcZCi5l8hjGfnb/HmnpQN8R/7M
3BrEsK1Zu3FqYbL1JOliu/i91YHd7tAo1lju2claxrX5NbnS2rcEQo4NAxnFG5yK
Ni3sdX1ymQUIxbsjrM/2bhJNOtUFi/j/4ILyFKAyU/bNUZcmbXJHgBIQyFOAHrRX
jpRdPxw7CVro9haEtJV5b6Dk+YAl7aSva82Nu/GFelURpRJDb3Y3/AcKxPTrJ1/u
dydZoenb5S1uY15faP8/0H+cL7LfB5PmxwbnKRO+dI1HDlUVHA6GHFhFQhaAsD5b
kJ4kfmXzI4TR/YjcBArtMsdnXSnwq361pc5VkSiJ8EGLZ2tiuY3sPUxyUSoqEGtT
thAp0K+im/VGdqZVUm8q8n0JTW5CwWGocVVbR/XDkoWgM7Jm9oLOK/VTVsO7N3ih
xHgKnuQ4KMDE2+2rzn5wVTEqyeHUswAcAMNMDXZ4IE1JYI1dj+MDw2s+zYkgoTPJ
9r0zJP0CHj8epiRg09qsQ6xl2iyiAUMIH2uyf+a51fTdBN2BeCNTtWd6VciWuPwM
pAi25JK/ejgOLdCxfGnfnh8u1C5Zp0p40wqtPywwGeynoxdGFMfrfmnPBfP6Qjbl
UUPS4tdFuKJgRv17zVNlfe8bayTm6Lk5/jrgYEuyLp7nqt2/714=
=yVes
-----END PGP SIGNATURE-----

--4ZLFUWh1odzi/v6L--


--===============3300174731796616513==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3300174731796616513==--

