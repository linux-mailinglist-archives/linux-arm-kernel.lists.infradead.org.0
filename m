Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F001AF52A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 23:36:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QrjTOMOrls4wO3e3qv7trghv0x3Qy2vS0yZF60eDt08=; b=HlAtlLYnzZO/jEyhGGCJCDwOK
	V05DPr+6eiZFQi35OP611PULaQ3XPa+ECu5OEbCwDM9cAAuQVOzYMSkS7Jiu/+VgeYzUrvDHs3te0
	i4nwk6stYHGt9aoOAGI4b8rJF6XJyDNQKwiaUZT6VmdTy4rgCD1+W3QLz6uqqNeo1KbYXTnSJeCZU
	9PUFQjc6PU+SZZ4nNHjLfmolfP/pgM7+RW7nToktmRz203PDrtfLX1GLNFivgJSZiH5DXRQ/M6ODQ
	zjsC5PPmgG/gz8xxe6mLyJ/jJC1vuxI22iyae5FSOKnZH7NShxuH8apVNe3MSGgSvLLBC0agnhx7O
	A+riQLaxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPv8X-0000wr-Lm; Sat, 18 Apr 2020 21:36:29 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPv8P-0000vr-3t
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 21:36:23 +0000
Received: from localhost (p5486CFBC.dip0.t-ipconnect.de [84.134.207.188])
 by pokefinder.org (Postfix) with ESMTPSA id 8C6832C1FB0;
 Sat, 18 Apr 2020 23:36:17 +0200 (CEST)
Date: Sat, 18 Apr 2020 23:36:14 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Radu Pirea <radu_nicolae.pirea@upb.ro>
Subject: Re: [PATCH v2] i2c: cadence: Added slave support
Message-ID: <20200418213614.GA1293@ninjato>
References: <20200106104336.101987-1-radu_nicolae.pirea@upb.ro>
MIME-Version: 1.0
In-Reply-To: <20200106104336.101987-1-radu_nicolae.pirea@upb.ro>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_143621_306727_948CE487 
X-CRM114-Status: UNSURE (   5.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Chirag Parekh <chirag.parekh@xilinx.com>, shubhrajyoti.datta@gmail.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8451852350474983824=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8451852350474983824==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline


--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 06, 2020 at 12:43:36PM +0200, Radu Pirea wrote:
> Added support for I2C slave functionality
>=20
> Signed-off-by: Chirag Parekh <chirag.parekh@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Radu Pirea <radu_nicolae.pirea@upb.ro>

Applied to for-next, thanks!


--a8Wt8u1KmwUX3Y2C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6bcsoACgkQFA3kzBSg
KbbR8hAAtaGcFgQXAQIHqfZDfIoYRabM6fCfgLBRpm2udJBALyUMSmMVZvmam86o
WUTF1Qg029CXr9deJnGqQPTkCoeAVNn8WtkBqNi8RY/dWH+WTfDetQraQCKr9vRK
k4BU5EYT8i8o64q2lSnVwqsSTipf3sNozqmcAUr31gqlC/R0rFzQM+LsFFUIcPiP
pT4ucQGOgvlWTkCeTcHolM2agk+rNLi8b3bz4LIkAfgYxzcL7tRp5CN78XWiwsmB
9ZxiCacwYOHbLYhnFLzir7Lbuz6QXEJ6tdVRHGxWO6VjZ2tM6GUT75b1/zURsSvJ
Dbpr+XA3jfgVhyCoKd2P1tVpq8tuBHQv6aDAcuX2NxaddYBSVRIW/HGaPPAeUHrs
k/FmXmsuM/uv0fjOtmJpdeYqHWcAqplcljouEBTTFDhVNjL9y9tjknyAM8jnDWNW
+edQn3VJo5edWkC9QniP/HMJq4BNhrNaYjX1j3IkOqTdk6IzsS3eCs5et7TqnZLA
UEOOIqjXS0XzM9yApkImbv7eLuzXTEbS1nQCfUxlMqZuNY8nmbz+upf1f3wNFRiX
iwEjO23gYRC7EV5epnwyxOM5MqCqgMDXVy9IpKi0PdpNDvaFUh3rsMo584lrcOA1
5Ci1OGKNQckkU9fCo8+ZvJn5JNjgQwm0nSxGz3KsKw4MfPcsHWc=
=t45a
-----END PGP SIGNATURE-----

--a8Wt8u1KmwUX3Y2C--


--===============8451852350474983824==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8451852350474983824==--

