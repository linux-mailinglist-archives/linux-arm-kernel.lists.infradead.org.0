Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DAD1DB33A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9d2wvdBJg9DZkfMZkZnJquh96yf07z45S0vib5tl1/o=; b=askWtPJYaAVegHOCmQFj/wlsg
	ITGRF4Onpl0woEMjCiIhDcJiJCP+GFeTRqGThGQNgXWPWOUSNseaX4YyQeBjFQ5xhcYoTIdC3n0y4
	T4PfUA7VHZsBowDI6BwH9ALDYa13zvXnqgfAb5nsZPCXeQwnANi5pNtE4SegzKrkEj/jkAidG+ye2
	yot/vfLHUMRWFYXKx9RiPjJu69i5FqQJiyTpocw8yKWnaDd1Yv2VmYfcTDLT6ykLQyxJL4vL2GhiO
	Kmd5oNuDxaTS21pUrjHZySMVh5mpCwxhvdKTYmXiMLosGn+NxzfLx8iO9Lodc447rsbhrLv58tgpX
	Ej1q96rtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNsx-0006z8-Um; Wed, 20 May 2020 12:31:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNso-0006y8-98; Wed, 20 May 2020 12:31:39 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 191D320756;
 Wed, 20 May 2020 12:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589977897;
 bh=rL8WkukpYlQE2FvyEL1Ca998vF4yjcYjdKtcskbOga4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LoxEWlrzY++Y0BFWiabgMwjNGX/nvadbakyFaRZq89IjX/nhET64+AAldhU56uv4y
 /N2F8Ge6zCrPiaYs24N4AeJZ8C+ZXyDCJWLD1XynAuUuEF6n7NdU/UlXGv8qQP01VQ
 yNqJhM8BUg7QoFPleCnp2BaLZ0B5zDCzVNny15Vs=
Date: Wed, 20 May 2020 13:31:35 +0100
From: Mark Brown <broonie@kernel.org>
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [PATCH 09/12] devfreq: add mediatek cci devfreq
Message-ID: <20200520123135.GD4823@sirena.org.uk>
References: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
 <20200520034307.20435-10-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <20200520034307.20435-10-andrew-sh.cheng@mediatek.com>
X-Cookie: You can't get there from here.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_053138_342045_080CC866 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2062066001074723864=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2062066001074723864==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2iBwrppp/7QCDedR"
Content-Disposition: inline


--2iBwrppp/7QCDedR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 20, 2020 at 11:43:04AM +0800, Andrew-sh.Cheng wrote:

> +	cci_df->proc_reg = devm_regulator_get_optional(cci_dev, "proc");
> +	ret = PTR_ERR_OR_ZERO(cci_df->proc_reg);
> +	if (ret) {
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(cci_dev, "failed to get regulator for CCI: %d\n",
> +				ret);
> +		return ret;
> +	}
> +	ret = regulator_enable(cci_df->proc_reg);

The code appears to require a regulator (and I'm guessing the device
needs power) so why is this using regulator_get_optional()?

--2iBwrppp/7QCDedR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7FIyYACgkQJNaLcl1U
h9D0kAf/f2yyGL/KhJ2Y+J/Xvk72EFz2UdjxlDjJo9wXYf3J4HWB9sgTXydoZoRj
bPlZzQtBeUPNmvX60Nczzt1V0KYNXns6mOfBOTueIAlSLeOnWBLV2+IUedCAVOJw
NX2i3pZdZ2p7yOO9QGU2s8hxc3uwCHKETMa5U/B6ENwkQkkOlJCNkjVYYiuoAJn+
9mIq1Ko2yfPHqJPyh/wP/CTC7AqXyPnQmO+rAlua+v8ua7RXRqAlkI/LpWhhpe1U
PAdhYsvKa9TiyafrrUPW1TPbTBRnWpHd1s2gjhpiGuuDhJyEaGjxsm0dz82gs5ml
aut3SlENmvhhRkfxSKh8LBYpjvJ0hA==
=vHQ8
-----END PGP SIGNATURE-----

--2iBwrppp/7QCDedR--


--===============2062066001074723864==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2062066001074723864==--

