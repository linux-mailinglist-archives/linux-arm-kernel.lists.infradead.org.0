Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6A1E2EB9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 12:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rbw4zj1eUPp+bmHMQAaXVD7zhZNjxGdxLgMqr7FwYQw=; b=tHo6y2aGNlZqLEuZUDJbvcCuV
	NLeArxuG5oT5KRdjsppJZCVrCWwymO3aW951x/ZQSqDLGcqvoCSYDvCmTkVecIT21HNKSaojPQKIG
	VY669YOYtVJYnn+2BSjjdx1d7dsp6r/czKbq0bbSaTuGNgf7gKR4vq8krZ+whGqVuj3RBpcMmP2sP
	19AU0Ij1Kjbj6KuyFVkC9V3qpVlRNHwJ8IDCRHZ7mFoWHLoDMHokXMx1Kr+PxjlrWUqlikAdJcjcr
	cPsTlE6fZrvS+aOSMZdANZ75vHDNQYZ2wwAiOFfAy7E1uQS6aILw416iF+ZtW3EG7FYEdpjiU3PMZ
	KOeO4DsPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNaHy-0002Ol-2w; Thu, 24 Oct 2019 10:24:18 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNaHV-0002Bc-Jx; Thu, 24 Oct 2019 10:23:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8n+XLVyUobbc+/UmO7NjLUyrQevv80urDK3GZxqpQ8E=; b=c4+X8gj4RYEx2KngkvDNoMu8B
 Qjg8qvJqJ3godFzdWeP6qKmKU+4+ZXMinY7nH0VPiUWYYsybJmHa79Yv8qBIA4h0mUODNGCSWskBX
 D9pHA2GDiVOGL+wQfolwtQX6/P6W3bTxSSiGofTNVMneqBFVInRgAx3OVY5YQ9vS1h7WQ=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iNaHT-0003IF-Ey; Thu, 24 Oct 2019 10:23:47 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id C583027428E5; Thu, 24 Oct 2019 11:23:46 +0100 (BST)
Date: Thu, 24 Oct 2019 11:23:46 +0100
From: Mark Brown <broonie@kernel.org>
To: luhua xu <luhua.xu@mediatek.com>
Subject: Re: [PATCH 1/1] spi: mediatek: add power control when set_cs
Message-ID: <20191024102346.GB5207@sirena.co.uk>
References: <1571834322-1121-1-git-send-email-luhua.xu@mediatek.com>
 <1571834322-1121-2-git-send-email-luhua.xu@mediatek.com>
 <20191023151121.GC5723@sirena.co.uk>
 <1571898319.4311.3.camel@mbjsdccf07>
MIME-Version: 1.0
In-Reply-To: <1571898319.4311.3.camel@mbjsdccf07>
X-Cookie: What foods these morsels be!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_032349_675221_B2ED4658 
X-CRM114-Status: UNSURE (   6.70  )
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
Content-Type: multipart/mixed; boundary="===============5659038413273556646=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5659038413273556646==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tsOsTdHNUZQcU9Ye"
Content-Disposition: inline


--tsOsTdHNUZQcU9Ye
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 24, 2019 at 02:25:19PM +0800, luhua xu wrote:

> Spi framework provideds  spi_setup() to modify spi settings for spi
> device (maybe spi is runtime idle now), and this will call
> spi_controller->set_cs() accessing registers.

OK, so fix that so it takes the power at the setup() level then.

--tsOsTdHNUZQcU9Ye
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2xe7EACgkQJNaLcl1U
h9BupAf/enXFS1bm5HhfceiQntahs4gT3FPXaEDsQ+rJ2S90V4JwcUbi1oSpDvWj
w2OeywscDvkZdcEaQtre4ZASwvSefR01VajXmtigEOPry80kECDHAKGiSKVXBSJ/
9V9Qf/dFBi0ej5+/Nw+3wEGXN75TgQ472XrOoHykyWerqXI4qjnUWyCXTQXO7Asn
hzr9BF9bL/1BGCUG+eK86VPC7sG9bCaQL8pvn3VFHiTgiSfCdMlIIK24LfAMjS7x
/NfY0ARLNoF1MvvTbBHHGHbG1d1pp+FeqEo+Yj+5CgIvo390+KgCjSqhzTv+PQ4Z
RglXSQMhEAM9OExTQLMO86LCuoiC+Q==
=Qdg5
-----END PGP SIGNATURE-----

--tsOsTdHNUZQcU9Ye--


--===============5659038413273556646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5659038413273556646==--

