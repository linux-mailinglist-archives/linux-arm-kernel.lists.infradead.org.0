Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 242061A8021
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 16:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o0+jXvGiFdT60Ty3fFQr5EDAEtw6ZRJJj1r1yzsBNyk=; b=dYwdrCXAzVp61aW1sAJWwM7QH
	nXOEQGB+Us7zGk4G2U+oNcs5iDEvNacPRBTQy82mCUGGb1NXFlkDFrVBCU/TrIG8PKwTujLCxwrIy
	YjBzDgGvbQDUG6cBTEcd7pUssfILPpbYfvAJkCDe+tSCY2VQU6sJMGfeDMXjvGokJX51aPazx0sLR
	BwBSqvPEtPWzyPVbDiYXUo8wX207aJCqjdU+pUF6iQm9Kv7bcEvfbolf+77UIyE0V0jkHaaZ36s5m
	dOziZsnmbJU6HFVayQrKe8wz51EdnmHKtG4VaLk1hVMJrobwB4B97tWFlJp14kHAAICu72lKaOBjC
	/e0mNOvBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMok-0002pE-VY; Tue, 14 Apr 2020 14:45:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMob-0002oY-Sr
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 14:45:31 +0000
Received: by mail-wm1-x341.google.com with SMTP id r26so14299966wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 07:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=S5LW6D/JcvIQbts8mNWNWJg+lFlcHdJhPjdhCsJJX+o=;
 b=dH1SVmnbLSEtE5Nag8z/s8FzhNR23uclW3TSHMu8V+do40TBTY1Z8sGsJUANArQbG3
 2V334Fe5n+zCW5Hq023W8cud2/enlRi6ZvMDhwNm96BF4r2uKn1N2DnHO8pa/cjI834n
 2WIZeqtYuv8pjKHOsYXEk3KH+SCw+2VshFn3QDBtcLuH4IBK6v+9UfvUbY8WE3hZxIzN
 dIGBwP5hMJbHBT4xwplhv25+Aqwlse4IT8/+lDPi4td0xIVZb2vt7C16AV9n0Igl2I9O
 Vxwbyw/uRWet/5A9UDnFutVGGet1EIvbShUHBOXlRzk2+pluD27vgscnwFfbnMZwIqeW
 iJIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=S5LW6D/JcvIQbts8mNWNWJg+lFlcHdJhPjdhCsJJX+o=;
 b=scZpsuBzVA026ePr4xviGQQjvHeBNYqklugEY2/ZDyX2oQGGVqUOkzZZJ24eMwrPIX
 fBB3KzQnyXIX74hcdquZzAOjssvDcA78KOqUX/vwsUV27scyp1zSQ/lI5J3ZWsV4On+A
 WoLYX+LHVR6SVYVcSLft8sFP+//SOHIrM4ajvg1p3whDLnc2HbyS2D7sJJnC8vfcZltq
 iQXJ0v74qkl6SKNVxvQP5p8BKMYYMNPsbCbB9Xw57WT448rSw+UJue9isJ0AdIu1z9IM
 OoRfh/+GIbtNCN56VDj+YGbHflxrlmS9feUwJ/Hq7Rm/OzYdoNaEFubcOctlpVG59CoC
 VTaw==
X-Gm-Message-State: AGi0PuZX9DjYEleT9h2yIIbjdSo0NepXY8Vc68Fhk0wPdubF6PtMOi9M
 +nNY1zQjiV4t2QiNiYgBEA0=
X-Google-Smtp-Source: APiQypJydRRmPqeZPePM/ORVt+TFEv+iAXAOLY9ehjv1P9T718jiOAQJnqvWZKHsT/FYkPvGrPKKsQ==
X-Received: by 2002:a05:600c:2341:: with SMTP id
 1mr175764wmq.153.1586875527952; 
 Tue, 14 Apr 2020 07:45:27 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id f79sm18139610wme.32.2020.04.14.07.45.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 07:45:26 -0700 (PDT)
Date: Tue, 14 Apr 2020 16:45:25 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
Message-ID: <20200414144525.GI3593749@ulmo>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
 <7b2f8a7c-94f1-08d0-b0ce-c61f4eb0a436@gmail.com>
MIME-Version: 1.0
In-Reply-To: <7b2f8a7c-94f1-08d0-b0ce-c61f4eb0a436@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_074529_957393_34B53CE6 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Content-Type: multipart/mixed; boundary="===============1550549066479096905=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1550549066479096905==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VaKJWhUROU/xPxjb"
Content-Disposition: inline


