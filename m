Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22073BD23A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 20:58:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+/I2YuLYFgZ9TIfbgdifSyWLyZQl5WLqr2T7DnCvIjI=; b=hDOIpuHgRZw5uUOhYutkawVLo
	Dugg9zKq5BYiJ78CAaCrYdH5h9g7CudJw5PiRb3aZgfdpWOFzA/nsWVeaQ9Jqh/0Sx3HOK4gGWzl6
	/fF75QOOvCWUtdgT7p7VOHuQFqVBt0SffTCi8fSBpQlq6Wh+rNux4cs48xQmQ5gS8/WV6U8Trh+oK
	8DVAbWiHIVDzX/RRJf2ypxxTi1Fm0vYMs269FvfRBYX7lzXbqvfmCArDF3PYx+db8xEGFES6hxR9E
	fbPtJWUMEtP9LDJlWkvctQJMZG/QcyN3astnuH1XaGoOB/XZTZ9FIyEFlRtHi6B3z5HyaxWgKw7rC
	9V7mgfmPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCq1C-0005aZ-II; Tue, 24 Sep 2019 18:58:34 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCq0o-0005ZN-Dm
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 18:58:12 +0000
Received: from localhost (unknown [90.85.113.197])
 by pokefinder.org (Postfix) with ESMTPSA id 4C5152C039D;
 Tue, 24 Sep 2019 20:58:03 +0200 (CEST)
Date: Tue, 24 Sep 2019 20:57:57 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Ray Jui <ray.jui@broadcom.com>
Subject: Re: [PATCH v1 1/1] i2c: iproc: Add i2c repeated start capability
Message-ID: <20190924185757.GA1538@kunai>
References: <1565150941-27297-1-git-send-email-rayagonda.kokatanur@broadcom.com>
 <20190830125626.GC2870@ninjato>
 <3e70fa7e-de13-4edd-2e17-b7c56e91d220@broadcom.com>
 <20190831094940.GA1138@kunai>
 <540c4e2d-0dd5-5260-30b2-e1589b279d71@broadcom.com>
 <20190904213745.GG23608@ninjato>
 <5ab79d0e-eb54-8fe1-1ca3-e763a17c6426@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <5ab79d0e-eb54-8fe1-1ca3-e763a17c6426@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_115810_615250_73EDE54C 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lori Hikichi <lori.hikichi@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Shivaraj Shetty <sshetty1@broadcom.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, Icarus Chau <icarus.chau@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6479110189999757297=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6479110189999757297==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DocE+STaALJfprDB"
Content-Disposition: inline


--DocE+STaALJfprDB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> In my opinion, it's probably better to continue to support master_xfer in
> our driver (with obvious limitations), in order to allow i2ctransfer (or =
any
> apps that use I2C RDWR) to continue to work.
>=20
> What do you think?

Yes, don't break it for users. We should have paid more attention to it
in the beginning. But, while not ideal, it is not such a big deal to
keep it like this.

Thanks for your investigations!


--DocE+STaALJfprDB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl2KZzEACgkQFA3kzBSg
Kbam+A//dpJL9KQfjH0vct83wG2I23jh0ofw2vQQ0Oz4QCKWS+Vz9dex7nvEiecY
Pua7zt0evVz6Du44tpAJGpsydjgNJBdEWjZp4rxksVNpyc5SOkF186eEdjjN633L
LqCpl6TgqyZhVXCs9H1y9WGy47i9xEH4B+gRG3SwEx19Wc47pUnURQrWA/7HGnjF
7tzEIdZTJKLBU0BzGQqXJ2bo5mf1Vt2eT112G3Uj+yh5/TifFnjGKqv4rGG4uE8W
pXkOg94Jb0ywSl2YWV8axsAIyNVNzW74lxkvsRoPuZ/qcCdw9n+U8YoXeOKJuJEc
6BCH4UDC5mf/m88q70UyZwryz2xZtkvS7Df7JU92dbWRgHG5SNAW6cHo3FDKO6km
uWWqMAidEhBw3t8SXbzhQkjyuxTEGNue/LcX+SYhWEXqSiuNQ4Kudr/imW4B6NAC
X1G+fUxdyQlEgju1g28Bfh6cSH7DZ0v20k/cy7Pdqa4yPp3LhgUnRkfLdNH1qo2R
judxCqo824+GiMU5vAQYkA8+ZI5WFPqX8KCEmhqh8qCH++NAnqxmpwmVS4FmvN9X
5bGDRe71F8Z5UTXKTc+IajEc6Nu0+XUN68rNAlpM/NLD2Q0kRJVHh+bFoWrkwNdf
ODfzxF5EI/Uz/G4N6pytdB2SFMdTCvSieG/kqk/K1zTVZUWplw8=
=5VKZ
-----END PGP SIGNATURE-----

--DocE+STaALJfprDB--


--===============6479110189999757297==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6479110189999757297==--

