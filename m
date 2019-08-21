Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CCD978D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 14:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aOl/mc/Qk/ELipX7VO0vOOIpsLehQVniFy3yDPI5l4s=; b=q+sbJOge49dn7sNtIPOGonYJP
	bRc+Tr+cFYMtKtbXCY4JiQDz5VXTCW5e43FmUjUa9i6Thi1l+u2egBW/voyt7Q3GOfDl1XtxqtXPw
	ylx44SBiXnW5mnF3B/eomHvCFj/Cvacx36O3irW3nJv0h/bDLbGIz8VCZEuF2JXE+javZzrNetp3Q
	98z5dZyDUwRLIhpVwS+gio9oWO6nLSgl2XeiushNp2yctVJAeLk8lJITzjfyXdMQ883V2cfOxcPDU
	nuBzVuegO7cNBa0muIPXjVLyxxlNEcT/UeG5GV8Yq2vtRGhxek5Vq9ME3C8FGRzy3YRoQnbQ3Is17
	eb1kDe6Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0PPk-0005wj-5T; Wed, 21 Aug 2019 12:08:32 +0000
Received: from mail-wm1-f99.google.com ([209.85.128.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0PPP-0005q5-7c
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 12:08:12 +0000
Received: by mail-wm1-f99.google.com with SMTP id d16so1884893wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 05:08:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kCia8y54afQPSOKfbJ6YP0Hz0JmyKVXFLXw8vTgYgYA=;
 b=C//5w5uD3i2NAHnqNk9wQEUjtQJEdF2BQCO5GjnpK/1Lo14FMP3DbrU7Vw9ua12Ebg
 7ydKEGwrUo+tXhAoLB/+iNJpNdsK8h7QfqGDXQ/4aRYHIJyblhSfftJ6OH04r4Fv8+K/
 uP33z+ixXUJYkXJGFAWCRzDY4t34udZJfOBPzVN9/S7682u4XZRFk/hX1gOfq6PYcCvq
 UmDPIhcUfnN6eg4IUaq9hko7cBwEPKfVfiFZWwMNGUp3J4c7yKVPGyBZkKtza0TL7kZM
 Vri8y3E1kN4QakuW4tC6OfUp1uZAGiul4oFY0ONRN8tyXqW6F8eKsXeA90SyDJkwOgMf
 m8Yg==
X-Gm-Message-State: APjAAAVU4QDCpk7NA5odazPXQcnccVt5xWePSYvBCI9HQgtexutW/VS1
 Y7E+4QTnt4BLmyqB1vzvrkIrbIO0uWtWQp0naNZGNx51ArLVPfB7eLti5kH5lbv4KA==
X-Google-Smtp-Source: APXvYqzuQ8bH+1TsxqU69uRaOBY2/y1+B6n2c5MTJ9/QfG2PsqZGzaDYCsMRsmkgt4FC5QflkDnHSyQCXkfS
X-Received: by 2002:a1c:2ec6:: with SMTP id u189mr5677124wmu.67.1566389289363; 
 Wed, 21 Aug 2019 05:08:09 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id b193sm25529wme.10.2019.08.21.05.08.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 05:08:09 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0PPN-00075k-2B; Wed, 21 Aug 2019 12:08:09 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 04C9E2742FCD; Wed, 21 Aug 2019 13:08:07 +0100 (BST)
Date: Wed, 21 Aug 2019 13:08:07 +0100
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 20/21] ASoC: sun4i-i2s: Add support for TDM slots
Message-ID: <20190821120807.GG5128@sirena.co.uk>
References: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
 <26392af30b3e7b31ee48d5b867d45be8675db046.1566242458.git-series.maxime.ripard@bootlin.com>
 <c311e88a-fdd2-8a01-275e-675d98dc90ba@orpaltech.com>
 <20190821120551.r4b3h4nnet357wem@flea>
MIME-Version: 1.0
In-Reply-To: <20190821120551.r4b3h4nnet357wem@flea>
X-Cookie: Sic transit gloria Monday!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_050811_358326_56BD2A31 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.99 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 lgirdwood@gmail.com, codekipper@gmail.com, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org, Sergey Suloev <ssuloev@orpaltech.com>
Content-Type: multipart/mixed; boundary="===============8515837396362952586=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8515837396362952586==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NY6JkbSqL3W9mApi"
Content-Disposition: inline


--NY6JkbSqL3W9mApi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 21, 2019 at 02:05:51PM +0200, Maxime Ripard wrote:
> On Tue, Aug 20, 2019 at 08:46:30AM +0300, Sergey Suloev wrote:

Please delete unneeded context from mails when replying.  Doing this
makes it much easier to find your reply in the message, helping ensure
it won't be missed by people scrolling through the irrelevant quoted
material.

> > >   	.set_sysclk	= sun4i_i2s_set_sysclk,
> > > +	.set_tdm_slot	= sun4i_i2s_set_tdm_slot,
> > >   	.trigger	= sun4i_i2s_trigger,
> > >   };

> > it seems like you forgot to implement sun4i_i2s_dai_ops.set_bclk_ratio
> > because, as I far as I understand, it should alter tdm slots functionality
> > indirectly.

> As far as I can see, while this indeed changes a few things on the TDM
> setup, it's optional, orthogonal and it has a single user in the tree
> (some intel platform card).

> So I'd say that if someone ever needs it, we can have it, but it's not
> a blocker.

Yes, that's a compltely orthogonal callback.

--NY6JkbSqL3W9mApi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1dNCcACgkQJNaLcl1U
h9Bl8Af/Xm2Xa9YOa6VFkbJ3jgkINICtBABTxYvKltNwmT5BP8nOJkVXFq1TtdMz
N5EyBg9dN2luySAos4G/tu/IoD8MDAenPS9xiljA5EGVzZFq+Alw8RwJLAOhEhip
0jt3BiI6CIRL286m17Eb2WIvebAqPZVT7gbqVNXzaQsQInq6AQ8xQRGsb6OAYunw
p7LOLWJ4LAYxGrwgO6dlnyeRyDSbg5lg0jdWYldy8C+2G7q3AZZ1E6KIo4n5+TJd
JjTrKX9kx5ABzsBJyu/hQ6Zn0MCdC11AJZRBSfYzO+fE/1l49SqVHoD6MxEtWM5g
Ica+0kC+/XGk7S294y0Hi2hz4cwrOw==
=B3Db
-----END PGP SIGNATURE-----

--NY6JkbSqL3W9mApi--


--===============8515837396362952586==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8515837396362952586==--

