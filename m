Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3ACE2CEE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 11:13:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nlliyw3wlB5QloGFZOuu41kd0wdshAxudf74QY19ku8=; b=TYEAwCDWgJeneSM5LYk2sVCFA
	/TdRH7ZQmbijI7Rx3xGO27c6Tq2iW3hJqauwL5Ca11Pke21OShouzdAXlWAjQ8RTnnxPTtXMDsLU1
	dMiFYK9qgqiEHH+IDkl4tg34vMFZhLvb48OAPOVS0mg093v0Es5rg3weFSv7L7YxXo/An1a0//KM2
	2wv9Llewvgqeny8RUXiv6fVArnP6mHAmAFfi9R+a+AG2Kw63G3LqwwmMbo5PGiW2WCB+9L4SbPehu
	i6+Ulp5NAe0USLxZ8gyseSu4E8zkQtFlMV/xKOw9vCOk25o5j9aUi5k5SibkQ1v08i5CDYPipcjjv
	naCEj0X3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNZBG-0007Zg-CU; Thu, 24 Oct 2019 09:13:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNZB6-0007Yy-2B
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 09:13:09 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F91A2166E;
 Thu, 24 Oct 2019 09:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571908387;
 bh=94SGITL+w13cs21+YWm/2mrBkeLrhfSnXixPWxASHZI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e7eBgKB/LnonMT8DJUrTUn7M2Re+QL7lE04vQh3IVdmZgI515HPhtzdWbfAT77KMO
 l2C9GMpZ6riIM/3taO6yPSL4Kmzao9gbNPNwx4BxuboVrLGUhnnGJyKc3KckYB/nwE
 u0AXlOCkNvAR4pAEtOfX6eVx3ePI74WKvVbGBJkU=
Date: Thu, 24 Oct 2019 11:13:04 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH] arm64: dts: allwinner: h6: tanix-tx6: Add IR remote
 mapping
Message-ID: <20191024091304.kx27imohmuzufvtr@gilmour>
References: <20191024054135.3819223-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20191024054135.3819223-1-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_021308_128433_EFA24268 
X-CRM114-Status: GOOD (  16.53  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, Michael Lange <linuxstuff@milaw.biz>
Content-Type: multipart/mixed; boundary="===============3525069934129227498=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3525069934129227498==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yoemxlzmfbbaspsf"
Content-Disposition: inline


--yoemxlzmfbbaspsf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Oct 24, 2019 at 07:41:35AM +0200, Jernej Skrabec wrote:
> Tanix TX6 box comes with a remote. Add a mapping for it.
>
> Suggested-by: Michael Lange <linuxstuff@milaw.biz>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
> index 7e7cb10e3d96..e9428ad4266e 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
> @@ -81,6 +81,7 @@
>  };
>
>  &r_ir {
> +	linux,rc-map-name = "rc-tanix-tx5max";
>  	status = "okay";
>  };

It doesn't look like it's documented in the binding. Please add it
there as well.

Maxime

--yoemxlzmfbbaspsf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbFrIAAKCRDj7w1vZxhR
xSLmAQCrGSV7h6ubrgNIb93gmoTRSxqGtJeh8hrmzYdc3uFNbwD+MBU0i/CRyUNp
RH2WGZE4M2I578Xre1fIqzZ5VlEiaQk=
=Wl18
-----END PGP SIGNATURE-----

--yoemxlzmfbbaspsf--


--===============3525069934129227498==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3525069934129227498==--

