Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD8D10C46B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 08:43:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0OQ2yryDOcnvLTjKUCwSOdMvvgZRGZyBoQKLbXvHhfY=; b=sezk5vOCoL7orAT21g6fUgTtT
	twsViRs44eObRSMFomBMJQGf8F7GMnbaLv7tFkbN5OrSi4KiwFISLhoeTRAwFvByJDUqRAq/krkAO
	OZO5pVhhdQoqXbunNGqWl8NGavXJxGZLBICn0BipduPp4zdly9AGn8EjSzSw+JpAu81E/WAVYAffo
	l7Bqqyz5mbs22WkPrTPaj5WQ2hxVyXecvyGmzfZY/IRH5S3UWlgj1NUbS7fpw4i1J2FVyOja/V5qu
	QzoJ4pmzZtwB9oiituIKH1+AHN0C8R6BpTqfi3/s+H+gNaRWj/5YKXrRmYvgApdAYN7sVkgdCPNhi
	+7ssM3qxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaESk-0003kv-RG; Thu, 28 Nov 2019 07:43:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaESW-0003jy-Gt
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 07:43:34 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BAAB0215F2;
 Thu, 28 Nov 2019 07:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574927008;
 bh=MxbZZyhMxP8MypT5uzl2FbmRA7P2Fx2ZT4tGfc6hXSA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wm8PVK7LJ/eHbBcPlypR34e9nGdlHpiyX+tDcKnSJxAQM91yQgFENMYbMHwZzBPie
 yRkIECYbg027w8uzuxwxYyGyI6EDte1JFAmNABgHVQO8I88Z5HY8A4vPdyjwu2xwR6
 QmnlLKgm3/xS4ZOJqZlhnywaFER5ex6PX8/4i3LE=
Date: Thu, 28 Nov 2019 08:43:25 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v6 2/7] dt-bindings: thermal: add YAML schema for
 sun8i-thermal driver bindings
Message-ID: <20191128074325.q47rpzhufwog6mbb@gilmour.lan>
References: <20191127052935.1719897-1-anarsoul@gmail.com>
 <20191127052935.1719897-3-anarsoul@gmail.com>
 <20191127174434.wousbqosmm5vxcsu@gilmour.lan>
 <CA+E=qVe22T1uhUo6iq9a82Y9bC014CZSkAtSJJNX4qsn6dJL9w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+E=qVe22T1uhUo6iq9a82Y9bC014CZSkAtSJJNX4qsn6dJL9w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_234328_579251_3E60F138 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
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
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>, Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4629942109048837506=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4629942109048837506==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cnk3ppztnbfqfu5l"
Content-Disposition: inline


--cnk3ppztnbfqfu5l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Nov 27, 2019 at 12:23:53PM -0800, Vasily Khoruzhick wrote:
> On Wed, Nov 27, 2019 at 9:44 AM Maxime Ripard <mripard@kernel.org> wrote:
> > > +
> > > +  nvmem-cell-names:
> > > +    items:
> > > +      - const: calibration
> >
> > Ditto for the const
>
> Sorry, I don't quite get it. What exactly do you want me to do with
> this one? nvmem-cell-names must be "calibration"

You don't need the items here either, this can be

nvmem-cell-names:
  const: calibration

Maxime

--cnk3ppztnbfqfu5l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXd96nQAKCRDj7w1vZxhR
xRLoAQC3m7wZvI4EmXSfHN3h/VKMdIvvo5P5sgtpMsfd6hwbiAEAwqYBPjEtyyKB
IP3PzaCesyLXY9dHooofrsm3Z7+pIgw=
=I+ik
-----END PGP SIGNATURE-----

--cnk3ppztnbfqfu5l--


--===============4629942109048837506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4629942109048837506==--

