Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7109B41A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 19:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KZtVfoCeJo3AsLimwdNFrBlakgI43hAxxS8xqPAEiPI=; b=RxSaPyVlcrvmY5XMBgkTpVh3X
	H15Ldwu8ANBXr0UdUNN59xC3z2pbJxEKVmcmqGUmZxrRwn32IKvA1faKcz4HRmo+jLDz0GSvdMxuI
	gDIE4RBcuiwpKXY3SbZfQE54G9EsFbjvB1BvedtTHZ1ZWrKfXX6zuS/i22hdVeY90gzutynubTs7Y
	KnuRE1gUlY+8YcOSxzUivFujQtCG2fjryLaCcSP9Ul1JkGf33csShugaGd3NYFDLzIzXPvx8GcI4B
	3/yF6hPyIr8qc4DjDAgPYUodN/8bPwuwi6L/jRiViRWJ8lcjawqhs77POEWFIffN4j47kteEB4Wv6
	/rtf+8aig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKR69-00088R-Pf; Sat, 27 Apr 2019 17:26:49 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKR61-00087R-Qe
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 17:26:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a3tmI0KUyLppW1kwBwL7lvA+SJm0kVYzuouVBoWkDwk=; b=tJcvGeRygaFThXfFvSb4czEha
 Q5l0BBPMyQjbuhkvhGj+D9qIDc+mqjrUmNh/2f1KkzZeznjETqI6tRGFOuLYdbX4u0UmWO5/aM/bL
 QKfDzTQ4ngEZdrqg0jSElj1AgoBqipYR5vhUgvD49iINDsZgUcMSjJzurhnVuy25KuTl0=;
Received: from [211.55.52.15] (helo=finisterre.ee.mobilebroadband)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hKR5G-0004ci-TI; Sat, 27 Apr 2019 17:25:55 +0000
Received: by finisterre.ee.mobilebroadband (Postfix, from userid 1000)
 id 48FE5441D3B; Sat, 27 Apr 2019 18:25:51 +0100 (BST)
Date: Sun, 28 Apr 2019 02:25:51 +0900
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH v2 25/79] docs: convert docs to ReST and rename to *.rst
Message-ID: <20190427172551.GI14916@sirena.org.uk>
Mail-Followup-To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Sebastian Reichel <sre@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Len Brown <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>,
 Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Harry Wei <harryxiyou@gmail.com>,
 Alex Shi <alex.shi@linux.alibaba.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>, linux-pm@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org
References: <cover.1555938375.git.mchehab+samsung@kernel.org>
 <7adf9035ae06ecc6c7e46b51cb677f0a8f61d19a.1555938376.git.mchehab+samsung@kernel.org>
 <20190425180758.GC23183@sirena.org.uk>
 <20190426064609.7f00e013@coco.lan>
MIME-Version: 1.0
In-Reply-To: <20190426064609.7f00e013@coco.lan>
X-Cookie: -- I have seen the FUN --
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_102642_015692_5CCF25B4 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Nishanth Menon <nm@ti.com>, linux-wireless@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, Viresh Kumar <viresh.kumar@linaro.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Harry Wei <harryxiyou@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 "H. Peter Anvin" <hpa@zytor.com>, Alex Shi <alex.shi@linux.alibaba.com>,
 Jonathan Corbet <corbet@lwn.net>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, linux-pci@vger.kernel.org,
 Len Brown <len.brown@intel.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Borislav Petkov <bp@alien8.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-pm@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sebastian Reichel <sre@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============6780451426936811931=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6780451426936811931==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WR+jf/RUebEcofwt"
Content-Disposition: inline


--WR+jf/RUebEcofwt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 26, 2019 at 06:46:09AM -0300, Mauro Carvalho Chehab wrote:
> Mark Brown <broonie@kernel.org> escreveu:

> > This is massively CCed covering a large range of subsystems and is patch
> > 25 of a 79 patch series so I've no context for what's going on here or
> > why... =20

> You can see more details at patch 00/79:
> 	https://lore.kernel.org/lkml/20190422115110.26443b44@coco.lan/

OK, it would've helped to CC people on that.  Anyway

Acked-by: Mark Brown <broonie@kernel.org>

--WR+jf/RUebEcofwt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzEkJ4ACgkQJNaLcl1U
h9CLPQf/egnMPfy5Djt33xwT726spS5SVTG7kuJqe4sKQ3OXBoMa44iGLw9gz/+M
FmO/XFmO150AIxC3d1OJKSoimebzY1IPIiJFOOQC7SJDtKoOMVm4MTP5w+B8jdvC
o51B7dkua7q/hKAbj78Q023V/jvpOU+353/om9x82lB7jvoxnN+pGEcEDqQEBtk6
dSbAla2qU+BoMPdyoOGiCu9mjLpTSGWbU+lz4IKiIQHK5zWx9xFrBCgB1zyjoDEm
H69kzCVDwYkkiaGriSEV5ksQThpov8Ka2zvrJPZ8HOTaX4GSW3W2Ailr6FJ8cLbo
mPFwHR0sNRuPgcZtXvdaivvevBYKMw==
=wBS3
-----END PGP SIGNATURE-----

--WR+jf/RUebEcofwt--


--===============6780451426936811931==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6780451426936811931==--

