Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAD199715
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 16:42:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0evubEBhSrCwchjTeT86D7frhsAWCR2sDtMHz4Mgnow=; b=SHiz/TA3a4uSyZkX4qlypx0Hc
	AkH3kV/RLr5wvfgX0uvU1V8e1C5Er+1tU/n+w16cr34RPBtV5p9XsOEaNFGa+TZN8O1EljHm55hTz
	HUts2wrxS7UYqCYn3gvG125Am29KcLkZGAKdv6PKNOtzTPahV24f5PBYBEX2H8M7GhUtcMLcmTr72
	FdKSADQWSk76eX7dVLZPoAwXlbzbih8iigJa1gYR9oM83ldEUOTfhm6/FKVfTdFHMcSEa1yjJZ1Cd
	QO6nSHQwa48XyDfwPevWdSyoWQDmTOZEMj6Qj7+naxOLH5KZMVa/l589Yv2bAs0N/plHv2MRei5gq
	krQB5H/LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0oHl-0003R0-UD; Thu, 22 Aug 2019 14:41:58 +0000
Received: from mail-wm1-f97.google.com ([209.85.128.97])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0oHb-0003QC-Oy
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 14:41:48 +0000
Received: by mail-wm1-f97.google.com with SMTP id v15so5916990wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 07:41:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ziW0AzJyU4+E0Nb6HXsnQe3N8iZ8j3cMw/59pcDvYxY=;
 b=oHS6ERO1nbCLz5wxB2YN+kPweWVrW8FKCxICF658GQww06BOaZwmgaa7y92WLs6K/B
 6VnOpEhxKE+FXB7uxwbEIiBFmqyXSwqnyNALJwjhDh8KtjVk4PilIH7bJJNyXi5H0Acw
 8aj1QDqAnNN8dSVDqSEOaiosF6jd0Mi1SGas7o0szSP56rQ/SzLMrzO17UHLexjH0LmK
 kbggl+W1xBD4tygWXh0vMx+Wav7YBf6Igh9eaveW3BCoap2LRoM66kimsq9hYbZvdlCk
 h3unvps17LHyUXmXkIUWSEHxRNEoDxPZj+/XKH8mFIj/TUQNKGa5KbDD1sN5pLHoQQ4/
 4mmg==
X-Gm-Message-State: APjAAAVBkFtY8lNAqAEtoJeZaipg93quA+Gzcc3mPX1Cp7//JxM1Vt2o
 W2QecdOfPinUkdRY7cEStDRisvSFR1H2hEcTM4ELL57f+dN8JGXrIyH0uRIYUn9s2Q==
X-Google-Smtp-Source: APXvYqxtAaD9ocs4SiQpudq2WvM1fXMIw5PU3AO0cjb220gBl9ci48itthulcnn9FGRZ5TtS/Ure0X+wgzHV
X-Received: by 2002:a1c:1d42:: with SMTP id d63mr6542013wmd.34.1566484905438; 
 Thu, 22 Aug 2019 07:41:45 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id f10sm38456wmb.6.2019.08.22.07.41.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 07:41:45 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0oHZ-0006Nv-21; Thu, 22 Aug 2019 14:41:45 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id DAA952742A5E; Thu, 22 Aug 2019 15:41:43 +0100 (BST)
Date: Thu, 22 Aug 2019 15:41:43 +0100
From: Mark Brown <broonie@kernel.org>
To: Yuehaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] ASoC: sun4i-i2s: Use PTR_ERR_OR_ZERO in
 sun4i_i2s_init_regmap_fields()
Message-ID: <20190822144143.GB4630@sirena.co.uk>
References: <20190822065252.74028-1-yuehaibing@huawei.com>
 <20190822141826.is6nizjpdgvhd7ra@flea>
 <5b15becf-b79b-ae5d-91e2-6521ded50946@huawei.com>
MIME-Version: 1.0
In-Reply-To: <5b15becf-b79b-ae5d-91e2-6521ded50946@huawei.com>
X-Cookie: You dialed 5483.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_074147_822252_892F198B 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.97 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 Maxime Ripard <mripard@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4099767057717605387=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4099767057717605387==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JYK4vJDZwFMowpUq"
Content-Disposition: inline


--JYK4vJDZwFMowpUq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 22, 2019 at 10:34:37PM +0800, Yuehaibing wrote:
> On 2019/8/22 22:18, Maxime Ripard wrote:
> > On Thu, Aug 22, 2019 at 06:52:52AM +0000, YueHaibing wrote:

> >> -	if (IS_ERR(i2s->field_fmt_sr))
> >> -		return PTR_ERR(i2s->field_fmt_sr);
> >> -
> >> -	return 0;
> >> +	return PTR_ERR_OR_ZERO(i2s->field_fmt_sr);

> > I'm not really convinced that this more readable or more maintainable
> > though. Is there a reason for this other than we can do it?

> No special reason, just suggested by scripts/coccinelle/api/ptr_ret.cocci

Which is a bit of a reason in itself since it'll save other people
looking at the same thing though with a return like this I have to agree
with Maxime a bit and question if the coccinelle script is really a good
idea.

--JYK4vJDZwFMowpUq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1eqacACgkQJNaLcl1U
h9CAkwf/Uf2VAqlhiMOqQ0rV7FeewNL+az6bwpVvk0y9wd3MeFAYAwjfhm6ssxTm
0VFGFwQOrBZly3V5sM2+RPO7rvR+73k8ilAAKH4Te423k6tghyvem195C+W8XoE5
A8R0VBmnIIocvgj1PjbeF1R6Tq5uUWP88SUMCHbRDBGcLqXGY3JlVWao6UKXbas4
bHRmTBWA7qliaKrmrXnVXLpl/zYvz30YzW6IOBSzWVIDPL6ivAZjvRNz+x0iYs3E
xbv5KF1NPxQQILnHCxAQ5W+4PmqJ856qMgrFcnrc1D6VKE+1Nph67EOVrGy1lf65
l5xMPz2Dd7PtRcLXKdLVxuXxeJzUxw==
=BB78
-----END PGP SIGNATURE-----

--JYK4vJDZwFMowpUq--


--===============4099767057717605387==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4099767057717605387==--

