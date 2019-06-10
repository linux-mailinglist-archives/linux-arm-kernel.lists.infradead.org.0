Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EFE3B918
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:11:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=USO8hqbDMYUXl+Jwa/gLzUHkMopeEKrxkG2r90Q4BIk=; b=Lj7Ge7N/NMoZhF
	vQRO6B3czxgSvE+3lKnV/iHV0oDMZvRaZoIOI7d+Pc7E9Mmg4qIMjiuw/QhZhrzqgy83JxvkKgJnM
	nSTKKWKBBkniAQ0FMcUdbA8LgTb5Hd6S/0EtBUilScgNt/ogICXDv+AFilcmKjOpp4jBkao3a6HlJ
	rBgIEAFrcRjZI5wtLMUd9JRzLYEsOdkckQcexFlIUSe84Kq46o2D1JBlvIrsZRCCqevpu6BOJIsdx
	iFlHIaPCA3PgPo5v0vhw7xc41Zz5NiTDgSiBe7lAxlTXu2jqFUAInkEkgBy3gPn+ZOHS+AHcPNlXB
	VUadOUGQS54hNhCgSlKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMth-0003if-I0; Mon, 10 Jun 2019 16:11:49 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haMtT-0003hE-J5
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 16:11:41 +0000
Received: by mail-pl1-x643.google.com with SMTP id bh12so3848876plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 09:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=QET9pg+wg4oBG+Qp5Q1cj6O60aOdmHNnSi9zeIidUAw=;
 b=UkbcdtV1H7m1I0gRKzsmcd6Znvvr4WjHTOqLxmQpJdxVjeRm7Wicg3zXZm6YupWk1j
 cun43ZADHgOP6ggmqFg60lZfwvSO5MXKFTvFw0TRR0WfG2y9dypk517rd/2oJvXU/J5E
 sKPo9mZF4qdBLlUNuZGELaTpcM2GyzwQVmK46iJ+kqInACxc88sScLfgvE05VFDIH4Vz
 Bt6Ln5rCnz5Z0mBvxYns3xkVaMayygOxI55YjBX8w0hexmbY0+Ry37/8nIgI8Op41Ixn
 3HKnTZoQzqIQo7H97TINZI6yh44gqpm6eVzlVjAKw1bRVO9fEy0dHbprol7ldHvDMvgH
 g8QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=QET9pg+wg4oBG+Qp5Q1cj6O60aOdmHNnSi9zeIidUAw=;
 b=FTmAzpeBu02CkX0FVd0vIOXF2ZlsNRVqm2mC4a8C98yFe0hZ+rWH/5ZhwJVHCnKTaZ
 t09zIdjI5UTfM1zQ/l8BZIlLG2O10VAwUPxtYpp1qtTGTi/P5d1wU/4h4Zed6Q1zRkhr
 HVurROVG5tm+YlNYlNnBZm/vDvhLXFMaKHSF9YlOUNRynvRXeCtoWINjSaen9KOQU448
 HLGqOPlQKDOIpgQQFdtDHm1UnTPmHhoF2DaqL+5iU1tu0qpbZ4iJb/EzKUY5vzPoCz0U
 Ti/BDe7H0RPf8me09OmpA4DO9ulCqv9PSz9iplZfoSWjlXaP3uSw1TSGcds8b+LSjNhF
 hjdg==
X-Gm-Message-State: APjAAAVRo1ilWMj6T0iM6vZyPx+BDj5V0IbPg6tehameVHv6ct0VdFVe
 a30vciZXPWEUMdlYpjb35w3h
X-Google-Smtp-Source: APXvYqy3Ql2jZPLLK7tXmhrVL1GGBblVr3ED1gm9qp676tSVKbCk6HseyNK9zBGjo0G0pvapjBsw8w==
X-Received: by 2002:a17:902:d915:: with SMTP id
 c21mr4568605plz.335.1560183094968; 
 Mon, 10 Jun 2019 09:11:34 -0700 (PDT)
Received: from mani ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id 26sm11070938pfi.147.2019.06.10.09.11.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 09:11:34 -0700 (PDT)
Date: Mon, 10 Jun 2019 21:41:28 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH 4/7] arm64: dts: actions: Add uSD and eMMC support for
 Bubblegum96
Message-ID: <20190610161128.GC31461@mani>
References: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
 <20190608195317.6336-5-manivannan.sadhasivam@linaro.org>
 <1381305a-8585-9dcf-6b43-34e852e785ab@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1381305a-8585-9dcf-6b43-34e852e785ab@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_091139_651675_3802AF42 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org, sboyd@kernel.org,
 linux-actions@lists.infradead.org, linus.walleij@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 thomas.liau@actions-semi.com, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Andreas,

