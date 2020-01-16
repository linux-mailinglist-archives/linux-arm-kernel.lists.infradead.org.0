Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB7C13D5AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 09:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PIsLXtBextxJpGglucx1f2Do7Qd2+f/MEeQsS+sOyZo=; b=H+vX9hD5d28BV4H/Z6Gxi2M2U
	2q3qFnSmld7jF6AhZYoeojSCdBkJCyB3W88KtH6TY8KRg8bxv052KG/C5WWLiSe/Qz0a0K37f58Z9
	/i48tJQ9UoMtwMfADrYmzTcB5DqX49TurEilxswHvbmfvRYXs8FbaepnKXvYkJqiS9G1Ho69JkeRO
	iu2c+USmyVRJoqVL+V8Z8oh0V76TEfKdZ4V6yPMOc9JqBaV7R0DG9NtubBPGU/ioVkpfsODWKgnfe
	8rxbwrk7ZHpGXXaRg/ooLnlT2M6cDsX1ayQ4MgA7Ee4qzqoZT0pP4jGtVCiwgUyy52CAQXPrpEArC
	bGo1JoCtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is0Bi-0005sc-8G; Thu, 16 Jan 2020 08:07:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is0B5-0005ZV-Lz
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 08:07:01 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A5D1E2077B;
 Thu, 16 Jan 2020 08:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579162015;
 bh=kmovhnOdTNZF+05ykgKH5WX6MCS0s6lAPI/WYzZejfo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hCEXiojqof9qt7912bwlCFqbdFjcEVrnU04HWRVU8DZuzR9+zWv2GufSGeRf3NNPY
 wLsrUqw3CbnAn/rbF4fNE2C2VdgWy9FzamqLtF6I1PXrfNa6W8q8wSefQyQcBgRtsH
 fRvonWTSB+5Vz+tdIZOcvJuglJZgx5bwdOapkMek=
Date: Thu, 16 Jan 2020 09:06:52 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH] arm64: dts: allwinner: h6: tanix-tx6: Use internal
 oscillator
Message-ID: <20200116080652.mp5z7dtrtj3nyhpq@gilmour.lan>
References: <20200113180720.77461-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20200113180720.77461-1-jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_000655_803615_D6DAB0CB 
X-CRM114-Status: GOOD (  20.55  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3562473755100271878=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3562473755100271878==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3pzc2q6hpze4pego"
Content-Disposition: inline


--3pzc2q6hpze4pego
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Jernej,

On Mon, Jan 13, 2020 at 07:07:20PM +0100, Jernej Skrabec wrote:
> Tanix TX6 doesn't have external 32 kHz oscillator, so switch RTC clock
> to internal one.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>
> While this patch gives one possible solution, I mainly want to start
> discussion why Allwinner SoC dtsi reference external 32 kHz crystal
> although some boards don't have it. My proposal would be to make clock
> property optional, based on the fact if external crystal is present or
> not. However, I'm not sure if that is possible at this point or not.

It's probably a bit of a dumb question but.. are you sure the crystal
is missing?

The H6 datasheet mentions that the 32kHz crystal needs to be there,
and it's part of the power sequence, so I'd expect all boards to have
it.

> Driver also considers missing clock property as deprecated (old DT) [1],
> so this might complicate things even further.
>
> What do you think?

I'm pretty sure (but that would need to be checked) that we never got
a node without the clocks property on the H6. If that's the case, then
we can add a check on the compatible.

> Best regards,
> Jernej
>
> [1] https://elixir.bootlin.com/linux/latest/source/drivers/rtc/rtc-sun6i.c#L263
>
>  arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
> index 83e6cb0e59ce..af3aebda47bb 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
> @@ -91,6 +91,12 @@ &r_ir {
>  	status = "okay";
>  };
>
> +/* This board doesn't have external 32 kHz crystal. */
> +&rtc {
> +	assigned-clocks = <&rtc 0>;
> +	assigned-clock-parents = <&rtc 2>;
> +};
> +

This should be dealt with in the driver however.

Maxime

--3pzc2q6hpze4pego
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXiAZnAAKCRDj7w1vZxhR
xfp9AQCqNNEBQxQevPB260RWbeeZq1fZKNeOc5q4PJQniM8vxQD/T0iCbunuJWB3
Af65fnaGfBRmzV4wO0oHexIh7gFK6g4=
=C6EU
-----END PGP SIGNATURE-----

--3pzc2q6hpze4pego--


--===============3562473755100271878==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3562473755100271878==--

