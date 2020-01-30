Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1178D14DAD3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 13:42:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S8EuA5nOVd1U7sd04fqwLNUtrWrGSI72NnTOYEwsYag=; b=NIcaJqIZH/nHMvLeluyfzeVLt
	j9PoaGxwKYmOgmP4vhcNCvoyU+d3qo9CSutlWqFRFPL3fBX4NQzlqAwGvEb8VYYnopurdvxDNoSgi
	u4JDQe2zdCD9ZlxI1Fh3oZ0pUlG9JvT6YfMhDrDnGMpRO9fGH7V5RBRZDW2rDz+wLZ2OBmu5Sdqm9
	Z4kwr2Qs7n5oqicAK5tkERXEK+lF13b7YbFkdDkkXuMN+DaX/+qnVjeBgGTU7ts2GryMqiXE7eFEn
	5MCKhblTbmPin8g3fTuas3YJWINWBBBfsu+1GRi5cG9DFzRymZF6GDU6JHedbq6W/my64s3okiWzY
	b+G+egqgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix997-00034w-JH; Thu, 30 Jan 2020 12:42:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix98y-00033o-JO
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 12:42:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A04C4328;
 Thu, 30 Jan 2020 04:41:57 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E7B43F68E;
 Thu, 30 Jan 2020 04:41:56 -0800 (PST)
Date: Thu, 30 Jan 2020 12:41:55 +0000
From: Mark Brown <broonie@kernel.org>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [RESEND PATCH] ASoC: atmel: fix atmel_ssc_set_audio link failure
Message-ID: <20200130124155.GA6682@sirena.org.uk>
References: <20200130114930.28882-1-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
In-Reply-To: <20200130114930.28882-1-codrin.ciubotariu@microchip.com>
X-Cookie: Positively no smoking.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_044200_683602_A87EC59D 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, Arnd Bergmann <arnd@arndb.de>,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, mirq-linux@rere.qmqm.pl,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6645310398783581164=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6645310398783581164==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ew6BAiZeqk4r7MaW"
Content-Disposition: inline


--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 30, 2020 at 01:49:30PM +0200, Codrin Ciubotariu wrote:

> Fixes: 18291410557f ("ASoC: atmel: enable SOC_SSC_PDC and SOC_SSC_DMA in Kconfig")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---

I can't take any patches without a signoff, please see
submitting-patches.rst.

--ew6BAiZeqk4r7MaW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4yzxAACgkQJNaLcl1U
h9DhMggAgULBasGe93GC8xP7foe0sWUQUTvtUeuVxUrWZlYrXAPuYZI6f0/bMeDf
chL5NIydQW2a9sMqyqBKfu5WZbl1k1ABVrFmA/CmUflMej4IdsVLM6mKdkhetmgu
XjQtVObQGU7Rx7dkpGjsrVQkzuC94G5DfcGWJYq3uABTsMlDM5+Xdp6bUbWXHza1
uCdbwrrbNivS4UH6WPvYW7I82MpdvonLc7ZhsDFa3yonrmHSnIvAQr0KLJZkCE5R
6zGBQike3MUxHiwIYAslGI3Kc7pmMlVNUHzja77PpZVFNGN7TYCeRri8FQtLXZQt
1lhBjUL3wgBwVOAYTzHtsXtUEgCOoQ==
=f+66
-----END PGP SIGNATURE-----

--ew6BAiZeqk4r7MaW--


--===============6645310398783581164==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6645310398783581164==--

