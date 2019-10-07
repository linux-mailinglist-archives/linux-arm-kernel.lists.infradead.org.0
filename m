Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22959CDFBF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 12:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qIh9YxzsiaoJmJHxSU0Sfc3mk5BnQ+ZedYqH1NAfyA4=; b=gzWSgwEWLSzv2vhKMz03ZZKuO
	8vx1/QeN/K9TqwB52Avm7R4LmbVON1ouyjbEIaHyT4r8q5NCC1F3bge/wdbKdGjzy1SPR+pDagA7K
	kmq5wt9j/1XZKQPC7/Q4yO15VE49MzvTre15ognWhTIt8AgW1IXAe2g8uF53qfZi9Ykn0BKekIM2I
	FN+odIoY6hdorql4wYEGtvcj6j9dSTMT2uI0y+wQ7AAUm4XRlgpTwm1DhpR93cmZREq54JxqSKWy/
	nlSmdYO+T9rMhVz83vdpxQDpACBeNtT5NW1SKOMV2ey1dZzpF/VSrCDcoV8AzjeLfdW6UcW5JETpm
	ZRaxt1ZJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHQhZ-0002Ct-TP; Mon, 07 Oct 2019 10:57:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHQhT-0002CS-8d
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 10:57:12 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6FDA920867;
 Mon,  7 Oct 2019 10:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570445831;
 bh=AALnra5vbHx8f6yVsAevgDkTKmsX71cNwxA0cJMD1fQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=siVCpq8WhOMrMwv7Gq+RexhGWPE/5wuuGZWmusjEN1rInKUhFBqtR2ooxS0Y0Nlb6
 OsD+i0bGLfartsntJWJCcZ38q986Pk+QWMc06kAoZIZt3vSU27Q+gw45clMkjUYML7
 bWZC55o4/yOiqE8DRn51u/ZfkN2rM+zA/Idc2DfE=
Date: Mon, 7 Oct 2019 12:57:08 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v10 5/6] arm64: dts: allwinner: a64: Add MIPI DSI pipeline
Message-ID: <20191007105708.raxavxk4n7bvxh7x@gilmour>
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
 <20191005141913.22020-6-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20191005141913.22020-6-jagan@amarulasolutions.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_035711_325957_7005D7E0 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-sunxi <linux-sunxi@googlegroups.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, michael@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============7007235537250047114=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7007235537250047114==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="msd5tjzsj4hwrcaz"
Content-Disposition: inline


--msd5tjzsj4hwrcaz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Oct 05, 2019 at 07:49:12PM +0530, Jagan Teki wrote:
> Add MIPI DSI pipeline for Allwinner A64.
>
> - dsi node, with A64 compatible since it doesn't support
>   DSI_SCLK gating unlike A33
> - dphy node, with A64 compatible with A33 fallback since
>   DPHY on A64 and A33 is similar
> - finally, attach the dsi_in to tcon0 for complete MIPI DSI
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> index 69128a6dfc46..ad4170b8aee0 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> @@ -382,6 +382,12 @@
>  					#address-cells = <1>;
>  					#size-cells = <0>;
>  					reg = <1>;
> +
> +					tcon0_out_dsi: endpoint@1 {
> +						reg = <1>;
> +						remote-endpoint = <&dsi_in_tcon0>;
> +						allwinner,tcon-channel = <1>;
> +					};
>  				};
>  			};
>  		};
> @@ -1003,6 +1009,38 @@
>  			status = "disabled";
>  		};
>
> +		dsi: dsi@1ca0000 {
> +			compatible = "allwinner,sun50i-a64-mipi-dsi";
> +			reg = <0x01ca0000 0x1000>;
> +			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&ccu CLK_BUS_MIPI_DSI>;
> +			clock-names = "bus";

This won't validate with the bindings you have either here, since it
still expects bus and mod.

I guess in that cas, we can just drop clock-names, which will require
a bit of work on the driver side as well.

Maxime

--msd5tjzsj4hwrcaz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZsaBAAKCRDj7w1vZxhR
xXn6AQCt+htvtym5wdP+F2AnazteXITvMk5Rfl6c9YFMfW0GswD+MILpcTLFvoCd
opCA2BNbbbbCbvP1aXhnkHjZupGsbg4=
=Qm2A
-----END PGP SIGNATURE-----

--msd5tjzsj4hwrcaz--


--===============7007235537250047114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7007235537250047114==--

