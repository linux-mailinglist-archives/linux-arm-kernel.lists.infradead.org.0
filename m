Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E4E24E29
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 13:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RhM5wluvtzmOcgtq+uw51WG2gSwiPCO0y+R973mzf7s=; b=k3+G6D/2WfKlG3sseQ/dfCysp
	OXNNhLLwrdWpD7ofFPNFnt86Tc5xakvAYK6RNZlwOCGD6USX+6vXjzAyzwCUrcxY3v+c5BbiREnZU
	QABXXBDnV1E9xZGZwk4YXh84ZkfjJaS/1pDTQSLo/4kvxpqwTtINudnXE18FnYXdIZeRdBn7MHaQQ
	yXZ1e2AIEpix7nn5N2YpCaoIhvyt1I0JTkALqZ7U56u5zpLVETbW55nt7V+u94m89Jb/ZQnbx08Gv
	ioQ1emAIQQ1xOtKVa6h0Yvls8d35duYHhxkTqr+AMLeTsI20lOA9K6aV41l0tgeKHJufsknnJdjvc
	LXDo9S2NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT38e-0005RV-CD; Tue, 21 May 2019 11:41:00 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT38U-0005Lp-Tp; Tue, 21 May 2019 11:40:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 85836AE82;
 Tue, 21 May 2019 11:40:49 +0000 (UTC)
Message-ID: <c259e5166d9f6c2e1db3bcbec6dc943e578ebef2.camel@suse.de>
Subject: Re: [RFC v2 4/5] dts: bcm2837: add per-cpu clock devices
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Rob Herring
 <robh+dt@kernel.org>,  Mark Rutland <mark.rutland@arm.com>, Florian
 Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,  Scott
 Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com
Date: Tue, 21 May 2019 13:40:47 +0200
In-Reply-To: <af50c1e9-5f52-e06b-8d0b-c9f72fba1324@i2se.com>
References: <20190520104708.11980-1-nsaenzjulienne@suse.de>
 <20190520104708.11980-5-nsaenzjulienne@suse.de>
 <af50c1e9-5f52-e06b-8d0b-c9f72fba1324@i2se.com>
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_044051_129846_F52DDD31 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 ptesarik@suse.com, sboyd@kernel.org, viresh.kumar@linaro.org,
 mturquette@baylibre.com, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: multipart/mixed; boundary="===============3698485554419061715=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3698485554419061715==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-XdardQecTGOsrtJ31nRH"


--=-XdardQecTGOsrtJ31nRH
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-05-20 at 14:19 +0200, Stefan Wahren wrote:
> Hi Nicolas,
>=20
> On 20.05.19 12:47, Nicolas Saenz Julienne wrote:
> > The four CPUs share a same clock source called pllb_arm. The clock can
> > be scaled through the raspberrypi firmware interface.
> do you see a problem with applying this also to bcm2835.dtsi and
> bcm2836.dtsi?

Not at all. I just need to test it first.


--=-XdardQecTGOsrtJ31nRH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlzj478ACgkQlfZmHno8
x/7yYQgAnqgXYhdAshV8U4gwtS+/dHnDGQp1/PL1XVVLYWmuHP2y3SO5fVlw6Ebq
ckR3ubP2gvpOOeBbDD/py+EqkT6u089s/e4v/Duju0rM3AX34z4xtUaVGSZwZ/pv
Bi95Xz7KRumD9YbUBCXoFGMzRwlAwKIz3EN7Q2U3B6oPZneavK8ipSjYm5XobWE7
7oB311KX909ENnlR1iOZGYh0HjX0fEkPb9aMkNp6xyxc2zJOPVMUD7anPwWB4b06
YymlQO7FJHpq9ZBaSFQhh5b/FuqpaZpa19GmyoHiGZoJHfZ1QmD/op6addi7DZa+
lt2LuUfBE/MYUaVA33mQNsx3Vgh14Q==
=zGgQ
-----END PGP SIGNATURE-----

--=-XdardQecTGOsrtJ31nRH--



--===============3698485554419061715==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3698485554419061715==--


