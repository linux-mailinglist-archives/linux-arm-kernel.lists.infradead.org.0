Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E285220086A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 14:11:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gfjAft8U52RR9tDE+N0JUnxQ46HLPmmI+fwslSloK3s=; b=EsYu7l1xmrLAcKQ8PRGDt6GGM
	oCSPya4SB8Z7OFuYr1WqmDWgc1RGrirZX89ThVZP0QD5Nu9lqtdMWoEmVEUPzOK0t7E/iepQGac2H
	8R+pw5tS3h4dVqz1WCDMZgSMUQdqlc09UUcn2GMTbC1/0Qs3Ni5uaTpUmL7eXYoEzseoXRWyZqp2C
	XEqesGw/E6NqYOrcRy/a9cQcZ6foNxGfPpGVIbVj2Ye72KSnlji4iomyMyW9Rtt+0LEEt5LDJrD8C
	xB59tlA1k4DY09/1/Xa6lCzW4UD/q4XRpnQEOEnpeupzkkQHP+eJKXsX/8MWbZe+vKlENKeRx1+v7
	bt4sJrJGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmFre-00044Q-2f; Fri, 19 Jun 2020 12:11:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmFrT-00043f-Ec
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 12:11:13 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBFA5206F1;
 Fri, 19 Jun 2020 12:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592568670;
 bh=vyr9PHj6CVhmT+9MnB5OL7E+rP4soAv6Y11Vucj3b3c=;
 h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
 b=CaD3mptIYtvzN0773c7ZLSMy1q0kYfcYGjnZ56Bs8MVKpJjcy+pHOD/+pZ0g6xFJ5
 SFyBVg/Jk17kZWQnTqIHlA/v8XWco429v77il5E7hMCilG6SQeBT842nExHGDvrttp
 yoQm63DFw17uumLqHN6sSXYbpHJm+VuC5ZOAoa0c=
Date: Fri, 19 Jun 2020 13:11:08 +0100
From: Mark Brown <broonie@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH v2 3/6] spi: dw: Add Microchip Sparx5 support
Message-ID: <20200619121107.GE5396@sirena.org.uk>
References: <20200619113121.9984-1-lars.povlsen@microchip.com>
 <20200619113121.9984-4-lars.povlsen@microchip.com>
MIME-Version: 1.0
In-Reply-To: <20200619113121.9984-4-lars.povlsen@microchip.com>
X-Cookie: Robot, n.:
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_051112_173097_E3294CFE 
X-CRM114-Status: GOOD (  13.33  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>, linux-spi@vger.kernel.org,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>, SoC Team <soc@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1982384446218839345=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1982384446218839345==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r7U+bLA8boMOj+mD"
Content-Disposition: inline


--r7U+bLA8boMOj+mD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 19, 2020 at 01:31:18PM +0200, Lars Povlsen wrote:

> +/*
> + * The Designware SPI controller (referred to as master in the
> + * documentation) automatically deasserts chip select when the tx fifo
> + * is empty. The chip selects then needs to be driven by a CS override
> + * register. enable is an active low signal.
> + */
> +static void dw_spi_sparx5_set_cs(struct spi_device *spi, bool nEnable)

The value that is passed in here is the value that should be driven on
the output pin, the driver should not be interpreting the value in any
way here.  Documenting it as nEnable adds a layer of confusion, and it
may not be an active high signal depending on the system.

> +	if (!nEnable) {
> +		/* Ensure CS toggles, so start off all disabled */
> +		regmap_write(dwsmscc->syscon, SPARX5_FORCE_VAL, ~0);
> +		/* CS override drive enable */
> +		regmap_write(dwsmscc->syscon, SPARX5_FORCE_ENA, 1);

This should just be setting the value to whatever the core asked for it
to be set to, the driver adding extra toggles is likely to disrupt
things.

--r7U+bLA8boMOj+mD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7sq1sACgkQJNaLcl1U
h9ANRwf/eQZK2XAW3YLyGIGXxDzJjVKVzZnnCrpJ7/GkGV+/jpNo0ACv1EaaA90S
eRvkEG81gwlnvf2uXRrSPPY0PFPCXEtJH5kMdyxnVp/MntfCn3LW+ZRnyENOSO9F
jj8v+x0sFbz14ZGvYmJBibaRBSWo8moO4+d4Xb+xn77qtRq/PbBSpK6un6HeEB6B
WYJwB+Tpz1dbnWhpU8P+Xgoe59ZRKd/QGM3ceBafhGdV3fM4EyDiIwFxYUOJymfv
ch9nDQMBWMpg6a2tUrqs0Xq4o42a0ly2j9smRnr9DdsrGGyH9p3Re/rO+o1EZlTE
BDRM8XigeQo6v4hZM76v+o1N+j5eiA==
=sVTQ
-----END PGP SIGNATURE-----

--r7U+bLA8boMOj+mD--


--===============1982384446218839345==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1982384446218839345==--

