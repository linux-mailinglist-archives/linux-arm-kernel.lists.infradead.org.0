Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D961A8591
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8jd991z+U4s5oNyaXk6whUFBka2km+xN+mQPGgKfRwc=; b=ky+7fsuoK9B3cvopUKsTTjZtJ
	J2t/tXZKcOWbuYGF6j0poPJSQFg2Uw9rfovpaAIPjqQcHf06wxjl2BX49uBw0oYfUmZnIv9QKUjKZ
	ywKfYNVVDfw7PLKAc5dKlC2DAJV8Z50TOzKvha6+lAUNIImn+KQLkoL1+dR/+sUiJ1hWW3Bv/PmbM
	DKOWdJrJ0N+kE/PyR4UInRccHJZbSAy2w44X5I2Nje+eVRn1lky7k1v6bX3pgcX5QxvLjZE/ei1bt
	rciD96IKhHS3ToABqllqXOWSiDoc53HfuAV8JuVeb/EfvH/K8qLuAj2Y0VlDE8s9qE+EDpaMOAdOM
	eoQD9pe/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOjY-0006ea-1W; Tue, 14 Apr 2020 16:48:24 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOjN-0006cN-1q
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 16:48:18 +0000
Received: by mail-wm1-x343.google.com with SMTP id a81so14804117wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 09:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HmHndUdYmjfvwN8+szi9UffSkAWgcwK4XPxePVLmE5E=;
 b=cIGVfYNJIFIXzopt97czJ66YgjE7dsheWI+C8GytAm+zVbtjEemAcHk6ZdRb3V0lBT
 4OMKcSxnkWHVz5e1UM6cU6JX9VvgoWh+pPwkfoMk2fgsbppO7XIh8ktS07sUAvoK0y/N
 u5Ah1U9mChTMnpuuq9YNzWsfq777eO/6OjnNXuC9l18Vg+UQz7oPfnRBlSbdz9GUt6Wi
 H6LH2heqSjvmXdyAiOmSd1lBl9DksddEfLSEy36kBKxUh2Ap0qxfRD4a7iuIieFcGEt+
 BKY1Sj1w06gi4tptdCVbhEpu8alEO8/29tUz1srETZFJ64nRodbntvMjK6vYlm3eJH8e
 2YSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HmHndUdYmjfvwN8+szi9UffSkAWgcwK4XPxePVLmE5E=;
 b=VqPQ4K4VUZI9kSeBRcA8YYxO3oYhdfoaHCz1Lr7KlINJonhclyD0PtIrK/kDALDMRN
 ImavhHA/ZnZDY7ZvD1vnQQChP1zVrgLXjLPg4UQPpUjPQmiX9esdPQz4+S9sp3VeBEOm
 EvHx2qDme94YOeaMEYPg2CR13iB9BtcAqG0pJPNnaXI95KMHPYAYUhVIy0gWIBQe8Ksl
 GNmw9U4uyX6of4K08qRWx9foJKdgnq0Bkl+aWQRwWixecF5c6NDseSKzjpSEfUy5kqnV
 O1cxYL+3QUW54CtZmUEbdEfsZ1h79nYAOV+KelWUmvMDB8hdZBKCAjY1Y6ZSF3J9JDF/
 zXMA==
X-Gm-Message-State: AGi0PuYpNStkjXlKFgOlIhGq8FmBeSfw99NJl7PHdWrbR6/uBQ4jsbue
 eoiVI7rYL7M9iecrMgHkQxM=
X-Google-Smtp-Source: APiQypIHuIKA92yozOH6Ncxbv9kbJEehQ9zh8Wp/4dmg7gSGA4CMpUjWByNqYERfgv9OqDb3Yh3TEw==
X-Received: by 2002:a7b:c010:: with SMTP id c16mr776352wmb.73.1586882890736;
 Tue, 14 Apr 2020 09:48:10 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id o13sm20192640wrm.74.2020.04.14.09.48.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 09:48:09 -0700 (PDT)
Date: Tue, 14 Apr 2020 18:48:08 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v6 11/14] memory: tegra: Support derated timings on
 Tegra210
Message-ID: <20200414164808.GA15932@ulmo>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-12-thierry.reding@gmail.com>
 <543bfc3b-2bb9-01d3-62da-89d1f0b18a5b@gmail.com>
MIME-Version: 1.0
In-Reply-To: <543bfc3b-2bb9-01d3-62da-89d1f0b18a5b@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_094813_116910_739B8B3D 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Rob Herring <robh+dt@kernel.org>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1435441755487246286=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1435441755487246286==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sm4nu43k4a2Rpi4c"
Content-Disposition: inline


--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 14, 2020 at 07:40:55PM +0300, Dmitry Osipenko wrote:
> 09.04.2020 20:52, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > -	/* EMC training timer */
>=20
> Guess this comment isn't really needed from the start, or should it be ke=
pt?

Nope, I'll remove it since the code is already pretty explicit.

Thierry

--sm4nu43k4a2Rpi4c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6V6UYACgkQ3SOs138+
s6FQnRAAwJoMauB0YUdSUVh1pXLf4jHxluqKui/zk3P9bXAk7mLipovO5mcIkkHM
lYPBh/nhQGROQJVqOuf3JBG13bkJvK8DwONh/k6n/GFo6tR8wCid4UX4IEiErdR+
sM/977LWhcid/wgZPtLv4vT2+M3pY3ZdqDOYIVf9ZHxD8DkLIIOKZ5IavNCfD/GF
xA1qhkmrlAiuV3GGP5mFDeq+bYml1ZVfxV2eSFq4fIFWzCcK18AQjzdweOkRLG5t
H3AoaiIVk9D5SnuH1zy/fsWHc0kMhhEE5iSsTL/uUM2Rm8687u9kCzjz0lxEz2Z6
1zOIuQM5rExo+C5IXR+Z7AvVIl3uR+NxJD98JstB6NPK7jPTG7F7PX1gdXVx2VGg
3N/9o7x17N8Ns3mM8enK2YrP605ExK8zvAlJaAbWJDzoeLoQDFsmvSmIKk8Tl5VF
0p+lFEK/T8yIlXwd4xn4pOHmmZX4+dqJP/7v0O2egfcMBRUB48BeCPDv1H0/Lice
taivRgUpG8GZv2VwGNywnXYhpAnvOTOmIxqcFFB8Nqp0abTwoSrYqZ1Nd3dukNHj
7QrRkysO6p2cEA/ZZK7YAuFK3AVk1gSYLJy3hI9LM6rNWe/6jr1H1WY4SteIxvtU
lVkvtwMHwkxbpwrLWoLHRUI+ibmblRdWJjf+1R7Kw7auKbngZEY=
=EqDC
-----END PGP SIGNATURE-----

--sm4nu43k4a2Rpi4c--


--===============1435441755487246286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1435441755487246286==--

