Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 934F9707F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:55:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=daeto6339CkDywYd3byEer0KlW9neSxTrvJ7EkkWlgM=; b=BqshNF7HalKamQGnBjuH9b2cL
	nsAAp2LCzO0mw2P43O7K7lV4ey2qY9jrUp+K6pSLFjn8J05nC1ZfLkBA8q1QpIdf5kbonLBoH74hM
	2k5fArB3cHWX6WdoDHvgU4mdziW5qPqTxRy+fj9Iv1zpnhLPsANVDZ3AE7qpuwncPIfT9SzXVelXY
	kacTCFYXQUS23sPe6Q416L+dirOD0Uj2GglAtUHXkuqx7YsFhGWxICxD1NJewe8NrtKkn3EPWW/rv
	N5QJkoyirWV0p2EmPS03W+xHps5dGwBxbALR05DIdE3SfKbvwBI4A0uqgu2XVYChv8Bk5SuBomqcj
	l4bUeOmFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpcWT-0005qG-4k; Mon, 22 Jul 2019 17:54:53 +0000
Received: from anholt.net ([50.246.234.109])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpcW8-0005pf-Ub; Mon, 22 Jul 2019 17:54:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 71FEF10A13E4;
 Mon, 22 Jul 2019 10:54:27 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
 by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id aH8J_s4S6swk; Mon, 22 Jul 2019 10:54:26 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 4BDE210A277E;
 Mon, 22 Jul 2019 10:54:26 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
 id D34312FE2547; Mon, 22 Jul 2019 10:54:28 -0700 (PDT)
From: Eric Anholt <eric@anholt.net>
To: Stefan Wahren <wahrenst@gmx.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH 03/18] ARM: dts: bcm283x: Move BCM2835/6/7 specific to
 bcm2835-common.dtsi
In-Reply-To: <1563774880-8061-4-git-send-email-wahrenst@gmx.net>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
 <1563774880-8061-4-git-send-email-wahrenst@gmx.net>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1
 (x86_64-pc-linux-gnu)
Date: Mon, 22 Jul 2019 10:54:27 -0700
Message-ID: <87d0i2eyzw.fsf@anholt.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_105433_015334_72CB5028 
X-CRM114-Status: GOOD (  12.19  )
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
Cc: linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
Content-Type: multipart/mixed; boundary="===============3969614884286244014=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============3969614884286244014==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Stefan Wahren <wahrenst@gmx.net> writes:

> As preparation we want all common BCM2711 + BCM2835/6/7 functions in
> bcm283x.dtsi and all BCM2835/6/7 specific in the new bcm2835-common.dtsi.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

For display:

We should probably move HDMI to bcm2835-common.dtsi as well, as the
block has very thoroughly changed.

The pixelvalves have also changed and will probably need to be separate
for 2711.

DSI, DPI, and VEC I belive are the same thing at the same address still.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAl01+FMACgkQtdYpNtH8
nuhNHg/+Kh+yQKGTRWQP2MLJ7DLvk+gXyEFVpdOkBDEUZ0VgeOgNkhVPV5v/jS+5
XSmTkAXPSerrT01GwkGw7c8Df/94Jqmt3CXNqI8+35rCYWB6Xj1kw+YhuXzTQafb
7IS6VYlp+3RoFhPGYYivunRWDv/Q2zQt/ML8LxLLQ+xfqlzwsLICZRC88jnJLabs
cJAs22DioTwqgFqmsSCaPLFRe4prW/Y3RV3QNGwfh5GtaYTUQQma/vAPqhfqorlL
zEUik/0nY7/n+j2lDf8jHDZ4wEbGz6miKcIu5NuBBxYw09iK3vDzDnPfKjNd3GZN
NVnyML39lLAlZfPYYKlGLb1k9brDXtdCWvHAJ8evrpA6pg78QNZgVZPPHpJ21Dxj
MUEHw8ZaTrDcj015kmDVEntQrdMrEJz74U/V+kSVLYkmxMwss3zl/oh7c3scZwCU
/ED57Gfl3L6jusiZExmvgmoirrg3B+Nv7y66LdjHGA7o/eTSfrTcfXz2AsF5D+ym
25ZYalODm+22UO/Spxoak3hP67CO8L9iqU5Nm+7PTVZwuMZPVcwOz1+2taiqXwrT
iYheIGIxYFZorb+ojg7NMDJf7i0VWGVcn+/D/1+FBlV6aNyfqU1bJcs2BNRv1pXK
aWm4pX9+rl6ylR9VuGwb6GCGF4y2vPHDDUWYXIaAS91HaVeDcSo=
=oOH1
-----END PGP SIGNATURE-----
--=-=-=--


--===============3969614884286244014==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3969614884286244014==--

