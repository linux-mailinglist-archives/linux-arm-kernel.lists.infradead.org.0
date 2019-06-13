Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 165E743495
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 11:19:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=svMv/iquSIB8w0/0JQNCTPqinMTIFi6BDCkWqgEgqqQ=; b=AGAaFtqLfF0K8AQbEKJg05dqO
	/OgsE7b49ECHJlbwssrHZv9vwLFyMbJ3/tO7fU1Y7jiqjqMZtGZoXv/4p6Kb2LaezVTHjxBLNKMwb
	WCzh/pZdd2colz8zuYYr5tNX5+xGmwzyrvXiTieQuvgj99sndAe+WBxcsLpE63hclSd5oirGd/Af5
	ilifEz93JDrs/x21s9iOrHod9E0yiQhFoeux6spINAEumQYpf3vlyFrLX+VZ7foxsexNrEhlNZ2JE
	7X1a0rJUpZ5lbteX/IKv7DwV0fZweSvoK5WUNyu9crHdeu+NgVXzcQ7thKHjP1v4xuu6D84W0mwFH
	i7VVRqTSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbLtc-0006cQ-7x; Thu, 13 Jun 2019 09:19:48 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbLtK-0006bm-Bf
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 09:19:31 +0000
Received: from localhost (p5486CF99.dip0.t-ipconnect.de [84.134.207.153])
 by pokefinder.org (Postfix) with ESMTPSA id 7A4352C3559;
 Thu, 13 Jun 2019 11:19:26 +0200 (CEST)
Date: Thu, 13 Jun 2019 11:19:26 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 1/8] i2c: i2c-qcom-geni: Provide support for ACPI
Message-ID: <20190613091926.GB952@kunai>
References: <20190610084213.1052-1-lee.jones@linaro.org>
 <20190612103453.ccet2pneairnlpcc@ninjato>
 <20190612104011.GA4660@dell>
 <20190612104459.gvji3qxym5s4odfq@ninjato>
 <20190613085204.GF4660@dell>
MIME-Version: 1.0
In-Reply-To: <20190613085204.GF4660@dell>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_021930_549323_516E57F2 
X-CRM114-Status: UNSURE (   9.05  )
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
Cc: balbi@kernel.org, linux-usb@vger.kernel.org,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 david.brown@linaro.org, alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, jlhugo@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1624337728034579834=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1624337728034579834==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Fba/0zbH8Xs+Fj9o"
Content-Disposition: inline


--Fba/0zbH8Xs+Fj9o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> I contacted both of them.
>=20
>  Andy doesn't touch anything that isn't QUP based (8994 and older).
>=20
>  David doesn't deal with MSM platforms if Andy is available.=20

That's good to know, thanks!

> So I guess the decision is yours.  Seeing at this patch is pretty
> trivial and has our ACPI expert's Ack, the decision shouldn't be a
> difficult one.

No worries, the patch will be applied. I just wanted to check if the
listed maintainers are still there. Otherwise I need to orphan this
driver.


--Fba/0zbH8Xs+Fj9o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0CFRkACgkQFA3kzBSg
KbaquBAArPmt8Fz3DGFNlnfxI6ee/fBc4huwdqsLrUXhirCq2NxTHi0g8mc1Y4O5
js7pOOLQSqZ6cTamIqHGv7wNonZ16xhvJPexVAz8CPT9BOysmHI/Z1eBEorBqOh8
MXkJGWXCSJ8li3yAdDLcQWKyj42zzEV7YJ/7kzEVpodSec/ufP1l34mxPNY+gVkj
b2YAX41oX7KMQ+ix+O9dK1U/wja5costVyUNXxjLuzZBTooVShj7dnrcLuROw1ss
I3V09OpXN7E8tF4Tq52gJ3xH1wJslMsi2GGGBFC4kKC3txfO04cuOZsLmf36Jomd
hBFUBBQotylM32w5lshWXcPQOUWBsKlDtfK5qyAhKIeBEvs08pbqK1Lw8hFT8T7t
6kD5Ty0cRPx5yBU0DE46FWuR60RYUqfq+bLYy4Y1O5lyCY2IdM46SMuFo6pp96lq
GQReaFopNp4SCpNPNJCDFtoHegeEoT5JKrcjLHRV9Zg2+p4mNL2O7Epkvi+4JvzV
p1gVvtL0/x5wVD8QWtXq8a7/IQ5oYUaULExw+WzhWD+VV4c/4JyyMNtGpCmnXCAr
EXj+7drBHheZN7nmmrer+sEuAySjTlhhHtFvb2K735P06Etqu5YWAtm88j7FcZUU
SaCzuSKqPQgU401V3+k5aexWOMCEN1DehlbyL+n7nQazEovGM24=
=dLE0
-----END PGP SIGNATURE-----

--Fba/0zbH8Xs+Fj9o--


--===============1624337728034579834==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1624337728034579834==--

