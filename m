Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1527D1EE804
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 17:48:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6Gg9dTGgtMie1DHtPKdvHggm45Yj8+ZT0VzdNl/J2DI=; b=YekyGT7AW0UFGm/7++E43gQ6v
	xVIDrny+1SQKk+N3HcxP2415lUdBH4Z3kBeTFvcgGa8c5fJ8Ue9gfUEPQ5EJOAydJgOuNvOnUlI8k
	7htEEYN3AGyPQUf7s5zD+pmM8XhD2boVqW44QC/VEUzO6NtsoGSJbzcsWSrGE3fDKwDbceC6qHEmD
	rIcMMjmdAgkWT8Z6d2Pf5QgFaydeUaUU1zb+B3P8gjn4NHeyeQJGHrPUq3KjXM2bPXyIenkzg+gGz
	ThxYQimcYsdzfDmPu004BV4/BoR324dbXJAKRIdKrdWmZs9jGx8+A1AG47kIeTZEXW3tgpCQtHZdn
	MmLbOW3iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgs6g-0001A8-8U; Thu, 04 Jun 2020 15:48:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgs6W-00018y-KA
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 15:48:29 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BBA082065C;
 Thu,  4 Jun 2020 15:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591285708;
 bh=1Mv07Aauq/rZnpEpLfTWEgK7rGkDSSF3+UeXd/UsARs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eZeH1PpKKkarbufO7IK4JjaKzNOlUxbqMcnNnpXq0xOUT/JPphDwhYIi7XNNUqt8J
 ud/KnBJcYHZHlXpedTJZl2FBBWd25SPgPdDA22r1TI8x7i1LBL98RV809que/QlAq2
 QrtGJzWp1PHdymtvsJ6uKqHodNKsvy9WsefSkP3U=
Date: Thu, 4 Jun 2020 16:48:25 +0100
From: Mark Brown <broonie@kernel.org>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH v2 1/2] arm64: dts: Add a device tree for the Librem 5
 phone
Message-ID: <20200604154825.GG6644@sirena.org.uk>
References: <20200604084756.586-1-martin.kepplinger@puri.sm>
MIME-Version: 1.0
In-Reply-To: <20200604084756.586-1-martin.kepplinger@puri.sm>
X-Cookie: VMS version 2.0 ==>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_084828_677311_9FD36AFD 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>, robh@kernel.org, kernel@puri.sm,
 Anson.Huang@nxp.com, devicetree@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, angus@akkea.ca, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, mchehab@kernel.org,
 festevam@gmail.com, agx@sigxcpu.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9161821705611474679=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9161821705611474679==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Zrag5V6pnZGjLKiw"
Content-Disposition: inline


--Zrag5V6pnZGjLKiw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 04, 2020 at 10:47:55AM +0200, Martin Kepplinger wrote:

> +	reg_audio_pwr_en: regulator-audio-pwr-en {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_audiopwr>;
> +		regulator-name = "AUDIO_PWR_EN";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		gpio = <&gpio1 4 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	reg_aud_1v8: regulator-audio-1v8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "AUD_1V8";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&reg_audio_pwr_en>;
> +	};

This looks broken - a combination of the structure, lack of any
references to reg_audio_pwr_en and the naming suggests that you have one
regulator here for a supply called AUD_1V8 which has a GPIO controlling
the enable.  I can't figure out any reason for reg_audio_pwr_en.

> +	sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "wm8962";

You might want to put a more user friendly display name here (eg, one
mentioning Librem 5) - some UIs will show this string to users.

--Zrag5V6pnZGjLKiw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7ZF8kACgkQJNaLcl1U
h9B2Rgf7BcAVHZFT0owBWhK+fsuc1IONX1cr5wau8snfBGsvoTLt0uLdGZ0Xb7fK
chYq/o+LSEBfkk7TQUWexT10FtKKf2m3ovnVk3XsfQK5nVrN4QWrysBZYZ61pBh7
7+oyR1tGi4JzMNmWbULl3PDgZxO8r42g25+6y+Hk99JuPE3Q19Q3/PKZ5bO+aMKt
Y5I3FydJnqY1TTnFd1+Yf4HDzrZ9twsSJXfoIHu72UBxevdtqh1hEMfbtWAEs2VR
Z01WVWsDZ1mynb9t96pTReMHgtPCIZn22nZICp9opnxGXKUIDX5HkSa+wyc+mRX2
NhsPyyuKiRgje3l+8vfCi2DlaUFtNw==
=JEWW
-----END PGP SIGNATURE-----

--Zrag5V6pnZGjLKiw--


--===============9161821705611474679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9161821705611474679==--