On Mon, Jun 10, 2019 at 04:08:26PM +0200, Andreas F=E4rber wrote:
> Hi Mani,
> =

> Am 08.06.19 um 21:53 schrieb Manivannan Sadhasivam:
> > Add uSD and eMMC support for Bubblegum96 board based on Actions Semi
> > Owl SoC.
> =

> What information does "based on Actions Semi Owl SoC" give us? :)
> The board name should be unique enough - Owl is a family of SoCs,
> "actions:" is in the subject and "s900-" is in the filename.
> =


Makes sense!

> > SD0 is connected to uSD slot and SD2 is connected to eMMC.
> =

> Suggest to add that as comments above the two nodes instead.
> =


Okay.

> > Since there is no PMIC support added yet, fixed regulator has been
> > used as a regulator node.
> =

> Fine with me - maybe add a comment and make sure it's aligned with the
> schematics naming wrt PMIC.
> =


Okay.

> > =

> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  .../boot/dts/actions/s900-bubblegum-96.dts    | 50 +++++++++++++++++++
> >  1 file changed, 50 insertions(+)
> > =

> > diff --git a/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts b/arch/a=
rm64/boot/dts/actions/s900-bubblegum-96.dts
> > index 732daaa6e9d3..3b596d72de25 100644
> > --- a/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
> > +++ b/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
> > @@ -13,6 +13,9 @@
> >  =

> >  	aliases {
> >  		serial5 =3D &uart5;
> > +		mmc0 =3D &mmc0;
> > +		mmc1 =3D &mmc1;
> > +		mmc2 =3D &mmc2;
> =

> Sort them alphabetically?
> =


Ack.

> >  	};
> >  =

> >  	chosen {
> > @@ -23,6 +26,14 @@
> >  		device_type =3D "memory";
> >  		reg =3D <0x0 0x0 0x0 0x80000000>;
> >  	};
> > +
> > +	reg_3p1v: regulator-3p1v {
> > +		compatible =3D "regulator-fixed";
> > +		regulator-name =3D "fixed-3.1V";
> > +		regulator-min-microvolt =3D <3100000>;
> > +		regulator-max-microvolt =3D <3100000>;
> > +		regulator-always-on;
> > +	};
> >  };
> >  =

> >  &i2c0 {
> > @@ -241,6 +252,45 @@
> >  			bias-pull-up;
> >  		};
> >  	};
> > +
> > +	mmc0_default: mmc0_default {
> > +		pinmux {
> > +			groups =3D "sd0_d0_mfp", "sd0_d1_mfp", "sd0_d2_d3_mfp",
> > +				 "sd0_cmd_mfp", "sd0_clk_mfp";
> > +			function =3D "sd0";
> > +		};
> > +	};
> > +
> > +	mmc2_default: mmc2_default {
> > +		pinmux {
> > +			groups =3D "nand0_d0_ceb3_mfp";
> > +			function =3D "sd2";
> > +		};
> > +	};
> =

> Wouldn't it make more sense to move these and the below pinctrl-* to
> s900.dtsi for sharing with other theoretical boards? I really dislike
> the imx model where pin muxing is duplicated into each individual board.
> =


Matter of taste. IMO pinctrl config belongs to the board design and I don't
wanna dump all combinations in the soc dtsi.

Thanks,
Mani

> Regards,
> Andreas
> =

> > +};
> > +
> > +&mmc0 {
> > +	status =3D "okay";
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&mmc0_default>;
> > +	no-sdio;
> > +	no-mmc;
> > +	no-1-8-v;
> > +	cd-gpios =3D <&pinctrl 120 GPIO_ACTIVE_LOW>;
> > +	bus-width =3D <4>;
> > +	vmmc-supply =3D <&reg_3p1v>;
> > +	vqmmc-supply =3D <&reg_3p1v>;
> > +};
> > +
> > +&mmc2 {
> > +	status =3D "okay";
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&mmc2_default>;
> > +	no-sdio;
> > +	no-sd;
> > +	non-removable;
> > +	bus-width =3D <8>;
> > +	vmmc-supply =3D <&reg_3p1v>;
> >  };
> >  =

> >  &timer {
> =

> -- =

> SUSE Linux GmbH, Maxfeldstr. 5, 90409 N=FCrnberg, Germany
> GF: Felix Imend=F6rffer, Mary Higgins, Sri Rasiah
> HRB 21284 (AG N=FCrnberg)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
