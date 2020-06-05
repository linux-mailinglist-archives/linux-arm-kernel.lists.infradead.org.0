Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 898491EF729
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 14:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FmUOJIpYn3vDZaasbcZ/JUf3x/lKr/PGV6Yy8YlSCLM=; b=Y0717QHrafZjaikIqhmvPk2nj
	oyB745WT0y6P0CdKvfRwnd5yeJZuiZFaJQty8Qcj6o1tXjZnkTSPlelUUyUIkH3xdbQjjUlfZZ0ty
	+f5wo/StMI5tuveaeRFB3ziM73pSfaQzry8t6q3Nl+osVONfENA4LhNk8PqFiqO72mMlZ9Cb1sUxu
	sJXrNa6BI3j6gzxv9zTUtDJlCn4au8lcLzUNzKWajIJd+f6lo02AqC0n6mAjQ1lhiOU0bPC0h9MOG
	fqitNfvmO2VIq1DhktKsjDFoycFDSrVcMSddVRHfp9XKyt9OYo6EM2x00KTcGD3xHBQa/6X00MP+D
	9xLMvnqsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhBKe-0003CL-KV; Fri, 05 Jun 2020 12:20:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhBKX-0003Bx-Qh; Fri, 05 Jun 2020 12:20:14 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0929A206E6;
 Fri,  5 Jun 2020 12:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591359613;
 bh=KHgU9gQNGmS9ENzYT2OcSwC8jcaAyRj+0szieFBm/MM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S7HiUbfcvb0StZuS2lIwExfDAeA+hHJRiZSidGl9IeepTcJnjlDohww2tCHsRtmUk
 DjVSbl40pifhG50UOtQP2yXBLfMqWz36ZlTudKsivI9dcQQaT1WNxhGJI/dmqryczN
 rJWRk69aEXZG13/1PXbHdr5EoseClfWb/YvsOjN8=
Date: Fri, 5 Jun 2020 13:20:10 +0100
From: Mark Brown <broonie@kernel.org>
To: linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
Message-ID: <20200605122010.GA15570@sirena.org.uk>
References: <20200604212819.715-1-f.fainelli@gmail.com>
 <159135564425.14579.13716287498736798458.b4-ty@kernel.org>
MIME-Version: 1.0
In-Reply-To: <159135564425.14579.13716287498736798458.b4-ty@kernel.org>
X-Cookie: DYSLEXICS OF THE WORLD, UNTIE!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_052013_888757_4E80D288 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Rob Herring <robh+dt@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>, lukas@wunner.de,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6761192928753969868=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6761192928753969868==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x+6KMIRAuhnl3hBn"
Content-Disposition: inline


--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 05, 2020 at 12:14:07PM +0100, Mark Brown wrote:

> [1/1] spi: bcm2835: Enable shared interrupt support
>       commit: ecfbd3cf3b8bb73ac6a80ddf430b5912fd4402a6

Eh, sorry - this was me fat fingering another fix.  At the very least
this needs to wait for the end of the merge window.

--x+6KMIRAuhnl3hBn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7aOHkACgkQJNaLcl1U
h9AxvAf/SfJ41hWzufGG1Rj3/WXQjmpYsJIB/fpu3B8+iaiLofTNVVA6VPberNFn
ANEsddsQQG90zBMoJDC9l+r71xLdWTJn8OonfVC4cz4NRsWcK4A7kC7ity+jn6Bm
1l8yy8wiGZx9bPX0dDjggJUsBaXymOt5eyCzxh7I95Wa3icM/jyhLWIyVDgneefA
VvBIkbiaaroVuq0mVWi0SiHZEzo1KGNxpSahl5RrlaU5Koknf50yJtGE5DWF6C6G
iKy2AtJgDOnQC6vdlXpHaZNGNfX8yMlUbPMtvtyWALzGpKsX/anstISNooENydUA
UPjFlOOj96lzDD5ZDev5sBr6QVpvQQ==
=lLik
-----END PGP SIGNATURE-----

--x+6KMIRAuhnl3hBn--


--===============6761192928753969868==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6761192928753969868==--

