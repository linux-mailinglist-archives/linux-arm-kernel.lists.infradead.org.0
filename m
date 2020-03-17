Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45478188C52
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 18:41:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ScGVXaj/ZCh8j2Hry9KJ7s6rMbVqtid9+GFTuISEpZc=; b=OhQtpUUav0IPn/nBCzGyD5vn+
	/QHXCT9U7fMVyKJ69Yz4lKyZLVG+J4/dw/Wabumu1hfnRxBPVjG8kUJa/nyfaLAweHjL1J50bAFlp
	KkFD8v6C3MHmFK4fa1lX68kKgvKHS4g92NaWHgg6kbh3d/yShWayUgUVrNE8oeVSJVVhdLngvXwlL
	K0m0+2P4MVML5K+4rLdZMuAV5wigDOpMKADtQiJwTGzDKKbdQ/zddUFQb7V9sC+ZuTK68YhXFfhfW
	KmGSaJPROkkl/4QSUUtOtD6DCOnuS8qqSd6cQVuyu9v1iIHclv8zJdvy9ZAdR2JW/e6Rqd+4QGc8K
	7rky5n5oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEGD5-0005o2-QT; Tue, 17 Mar 2020 17:40:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEGCv-0005ls-Jf; Tue, 17 Mar 2020 17:40:50 +0000
Received: by mail-wr1-x444.google.com with SMTP id h6so6496330wrs.6;
 Tue, 17 Mar 2020 10:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rc0VhOzC+cfi+lRAZOsev4h8V+6Va+aJEr9E8LvZgKM=;
 b=YEGcuymmdA1koXtAzKhxXyAqsGbSjuSF9Gf/r5/tFJpfpAJtl554f4SPyWu4D9aPdV
 U1eo6YunSh38qtdiE2pmwVXCk7x/6E+LUHBUXpj/6NzaBoI3mk9tVxADAX71vbvYYtX7
 66RIYKj036o3dm0SH6DosZE7PZ/n2S2Y8m0QKysF21GALcCvi0vOh0Pf2hIoWCfXWwTb
 2Pik0pZnRjaB8asBt5THZVPIeBbuefcq/q9BC7MrSE4pI7jjJirG6cV4mUfz0eAXK2zr
 PLD9ZOrib1yfSqRJly+eqUh6JGh4Jo7XpIUo0HDdZNjOuWqMXbIYxkDmssiKhtFNCm9E
 dPEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rc0VhOzC+cfi+lRAZOsev4h8V+6Va+aJEr9E8LvZgKM=;
 b=PSaiqrm41BAm4WXs4/jhwTZNLUsRU67EmbzH+GhRyHN7X4Z0dUcvGA1MFFuxeGDq9d
 bIURDuFGtxeda29tTZaqd6yXmTGnwBjApMMrPrzqOVPNl/1/3Cadzub8s3xoAKf9B9lh
 DANJth7HjySC9Swes31DwAdChx6+h6BcPD1S3KYzgK3ue36m7X9b4UNKqceAgSwtdPAJ
 8fqCbXppondQuvUOmxGzdQQcy0pKpLMvH7rytwbaAy4XMU6GjTWpnwiiDSBl959/buv9
 bH/AH3sZ/v1qzX2gN/moRNh8+frDMyrMHxiFdsKTjYhbhW7ULXQuoJNsCosHsUXRUwvx
 ft7A==
X-Gm-Message-State: ANhLgQ1WwlduUS5Z7/zjQeYbmXNkrOadRCs+RxEDkN1oNyYAiVZ1b9Zq
 20NYhpsLnuuA3TBM++dNduQ=
X-Google-Smtp-Source: ADFU+vvJMLEildc7nNypq9mzxdWXUau/bFgKNV+o6iv6Bg9xgKaVE/V2kZVdo5OKLUcxi2q+rfgi8g==
X-Received: by 2002:a5d:69cc:: with SMTP id s12mr161953wrw.20.1584466845960;
 Tue, 17 Mar 2020 10:40:45 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id o4sm5467990wrp.84.2020.03.17.10.40.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 10:40:44 -0700 (PDT)
