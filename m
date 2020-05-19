Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 350F51D95BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 13:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vq8UV+W5QC7r7gOI9e6YFwKHRSf1AtqqcXZVeqEvcHI=; b=pNtdXq9d3vz9CjI1eRHILTcWj
	/bvwQM72XK9Z+wokuAmMu1ZCVuU3ZH91UEdTohXoblWNt3Ms2XOROI+lVm+wAjjDBVf9EYoJERNhR
	/RPLO4mSFf2oQ6m5XspeTto7GRBwJ80ce9pgrsmdXOaGicgloK1+H3/WK61TwrqY04S13PgOQgF80
	DpUd5+RJW17yL1tFfauJbcJkh3S+mWbmqycj4eqeqHXpzUeUwgOxr3G01ztrv6AqdfvZN+Z+9Hy2A
	RVQcscm/7KIleBGEBWZiKFN8EbyrXjrdRTZtLSGuF9/fOyZlKLRsW1MHwj9mzww6xrjRldndpUjDJ
	wNvib5KIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb0tN-00015T-FQ; Tue, 19 May 2020 11:58:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb0tE-00014r-CO
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 11:58:33 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 386AF2072C;
 Tue, 19 May 2020 11:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589889511;
 bh=fOrpieaqIH9hUCQZ6XDb7mVUQbKj9P7T/MTxkbzSg8s=;
 h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
 b=V2KUHizyfqYD5n50FTwvGM3vgwSjAiCpptf3o9GkUP8DSgkOuEoZTprn0hXE3/fm0
 hIOM53GrMSnePMGTtJ9N0uE9/Lg0phZQF9JiIp9guwjcPQCX4cl7z2c8mZ1LJXpeH/
 T0QsyMMihhYo6QDy0BQu0N9nLAa0O61shxkco8j0=
Date: Tue, 19 May 2020 12:58:29 +0100
From: Mark Brown <broonie@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 04/10] dt-bindings: spi: Add bindings for spi-dw-mchp
Message-ID: <20200519115829.GI4611@sirena.org.uk>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-5-lars.povlsen@microchip.com>
 <20200513145213.GJ4803@sirena.org.uk>
 <20200519114739.GD24801@soft-dev15.microsemi.net>
MIME-Version: 1.0
In-Reply-To: <20200519114739.GD24801@soft-dev15.microsemi.net>
X-Cookie: Do not write below this line.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_045832_438318_51843705 
X-CRM114-Status: GOOD (  14.24  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-kernel@vger.kernel.org, Serge Semin <fancer.lancer@gmail.com>,
 linux-spi@vger.kernel.org, Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Wan Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>,
 SoC Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0476992716962696742=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0476992716962696742==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WR+jf/RUebEcofwt"
Content-Disposition: inline


--WR+jf/RUebEcofwt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 19, 2020 at 01:47:39PM +0200, Lars Povlsen wrote:
> On 13/05/20 15:52, Mark Brown wrote:

> > On Wed, May 13, 2020 at 04:00:25PM +0200, Lars Povlsen wrote:
> > > This add DT bindings for the Microsemi/Microchip SPI controller used
> > > in various SoC's. It describes the "mscc,ocelot-spi" and
> > > "mscc,jaguar2-spi" bindings.

> > That's not what this change does.  It is removing the existing binding
> > for Ocelot and Jaguar2 from the free format binding documentation and

> The reason for doing this was due to the fact that I felt adding
> Sparx5 support only cluttered the original driver even more.

That's not the issue I'm pointing out there.  The issue is that your
changelog claims that the change does one thing and the change itself
does something substantially different.

--WR+jf/RUebEcofwt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7DyeQACgkQJNaLcl1U
h9Dhbgf9H/YUUBvBxlyy73BDb2PaDLVhw0Ve+Np4U5UH24whVWZtwlNBdsFUhETI
1ohdX/JdBEWEk4s/nXq1PnbepV/150KTECg2VTya73gUE9G7yK2RxyMIC2M/18z4
RQOrrSqXMPB4NwPMM5gkzSoyA1xtNLCRUSQdWRp2iOrys0zoQCr6tGTDHLrK5h8+
XiJJGFNHMjrTwYS5l7j2VmYmWJVK3MkhNAx1+bwC7eQLXwU58Ual9iVWnwL4SZg2
cKOXsMgNo83Zksi8GyhV1I2XtSw+wtEzHlbpM22ym2rMJGsIcRMWn8Az6DHUosQb
KBW0wKuis8ZrqJ0KfoNAF1sdAqrLlg==
=+uhE
-----END PGP SIGNATURE-----

--WR+jf/RUebEcofwt--


--===============0476992716962696742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0476992716962696742==--

