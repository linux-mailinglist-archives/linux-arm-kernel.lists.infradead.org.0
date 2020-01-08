Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF195133F5E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 11:36:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zDoQw0iVvkW5fn5xyZnvATANVmqMp5iF9diDr1SBR/Y=; b=r33b9Wi3XnngZq
	SexTv+ck9KL/pM28SQW3+FSSnMvwgkEy1pj4QWIxEpPXNYb0n0EzBzZXSsPHJFGuMjhhRm5ATRqVp
	aZMVUMTPXoE7CojyEwWz+kY5VYXQxjSl517jDOKyCNyxWTniTP3VA33NsRTmNaFAZWgDSlklZkfFl
	Vxg0T2ORXVGTzc4dXN7lAdeYu2tWqfOqs8jnuWeVoqmqgq2G+8C0jjEAoCbgI2ndWnR9ObFhEjn3T
	2PwYRaYeoEY6Kp6YF+2u2uCAgbiLM+YpTt++fzmIxsyDr/YReLSG4cHqE1WQE7sWwBH5UREL/UUzf
	wPePIhNh/fyEE5UlvQnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip8ha-0007Tb-Hz; Wed, 08 Jan 2020 10:36:38 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip8hT-0005yn-Dc
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 10:36:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lxA4tdRYNccBz8+uIieptb7nxGYgCVz6YIpeKabDFqc=; b=RtfFW0fvnfYO02giFt0nrkxob
 2f4hduQCZpP1STSg7y+Nix+Mp7nHXaO4qy1be8JGJRgkJZXqxyTWGwQfgHx1gyIPpB91yr5tS9xEM
 GaKUUVSZVGlzrASMFSOXjjkGtc3wTdlO24eRhI5GCmvhjW3u18/bCCBfJiBVriPT90Rwpt8lYajZZ
 tDARimBR0235pnlPqmMtbT7enOCRYNVXBiI0SnZDtcz3v/cz79je/XBWoTIE5qs72H74Eamv+4AKo
 MqfHdXagZ4rtV9WJfezG8xTjiKSbIgWac6Cx7/GxJb/o3tVGLYJqIX9EO5uqe4hsPnmvEhB4bOND2
 ocFKEDntw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:59668)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ip8fD-0006UG-S2; Wed, 08 Jan 2020 10:34:12 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ip8f9-0007tY-P4; Wed, 08 Jan 2020 10:34:07 +0000
Date: Wed, 8 Jan 2020 10:34:07 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v2 1/3] ARM: dts: imx6: phycore-som: fix arm and soc
 minimum voltage
Message-ID: <20200108103407.GL25745@shell.armlinux.org.uk>
References: <20200108101057.29599-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108101057.29599-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_023631_619642_6F1A7DF9 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: s.riedmueller@phytec.de, s.christ@phytec.de, chf.fritz@googlemail.com,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de, c.hemp@phytec.de,
 shawnguo@kernel.org, festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 11:10:55AM +0100, Marco Felsch wrote:
> The current set minimum voltage of 730000mV seems to be wrong. I don't

mV =3D milli-volt, /1000th of a volt. So you just said 730V.
=B5V or uV =3D micro-volt, which I think is what you mean here.

> know the document which specifies that but the imx6qdl datasheets says
> that the minimum voltage should be 0.925V for VDD_ARM (LDO bypassed,
> lowest opp) and 1.15V for VDD_SOC (LDO bypassed, lowest opp).
> =

> Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support for phyCORE-i.M=
X 6 SOM")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> v2:
> - use ldo bypassed values
> - adapt commit message
> =

>  arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm=
/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> index 6486df3e2942..f23eef1e54e0 100644
> --- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> @@ -107,14 +107,14 @@
>  		regulators {
>  			vdd_arm: buck1 {
>  				regulator-name =3D "vdd_arm";
> -				regulator-min-microvolt =3D <730000>;
> +				regulator-min-microvolt =3D <925000>;
>  				regulator-max-microvolt =3D <1380000>;
>  				regulator-always-on;
>  			};
>  =

>  			vdd_soc: buck2 {
>  				regulator-name =3D "vdd_soc";
> -				regulator-min-microvolt =3D <730000>;
> +				regulator-min-microvolt =3D <1150000>;
>  				regulator-max-microvolt =3D <1380000>;
>  				regulator-always-on;
>  			};
> -- =

> 2.20.1
> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> =


-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
