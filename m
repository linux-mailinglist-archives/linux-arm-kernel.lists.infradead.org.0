Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD2B1C3953
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVnVq2TGPC0tNfZFu/ciF8SOmdaAFjE8AfgekZLgKgM=; b=th/zk7gxPnniSF
	tSpJeoPH8bUcU1Q6NDfiPgNzEjp42ErabVVnYi86uMqbTNNPBf7JsjjOgC2AFLOoQUNyX72seqMGn
	bJ9QEtdWB66xfIWpM5yhZuNJ3b2vZVBS68MUjPVxePNcj1cErz+37entebnUgSM1QXet7EsuUnCVw
	yEfTvaeMT8yT23Q6NTAQ1nsZuu07YHCEIZc2D+t+kTbFqUgWCX/JJB/bFt8RpN2JTaPeu1g9MMSkW
	xL80mtIcqXzdbQR3jXgbQuNw536eV8htyIw096Bu6YO38ue3TUzukLQ6UtU2tnlv5U4KY7Xf2yIbx
	SKUXc8ei4MF4EDkXTpEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVaCT-0008LH-LZ; Mon, 04 May 2020 12:27:57 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVaCL-0008K1-Cz
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:27:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1588595263; bh=cx1Wq/7T8zSIWAw0CJ2Ua2ok9FxZ6uruVV53kd6Dou4=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=mXiBIoZOCJxM3zaUrAN4zaH8dozS+wugPfYFvbDlIjp3zLG4XBLIyhhJz4rhHADEo
 VMr3vz52gep9H+nxz8AUrjIzyhWGN0/C51/3xjztVvV4foOiBsNM2nyYx4a31Y6OaJ
 dxr++0U8NgHVCpCXO3Tr5TQuIaT1nm4zsgsosEmw=
Date: Mon, 4 May 2020 14:27:42 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2] arm64: dts: allwinner: h6: Use dummy
 regulator for Tanix TX6
Message-ID: <20200504122742.er2jd67bvrn2rfgp@core.my.home>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Piotr Oniszczuk <warpme@o2.pl>
References: <20200428142629.8950-1-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428142629.8950-1-peron.clem@gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_052749_609226_ABE271C9 
X-CRM114-Status: GOOD (  25.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Piotr Oniszczuk <warpme@o2.pl>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Cl=E9ment,

On Tue, Apr 28, 2020 at 04:26:29PM +0200, Cl=E9ment P=E9ron wrote:
> Tanix TX6 has a fixed regulator. As DVFS is instructed to change
> voltage to meet OPP table, the DVFS is not working as expected.
> =

> Avoid to introduce a new dedicated OPP Table where voltage are
> equals to the fixed regulator as it will only duplicate all the OPPs.
> Instead remove the fixed regulator so the DVFS framework will create
> dummy regulator and will have the same behavior.
> =

> Add some comments to explain this in the device-tree.
> =

> Reported-by: Piotr Oniszczuk <warpme@o2.pl>
> Fixes: add1e27fb703 ("arm64: dts: allwinner: h6: Enable CPU opp tables fo=
r Tanix TX6")
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  .../boot/dts/allwinner/sun50i-h6-tanix-tx6.dts | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
> =

> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts b/arch=
/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
> index be81330db14f..3e96fcb317ea 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
> @@ -48,7 +48,15 @@
>  };
>  =

>  &cpu0 {
> -	cpu-supply =3D <&reg_vdd_cpu_gpu>;
> +	/*
> +	 * Don't specify the CPU regulator, as it's a fixed
> +	 * regulator DVFS will not work as it is intructed
> +	 * to reach a voltage which can't be reached.
> +	 * Not specifying a regulator will create a dummy
> +	 * regulator allowing all OPPs.
> +	 *
> +	 * cpu-supply =3D <&reg_vdd_cpu_gpu>;
> +	 */

reg_vdd_cpu_gpu has =


    regulator-min-microvolt =3D <1135000>;
    regulator-max-microvolt =3D <1135000>;

top OPP is:

    opp@1800000000 {
            clock-latency-ns =3D <244144>; /* 8 32k periods */
            opp-hz =3D /bits/ 64 <1800000000>;

            opp-microvolt-speed0 =3D <1160000>;
            opp-microvolt-speed1 =3D <1100000>;
            opp-microvolt-speed2 =3D <1100000>;
    };

So I guess ignoring the voltage and not disabling this OPP may or may not w=
ork
based on SoC bin.

On Orange Pi One, there's a regulator that supports two voltages (that can't
support all the listed OPPs for H3), and cpufreq-dt can deal with that
automagically, if you specify OPP voltages via a tripplet of [prefered min =
max].
Kernell will log this in dmesg on boot:

[    0.672440] core: _opp_supported_by_regulators: OPP minuV: 1320000 maxuV=
: 1320000, not supported by regulator
[    0.672454] cpu cpu0: _opp_add: OPP not supported by regulators (1104000=
000)
[    0.672523] core: _opp_supported_by_regulators: OPP minuV: 1320000 maxuV=
: 1320000, not supported by regulator
[    0.672530] cpu cpu0: _opp_add: OPP not supported by regulators (1200000=
000)
[    0.672621] core: _opp_supported_by_regulators: OPP minuV: 1340000 maxuV=
: 1340000, not supported by regulator
[    0.672628] cpu cpu0: _opp_add: OPP not supported by regulators (1296000=
000)
[    0.672712] core: _opp_supported_by_regulators: OPP minuV: 1400000 maxuV=
: 1400000, not supported by regulator
[    0.672719] cpu cpu0: _opp_add: OPP not supported by regulators (1368000=
000)

And the list of available OPPs will be reduced at runtime to a supportable
set by the CPU regulator.

If you look at:

  https://megous.com/git/linux/commit/?h=3Dths-5.7&id=3Dd231770195913cf543c=
0cf9539deee2ecec06680

you'll see a bunch of OPPs for H3 that are specified as a range. So
for example if you want 480MHz, and your regulator can't produce
1.04V exactly, cpufreq will set the voltage to something supportable
in the range.

I think the proper fix is to fix the OPP table for H6, so that it uses
voltage ranges for each OPP and not a single fixed voltage, to support
boards that don't have the standard PMIC that goes with H6.

regards,
	o.

>  };
>  =

>  &de {
> @@ -68,7 +76,13 @@
>  };
>  =

>  &gpu {
> -	mali-supply =3D <&reg_vdd_cpu_gpu>;
> +	/*
> +	 * Don't specify the GPU regulator, see comment
> +	 * above for the CPU supply.
> +	 *
> +	 * mali-supply =3D <&reg_vdd_cpu_gpu>;
> +	 */
> +
>  	status =3D "okay";
>  };
>  =

> -- =

> 2.20.1
> =

> -- =

> You received this message because you are subscribed to the Google Groups=
 "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msg=
id/linux-sunxi/20200428142629.8950-1-peron.clem%40gmail.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
