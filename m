Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 538401F954E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 13:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=25S8Qa9UrwEZ4YdPdfhYJpMGSNHqSZhwt75apgC/Jy8=; b=Pqeux6P2C24rAjh3g+QyOwFHZ
	HASvUCQOGobwchIV1M5USXlvmfMeD1f7B+EwrINybYHCtJKwakrIpGajPFewoy3PDNNgaH/TKFxtu
	kHZdxhg/+ux2G5q2UOi6bqeSV0590elJTgjtQlKCqLBRNha7zLhXVH0mL9XOYtVgT5zXbC6TlJsYB
	Yg5yJ34z0IzU9Jd3QNDodg+unkcZAnc7Zk+0cJ63ppYAzmhVcyyvOiSUXYpikJzCIWEtVyqeCKTNg
	JU5zD7C/h+4irWyNz0Vj8YBlRf+t/WWhVuVqWJ3KDrN/PO4Z/0tLyndF5EzaxNu0zkxdWjJaaaJJg
	7jt+tdWQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jknGY-0001oL-Hl; Mon, 15 Jun 2020 11:27:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jknGQ-0001o1-5T
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 11:26:55 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5E56320663;
 Mon, 15 Jun 2020 11:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592220413;
 bh=AlmSpOqWFZ3eVUddo28omMXWg5/pX1RtU4kaDdyET7g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rCqYlNq36hQrO/FMlpkCvgwlh5vXvjqZmEbE+RmhD4GDkiacwgI6qnxCNO+ChR0yD
 8y9gNq2ola39ObDpUAzuvs1E/xeV3XjBje5IB5bHBO2mOYvXQPJZ9Ovlc+0s5cI9NQ
 lRrCF3mSJxnx74/2uzMOLmVQioCHQPAPK6vut+lk=
Date: Mon, 15 Jun 2020 12:26:51 +0100
From: Mark Brown <broonie@kernel.org>
To: =?iso-8859-1?Q?=C1lvaro_Fern=E1ndez?= Rojas <noltari@gmail.com>
Subject: Re: [PATCH v2 0/4] spi: bcm63xx: add BMIPS support
Message-ID: <20200615112651.GD4447@sirena.org.uk>
References: <20200615080309.2897694-1-noltari@gmail.com>
 <20200615090943.2936839-1-noltari@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200615090943.2936839-1-noltari@gmail.com>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_042654_224762_4A559076 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: f.fainelli@gmail.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 p.zabel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4226948143090449138=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4226948143090449138==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2iBwrppp/7QCDedR"
Content-Disposition: inline


--2iBwrppp/7QCDedR
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 15, 2020 at 11:09:39AM +0200, =C1lvaro Fern=E1ndez Rojas wrote:
> BCM63xx SPI and HSSPI controller are present on several BMIPS SoCs (BCM63=
18,
> BCM6328, BCM6358, BCM6362, BCM6368 and BCM63268).

Please don't send new versions of patches in reply to old ones, it makes
it hard to keep track of what's going on and can bury things back in a
mailbox.

--2iBwrppp/7QCDedR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7nWvoACgkQJNaLcl1U
h9DEdgf/WbsEopffAeHd8Ul9GNjtjCukqiVk2fBTROY4nGzZkGXiw2hSGXwOWTFL
7ZIYDNMkuLm+VnGjGIYFD9j1b53xYWzG4kC+DrPUzHKAwP2vbsWkG58s9Ey4olxn
e7bKMD9bpVxmHfQ+/3qwlWeqru+h4qk9s6CwIABjck8TyhjSgEIG4Vz9O/ciECvP
oFaZ2rH8wiB4K/B+V67gaTcRVG/dw2ZOzIQTZR9e4lX267ICY+vgy/B+x68XdxsX
vJPd6Kj0OJxtYkv5LObTkn7omVdFOtYUEVjMeENapQ/fQGJX6HEBjV1KyoxE0Vj2
F2CcPwiKa2XIJ7gAgzfo/V5zzJI5NQ==
=KHrG
-----END PGP SIGNATURE-----

--2iBwrppp/7QCDedR--


--===============4226948143090449138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4226948143090449138==--

