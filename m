Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007D21F693D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:42:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0XumgQPB19QRoEchA6TwXoS/E9+ZOWydUL7zGqPWLtQ=; b=JnPqMTyEbKTuno6atJFKsOJVa
	Qh/pIRpAgTyef6R2+OOeNXZwOGkgYL2yM+Id0PaeMZOGXXvg8dz/j4XBTdUDNIo+Tpu7rxkcAu19y
	e2Gwd26I0iyiWIPfnwPQNA+k/XfHVnsox96W9SM4oIREYn6GVjJxqVBii4w7LSTJLyQD0bCW61uhL
	1vlrJI29cL+6us0KZQD4NcoE8DLZkLhI0Sdwbn4XAQNDqJe3BbJPF30w7T87QXwZ0lCbf+bl7BOJD
	RZWb4czLgLOZZZ8dg5sYpjj2+LT7+dZ4ZJuFPYiF1IwvPaqs8y3J5x+ynke5kmDAb2SgYS5Rf322G
	alviY/s2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNTO-0007gA-7l; Thu, 11 Jun 2020 13:42:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNRm-0006W8-6v
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 13:40:48 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 29B8420760;
 Thu, 11 Jun 2020 13:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591882844;
 bh=cvz/YxFSgXtIw2nOa4VErS/4b3tA507ZBN5/rPyfuu4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tPXBu1yFAiTRygRf37l3z9KXCEWhdc+r8uUQpZeIFKHSyzX1Mkh762yKf4crAhReV
 zJrxSPi4Anm1TS+12b60syNQX7ROOtQrR3YNsGEJWPIsUHVt9cRHKxFimUYl/txXap
 KN+qKdAE2Il8rMK0JhTKm44arnXXf1thA+ajbEfg=
Date: Thu, 11 Jun 2020 14:40:42 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Message-ID: <20200611134042.GG4671@sirena.org.uk>
References: <1591880310-1813-1-git-send-email-yibin.gong@nxp.com>
 <1591880310-1813-2-git-send-email-yibin.gong@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1591880310-1813-2-git-send-email-yibin.gong@nxp.com>
X-Cookie: I like your SNOOPY POSTER!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_064046_382624_28DC7EEE 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: matthias.schiffer@ew.tq-group.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robin.murphy@arm.com,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3890953381172460968=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3890953381172460968==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iAL9S67WQOXgEPD9"
Content-Disposition: inline


--iAL9S67WQOXgEPD9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 11, 2020 at 08:58:29PM +0800, Robin Gong wrote:
> Add SPI_CONTROLLER_FALLBACK to fallback to pio mode in case dma transfer
> failed.
> If spi client driver want to enable this feature please set master->flags
> with SPI_MASTER_FALLBACK and add master->fallback checking in its can_dma()
> as spi-imx.c

If we were going to do this I don't see why we'd have a flag for this
rather than just doing it unconditionally but...

>  			ret = ctlr->transfer_one(ctlr, msg->spi, xfer);
>  			if (ret < 0) {
> +				if (ctlr->cur_msg_mapped &&
> +				   (ctlr->flags & SPI_CONTROLLER_FALLBACK)) {
> +					__spi_unmap_msg(ctlr, msg);
> +					ctlr->fallback = true;
> +					goto fallback_pio;
> +				}

...I don't think this can work sensibly - this is going to try PIO if
there's *any* error.  We might have had some sort of issue during the
transfer for example so have some noise on the bus.  Like I said on a
prior version of this I really think that we need to be figuring out if
the DMA controller can support the transaction before we even map the
buffer for it, having the controller just randomly fail underneath the
consumer just does not sound robust.

--iAL9S67WQOXgEPD9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7iNFkACgkQJNaLcl1U
h9Bf+AgAgmNtDbsABzuC2/FdzMOgrJBX+Sol1QlxGnFXxy0CasIDkgkgZFWfFd+f
55Ee2ZOKSfoZIb3+4SPDck6koXnMJVsaBU4NFjuqzc/l3uvgXM7pKdjpnWlcRZaj
9XPGvNv4VqLiGv+HTqbHSRdOuDAN1GZH9SSwJd15fjeZE9xA4bmzN2cT1DcxDJPl
fMscBXBBrMIIq9Dqw1lDJuta8vKoaB3y2o1ee4nihNa8OBDL/FdVzgzl7aAiVGS3
I38G2AZRgnZBWf2z+haWsFKMbumjUKmMB2vCjf5U4gI5N3O6iFDMFdEzkHQdTSQS
yU4UU7726S05d44UW6lXJgFBMoB0UQ==
=Y2mu
-----END PGP SIGNATURE-----

--iAL9S67WQOXgEPD9--


--===============3890953381172460968==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3890953381172460968==--

