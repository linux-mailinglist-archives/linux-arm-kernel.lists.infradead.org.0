Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E74E1EF5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 17:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sCwUGk41xERHT+Sfbl4L7+QoEm9tFDPQraCOYwFmqVU=; b=l9+unNEGKIg7HauD6cPeQ1AUL
	HRuRsfvgJIcbpILMlCVtWtVr9HSWcpbnNE8CkqYWM2cauDULF36jmyZ45yYbtmSh44gZEgABxQTfr
	NzD6Fmm09/qCzii1wDQu3E/jjekJxgQxdEZG3GN0Jec7ksVNbX0bKrhIAJfMXANUf2ABqHgHAM6Ds
	PLUwLIGibhIetBG0DovGjlcSzgf2gHLsT7bMb+JHQ6eYNBTY61sAo5by/hR67Y5k0rDyiCdWJE3ZX
	yD0EpA7EXwhb7ywivbCGIJeU9Pau5um9LviN8XU93BmzyYkWiSosUwxn4mnipBRBE9fs3C1TGrVeL
	VHMxVmh0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNIIU-0007yB-5g; Wed, 23 Oct 2019 15:11:38 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNIIH-0007xX-RU; Wed, 23 Oct 2019 15:11:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PhqiM7k8Nuof6KgmdrlTPjIEr+PxrVC9EYrr77F4vhg=; b=JMaBWX29MUdVV8baiU7Nevbin
 qCw2GM3znvT01YwVCdtTXNKQxEV+c5AOrp7J9/YXLTn6OYmG/ZuP7COlZkW/RySoyImpQcofp7DSt
 FhDfOtLOA2iI6rZwfpQyko/4xUr1AF+QgytABppp69cbMC+W3SrOoWqAKveQOfgwlwHzA=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iNIIE-0000pA-Ae; Wed, 23 Oct 2019 15:11:22 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 64951274301E; Wed, 23 Oct 2019 16:11:21 +0100 (BST)
Date: Wed, 23 Oct 2019 16:11:21 +0100
From: Mark Brown <broonie@kernel.org>
To: Luhua Xu <luhua.xu@mediatek.com>
Subject: Re: [PATCH 1/1] spi: mediatek: add power control when set_cs
Message-ID: <20191023151121.GC5723@sirena.co.uk>
References: <1571834322-1121-1-git-send-email-luhua.xu@mediatek.com>
 <1571834322-1121-2-git-send-email-luhua.xu@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1571834322-1121-2-git-send-email-luhua.xu@mediatek.com>
X-Cookie: MMM-MM!!  So THIS is BIO-NEBULATION!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_081125_934699_9D9082DE 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============1868815652133621808=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1868815652133621808==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="L6iaP+gRLNZHKoI4"
Content-Disposition: inline


--L6iaP+gRLNZHKoI4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 23, 2019 at 08:38:42AM -0400, Luhua Xu wrote:
> From: "luhua.xu" <luhua.xu@mediatek.com>

> Use runtime PM to power spi when set_cs
> As set_cs may be called from interrupt context,
> set runtime PM IRQ safe for spi.

Why might we be trying to set the chip select state while the device is
runtime idle?  It seems like whatever is trying to set the chip select
should be dealing with this, not the chip select operation itself since
that's unlikely to be happening in isolation.

--L6iaP+gRLNZHKoI4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2wbZgACgkQJNaLcl1U
h9ATSQf+OUsqd9lrmv01u0bHiJLMN7oKTLAH9rbukbP246Gj/NJZHv9XEa4/EIG+
PrOIpiUSATTLRjt0aOjWURk0NVAazV0jwYPnXYRkH/kfMQB9Ix7DL9N3fL8munYX
zQm8Ec+DPhLw9B+g+lqoJe22GgsC+68vBXMTUNrFSvOT+yiuuI3452HBWEhGugX/
BGZm/N7Vw25js2S62hMg0PTy0GRbjjdX1GNBhofOefbVBuFcZsVbcfkKNNDFgxUs
Ye6/kVYIiHbQWTjsuiVGhshWe7AM3/MpzohQBr+csZUSxJjEI+TLAYzBMVjE4tc/
tVV/VzlC14zM1pODYKEoGhOsluhPJQ==
=eE5N
-----END PGP SIGNATURE-----

--L6iaP+gRLNZHKoI4--


--===============1868815652133621808==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1868815652133621808==--

