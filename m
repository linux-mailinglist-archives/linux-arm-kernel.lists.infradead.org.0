Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE30DE0919
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:36:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HOmLzueZNXPXzp9gi0wcCJQaaktinAKtagP/f88/o40=; b=ByK2ZxG3maF8ZRS0wPFDfwOq/
	kffw7fiyKJPDq5f8rbEptJapM6XYclQBn0p92Vr/TwHVIPOxcq/kwCO5I5qcEMqZ+vCx5Is5PpJr3
	3k2EUeXIPnbih9a4W8J46hFfwTJYcnJ1JbY7d+RWaShgL7Yv/pZaWrEGGdimG35xjaEexZaSYw18B
	HkS3o9wfZE9z7kkfZEpBVP+Oei6Q7/wme/gmUqymOHWhHlKOv5J9XPR7BS7iVDXKVKm0z/IGaWY16
	9d2NSqUi+YDfkNNqerYtu3+TrIkNmakUZfBfD+R1+oMP9cG8ZEE9wpUj+NuXZ/8901/fGc9rW5wZw
	pummsEQWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMx97-0004pX-D6; Tue, 22 Oct 2019 16:36:33 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMx8w-0004p3-IU; Tue, 22 Oct 2019 16:36:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M16s+hjSDlE6TNgtBa3MKM4TCqAq6AmiEIcWbfZK0/Y=; b=fNUlDze7oxEGXu0bsJvv6CQWR
 sTGIW/95FU2RCYkgoZAholUl+Q+0Ndxbv84tD+w1SfX7zOT42kiyBr1omdpPem6a1I1Ty+hvpKmL6
 rNyBWgZgynitj5VjL3zsJwsd+4Uf8MFzh9t63NFjcpMtMT+uizU711YueP+vFO/PXn9Zs=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iMx8o-00072B-Aa; Tue, 22 Oct 2019 16:36:14 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id C47D82743259; Tue, 22 Oct 2019 17:36:13 +0100 (BST)
Date: Tue, 22 Oct 2019 17:36:13 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 05/46] ARM: pxa: split up mach/hardware.h
Message-ID: <20191022163613.GL5554@sirena.co.uk>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-5-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20191018154201.1276638-5-arnd@arndb.de>
X-Cookie: Whip it, whip it good!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_093622_606297_07C7AC52 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-usb@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Dominik Brodowski <linux@dominikbrodowski.net>, linux-mtd@lists.infradead.org,
 Pavel Machek <pavel@ucw.cz>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-clk@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-input@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>,
 Guenter Roeck <linux@roeck-us.net>, linux-watchdog@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-pm@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, linux-fbdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Daniel Mack <daniel@zonque.org>
Content-Type: multipart/mixed; boundary="===============7787147384672032500=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7787147384672032500==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cy9Nn4fUvYST66Pl"
Content-Disposition: inline


--cy9Nn4fUvYST66Pl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 18, 2019 at 05:41:20PM +0200, Arnd Bergmann wrote:
> The mach/hardware.h is included in lots of places, and it provides
> three different things on pxa:

Acked-by: Mark Brown <broonie@kernel.org>

--cy9Nn4fUvYST66Pl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2vL/wACgkQJNaLcl1U
h9A46Qf/bdiNYPmWVC2CHNC1L2OLkyJ66QpIcTPyD+TqK5kJogwOBaO1gXSF9Zzl
FrZ20C2apP/oPsDhXu0l5d3giQifXBNvev/89QnOX2UBhrtJV9qE4LHll1hjeyKZ
BEGejSMZnKNLyUDKEbrGg/LeAlDx8G1odI34QfZvmSJVBKinRssnwpnH7UNZhU9s
9SvLSPJjxoWD6gDsShV0vYuFkd6XQ68qOna4lj6KknkkAE9jIpQb+fFBVqYNKNgp
Ttp0KkT/l1DAlDx4lMDfWkr/8u3807G0HTJ6xYcjeyd7e40utLqPnFLeQpMS+RGb
96bq1ZoL9nd8PdzO8lOK09fB0kB8Mg==
=tCNh
-----END PGP SIGNATURE-----

--cy9Nn4fUvYST66Pl--


--===============7787147384672032500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7787147384672032500==--

