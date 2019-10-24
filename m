Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C544E3029
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 13:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MzNMNEFeHH3GV2w+EOGF7+U/XCLB/iR9BygCgPMdkTE=; b=VMVpmL0Cr3/9cRawzwIKHBarM
	sXVkjXHdLejPyEBPtImaWGnqIqjMMj42UfThCeVBvVObjiTvCr54pe+5STPq11QRrzYd9FzhRfMqK
	OY/QV76SlK3oC6E0kQ73EFP5zPUKWdii83bCt5JMhpBzraJB7EBspW+LfBjx20ToHB4swbZE7BzQj
	d5zVk4Xrix7XbZPATLe4CWdPBp9/5xSzS5BMDK/iUwqxg4NHW4r9j5gVDe4V82ao8dgYPP1GmXegv
	stKinHgUNhRACOKwTxuAdpkbxZ/gLLqDWWTJPoYEgi4CqdCAfkoJP6yyeSVz4GusX20dUHUx6LQXw
	cXYBFw3Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNb9T-0005aO-NK; Thu, 24 Oct 2019 11:19:35 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNb9I-0005Z5-0J; Thu, 24 Oct 2019 11:19:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hUs9kMq2mPKrvQvT9q8/NbtkacnaWsd9kl1JMDd5J94=; b=bToP3Jv6SYLOWPs8MpGvMY/7b
 QlU0Vud00Dhl6l38d8K/x24mvL/5ht+Vp+HEBgiIqZbmROeCQfEUXB/+VN69SL+AAE6LfllZnNrpJ
 Ahf4DmCYGOH5ogZrZlLYf4ws05t6N3zef9TZdfypJeP6ZLlTKcBoYWg5ovesxygdyu6gg=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iNb9G-0003Np-7N; Thu, 24 Oct 2019 11:19:22 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 263F7274293C; Thu, 24 Oct 2019 12:19:21 +0100 (BST)
Date: Thu, 24 Oct 2019 12:19:20 +0100
From: Mark Brown <broonie@kernel.org>
To: luhua xu <luhua.xu@mediatek.com>
Subject: Re: [PATCH 1/1] spi: mediatek: add power control when set_cs
Message-ID: <20191024111920.GE5207@sirena.co.uk>
References: <1571834322-1121-1-git-send-email-luhua.xu@mediatek.com>
 <1571834322-1121-2-git-send-email-luhua.xu@mediatek.com>
 <20191023151121.GC5723@sirena.co.uk>
 <1571898319.4311.3.camel@mbjsdccf07>
 <1571911880.4955.11.camel@mbjsdccf07>
MIME-Version: 1.0
In-Reply-To: <1571911880.4955.11.camel@mbjsdccf07>
X-Cookie: What foods these morsels be!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_041924_054790_2D121150 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7913113680974138301=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7913113680974138301==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="T6xhMxlHU34Bk0ad"
Content-Disposition: inline


--T6xhMxlHU34Bk0ad
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 24, 2019 at 06:11:20PM +0800, luhua xu wrote:

>       (3)Enable spi clk  in  controller->set_cs  callback,  such as
> spi-geni-qcom.c.   =20
>       My patch works the same as (3).For mtk platform, without this
> patch, if user do spi_setup(), cs setting cannot take effect, and reg
> access violation occurs.

Other drivers having problems isn't a good reason to introduce more
drivers with problems.

--T6xhMxlHU34Bk0ad
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2xiLgACgkQJNaLcl1U
h9A/Kwf+IpDhddKQiCGZu0Oyc2g59QHLKn2G271BZAq1tw3Rnnj/s4VqQkyLn/SJ
Spw/eC2ufhZI8/CblwrL5cwx6flAbfOi1EdLDdA26qGeWwso/Qxu2odY24OvV/8M
MZaXuDfYonJssSVXw1ri90G4mkXtMzzVxb4UoA5ssi3UF2JkZWcZ4ePaK3buteIf
lwvnDj4gNJYKDnZcz/wpTbrZoKWTAn2IjthZh2AlDFPCSZx/I0wJ2yU7rWYzS84H
rMbflX/QGmgPTfTtep+TIy2xTqLYGS/7Up7n0F0SLcOdDXCpK+Jo4lNJoeB75Q7Y
zHXfh3e//9ZULctc7j/NvX/TUeanyQ==
=vrlq
-----END PGP SIGNATURE-----

--T6xhMxlHU34Bk0ad--


--===============7913113680974138301==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7913113680974138301==--

