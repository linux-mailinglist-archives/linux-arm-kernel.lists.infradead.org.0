Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D3874843
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 09:35:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H1HQNJUD+31TDQ3CZCkVqJn1ccAgFdchBu+w988rMv8=; b=TzuI265XmXSs69x3xheQnjWzM
	5LXBN8f1t4HNnb9cdmYg4nZJtGtdmvQ8oYHjmjBtLrlh4w14gTlFmAPeq6pMqm6uXFyLECNJHxU1R
	utp2Jf03/b3W7AEsRcnrQpp7EYW5qNJC2zvyDEeU4g6ziqqN26oSoykb62p0t6hbt4oouo5oebSHd
	qJ5vX06ImQq+g/SjAskITqUh8kCxJto1pAGsxSZYB6Fgdx1KEQK7lj8K0IOStgeG6pwpKtCO+AmyU
	tzzB2NaUevfrYe9fYf4FNq33w1NKWfKJyBZQqDzqC/H5qpqHYotd8CySWE0LiU/rRUg22VFhRGI8C
	qvg5zHScg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqYI1-0005Rw-0E; Thu, 25 Jul 2019 07:35:49 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqYHk-0005RY-9s
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 07:35:34 +0000
Received: from localhost (p5486CDF3.dip0.t-ipconnect.de [84.134.205.243])
 by pokefinder.org (Postfix) with ESMTPSA id C4C872C282F;
 Thu, 25 Jul 2019 09:35:30 +0200 (CEST)
Date: Thu, 25 Jul 2019 09:35:30 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Simon Horman <horms@verge.net.au>
Subject: Re: [PATCH/RFC repost] arm64: dts: renesas: ebisu, draak: Limit
 EtherAVB to 100Mbps
Message-ID: <20190725073530.GA1323@kunai>
References: <20190717125739.21450-1-horms+renesas@verge.net.au>
 <20190717132607.GA1458@kunai>
 <20190724105203.thykr2staw22gdj3@verge.net.au>
 <20190724210441.GA1559@kunai>
 <20190725055721.37mcdtpeer3knrxa@verge.net.au>
MIME-Version: 1.0
In-Reply-To: <20190725055721.37mcdtpeer3knrxa@verge.net.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_003532_496274_9F999A7F 
X-CRM114-Status: UNSURE (   8.19  )
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
Cc: linux-renesas-soc@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: multipart/mixed; boundary="===============4906124895383463754=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4906124895383463754==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x+6KMIRAuhnl3hBn"
Content-Disposition: inline


--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> Sure, how about something like this:
>=20
>                 /* TX clock internal delay mode is required for reliable
>                  * 1Gbps communication using the KSZ9031RNX phy present on
>                  * the Ebisu board, however, TX clock internal delay mode
>                  * isn't supported on r8a77990.  Thus, limit speed to
>                  * 100Mbps for reliable communication.
>                  */
> 		max-speed =3D <100>;

Yes, I like it. If DTs have kernel coding style, there should be a blank
'/*' at the beginning.


--x+6KMIRAuhnl3hBn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl05W74ACgkQFA3kzBSg
KbYflRAAllcDSSlsTgUOvKvUUlEGDA+QBMXfKKpdjWrsXoSEZ8qSZ0D56GCDCvg9
BoLqSuxWETsn3fXznuCjEjbfd1oFOs+eJreWQ15uF0C8Tek7ax1EMozoT2/gRcyQ
jSfqq26vSjoI5CQx64UcevMLdyhPEtmEUjyX9jPJdnuOsOuksP/Je2vl3dlmTETq
PL8KNEG1tlJe0Y2NUN332DD2XlZZC5cQ4DsRnjfqHd6jAy9rVYC+t+Rwd3+D7/D4
ZgdaO4NRbQLcgt8Wz5i0C/qGiXeSct5Y5Hw7ZMh9zxHvnICIYPqTFt3DubjOXo8g
rV0jmsLBYxV/xx1p90B/ZV7cfL9IH2fzq6+wIVmmkNXmZNSe+r3AvqV8iRJyrSzB
GISmruXZQqNA8zanWXzsOagn1DjufSKxt0VMW4BeFU+g8bHQ+XIP1oIjwzQkHa8T
XFmbCYZMuyRaBq6Mt3Cy1Am4+75QSc62AQiJQodxufhwdg7vOnyUBrm/bIE90Syo
05XIHeIJANrDYEi+wrPLS0+N1e7Lcy4yeV5GLDzuwT7vJkHqOrh38vF1qC/BWDRO
CEXXqxyU3n0UEK24cBaDgWvWb8jxecEMkCGgzpnZzfcqLLsETE+kPrjwG4puKFw5
zb6qtmuzgyuR6RPk0rtuvjJSDdK3XX26U/f1WxT0ecHtUTiRhX4=
=tJz7
-----END PGP SIGNATURE-----

--x+6KMIRAuhnl3hBn--


--===============4906124895383463754==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4906124895383463754==--

