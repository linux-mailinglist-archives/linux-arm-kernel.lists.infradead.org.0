Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7491B9041
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 14:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AGNdaiHUvN1ijmwh4xLURHqFkZvdHyi/z+o0+D0ib88=; b=rgobfelQBtEgVuKNmEpIz8Xws
	A9g0HQYE9SIBuVeGUKZ7w5ft8CGti2y0SPW1FF80E4VVP9oJmWc2lcBhTbEB1bzrMI2isz9dUh9Nm
	BDOM2145roFY/R79Hblpd5QkyAZ3beMYR2buvtKPCUWLdMNu6WwqQBOx2XhEYH5FV/dIpMtZZYqWM
	+e7fqKypcuGkaLzUYqhsLooR2kdhcmYGhEg2/Wxcbft0TJ1MVwbORUtSsmQFXE61e1DEBmGVnld/3
	vVZ8azDosx39sEHm6hEnDr42WoyFw77HvvCg/Ji6ZRxOz/sDQ1ibSo4/01NxwQ8to4bxgf3gmp7fb
	NWSqG/jDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSgqP-0000v4-UI; Sun, 26 Apr 2020 12:57:13 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSgqF-0000u0-Ew
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 12:57:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1587905821; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VP/mAC4xwNDT9V91K8RLHYB6nE7AooWd1wTlk6uRfp4=;
 b=AbMvu2fRXjCFm6r4XAiK02os0W+/STwoQ44/jocLsIYNNVAtsKI7bA90aQ74cVvhs5lLan
 y4d+F5TbWTAuE/jofT7aZmiSn7uZjLRQedgWMMNrNJZDpCXraPxAcOa+Dvq1A+6VE+7OU/
 EEEX6kOGv5zhpzoTKdy5z9BpNqSjfRo=
Date: Sun, 26 Apr 2020 14:56:47 +0200
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v7 08/12] arm: dts: s5pv210: Add node for SGX 540
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Message-Id: <NYBE9Q.YH08US7A7DC3@crapouillou.net>
In-Reply-To: <3fd18c747426e15fd1f3500b9c4adce2db9ddd0c.1587760454.git.hns@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
 <3fd18c747426e15fd1f3500b9c4adce2db9ddd0c.1587760454.git.hns@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_055703_865006_B9F34C40 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, Jonathan Bakker <xc-racer2@live.ca>,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, letux-kernel@openphoenux.org,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?iso-8859-1?q?Beno=EEt?= Cousson <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



Le ven. 24 avril 2020 =E0 22:34, H. Nikolaus Schaller =

<hns@goldelico.com> a =E9crit :
> From: Jonathan Bakker <xc-racer2@live.ca>
> =

> All s5pv210 devices have a PowerVR SGX 540 (revision 120) attached.
> =

> There is no external regulator for it so it can be enabled by default.
> =

> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> ---
>  arch/arm/boot/dts/s5pv210.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> =

> diff --git a/arch/arm/boot/dts/s5pv210.dtsi =

> b/arch/arm/boot/dts/s5pv210.dtsi
> index 2ad642f51fd9..abbdda205c1b 100644
> --- a/arch/arm/boot/dts/s5pv210.dtsi
> +++ b/arch/arm/boot/dts/s5pv210.dtsi
> @@ -512,6 +512,19 @@ vic3: interrupt-controller@f2300000 {
>  			#interrupt-cells =3D <1>;
>  		};
> =

> +		gpu: gpu@f3000000 {
> +			compatible =3D "samsung,s5pv210-sgx540-120";
> +			reg =3D <0xf3000000 0x10000>;
> +			interrupt-parent =3D <&vic2>;
> +			interrupts =3D <10>;
> +			clock-names =3D "core";
> +			clocks =3D <&clocks CLK_G3D>;
> +
> +			assigned-clocks =3D <&clocks MOUT_G3D>, <&clocks DOUT_G3D>;
> +			assigned-clock-rates =3D <0>, <66700000>;
> +			assigned-clock-parents =3D <&clocks MOUT_MPLL>;

What are these clocks for, and why are they reparented / reclocked?

Shouldn't they be passed to 'clocks' as well?

-Paul

> +		};
> +
>  		fimd: fimd@f8000000 {
>  			compatible =3D "samsung,s5pv210-fimd";
>  			interrupt-parent =3D <&vic2>;
> --
> 2.25.1
> =




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