--VaKJWhUROU/xPxjb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 09, 2020 at 10:00:13PM +0300, Dmitry Osipenko wrote:
> 09.04.2020 20:52, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> ...
> > +static void tegra210_emc_debugfs_init(struct tegra210_emc *emc)
> > +{
> > +	struct device *dev =3D emc->dev;
> > +	unsigned int i;
> > +	int err;
> > +
> > +	emc->debugfs.min_rate =3D ULONG_MAX;
> > +	emc->debugfs.max_rate =3D 0;
> > +
> > +	for (i =3D 0; i < emc->num_timings; i++) {
> > +		if (emc->timings[i].rate * 1000UL < emc->debugfs.min_rate)
> > +			emc->debugfs.min_rate =3D emc->timings[i].rate * 1000UL;
> > +
> > +		if (emc->timings[i].rate * 1000UL > emc->debugfs.max_rate)
> > +			emc->debugfs.max_rate =3D emc->timings[i].rate * 1000UL;
> > +	}
> > +
> > +	if (!emc->num_timings) {
> > +		emc->debugfs.min_rate =3D clk_get_rate(emc->clk);
> > +		emc->debugfs.max_rate =3D emc->debugfs.min_rate;
> > +	}
> > +
> > +	err =3D clk_set_rate_range(emc->clk, emc->debugfs.min_rate,
> > +				 emc->debugfs.max_rate);
> > +	if (err < 0) {
> > +		dev_err(dev, "failed to set rate range [%lu-%lu] for %pC\n",
> > +			emc->debugfs.min_rate, emc->debugfs.max_rate,
> > +			emc->clk);
> > +		return;
> > +	}
> > +
> > +	emc->debugfs.root =3D debugfs_create_dir("emc", NULL);
> > +	if (!emc->debugfs.root) {
> > +		dev_err(dev, "failed to create debugfs directory\n");
> > +		return;
> > +	}
> > +
> > +	debugfs_create_file("available_rates", S_IRUGO, emc->debugfs.root, em=
c,
> > +			    &tegra210_emc_debug_available_rates_fops);
> > +	debugfs_create_file("min_rate", S_IRUGO | S_IWUSR, emc->debugfs.root,
> > +			    emc, &tegra210_emc_debug_min_rate_fops);
> > +	debugfs_create_file("max_rate", S_IRUGO | S_IWUSR, emc->debugfs.root,
> > +			    emc, &tegra210_emc_debug_max_rate_fops);
>=20
> I assume you used the checkpatch before sending the patches, no?

I have a pre-commit hook that runs checkpatch, but for some reason it
was disabled. Fixed these to be numeric now.

> I sent out a patch recently to make the permissions readable, please
> take a look if you haven't seen it yet.
>=20
> https://patchwork.ozlabs.org/patch/1254301/

I've applied this now.

Thierry

--VaKJWhUROU/xPxjb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6VzIUACgkQ3SOs138+
s6FpRRAAk0TEKZBPjG+SsTHg1xIN9BMOUI9LqXdMGnagdaP0yEi/mTRNkmrsImxZ
awLe6BQXHKI9FGW/mrjyB1d3Ly+FQSerx04N5iwg6imigOmaTXRyuy4gXuEH6+D1
R4U84Jnx74lntZsS3aqcg/P1gNborKoirVl1xkcvn/mJ4K+BhFBq3NqbgyKJ7xGa
51izgm0mPVSldljky86GBwHfYiyirLXF4K6+Qg3Is1m40p01z3jhrUGYXtnD0cOr
29VnWLSpJs+Qrzs0Fy9Q66C3h5f+ZeshjDCdQJorVDbaiXp8+7YIUW1LPCZcwUrI
tCBxKuzyi7KpFpZmno/li8nOEv+ByqEcg3fF0SrDton95JKMuK/WplZJsVisQ/lN
8SQePeIzU005hN5GwnPfoQVMqLsMqans4M0lh+qRtdzqX4JlH1aBjHsG6UHPcwQb
7ePg54J49LruLhrDaipx5YMZ+zfRuidiat4l5lxvtgxoKImx2iKXRS+w0X1kNVX5
byOLywrBi5wNbAz5G4nsCwA67f3JuB+M5m6VA48MoY3NANz4AdRtE3gcsmmgK2Ac
rM+asAhZyI3p+b1iQujqDdRBE5FvOBFEkS3CwZzZ5kl+wdFTdWPXVDwGYbCKS7NR
bH9mSiKbX48G/8pq6m4xFteYGr91cstkAwv1o7Km4Pe1vsOZN54=
=WHMF
-----END PGP SIGNATURE-----

--VaKJWhUROU/xPxjb--


--===============1550549066479096905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1550549066479096905==--

