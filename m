Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD678B3BA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 15:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fDze5kwIWx391xLDjC2JhOw+NWHzu3JbhAeXerV7kH0=; b=OOwhCBEsD/xi5yfQiwkpUTbLN
	S3Pv6aBcpGZt/GB2Rfw7DZ/SEXlQarvTpjPPXhmZug8/FM6tVeh+qNzhvbZ4ausl3AHtvdO9Cxt7k
	h8AdGxwtlaml/ZoUerch5oZ8LNP2ljrz1LPElzDQozm/WRDQLQB/V2vCIQIlDqyT+C5ghT/nFsKn6
	O8LYJshJRknBAdWfJxIrI94DkJ5f/f3+OuYQN8r+Tv33cxpT1ToPFMQ8pk3iLMa+DUbxQg90G61Pf
	t6mmjlA2sysvbK75sSLT4KR1yV1RmF10nkXJGBZIRHBgwMviUYh2v5cZXbkySq5T/awHZhKCjDVaE
	Vjt6plZew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9rJC-0000vi-K4; Mon, 16 Sep 2019 13:44:50 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9rHg-0000QC-Pn
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 13:43:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z423eE0xltB3vRPrKrPJm5Vb6e31D3Z/WMIdhED2ET0=; b=tvH+odcCIft2As/zfFGQE6S56
 PH2NK9V+SzVy3MI3204Qje10JQhIAz8/XxDooZRLx63PmOrlm9tTf9JsvcBWzQ02Nq14Cd1mdP96d
 RgqFstRj6EGLt+sB1pDTD2fvgN4T97KCNVhurDhKGQqX5/8Ga2EENE6VEzFdrbhTNMAX4=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i9rHa-0004c7-FY; Mon, 16 Sep 2019 13:43:10 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id F0EF92741A0D; Mon, 16 Sep 2019 14:43:09 +0100 (BST)
Date: Mon, 16 Sep 2019 14:43:09 +0100
From: Mark Brown <broonie@kernel.org>
To: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
Subject: Re: [RFC PATCH 03/15] spi: make `cs_change_delay` the first user of
 the `spi_delay` logic
Message-ID: <20190916134309.GH4352@sirena.co.uk>
References: <20190913114550.956-1-alexandru.ardelean@analog.com>
 <20190913114550.956-4-alexandru.ardelean@analog.com>
 <20190916122505.GC4352@sirena.co.uk>
 <ae469c65828443524f9ff0409f1c7a81bf64cf6b.camel@analog.com>
 <20190916124707.GD4352@sirena.co.uk>
 <458cbb212fbd04c157c9861501f51c03ea958302.camel@analog.com>
MIME-Version: 1.0
In-Reply-To: <458cbb212fbd04c157c9861501f51c03ea958302.camel@analog.com>
X-Cookie: Man and wife make one fool.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_064318_500761_016179EC 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "baolin.wang@linaro.org" <baolin.wang@linaro.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "zhang.lyra@gmail.com" <zhang.lyra@gmail.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "orsonzhai@gmail.com" <orsonzhai@gmail.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: multipart/mixed; boundary="===============7049323859488745104=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7049323859488745104==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u0lqphHC8S+ob1K0"
Content-Disposition: inline


--u0lqphHC8S+ob1K0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 16, 2019 at 01:04:42PM +0000, Ardelean, Alexandru wrote:
> On Mon, 2019-09-16 at 13:47 +0100, Mark Brown wrote:

> > That v3 seems to be a small subset of this series?

> Ack.
> V3 is the first 4 patches from this series.
> Well, patches 3 & 4 are squashed.

> I am 100% convinced that the entire series is a good idea.
> In the sense that a `struct spi_delay` may be a good idea, but at the same time, it may be un-needed.

> All I wanted to do, was to add another delay somewhere, and got lost in the rework of current delays.
> I thought about proposing just the first 4 patches [on their own], but I thought that showing the current series as-is
> now, may be a good idea as well [to gather some feedback].

I think it makes more sense to review as a whole series rather than only
a part of the conversion, it doesn't really help to only do part of it.

Please fix your mail client to word wrap within paragraphs at something
substantially less than 80 columns.  Doing this makes your messages much
easier to read and reply to.

--u0lqphHC8S+ob1K0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1/kW0ACgkQJNaLcl1U
h9AhYQf/a5Mv8ax53FhE2w2Iee+bq5bvfdkZRudCki/iqJxBUwCNKGfc62eBUwGY
qva3K4T6zi4pbX0dWNMojeJ5lQ7Viu2bnR20voTcVJhOmplIgWhH57tVxRU5bnRt
9205UV5Uc2FNDE1P60lC6Msts6I+8Rzx/a20fZ8pyXlVwOW4n0xxEkiMxYgg5mpo
BbGVM5rYkasqqmq8KjbIKWYl/XwcWDIKw8mlyAuLAq4Vh8KRGfu+kRUY3IqNzDIj
puzpCj6MJZW/8pzNfi/z6Lelkhtvmn04gEu0pMN2C1u9ILeUxixwtqQPv64qTR7I
ySxA++9//Vej3QKiuzfu/u+eDK6+WA==
=nPuT
-----END PGP SIGNATURE-----

--u0lqphHC8S+ob1K0--


--===============7049323859488745104==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7049323859488745104==--

