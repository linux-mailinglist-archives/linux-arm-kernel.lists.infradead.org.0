Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFEC1BF6DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 13:33:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LcFdjP/pdJMKqH3TYxQTkl5lrhPtw1q1z3QFr+n8cAw=; b=sxxwTbjtE4ph1UVmeq1fGQT+6
	ia7IPir8kT5owVEarEFemRCes5EVw29i2iG38D0N7V1VONZV5DKNhVOV931ZxdiTDZ3LV79Jth65w
	gKC+6h42zMzFCnzlXZreRx3dyOwO0DEnowM6DO+C5ONb9tdFA8EKkaQQn0ClE/uujKmtRbTsDXewt
	YLfmJdznptxKohT4TFiwDjLymnNneoIxlhv2PUt3Pm+nYuiGFgfvUyqV+HVwK0QLB+6o2a22bb0Ku
	It+FchEGDbjkokcpRFAoJRqbJBa+IC8+9/G0HyE70czg9q1sADbUzvMME2zMzk1iOgDHBF8kkkk1F
	8jvybIYTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU7R3-0003uU-LD; Thu, 30 Apr 2020 11:32:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU7Qu-0003tm-8X; Thu, 30 Apr 2020 11:32:49 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 68E142078D;
 Thu, 30 Apr 2020 11:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588246367;
 bh=SDuEwg1WKq7t/jFi9WmoqkIH4AEdT7LiqRcbwtABNhg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jHoq0B4CB7eyjb2jiTgJnCY9oVfanKYOBA3gjv82qjmhbVF2crI1GVc/QSnh8JGVV
 EkBqhhzJaHb+r2cH9SlLAtUztz5198G99Z6h8fAlV0XkBuv+NMB77dS4OvoxzxcKsq
 zT+cJhW16h2UiDHWliFbvmGmePS3oVu2sV8uu7nY=
Date: Thu, 30 Apr 2020 12:32:44 +0100
From: Mark Brown <broonie@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Subject: Re: [PATCH v4 02/16] spi: atmel-quadspi: reject DTR ops
Message-ID: <20200430113243.GB4633@sirena.org.uk>
References: <20200424184410.8578-1-p.yadav@ti.com>
 <20200424184410.8578-3-p.yadav@ti.com>
MIME-Version: 1.0
In-Reply-To: <20200424184410.8578-3-p.yadav@ti.com>
X-Cookie: Sign here without admitting guilt.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_043248_321322_22B29300 
X-CRM114-Status: UNSURE (   7.76  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1124023621375758509=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1124023621375758509==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PmA2V3Z32TCmWXqI"
Content-Disposition: inline


--PmA2V3Z32TCmWXqI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Apr 25, 2020 at 12:13:56AM +0530, Pratyush Yadav wrote:

> Double Transfer Rate (DTR) ops are added in spi-mem. But this controller
> doesn't support DTR transactions. Since we don't use the default
> supports_op(), which rejects all DTR ops, do that explicitly in our
> supports_op().

It's not ideal that we'd need to explicitly add checks in individual
controller drivers - are we sure that all the others do?

--PmA2V3Z32TCmWXqI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6qt1oACgkQJNaLcl1U
h9Bp+wf5AYkjviwzmOmBfB0UQdeRmw/d0JfRnbiV641yDAx2gAOy9RDvBnVgDjJA
sGUWQ4wtEfqrzMA1Df0x+7qjV5wYyCtvZA7qqLf8W5kkpdxHzCP+3GoaGsiN6fhB
8azuDCV4H8AYMZUVdphUpnOiJkYc7ohuG3KiNQzZNcecjlWs9C0ule78cyip05cQ
XG0vw6eVBgLzCNRjhGcSOhOihQwEVEJzoGIqZpd6TcHeKVPXjd8SixdvO4gqQPHl
okzxg38VCs8A/+dL2O5p56FLdVTLhR/D4H3Q8x513JxmeGGMGi8/qERPyreoZGdE
0H4rs5IidYuhB4dnzsMuY8NrpLegmg==
=dsNE
-----END PGP SIGNATURE-----

--PmA2V3Z32TCmWXqI--


--===============1124023621375758509==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1124023621375758509==--

