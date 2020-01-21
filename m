Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A4C1438FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:06:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aJRJ9UxbIXV+YcB2wic8OzC3nL1vdNG9lLGaPddvE4o=; b=l8ADxKaRzqopS5hdC1bZmUxA2
	sVYlKoU1KgIaKS3eHRRXF/y/64/qWV8LjowftP08agIQMadjwS1WEu6geg3UK1iKh5iFMnwMUZSHs
	qsg5nnAJWEbRgH5LVGOJuA1fc1q/yDYh4Jxaim4DuWq+LfI0Y1uCC8pVHucusZ0mL1Jg2dZk0Tg8w
	DgCyMGBMeHJjCMJLZW1q4xlHZCfb1+QaGVTvhlQRD07yQe/kgG2Zz5JuLds/IcWjAD6j3X7vfuPDG
	3TQV1PLnmzGvyy09eQS8d7hzmgz/CN8Zzx7lw3HGNH7pT6k9w4TrAVvydBoUoMRI4R3ZNCl+L+T45
	N+FTc+i/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itpTv-0003zO-7a; Tue, 21 Jan 2020 09:05:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itpTi-0003yP-Eq
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 09:05:48 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F54F217F4;
 Tue, 21 Jan 2020 09:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579597542;
 bh=ufmPxr7m2ZOAh3XqdfXTa6EO7d2PMRSM/BuzEtFjTC4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FHCpKBpw2Yn+olu7wRFA8zUcrS5UN1jLjBGL/V4TfJ8LrvSOCnWGfnvjLo2Aioe4R
 yWXUDFbXIctRfT4qRw0zyiVWn+OOJHssChKbnMpBFK1QHTf4kpTcEXSi7c57s5YQOJ
 uZ/ROTre4IGgtmrLI9WV0fAUDkVGYAqBgi/gWudg=
Date: Tue, 21 Jan 2020 10:05:39 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH 3/9] arm64: dts: allwinner: pinebook: Remove unused
 AXP803 regulators
Message-ID: <20200121090539.mgswdzfharrfy5ad@gilmour.lan>
References: <20200119163104.13274-1-samuel@sholland.org>
 <20200119163104.13274-3-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200119163104.13274-3-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_010542_516107_A08B8E60 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2137574081493189861=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2137574081493189861==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hqrw2yi3mykdac3n"
Content-Disposition: inline


--hqrw2yi3mykdac3n
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jan 19, 2020 at 10:30:58AM -0600, Samuel Holland wrote:
> The Pinebook does not use the CSI bus on the A64. In fact it does not
> use GPIO port E for anything at all. Thus the following regulators are
> not used and do not need voltages set:
>
>  - ALDO1: Connected to VCC-PE only
>  - DLDO3: Not connected
>  - ELDO3: Not connected
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  .../boot/dts/allwinner/sun50i-a64-pinebook.dts   | 16 +---------------
>  1 file changed, 1 insertion(+), 15 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> index ff32ca1a495e..8e7ce6ad28dd 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> @@ -202,9 +202,7 @@
>  };
>
>  &reg_aldo1 {
> -	regulator-min-microvolt = <2800000>;
> -	regulator-max-microvolt = <2800000>;
> -	regulator-name = "vcc-csi";
> +	regulator-name = "vcc-pe";
>  };

If it's connected to PE, I'd expect the voltage to be at 3.3v?

Maxime

--hqrw2yi3mykdac3n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXia+4wAKCRDj7w1vZxhR
xdmqAQDHlf0hiHmdah98FWedObMJK0sLLs07gbOULXST732ubwEAiMm3wesL11VQ
sadVtj5qmCxatUr+NdthMMN8FOVk6Ac=
=uRwg
-----END PGP SIGNATURE-----

--hqrw2yi3mykdac3n--


--===============2137574081493189861==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2137574081493189861==--

