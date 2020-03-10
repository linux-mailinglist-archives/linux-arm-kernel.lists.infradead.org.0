Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3F5180458
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:06:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N44ROYLYNZyHHCotFD2775ybcOLiOnXKwWj3N0KBkQo=; b=RnpVPT/2j2WNZttTuHF21BleF
	BnHLfXDexJM2nB9B5Qvb5DxY3BPLT+ST4WFfhVqleSRBebcy1bOqLRICi7d/4Ubey/liCmJ55dmI/
	GKXVhJaSdcVoIBOMDbLs2KKH9motIgpt3ucC56aHLvqvIWdEhdSFDwcVEa5DyjBlo0N/ilHn+l3OJ
	gZCyk/AaYVbN0KMwNJh1efG1Ty0nuzDQFMJUvh4OsAKtXwpLWPeKk/inBPDxUfDYW7t0Fvut9FoXv
	LH3qk4S94Y4Kd7Ur9junf7O5Em4KgtKGCCfhi9+piRzHOqekE7wAI0ZQ34pHrupkfgzhw4B3OJXKI
	8v07wLnjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiKx-00073L-OS; Tue, 10 Mar 2020 17:06:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiKo-00072v-QB
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:06:28 +0000
Received: by mail-wr1-x441.google.com with SMTP id v11so16836066wrm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 10:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XrGRKIT36erQNGi90+/pLC99u3bWc1O21GG8hCOkNRE=;
 b=Yada3ftEE8092Q/Iq3Od7CZNxgDKFJnhOarNP27TG1WVDy8KOdU8r2+jts0mtjT85D
 i4XhuAD7EBj/6w8DtUBahPLCgjSPVbs9YKyPQv+LdLVF9bPNDbvmVOhz3nflUiPPwGqM
 yDl/Xsp65Bi06576qVsZu9OOM6hhlu5dEwzDV4RavFqpsCOr2s886xnmNnID8tv/Cl7Q
 8PgjglWXRu+Ca9BFwKdRe2WMurY3quL4OoRjgbNwchfH6Uohp+0RiGtLjhDyDV30jB0A
 wlMuagEd48v1UhhFnfbO6OSWJ0dOUY3xF+l2/xKEMiScMqvlfUVsMnGmqqC0rTkjlq4S
 cYkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XrGRKIT36erQNGi90+/pLC99u3bWc1O21GG8hCOkNRE=;
 b=eoE20jVoBdDvfsJToZZJFS/SfmK1n6YlqSF5I2ezFeOhHgOaEPbe2HE3Tx9CyfnpXd
 kj6tQ2GAcND95bfVerE78d4VYYlbW2/iEWO09WtaObXhLv3HGp1NCrntZTjepnutwiAL
 9tq6h4bIx8F6RGDCc+FpTJBNCLHfM5kKXBqhab4KLHkOe0aJAFzkSXZrn5nPQOoUEkC5
 cCETw/6ASBprsgSdzd9NS1CUcRhB9iUGZfoldwL0/QAcOmmtMT5hVCuugLLFnVpPOzFA
 Nmu/IzQAzMW9dF8zf/EMB+dqSrOU77YNVFgq9qs1AoeCaxvHiCv9mOZoEzgf3jGUkKaV
 caZQ==
X-Gm-Message-State: ANhLgQ28WayvCkw3aKsyNsMOjuFDuh8Mteq0txvm1UwiFx//jbGyaXml
 nqrILTxg86tTYgueqZUSQEOvqezE
X-Google-Smtp-Source: ADFU+vtKX71Iaq0ZvODPt8uubjEReGxoUwFjE6wgsU7zyGOLz4NnXKO+RjMXHD0yGlA1A8JZDboy2w==
X-Received: by 2002:a5d:522f:: with SMTP id i15mr17949131wra.231.1583859985628; 
 Tue, 10 Mar 2020 10:06:25 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id d18sm4073319wrq.22.2020.03.10.10.06.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 10:06:24 -0700 (PDT)
Date: Tue, 10 Mar 2020 18:06:23 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v5 2/8] clk: tegra: Export functions for EMC clock scaling
Message-ID: <20200310170623.GB3079591@ulmo>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-3-thierry.reding@gmail.com>
 <8e1f11e9-a95a-500f-ff44-6f44ad990863@gmail.com>
MIME-Version: 1.0
In-Reply-To: <8e1f11e9-a95a-500f-ff44-6f44ad990863@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_100626_853633_02E175B8 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3226590634965855356=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3226590634965855356==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="DBIVS5p969aUjpLe"
Content-Disposition: inline


--DBIVS5p969aUjpLe
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 10, 2020 at 07:13:25PM +0300, Dmitry Osipenko wrote:
> 10.03.2020 18:19, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > From: Joseph Lo <josephl@nvidia.com>
> >=20
> > Export functions to allow accessing the CAR register required by EMC
> > clock scaling. These functions will be used to access the CAR register
> > as part of the scaling sequence.
> >=20
> > Signed-off-by: Joseph Lo <josephl@nvidia.com>
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> > Changes in v5:
> > - remove tegra210_clk_emc_update_setting() which is no longer needed
> >=20
> ...
> > +EXPORT_SYMBOL_GPL(tegra210_clk_emc_update_setting);
> ...
> > +extern void tegra210_clk_emc_dll_enable(bool flag);
> > +extern void tegra210_clk_emc_dll_update_setting(u32 emc_dll_src_value);
> > +extern void tegra210_clk_emc_update_setting(u32 emc_src_value);
>=20
> Why these exports are needed given that the EMC driver is built-in?

Let me try if I can make the driver tristate. Given that it's fairly
large it may be better to keep that as an option.

Thierry

--DBIVS5p969aUjpLe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl5nyQ8ACgkQ3SOs138+
s6FOXhAAocJcbbDxFJK3TvLJTTuZlywjEwIb3UcWO1BERHW2K7hEx8rNt2UqhoGu
EoqVqjO7HnXaOT++1BbSFSRP3ye4ErmWyQcSRKSObSl20m+lGvWgvv1Chk8jCJha
uJ47NctrQMiBD0lb/Ip7vup/4Qqi6WjJpLNfvct92NFTGty6TuwFAV39r4L874wd
yEryO/AwteBrAClEMLH8SS+bZwHSWy5jCHuirgGxe0ck29Hx5kBUb4HAmiMQxJH3
v0dNrkzAXl+dd98s93uI7ocOWtiKjQWJiQJ8mSDVLnmClkiPjFnRDvgu3TkbAQEh
BLAgRFgmaCTmKvdD8LBlA88W0DVP3J5bx6iQKMOrYvJ95PmntiDtURq4rmXRXl/v
BX7KUlkV3eXTLkukY2r/z4uHOhOCdo1LD6/12jzezVLSA32Uw6QXeyuDa2Cg7Hc6
C99avAx0XUVVjGr++9yY1Rn3jpLEvBsAWk6tjNNXn2a/5+l5ygCjvDfZeOKl//j8
6Mcsw4ML1Lj/CV52+YM2rtAwXr3hRCpwGHPEN9K5i+mozudHb4TOV3Yt3KTEGUW/
3rdlIPacpzyQmM8+xUp2E4oF4PqGqgp2wllYb8NNC7MFXDzp1JwXUvCAVabOnaw3
xqcijH1JXc4rsCeUVNMD4rE/PQkrq0mFfPMd8Jv4I9RqY4FkZPI=
=x6Nz
-----END PGP SIGNATURE-----

--DBIVS5p969aUjpLe--


--===============3226590634965855356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3226590634965855356==--

