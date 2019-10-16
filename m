Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6C7D9448
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 16:50:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3nQiGaVnc5VoClouHm0XelVgpKDchVjy7KG8CMbWOts=; b=VPO7TpnVQ6oi04+y+Zg/lT45v
	yyoYmupr7QioJYT3+zYYN/enuUjehKpPLqKi6RX9IGRTXg+Zql+liLJBjPDy5jyMhA4IXxFsy4Gvp
	lvhsJrBUEawA7gkKqumIcVs/6DKtsrhz9s9qc8EClctNJsfgQ6ffMxUBa9r+erQzhme/+d839diRd
	Zi8PY4VxOuQ+Am2VBoTX1c/osmtRJamRhAuoSP5OXK9XtfoApnEzO9lFscseI6QG1d9eHGZVhiUIx
	Ei/TFWhOXDxDCwV6BpS6eLlj+ws4a8JH1HeXGODda+a02MyYdnJYxKyy5zXb48BVP1GFbOMVwvyqa
	rJPOyH+5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkch-0008Un-1I; Wed, 16 Oct 2019 14:49:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkcY-0008UN-0R
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 14:49:51 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 022C32168B;
 Wed, 16 Oct 2019 14:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571237389;
 bh=TVHkTQZcT9q9ZjJzYOSkolVYYuNP2y6v7NQ51/mM5q8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bcf31tblggd+MJJkjJ9MWL3/6Xm57VNAYnvAEXEXu/qG9MTqKIwOaCCRWRD6tCt+u
 pUnsMBBBwSJMxdN+D/t5cMU9aJACRsrTR5piIFe6N4GEmJ1uGCotm3uyYDWh+9v5lN
 GO/aBm+6T/Z1kI0UaQXd3CDgadNWxjpsme7Jfbg8=
Date: Wed, 16 Oct 2019 16:49:46 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Alistair Francis <alistair@alistair23.me>
Subject: Re: [PATCH] arm64: dts: sun50i: sopine-baseboard: Expose serial1,
 serial2 and serial3
Message-ID: <20191016144946.p3tm67vh5lqigndn@gilmour>
References: <20191012200524.23512-1-alistair@alistair23.me>
MIME-Version: 1.0
In-Reply-To: <20191012200524.23512-1-alistair@alistair23.me>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_074950_073843_2D15F48E 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: alistair23@gmail.com, wens@csie.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1477918236341637499=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1477918236341637499==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n5scbjei5snz6qva"
Content-Disposition: inline


--n5scbjei5snz6qva
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sat, Oct 12, 2019 at 01:05:24PM -0700, Alistair Francis wrote:
> Follow what the sun50i-a64-pine64.dts does and expose all 5 serial
> connections.
>
> Signed-off-by: Alistair Francis <alistair@alistair23.me>
> ---
>  .../allwinner/sun50i-a64-sopine-baseboard.dts | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> index 124b0b030b28..49c37b21ab36 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> @@ -56,6 +56,10 @@
>  	aliases {
>  		ethernet0 = &emac;
>  		serial0 = &uart0;
> +		serial1 = &uart1;
> +		serial2 = &uart2;
> +		serial3 = &uart3;
> +		serial4 = &uart4;
>  	};
>
>  	chosen {
> @@ -280,6 +284,27 @@
>  	};
>  };
>
> +/* On Pi-2 connector */
> +&uart2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart2_pins>;
> +	status = "disabled";
> +};
> +
> +/* On Euler connector */
> +&uart3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart3_pins>;
> +	status = "disabled";
> +};
> +
> +/* On Euler connector, RTS/CTS optional */
> +&uart4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart4_pins>;
> +	status = "disabled";
> +};

Since these are all the default muxing, maybe we should just set that
in the DTSI?

Maxime

--n5scbjei5snz6qva
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXacuCgAKCRDj7w1vZxhR
xakUAQDKMLPFYrXgJoIqujk/rfbeUS2P3a0rGnGDrfrvSZkCMAD+JRTAJwfGyT0T
0GAa8ejfAZiZ2/8OCoW/Y++QrQ3JhA4=
=Q2Sd
-----END PGP SIGNATURE-----

--n5scbjei5snz6qva--


--===============1477918236341637499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1477918236341637499==--

