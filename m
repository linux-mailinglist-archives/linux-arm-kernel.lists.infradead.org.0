Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CFA141093
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 19:14:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5EG320G43Ttk84ciR0BO+l2bwmAi8TacSJ68U5kuBXk=; b=rxLY/B6Q4idhx9pnId2hXfhnI
	eERQL4o/M8Z+n/5bcRgxg9KVGXXcmgw46Zkmm/yxHijE+I6HP0ux7H+OnTNDZFeabeC7zhDvrd2e+
	WNEEg97Pcf19g4yifBZyP4zlJx/28ZXNQ9Y0uxd8m6tZhURykJAEVo6hId5dpYiDPAzHYZ2BJQ1yl
	e8ymBXLrLNWmPE22qOPGjy98o913oCHCEQ15wPsAgqxyXzaeVWaFlZACzgeS9cHg0QKM98ZmJZsA5
	u+2CHfLUibditTE7VsoZXCWXdgR877Y6AqPI+eynbGN1XlwsheI6oAJ0jxkXf35ibnK0WkWrOeSuR
	9EqcD0Ctg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isW8t-0002wq-2V; Fri, 17 Jan 2020 18:14:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isW8c-0002vu-73
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 18:14:34 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2981620748;
 Fri, 17 Jan 2020 18:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579284869;
 bh=1r92zzD8XWpIGYHwCR61Uj+YCjejOaMCX1TbdsNW94c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o90IHGwWDzmgjs2UOwYCFlu/eT5jmUkchRD2VpUdmHw05PF5YZZXaUIrkVSDm6ZIL
 jgO15hnCyLC3L1DKQZAXSgt2Hsve/p3+/Oms6nRlG/5fFXq/sBTQ3uXOuL81hBTWVV
 +MtoTJVakZT8hdU7GLMvaaD9Rwxx8So843ysjPow=
Date: Fri, 17 Jan 2020 19:14:27 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 1/3] arm64: dts: allwinner: h6: tanix-tx6: enable emmc
Message-ID: <20200117181427.hy7qsyxwomsl3v2q@gilmour.lan>
References: <20200115193441.172902-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20200115193441.172902-1-jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_101430_278627_055AC93C 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7885495947968428936=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7885495947968428936==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="f3cltcqsa3lajhg5"
Content-Disposition: inline


--f3cltcqsa3lajhg5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 15, 2020 at 08:34:41PM +0100, Jernej Skrabec wrote:
> Tanix TX6 has 32 GiB eMMC. Add a node for it.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  .../dts/allwinner/sun50i-h6-tanix-tx6.dts     | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
> index 83e6cb0e59ce..8cbf4e4a761e 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
> @@ -31,6 +31,13 @@ hdmi_con_in: endpoint {
>  		};
>  	};
>
> +	reg_vcc1v8: vcc1v8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc1v8";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +	};
> +
>  	reg_vcc3v3: vcc3v3 {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc3v3";
> @@ -78,6 +85,15 @@ &mmc0 {
>  	status = "okay";
>  };
>
> +&mmc2 {
> +	vmmc-supply = <&reg_vcc3v3>;
> +	vqmmc-supply = <&reg_vcc1v8>;
> +	non-removable;
> +	cap-mmc-hw-reset;
> +	bus-width = <8>;
> +	status = "okay";
> +};
> +
>  &ohci0 {
>  	status = "okay";
>  };
> @@ -86,6 +102,10 @@ &ohci3 {
>  	status = "okay";
>  };
>
> +&pio {
> +	vcc-pc-supply = <&reg_vcc1v8>;
> +};
> +

Can you list all of the regulators for the H6 while you're at it (in a
preliminary patch, ideally)?

Thanks!
Maxime

--f3cltcqsa3lajhg5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXiH5gwAKCRDj7w1vZxhR
xSStAP9vFRUXKGi1EuMs8pb4/YHRNScqQrchGDt874B7pjrD1AD+PUlqtp134Y+C
7bsxe4hKGX8rhUf/fZ/H9oGhJ6/YJQM=
=gOtr
-----END PGP SIGNATURE-----

--f3cltcqsa3lajhg5--


--===============7885495947968428936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7885495947968428936==--

