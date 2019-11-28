Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8C710C465
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 08:42:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ILR6LC42cWnf/36QMHsrE3z8V1l2ZM9c0QxdrCM9RD4=; b=D7LUUTaoUius8TRLsohP25WJ0
	vUhEnDhxD3uOPtqzpcs5PRez9I9fQoq8CQGcks3vYLWte3sDawmvxX1b8iF4ptF4ph5tys/a0w6Re
	SqISHkxk+ahVbkyl10bV2p0NorLNkTkSU40n54OCMd5/cY/jfY/iUo+sToYCRRS2iLOvgXgC1DWbF
	yyMNv4d9XF1289MPLy2UcMYPIZe735aRsGMKlFx06YoNU5guwGiYPLWr5fqchKQGSJ8hkbm9Mo3o+
	V/tekFMKapGiJcqLm66chqrtkJasTeWCZCcslO2WKOnrDkeEjPwte4CLl7wTqzBh9qtdXbrx63pIQ
	wWt5ZwPQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaERd-0003UW-0A; Thu, 28 Nov 2019 07:42:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaERT-0003TW-VJ
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 07:42:25 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 607442154A;
 Thu, 28 Nov 2019 07:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574926940;
 bh=j0Tz96Fkl28s6zX+DlYzNGtrex6eFQbYospBRTigaKc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1qi6fI/4PWQ2IEoHYlgo1pPyMok3HEHinsu6q5lLtbK/TaSl4hKDZOwg4iadRNEZO
 XTAVgHapTKp9dmOOVsGC2P/MUuxpot1Zo7v07gxQnLg8wDcHSGeru3xENxgCntlo2j
 RhCp+WavYVqGTBzXjhvxdgZaAoSD/Cy8nYmzZbBs=
Date: Thu, 28 Nov 2019 08:42:18 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v6 1/7] thermal: sun8i: add thermal driver for
 H6/H5/H3/A64/A83T/R40
Message-ID: <20191128074218.6ctvumauyyerujqe@gilmour.lan>
References: <20191127052935.1719897-1-anarsoul@gmail.com>
 <20191127052935.1719897-2-anarsoul@gmail.com>
 <20191127111419.z5hfu5soxceiivg6@core.my.home>
 <20191127173547.ch3pcv3lxgdcrfnu@gilmour.lan>
 <CAEExFWvG-Af4qtUrxQV4ssNQCVQAmpXfxB+92wX+6ZxUNfX-Jw@mail.gmail.com>
 <CA+E=qVcdwQO3Y8ismmBN-gRVNMs1Thx+TPLqstKM9fYf2_0qFQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+E=qVcdwQO3Y8ismmBN-gRVNMs1Thx+TPLqstKM9fYf2_0qFQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_234224_029837_71CE736A 
X-CRM114-Status: GOOD (  15.97  )
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
 Linux PM <linux-pm@vger.kernel.org>, Frank Lee <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1544622563425093516=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1544622563425093516==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4x5ug6mtkmdsnllw"
Content-Disposition: inline


--4x5ug6mtkmdsnllw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Nov 27, 2019 at 11:48:32AM -0800, Vasily Khoruzhick wrote:
> On Wed, Nov 27, 2019 at 11:44 AM Frank Lee <tiny.windzz@gmail.com> wrote:
> >
> > Hello Vasily,
> >
> > Thank you very much for your work on this.
> > This looks good to me.
>
> Thanks!
>
> > By the way, I would like to ask comments about adding the following code.
>
> Can we add it as follow up patch? I don't think that I have a device
> with working suspend to test it and I'm hesitant to add any code that
> I can't test.

Yeah, this should be a followup patch, otherwise this will never get
merged.

Maxime

--4x5ug6mtkmdsnllw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXd96UwAKCRDj7w1vZxhR
xWArAP9j8E1Vrf+8eJ4RgagjWjZ1+t05fXcWABrdX7WGAt2zgAEAoM/FkxgwTVNQ
+PjXhrnAxqUcH3tDMorB60UQ+gYj2wo=
=/Deg
-----END PGP SIGNATURE-----

--4x5ug6mtkmdsnllw--


--===============1544622563425093516==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1544622563425093516==--

