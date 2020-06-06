Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E721F065D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 13:47:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t2fTNWHEYw867vFmx+QKJD5BQFXwofX5y6jOV70seXE=; b=tOYk4NyFR34g92cyPJ1kFy1rp
	6nuMvidYBUCLSfEwVWeCQYhssy4oT0GG89Lb0qgOgPVDSqnaDER/uyaz0RSXiOAvfBReZ9DWJAPYO
	MWNTkeVhldYjqTMXK7hePaqyatgUspIQ9tiFtjJ7cwpNQDOKsAsNImC5wGm+bO2QFQKONCbxkLVx7
	82+0j/Hc5IRMzg1JgX+di32R8zaPIP+or/rMG3PVmX52CZexuGbsUAvB089QhvOLImXGqJhyLqN88
	JpYTilLEaT6RXfbtVbeYHSwoZqcOhOuSw8cBQMhQUBJQ8wgUDTFa5Fq97Sdh6RWocB2s+rzumBWYP
	hAdG8vIJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhXIJ-0005OY-JG; Sat, 06 Jun 2020 11:47:23 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhXIE-0005OO-Ix
 for linux-arm-kernel@bombadil.infradead.org; Sat, 06 Jun 2020 11:47:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Q1hE1By2w6tdlelWUzgDL9pNEpalt4sHuIMqHFjQjp8=; b=CjEPa6p1vAtaEuDA/W6MT80UXg
 TWYyV05bhe5julArTqow2InT1IFlVGReyO/c/Bmkt6JsH/95w4AqUNnyxkWrqoRpCXSPoBv1lsAQ/
 OKIHbZSkBisXanfoSTjuPhoC9slS/5CcPGTAV+mUgciIva9/mgmYjGOi0gdWrVlrAAdDEn6xNdoTW
 BggSm12erg4jNvigPW37vT82rzUbqaylJNzQsdSB4HxzcZnB6YxarBwLJMM5BlgwldPqhNk0EFk2G
 Pd42HH8RnuxgSzQKFmmlCFWNfWut1H6JjjwUfg+gLEjk27YdSNQAf5f5t3kL78EWtAP9V31xN5n4S
 kD8+8OZA==;
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhXIB-0003py-3r
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jun 2020 11:47:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q1hE1By2w6tdlelWUzgDL9pNEpalt4sHuIMqHFjQjp8=; b=k3fx9IKijx/wg1gi89wPskkRj
 qSJnkyjDFkHUduWjPiD4PsWrnb2+RVPaizPta11NotezqIsLn1oxzVSNvnszEdO6FARP/jF+sntaC
 MnUHGVN+Z24JRtKvk6f3h4BeEZnju966pPcxiFNt+ga2Sbf/VPisLqymd8KuYebH1Wqlw=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1jhXHh-0004Y4-Ov; Sat, 06 Jun 2020 11:46:45 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 3343CD06634; Sat,  6 Jun 2020 12:46:45 +0100 (BST)
Date: Sat, 6 Jun 2020 12:46:45 +0100
From: Mark Brown <broonie@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200606114645.GB2055@sirena.org.uk>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-3-michael@walle.cc>
 <20200605065709.GD3714@dell> <20200605105026.GC5413@sirena.org.uk>
 <c5632bfab3956265e90fc2fb6c0b3cae@walle.cc>
MIME-Version: 1.0
In-Reply-To: <c5632bfab3956265e90fc2fb6c0b3cae@walle.cc>
X-Cookie: You do not have mail.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_124715_341619_DDA84410 
X-CRM114-Status: GOOD (  22.32  )
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: multipart/mixed; boundary="===============4303022350831159587=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4303022350831159587==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PmA2V3Z32TCmWXqI"
Content-Disposition: inline


--PmA2V3Z32TCmWXqI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 05, 2020 at 10:07:36PM +0200, Michael Walle wrote:
> Am 2020-06-05 12:50, schrieb Mark Brown:

> > I have no idea what you are thinking of when you say "simple-regmap" so
> > it is difficult to comment.

> I guess, Lee is suggesting to be able to create a regmap instance via
> device tree (and populate its child nodes?). Like
>   compatible = "syscon", "simple-mfd";
> but for any regmap, not just MMIO.

I don't understand why this would be anything separate to
simple-mfd.

> But, there is more in my driver:
>  (1) there is a version check
>  (2) there is another function for which there is no suitable linux
>      subsystem I'm aware of and thus which I'd like to us sysfs
>      attributes for: This controller supports 16 non-volatile
>      configuration bits. (this is still TBD)

TBH I'd also say that the enumeration of the subdevices for this
device should be in the device rather than the DT, they don't
seem to be things that exist outside of this one device.

--PmA2V3Z32TCmWXqI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7bgiQACgkQJNaLcl1U
h9CJwAf9GDLvYJzqBwwJ8Wam2ddh4vI4HhG+7om7V0rPbtc+8urivLRpsn4PzyP2
VEDJVR0PhbtQTX11tUL9oNelTz+H+JHuuGMFCWP/DbbHsTKucuhkpelUnW17FukC
sr8O5n3D6en4l8bj6vsfjqysrIAtZWKk+xStpf8bQ9Zu9rczpbIGa2XK6r10w27Y
jcr5C4pQfl7DlyEwdfOw22i+q+dbBuPGPd/zk/7iRp8QzvmHjE9MCr20JO3s0cuO
4wwwbMMyNZAe2HjD1IOyVfJ42Yhd+Yf+IkgSShozuk03IuU1HEWpHTyV36pXBdvs
N4lga9r/upJOfAP2iW7qqtIdU4NzZA==
=M9Xv
-----END PGP SIGNATURE-----

--PmA2V3Z32TCmWXqI--


--===============4303022350831159587==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4303022350831159587==--