Date: Tue, 17 Mar 2020 18:40:43 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Subject: Re: [RFC PATCH 1/7] pwm: rename the PWM_POLARITY_INVERSED enum
Message-ID: <20200317174043.GA1464607@ulmo>
References: <20200317123231.2843297-1-oleksandr.suvorov@toradex.com>
 <20200317123231.2843297-2-oleksandr.suvorov@toradex.com>
MIME-Version: 1.0
In-Reply-To: <20200317123231.2843297-2-oleksandr.suvorov@toradex.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_104049_673444_1F52D069 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Heiko Stuebner <heiko@sntech.de>, linux-pwm@vger.kernel.org,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 Paul Cercueil <paul@crapouillou.net>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-riscv@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Kevin Hilman <khilman@baylibre.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-rockchip@lists.infradead.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 bcm-kernel-feedback-list@broadcom.com, NXP Linux Team <linux-imx@nxp.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 devicetree@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Paul Barker <pbarker@konsulko.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>, Scott Branden <sbranden@broadcom.com>,
 Tony Prisk <linux@prisktech.co.nz>, Palmer Dabbelt <palmer@dabbelt.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: multipart/mixed; boundary="===============3905890512354682593=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3905890512354682593==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sdtB3X0nJg68CQEu"
Content-Disposition: inline


--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 17, 2020 at 02:32:25PM +0200, Oleksandr Suvorov wrote:
> The polarity enum definition PWM_POLARITY_INVERSED is misspelled.
> Rename it to PWM_POLARITY_INVERTED.

It isn't misspelled. "inversed" is a synonym for "inverted". Both
spellings are correct.

And as you noted in the cover letter, there's a conflict between the
macro defined in dt-bindings/pwm/pwm.txt. If they end up being included
in the wrong order you'll get a compile error.

The enum was named this way on purpose to make it separate from the
definition for the DT bindings. Note that DT bindings are an ABI and can
never change, whereas the enum pwm_polarity is part of a Linux internal
API and doesn't have the same restrictions as an ABI.

As far as I'm concerned this is completely unnecessary churn that's
potentially going to come back and bite us, so I see no reason to accept
this.

Thierry

--sdtB3X0nJg68CQEu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl5xC5cACgkQ3SOs138+
s6Fzrg//W6eAtrfA02CGekiB6CchW1v901SEIXd0i/BUbGhUbBXgNAk0CdFr1oZF
oWh3FArEd2Ugq3qvpgf4UqWlO/2IptBucOUVSwQ5Imuc+eS/JKxC3lriUcpyI519
b5+MI+QPztSa8Nae3cVvDVd1zs+s5QE1J9TOJTINsayE0yxs2QDk7px+T2hP6S5y
fZmxD7DxmhzzTjY9pUb7B8Km/c+g3iLZ2dOrjizHPQ0D6gjni2sAljxJXKBkExBG
nSSO7pOuxA1Koi0/lKAQGtxKl1QbfH5aerdiSj8wi74C4DXTG/yHIU0x4YKpbu1d
C0nSwCafh3P/dIz0ja7iv+8y02HB43gdu9tyA6dlVzIs7UAS/upZfwtLCI49zdOL
Qq28oqgpytPujRWyFSdT7EisrlmqA4TlG6jvndwdhKiurjM98oNob5FiUYz/QebP
cX0mZQFNM8UJjzhu51wkfu3NwtdIBXMWv+EhD8Kh7Ash60aI7LE2HltEC5Y/KqiW
uprdNVNa09YyyZLgE0W1rDU4rsdPw+yxp/XR/vzPWR4eivXlrbPtkBxcZcZfHAmj
Yg13OeYRbxUgR1Jx4vGYyRgV2wSNSyDcwqZ0vU0Z8C4C3qLFNqQPllTPonTSdcnX
gQU9NZOlpo00W4TwrlO7I+3Ww9qNIvnHhMwcaOQGIca6+ZVYyfQ=
=EuQk
-----END PGP SIGNATURE-----

--sdtB3X0nJg68CQEu--


--===============3905890512354682593==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3905890512354682593==--

