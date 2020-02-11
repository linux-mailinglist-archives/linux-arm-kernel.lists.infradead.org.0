Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D96159357
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 16:39:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cQ3GUf5CDx6/VOCgVAUXD/l7r8QO+063nUR+JVLSFfc=; b=mSH6HPquklrlMS8Lt+FOGto7p
	f01vdvQzITOiyQKqu6bpzadAssVcQ6Gebo5B3nJL2GHIiOou2S9NzuTx1Eiu+mOWi5YAO9mT+65tv
	5XMV4RYYA4byoT0vpVMRVV7Jnwym+8iO42i1MNCh9h9K6jAqkHLA27twwe+V01vuRkZwRUWWiWk7g
	bK9jLntMu+RATVYO/bM6nsPkeo2ArtlhgojHxMGOK1RZA5kIkItaKpTu141SpA8FJnr8IAP5KS0hi
	fF80cMuaj6aS6NVtKwwVPI83iJt6L8GCc2+VXMLV6FdNL8/hjKdM+CjiigKZNIOuS/o99F8nhd8pu
	lFFmpUEyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1XdD-0006lb-Qx; Tue, 11 Feb 2020 15:39:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Xd6-0006l7-8x
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 15:39:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 430A231B;
 Tue, 11 Feb 2020 07:39:15 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 98DA83F68E;
 Tue, 11 Feb 2020 07:39:14 -0800 (PST)
Date: Tue, 11 Feb 2020 15:39:13 +0000
From: Mark Brown <broonie@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 1/4] dt-bindings: spi: imx: Add
 i.MX8MM/i.MX8MN/i.MX8MP compatible
Message-ID: <20200211153913.GL4543@sirena.org.uk>
References: <1581425307-18567-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1581425307-18567-1-git-send-email-Anson.Huang@nxp.com>
X-Cookie: Hire the morally handicapped.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_073916_359420_6E7DAED2 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, marcel.ziswiler@toradex.com, angus@akkea.ca,
 gary.bisson@boundarydevices.com, manivannan.sadhasivam@linaro.org,
 leonard.crestez@nxp.com, festevam@gmail.com, andrew.smirnov@gmail.com,
 rabeeh@solid-run.com, Linux-imx@nxp.com, devicetree@vger.kernel.org,
 kernel@pengutronix.de, s.hauer@pengutronix.de, robh+dt@kernel.org,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, rjones@gateworks.com, cosmin.stoica@nxp.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 pramod.kumar_1@nxp.com, l.stach@pengutronix.de, shawnguo@kernel.org,
 jun.li@nxp.com
Content-Type: multipart/mixed; boundary="===============3422155158262304524=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3422155158262304524==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xjamM5M9kpPM/bcu"
Content-Disposition: inline


--xjamM5M9kpPM/bcu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 11, 2020 at 08:48:24PM +0800, Anson Huang wrote:
> Add compatible for imx8mm/imx8mn/imx8mp.

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--xjamM5M9kpPM/bcu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5CyqAACgkQJNaLcl1U
h9DOwwf9FtG/iaQJVuAEOHRrJ9sfIJHvcKeiEzx4CbvNw5x48fs24VzAWO2rg7+t
iyze1NRFVPS9oH0RLhrQ7jTj+W2t/2Ab8aF6SdK7GhHrIHPRnISNg9Gw15CpTNhv
G28a9MR8eOddt9JprJ9GE37oyZyaBrFKCojNYlCIRDUxWVQH9RLjh4WjEy2RXxFi
/OY2G513MX3vivd/04F+9O3KtfOqYdMjgeZ5gi0wbmK4MauyjdMGdrkMbrFcWwKC
HdoAfGE9ounM1hYtYgAJRoGl20p6Z1n5MQ8HUHeEQkViPA+x4hiFgnRfV3xxtMiu
rMm3Cu+06Jk9hh/fqB6Qlc92m6Up0Q==
=TZK0
-----END PGP SIGNATURE-----

--xjamM5M9kpPM/bcu--


--===============3422155158262304524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3422155158262304524==--

