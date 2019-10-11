Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D43D3A79
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 09:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jXjucefcJ7Wm8smFRJ0HmLPlGVOQOF1qkM1sHi/77BY=; b=bZTelmHAruAY/o55G/aksFqZw
	4guWYO5DViu9FgkypSE4HgYFG+mLx4LJZU8X4SWi8/9IjbI0aaqAeXYrlpJYrM+JH+J843qCXf1xQ
	q2Kt4HgymjCurF/nJAGNtAxC2l/77Llrg3gb16zpeHhXjM5TFfxY/3WimzGsPSgGICNwZlapEZ6tk
	Z1Oq2g7FFo064vg+O/phY5Xo0C7UZJvqTkyjhalniKMoe8c9hS636Y/kdlWViSqR7ZjMppV6Z8zqa
	5hITXY8kx/1pQcJq9gTazOMuy4GZ1WKi0EWIOYm3oyw0ULL/Jz4IkXuNo5yO91f6U5+SVjNpaGQYQ
	vHuo17jbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIpnf-0002UO-9Y; Fri, 11 Oct 2019 07:57:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIpnR-0002T9-JH
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 07:57:10 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2BF3820679;
 Fri, 11 Oct 2019 07:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570780628;
 bh=ExPB2LcrboMFCzOhxLXtekTOETsdzGtWe31It1sxYHA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T1W64LmGdrrKsHb5lcFrWm1EuOHiJhzQ6vuZZ9mmBBI1NJUOV0sEs2fPdkr4/iQZT
 jPeOEqrSRYtipmjPoW8ugXL3sqbe7ZJyhkJaSnB7qfsQ05KIEYh8nyu5JVQM1UhfE7
 paxcRWUwtYPnLYetmPpVXXyWWnixB+fKrCNzENjM=
Date: Fri, 11 Oct 2019 09:57:05 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH v3 02/11] crypto: Add Allwinner sun8i-ce Crypto Engine
Message-ID: <20191011075705.j5bqw2w6jmcrv5dz@gilmour>
References: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
 <20191010182328.15826-3-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191010182328.15826-3-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_005709_657660_C779F9B9 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, catalin.marinas@arm.com,
 linux-sunxi@googlegroups.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8605901426741481372=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8605901426741481372==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hxdp6s4p3ktvf5rr"
Content-Disposition: inline


--hxdp6s4p3ktvf5rr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 10, 2019 at 08:23:19PM +0200, Corentin Labbe wrote:
> +	ce->reset = devm_reset_control_get_optional(&pdev->dev, "bus");
> +	if (IS_ERR(ce->reset)) {
> +		if (PTR_ERR(ce->reset) == -EPROBE_DEFER)
> +			return PTR_ERR(ce->reset);
> +		dev_err(&pdev->dev, "No reset control found\n");
> +		return PTR_ERR(ce->reset);
> +	}

There's only one reset so you don't need that name.

And I'm not sure why you're using the optional variant, it's required
by your binding.

Maxime

--hxdp6s4p3ktvf5rr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXaA10QAKCRDj7w1vZxhR
xdFDAP4z2YXaSscQlnjsH4zr2VB2gt6uDBKoFCnpm7jjmt5m8wD6A51EfrA7MNrg
+4UUrvYx5Q4Ij377kSHvZ927yk3uXAg=
=IagG
-----END PGP SIGNATURE-----

--hxdp6s4p3ktvf5rr--


--===============8605901426741481372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8605901426741481372==--

