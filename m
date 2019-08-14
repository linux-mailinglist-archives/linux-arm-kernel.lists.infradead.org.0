Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 951818CFA6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sqQFsNgWGRgJ7RWBVGnXAzHjrsqRck3rM89J7FdtgWE=; b=HtNleVoPhSbpAMOM2lUMbcluF
	0M/yt8lwQvPBmx/CfFGKo6exAaGi8oHtiSuHJdmcIVPoL0yxQQksZI/EtbGRN1sjAmsVp2GhTTuUN
	IclV4RG9J/vIyTFvPCiT9bQl+jG+BwOP1O633dMH/EiY+Oa8QxUFXHmREclpFL788Nk6+Tq5TEfJh
	Q3OxQJPu3HDjNCFZyjdI4UhvVeks/+vN8mwksur38JoafbSTUzsUTOQWQZAnumPUbxrJIFmYTVKkq
	m0S9ofSxRi+zsJffuEhUDAu7x37sxKV+7vvmY1ELFeKnxDvgxP0YVgb9iUCdze5fBvALxBNt59hVt
	mLVhQ820w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpdb-0006SP-Ae; Wed, 14 Aug 2019 09:32:11 +0000
Received: from mail-wm1-f99.google.com ([209.85.128.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpcl-0005ya-Nm
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:31:21 +0000
Received: by mail-wm1-f99.google.com with SMTP id v19so3823548wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 02:31:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wMvy8Ab385VnpfhpoCL2ty54WiU3FzsQ1ortdbnfmco=;
 b=SpcKJoYyswYbGC/e7vHeXjrwsqrijgUErxNCkeA5DdmNpNfT/bK2oZ9m1+h1VFONP4
 SrCYS/WIGbSHFkpqMPpPDS4ERt4hRw7SptVmjFAe08iMqX252ZWyOplIVZbCR/Zufb80
 X8GvM87E83+biWddlnqQ0GNQ2YKrw5xm1h+S2aDTB5m/5zXODNDaEFIcMKbmqer/8Sdv
 HnFpSdIMzjtM9rWG6iIXL/R+/+f5f2UGwT240xzG+Tbd3KGm7SfX7QdtSRF5WvkHJfjq
 X+5gtTqdBmN1jDubeNU7ww6dWXOhc3ofxr94ZBtg+rU1RS7bAdVQ6Oqv/zk+wKJwtHx9
 n9dQ==
X-Gm-Message-State: APjAAAWVezYS3ufj8wr8oM+9qaYDZVFijyqSAcOpleQgf/wFNN/CtwlF
 joAn6x6i3NWzumIQfA1dRHHnLtRiWZF/a4MXa1mvFhU8Xp6ldRYBNKihXrkJtyJRsw==
X-Google-Smtp-Source: APXvYqzfrYnvfYIbwxiiUHzAwojyOsQOmwL/wLmnyo7FHmFQeAvkAbkqtmXlkt7RBYKZuSs/1aQeX+6ryJZY
X-Received: by 2002:a1c:4d05:: with SMTP id o5mr7192816wmh.129.1565775078088; 
 Wed, 14 Aug 2019 02:31:18 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id q187sm28085wma.20.2019.08.14.02.31.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 02:31:18 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hxpcj-0004j0-N9; Wed, 14 Aug 2019 09:31:17 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 281932742B4F; Wed, 14 Aug 2019 10:31:17 +0100 (BST)
Date: Wed, 14 Aug 2019 10:31:17 +0100
From: Mark Brown <broonie@kernel.org>
To: codekipper@gmail.com
Subject: Re: [PATCH v5 03/15] ASoC: sun4i-i2s: Correct divider calculations
Message-ID: <20190814093117.GE4640@sirena.co.uk>
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-4-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190814060854.26345-4-codekipper@gmail.com>
X-Cookie: Bridge ahead.  Pay troll.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_023119_837068_31505F0A 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 lgirdwood@gmail.com, be17068@iperbole.bo.it, linux-sunxi@googlegroups.com,
 maxime.ripard@free-electrons.com, wens@csie.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1112615645197158961=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1112615645197158961==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uCPdOCrL+PnN2Vxy"
Content-Disposition: inline


--uCPdOCrL+PnN2Vxy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 14, 2019 at 08:08:42AM +0200, codekipper@gmail.com wrote:

> +	if (i2s->variant->has_fmt_set_lrck_period)
> +		bclk_div = sun4i_i2s_get_bclk_div(i2s, clk_rate / rate,
> +						  word_size,
> +						  sun8i_i2s_clk_div,
> +						  ARRAY_SIZE(sun8i_i2s_clk_div));
> +	else
> +		bclk_div = sun4i_i2s_get_bclk_div(i2s, oversample_rate,
> +						  word_size,
> +						  sun4i_i2s_bclk_div,
> +						  ARRAY_SIZE(sun4i_i2s_bclk_div));

Are we sure there'll never be any new variants which would make a switch
statement for the variant work better?

--uCPdOCrL+PnN2Vxy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1T1OQACgkQJNaLcl1U
h9BePQf8ClHCMDk1/0p2riVMF+Ce3UctBx33fUNPHKz6fXoWHx15dRPn8E0YssEp
QxGtyceUz/+pupjQSBf9ys8YmRmQNnJDMCWoPKcEYsTMQUC20p4lu2RJ2Hs6ZwZp
GK78akZH7ZTALargNyecrfgGpMRhP8sZUxpCSWeviFQZp4W4SbafvXy1jv4jGz9q
i4LfJo4I5I1K7oGjfmW6QWU01EZkYWDFPV/2ulZNPN9qnQk6SLBzE/WLJJQ5pg6z
xSipsQlxBbboOT+6v/mfMovpO2qBSUTL3wzSRNJzANTc4BnZ+32IK1MpssbQ3EBC
o4F3ZOw6kp4o8QdLfGAfvJ9lfbYyNg==
=/pEP
-----END PGP SIGNATURE-----

--uCPdOCrL+PnN2Vxy--


--===============1112615645197158961==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1112615645197158961==--

