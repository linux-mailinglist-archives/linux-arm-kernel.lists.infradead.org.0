Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 504351BF59D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 12:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g9y1RZalrQaBzvOWUC5utQWlYaWrd7GxNfo8zr6sg5E=; b=uY3CIQWKrC1xnSwAIcjPbo0KQ
	4WjiypALfYH/SR4lI3kvZu3pddpf3xpdl7Ntly21AaVGi4//y+9ZzzlD2gJnvKst/s6unDnSQISTo
	McNTdNIQv3A1XzgCxeaEVdPqPT1gawRpL5a3ZdsP4AetFq0l9AiDlRrF+EA23K5g06KixVT1DEQcm
	UGlitxxWlLxOyL82q2pGHaOeqJva32w2I+V546hnnkVP6UxSHK3ZQF0y1tV2SMeOWm7SxFy61iVlN
	cR6jrbivBETawRMsFQ2rHI7qQ8mTIMfodhdctz5zG3hSKhs9WLqthtqnyA7jvD2CSlJD4fGbEkwXG
	5qyQq7K2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU6Xi-0006Ip-Po; Thu, 30 Apr 2020 10:35:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU6XZ-0006Hx-FN
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 10:35:38 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 96A7F20838;
 Thu, 30 Apr 2020 10:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588242937;
 bh=L8QqziWQ9h7WeebjkgKpp4eKtoL5iK1ZJnBVu8WfcFo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bqMAJNVeQMD/5NkPOqWvlor4qXznpXKcAukYXSOyriNGdcA5irT1ASbwbNljdScUo
 5ouwfFgYNh87lpGTVc8HFy93WdA7aR+yd7jPUsOgnv7CkwMgjgy7693U1REDvdMZ6n
 7Bs5gSMjC7eNLfqsOmKcss+bDLtRp0ZrayfinjeE=
Date: Thu, 30 Apr 2020 11:35:34 +0100
From: Mark Brown <broonie@kernel.org>
To: dillon.minfei@gmail.com
Subject: Re: [PATCH 4/4] add SPI_SIMPLEX_RX/SPI_3WIRE_RX support for
 spi-stm32f4
Message-ID: <20200430103534.GA4633@sirena.org.uk>
References: <1588239840-11582-1-git-send-email-dillon.minfei@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1588239840-11582-1-git-send-email-dillon.minfei@gmail.com>
X-Cookie: Sign here without admitting guilt.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_033537_530029_5D43FFF1 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 p.zabel@pengutronix.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0401732892036844516=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0401732892036844516==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZGiS0Q5IWpPtfppv"
Content-Disposition: inline


--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 30, 2020 at 05:44:00PM +0800, dillon.minfei@gmail.com wrote:
> From: dillon min <dillon.minfei@gmail.com>
>=20
> add SPI_SIMPLEX_RX/SPI_3WIRE_RX in spi-stm32f4.c
> for SPI_SIMPLEX_RX , as we running kernel in sdram, so
> that the performance is not as good as internal flash,
> need add send dummy data out while in rx,
> otherwise will get many overrun errors.

I only have patch 4 here, what's going on with dependencies?

--ZGiS0Q5IWpPtfppv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6qqfMACgkQJNaLcl1U
h9AMyQf7Bb85zBnGwJCAzPQNAwLw/QzSq+VE7JtXHycImjg0XeyDqyfqdjx5ATdZ
Cv0cL9opaIRgNlkKYP5Pht4BnWLbdIJRGMfSyKL8G+4GvrtqxGqG1rfYDrXt/KgK
2lsB45S1YQ95TCPivpAT23RsYaP228a+xuSQLFGfD+1y/vgxlzPz9CrmKOoAccY7
ZVj1I1f/tzgBh/OPMa363EEs+w3EB4GxIHEjwEb2kJulioCLjllV3MiVK+RQdWC9
k8SNdtE16QX7FWk34V6DXls9wFnmncODf6tzUx/gBblRHjRC/zETeDiVatBdQBDy
yaav0TQppa0lz8MY8vwMfj/kQtY4iw==
=piIt
-----END PGP SIGNATURE-----

--ZGiS0Q5IWpPtfppv--


--===============0401732892036844516==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0401732892036844516==--

