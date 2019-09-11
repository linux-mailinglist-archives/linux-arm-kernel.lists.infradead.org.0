Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B924AF9CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 12:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ncl8qh/lsFUjaCV6crMv2YXcL/M7WUJPFEiU4kzmtt4=; b=LK6sPIRWJ31mzMKaVRIXemJgy
	+rb49mbizHgNYcnOXuyOOe9f4uA21/RKyYz21AiAnm/CXz4SGcHihV4MExt5g/0iCUfHEw97nos4z
	HoliYdnrHaxtkzou4BjmwDEAC8QcGua48RdbaAwr87MXQ9SIELXUjn1mvOHjavdqTHFJQ7bvDqwjV
	IgR6BIkNBP0qH/nHxzPzX1sIsZEK+iQLykIFvJ6N0LaCHApYhhxw+9H48UjPRMa6+m50Fx0K9M50/
	/pffBzRqMjJZwgJ7OtUwfX1uFjhD5iasK119Qw01/k7DCTbpPOi7hJxu1DMdaAekPQjvoduxq4DG3
	8aIugCKCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zTB-00030A-H4; Wed, 11 Sep 2019 10:03:25 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7zSy-0002zR-6P; Wed, 11 Sep 2019 10:03:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a0Kkj21KsvH+4VqiIM/Zj1XZfe1a49Milh3+Rqzxq0c=; b=Oe3vlnwfQYHbmzzSlu1stRVmc
 vWirk4HKb/ywIzeJRQYjTKfIQPMP/aAkdDXPaTUVTgtRSMpvr3Yzx3Xpugpe77qC2BpIUz8pcJh8/
 BRdmqfi1HirizyKZ/xZiYXIVVHLZf+75AhRCXgpPLg+y0o+dlX13L2cz++BPN1eEuqT6M=;
Received: from [148.69.85.38] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i7zSu-0007X1-Kw; Wed, 11 Sep 2019 10:03:08 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id C2AEFD02D76; Wed, 11 Sep 2019 11:03:07 +0100 (BST)
Date: Wed, 11 Sep 2019 11:03:07 +0100
From: Mark Brown <broonie@kernel.org>
To: Luhua Xu <luhua.xu@mediatek.com>
Subject: Re: [PATCH 3/3] spi: mediatek: support large PA
Message-ID: <20190911100307.GR2036@sirena.org.uk>
References: <1568195731-3239-1-git-send-email-luhua.xu@mediatek.com>
 <1568195731-3239-4-git-send-email-luhua.xu@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1568195731-3239-4-git-send-email-luhua.xu@mediatek.com>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_030312_230432_98CB0B76 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1241233077044115148=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1241233077044115148==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="By57YlnFViWR/M0S"
Content-Disposition: inline


--By57YlnFViWR/M0S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 11, 2019 at 05:55:31AM -0400, Luhua Xu wrote:

> +	ret = dma_set_mask(&pdev->dev, DMA_BIT_MASK(addr_bits));
> +	if (ret)
> +		dev_notice(&pdev->dev, "SPI dma_set_mask(%d) failed, ret:%d\n",
> +			   addr_bits, ret);

Not sure why you picked dev_notice() over dev_err() here?
Otherwise this looks good so I'll go ahead and apply.

--By57YlnFViWR/M0S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl14xlsACgkQJNaLcl1U
h9BbAwf/WPyI6V+J0eXXtuhrkDPyjT7RRzxv1xzvLZx1r1SL66BLPAJce+D1yrmY
VNBKLZ8pS9tW6rmkDJEQVeeFJ+vQRJGca0DJxgiww9332H2aacH7gkw21eM/Zmi5
b1ziPC3WDTN4LAjDaGmPUq91NcXI3yzc1u+mUAsUEk/3oy/WzrqduSq1K8O2eBhV
vAAKEn+rE33sTz2BYQzMx8LbHaflmHYKxqT+HK111Cbq+ecGEOke7ItpZx/zVrFU
nJS3vxD35VwGQstEMIMgeXWsNGtD4y+sf2d2T/7DejwYWX9adSmPRdGSkyhCDLBG
hWBq3cFtRpYeF/ox+P+R1Zqr+y/J+w==
=+5QQ
-----END PGP SIGNATURE-----

--By57YlnFViWR/M0S--


--===============1241233077044115148==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1241233077044115148==--

