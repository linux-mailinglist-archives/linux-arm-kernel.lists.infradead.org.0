Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6DF2293B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 23:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kXiEVVT3G5ASDwYTbJgRWmyJmqzOftZ4ILI+SNOGdaA=; b=PmedvLls0IgYyBsBdD3IXJAQF
	jk/QrLH/no9IERA70W2so23yNV6k9cX2hm1vCC3W1mfGolkcou0aULFDyEyY5VqSumxYylSf9ZPCy
	dVL0Z/gjmBaJV6juje+vlutyhOp8ISgtbA+4uxQ8QY6bYc58ct3I6iSt0d9iQkriACDsUv9xyBpr8
	kyzYRW9SdVf8xMR/gsbYFnS6sBPZo3cfFIa0AY75W22QawVyL7qiOgB6uv9r33PMU/QYuEGeDp6x6
	kRrA5NemSgkqEWztTna35yFLA3ctn27rV+pNqWetwK/mOby8xXQTGbiXWX461yh5MCqrRUkQXyQ1e
	6swaKmoJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSTSY-0004YU-6J; Sun, 19 May 2019 21:35:10 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSTSM-0004Km-Uk
 for linux-arm-kernel@lists.infradead.org; Sun, 19 May 2019 21:35:01 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id A5A4180378; Sun, 19 May 2019 23:34:47 +0200 (CEST)
Date: Sun, 19 May 2019 23:34:57 +0200
From: Pavel Machek <pavel@denx.de>
To: Ran Wang <ran.wang_1@nxp.com>
Subject: Re: [PATCH V2 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
Message-ID: <20190519213457.GG31403@amd>
References: <20190517033946.30763-1-ran.wang_1@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20190517033946.30763-1-ran.wang_1@nxp.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_143459_140014_54A68AAF 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Len Brown <len.brown@intel.com>,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pm@vger.kernel.org, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9123859428593422116=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9123859428593422116==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="sLx0z+5FKKtIVDwd"
Content-Disposition: inline


--sLx0z+5FKKtIVDwd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> --- a/include/linux/pm_wakeup.h

> @@ -70,6 +71,7 @@ struct wakeup_source {
>  	unsigned long		wakeup_count;
>  	bool			active:1;
>  	bool			autosleep_enabled:1;
> +	struct device	*attached_dev;
>  };
> =20
>  #ifdef CONFIG_PM_SLEEP

You might want to format this similary to the rest...
									Pavel

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--sLx0z+5FKKtIVDwd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzhzAEACgkQMOfwapXb+vJFYwCfWepB4p66NbXEV3e8W5ZictQ/
Es8AmgKZXmLs30UjIBYDFKic2DbgBegF
=KZ5b
-----END PGP SIGNATURE-----

--sLx0z+5FKKtIVDwd--


--===============9123859428593422116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9123859428593422116==--

