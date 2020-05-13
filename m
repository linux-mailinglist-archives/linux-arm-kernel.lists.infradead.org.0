Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D861D17BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MIUxc2X8FK//D21aXIF4T4CLST4lH4q3dF9byd3km30=; b=UabDz5j4G/qHTWckcxZH0+LOZ
	aQyDRDxYx34ZfOzLiOoWyRVw1vK84JX0jt01NCkwsciXnWTqVqhAsuxlsqln7NnM557yPHn+WRToz
	WUxvi8Zxb5KQ4pgMODzyNk185OWyiPaAD+8i01xP8BjIwsj0lsztyP9IWkPc0JSAC9UgaZH73Kbmf
	0mExFg1Iv8bX6hBS/fBvjBghFJc30RGoV7WM0e62lDkvi2pnE+nHtjnqYE4miVtFfv1fK8cv8pJNv
	2niWHkuHFPPaH2zkBeah9CPrLUV8iNerIa9CC2uV1ZJjlRHccrRt8JH9U5YqPDDqCiAMFsgRywPD9
	pxLuUF06w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYsWK-0006hS-GT; Wed, 13 May 2020 14:38:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsWB-0006gk-Vb
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:37:57 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BBB22064E;
 Wed, 13 May 2020 14:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589380675;
 bh=K6uPDIjEOCEZFkU0pAoZ9Q2LfsZWzSGS91SpSMhVlYE=;
 h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
 b=tSoyevHiRm0fiH0tyuwwna+edLi+MQnx+dfc56TxTdeDX0B+wV/+r0qcxcZYhmApx
 UhDE2DhyYe3akjoZGwQb/YkWKVajVL+pONDEBAmeE/bkY1+ddypaOmuRZWIKDKrW3k
 VrtXOjYcLnfVtpD6Ld777tkmIhCWVC5Y3QDKHT5I=
Date: Wed, 13 May 2020 15:37:53 +0100
From: Mark Brown <broonie@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 01/10] spi: dw: Add support for polled operation via no
 IRQ specified in DT
Message-ID: <20200513143753.GI4803@sirena.org.uk>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-2-lars.povlsen@microchip.com>
MIME-Version: 1.0
In-Reply-To: <20200513140031.25633-2-lars.povlsen@microchip.com>
X-Cookie: Long life is in store for you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_073756_033467_89494DE1 
X-CRM114-Status: UNSURE (   8.59  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 SoC Team <soc@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0831706770610404017=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0831706770610404017==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a7XSrSxqzVsaECgU"
Content-Disposition: inline


--a7XSrSxqzVsaECgU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 13, 2020 at 04:00:22PM +0200, Lars Povlsen wrote:

> +#define VALID_IRQ(i) (i >= 0)
> +

This isn't something that should be defined by an individual driver, it
should be in a generic header.

--a7XSrSxqzVsaECgU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl68BkAACgkQJNaLcl1U
h9CGkwf/UTpuCO5Aa0L0tb2kfjtAQ3u+Wce3+YnuEn31nkUmo6pq6rC4nw5G5WG6
odg8VTRpKJTotGryg7OS22wz6JbMZ1gkxo/43FoTKyqvxlA8v5DBiXTnf2LcDQjf
HvpkENT52YRN41hYXhubpIZDTJ4xJp4hhBBJfecHVH6Dk4ShiKfZ/gRoWk/JPTH9
aWSLXnLd94DARZ0Xks68i8EN/l/fv29LIfOMwHGePY3eCDT1+X6kXVDGDA9vezuq
g3TU0x1dlsVl0NzjtOW73GZJXibZgc1aXDGo2uu31q/u3BOZsvw7jYHr+KfArc6d
EtZCrgOP71NGnk0v/7+Z/dCG/NXkLg==
=Hw2f
-----END PGP SIGNATURE-----

--a7XSrSxqzVsaECgU--


--===============0831706770610404017==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0831706770610404017==--

