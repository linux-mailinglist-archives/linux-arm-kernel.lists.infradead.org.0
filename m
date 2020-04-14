Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 773771A7FED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 16:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T/2PL5gtTJ5kIKsJneK2I+K/4UpP+pK4lATxp6EJEOo=; b=W8myZHeUTjGAXtTJES0IGTq5u
	yXxV0PFYEnSMx/L8mT4VsnofKVBm7qbn2Mhq+1kDKMelvnS1GDgbWiV1s+3Id0BVNXbcvX/O5/Qoj
	8Ky/WMOs8Ic84HYAy7q+flmV/wAQVnREiAYBRDiQmWte4i8TZbQa+tTy3XBrxnebGDvcEOI0Otj4c
	5oOldyTiPmGtiLVnJ5L31NyG3STt6/0MN2RDx/IX44AHumBZhVG4oJ06C2YQAeW4UUuzkEb12SLBK
	9x7G33QeGITmWey3jGgLQybu0F6D2T+IYMJJdBvkXQeePig58Wu0V3foouMYgFoLR5i/Rmi41yf+R
	jb7bB/zMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMgZ-00051b-0D; Tue, 14 Apr 2020 14:37:11 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMgQ-00050h-Ox
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 14:37:04 +0000
Received: by mail-wm1-x342.google.com with SMTP id r26so14263105wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 07:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KA4DIsropTxxePLrlrvPba68I+rBV9yWm4kCLt//0G8=;
 b=GwPLG9BhM6Xv1cIvRlRS/kLL1JSrcTOAnlRT73NoQiu4DKr3+DE3yjbAr9/gQJ/Pzp
 kHM3cwi0ZQaKX2uAMqWAkvOnw6y4dapC9GbfV2EzQ4m9zbcT70a1Y44VteFpb4RvxmVF
 ngkPwZ+eKgaIjYggCjVoIhtcyFeN6y1S+38DnJ6vVpiVTJ+SG3mtf5umYDdSPV+mxYjy
 ygGvoKQ2SCULOGGCaW7UmuUWCaD/SyCM85SvQKxRwuD2BnP5V5lywjhw/rQjRO+E9rnX
 snOIZJ3kXuONHaC3uM+iv3QR9ossS67ixMiiUW18MIhF3uFPbCsxYXLSQ7L7/prmZZ09
 4zxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KA4DIsropTxxePLrlrvPba68I+rBV9yWm4kCLt//0G8=;
 b=CoN2iElVq4vZ1rD4BSU/ARDdwi0yfPr1vEfNa42fIqTqUw2AH207c+8Roa64G8G2z2
 wiiTu9nh02sDZ7GbTSnnlUBueo6enjIgDWnovJFgblXEjVIaFXDxS5WWCusrp6h/P5sk
 SQvWr7hUBHsvkqy6JRIzhkxGrkVxoz+ahy6nGPpt33Pnp135U3II9JYE3rmn7/fzzJ7+
 wacraFno+gkljmnbQ5Vpg+N65R20eesE3HR6jaMfGbjL/on+ZtxJRwiCb7G51C/PgxGo
 hpEfeLHEbRzeogtoSZtBxE5gt1NlxD4aRIjM5W2ok/RGidRpgLp72vn5KkKnR0qtQNxY
 WLgg==
X-Gm-Message-State: AGi0PuZR47p5zqSrtE2l/t4OdIPIgn1pytiQw+QijcjAM4gi5keTDJH7
 YkVl75UOdZJumlAlRe97FTE=
X-Google-Smtp-Source: APiQypIApqddZ8ciqzIvMTEdxD09J053jicytMvQKVner9xgHA7T1aScQ5k5I2qvUQWkROkiqs1NkQ==
X-Received: by 2002:a7b:c84f:: with SMTP id c15mr170558wml.166.1586875020975; 
 Tue, 14 Apr 2020 07:37:00 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id h10sm21602190wrq.33.2020.04.14.07.36.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 07:36:59 -0700 (PDT)
Date: Tue, 14 Apr 2020 16:36:58 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v6 07/14] clk: tegra: Implement Tegra210 EMC clock
Message-ID: <20200414143658.GH3593749@ulmo>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-8-thierry.reding@gmail.com>
 <0e040cf9-56cf-dd44-3523-ff4c82fb1f2c@gmail.com>
MIME-Version: 1.0
In-Reply-To: <0e040cf9-56cf-dd44-3523-ff4c82fb1f2c@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_073702_808653_CCA3D11E 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Content-Type: multipart/mixed; boundary="===============2777463107199963060=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2777463107199963060==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LiQwW4YX+w4axhAx"
Content-Disposition: inline


--LiQwW4YX+w4axhAx
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 10, 2020 at 11:49:18PM +0300, Dmitry Osipenko wrote:
> 09.04.2020 20:52, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> ...
> > +int tegra210_clk_emc_attach(struct clk *clk,
> > +			    struct tegra210_clk_emc_provider *provider)
> > +{
> > +	struct clk_hw *hw =3D __clk_get_hw(clk);
> > +	struct tegra210_clk_emc *emc =3D to_tegra210_clk_emc(hw);
> > +	struct device *dev =3D provider->dev;
> > +	unsigned int i;
> > +	int err;
> > +
> > +	if (!try_module_get(provider->owner))
> > +		return -ENODEV;
>=20
> Is the EMC driver module bumping its own refcount by itself?

Hm... this doesn't really look useful in retrospect. Yes, the EMC is
effectively grabbing a reference to itself.

> In the other patch I already suggested that the EMC module should be
> disallowed to be unloaded once it has been loaded, seems you're already
> doing it. Correct?

Interestingly, it all seems to work fine if I unload the module at
runtime, not sure why I'm not prevented from unloading the module.

Thierry

--LiQwW4YX+w4axhAx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6VyooACgkQ3SOs138+
s6F8fRAAltMFYycla8aI7eycjfxbMe6paTuQsQQyz+jPcJ+aDCABF8qrJ/fRjvBA
AmzsAdBfdqmyB/Rc3h/y6yVkwn1HxakFOpPl18se88ca4dHLmjkzbFEq0Cf1zAjX
EHzbheMPL4wN5EXukjpRedTg0u4TxaxpFq5YxtXqsy1JJvHrWeDszygAJTrhQi96
ly9ouXCvOtJvYnAM+6Cbu8T13m5MYYPmFTEeyx7v9ca5Lb/eYFzpDFjjY2cpfI+a
1T+Z/bT/c2ELi2n26IuPggymoXoMjDKJZVB7P8HMPAERzU7904qEhG3xIPQl/Gds
lJkKAinQBWzmSUe158uzOhzWrWA+rLgB77kBU01NRt8IhaF3sLjPO+08lAfR9+8J
ccFcoT8GDLE/PMipQMMWwm/kzwuTF+qTAFZDVxJgTiVyu4H7whWiCiHCEMx5KKI/
gpP9ps9jIjhWXlMgC4pnmdB8XFUzlyjYXnRhy/wYso3OZwDGqpc75TKC1sI3MUfC
pS3OaFbyw73VaVgR+EZnTcyW/skXB1dOpOw/ur2npBx2Yh5gycNpxL3JrfSWXyDj
V5J/how06Ci2WbIVB0wjJB7/qAafLD7OVViRC54JH48yUmtRwlF1ZF6D5dgMRU60
ffrfvRHDBhncixdMOW6dsbo+1tFjHbZA2wmCS1Ock8kqjFvYXiM=
=UIdh
-----END PGP SIGNATURE-----

--LiQwW4YX+w4axhAx--


--===============2777463107199963060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2777463107199963060==--

