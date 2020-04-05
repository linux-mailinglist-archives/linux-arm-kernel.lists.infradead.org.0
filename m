Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 711E919EAB9
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 13:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HIld2cs/I6pXy7+o9d7xYchXyomkOOFR6fcBmq7EFsk=; b=M/1N8a3uVJvHdh
	vMRBq+RAa0dyxkOfULmPjIUT2MdCi9vtmOZGU61/vau5f63DqiJZHaFPqs6FZftQ4/NKL9oAgc1Id
	TnmDC5g3iq3F+7Qs7a3fOrdLtTNvixaWkNKsRLm/MIqGILmlmckV/dLQ0Ak4B+fFauKK+zP9FcMmZ
	PYmLtjZm+x9Bgme3sDbs7PF3veBfb3zhSHZDZE7Axhz75gDWClh+FmTeqSVuvAxAfDoj7fZk3BdP9
	LMcmYHeJlYRE0yyZqtQk/x8P0R37UaJ0j26jd4TjeNbX62v28LL3rVc+UHLv0gJOELOuCDM1flFWo
	PX167qc9Ej/AS0YzuwvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL3O3-0001LC-8i; Sun, 05 Apr 2020 11:24:23 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL3Nt-0001Jj-OB
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 11:24:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1586085849; bh=QY9Q7XhPkDOAvJvjFhI09s7uaGOfN/GI8egEfmyZajg=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=eW2k5TeS8ZTpaYYemfbZP+CQujIJUdxTTMBMfsdm58FNEmhftEgEqRJqr0nWSSO+z
 apZfhPIxZEVNsgdEgbVZIPUfRwvtgy9dNdH9HdavAbgnPesVTrAM/8g+GKrTjbF+L2
 3+YcWOpPNMIZQ1eDXEIX5+flxI9N0TT29MajBtgU=
Date: Sun, 5 Apr 2020 13:24:09 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [linux-sunxi] [PATCH 3/7] arm64: dts: allwinner: h6: set thermal
 polling time
Message-ID: <20200405112409.gl6kn7cjakwludf6@core.my.home>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-sunxi <linux-sunxi@googlegroups.com>
References: <20200405104913.22806-1-peron.clem@gmail.com>
 <20200405104913.22806-4-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200405104913.22806-4-peron.clem@gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_042414_201168_F51A90B1 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Sun, Apr 05, 2020 at 12:49:09PM +0200, Cl=E9ment P=E9ron wrote:
> Add reasonable thermal polling time for Allwinner H6.
> =

> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/bo=
ot/dts/allwinner/sun50i-h6.dtsi
> index d4d3963705f5..c3e4f09f60ce 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> @@ -905,8 +905,8 @@
>  =

>  	thermal-zones {
>  		cpu-thermal {
> -			polling-delay-passive =3D <0>;
> -			polling-delay =3D <0>;
> +			polling-delay-passive =3D <100>;
> +			polling-delay =3D <1000>;
>  			thermal-sensors =3D <&ths 0>;

This is not necessary, and will not do anything useful, since the driver
uses interrupts to update the thermal zone's temperature. Please keep the
values at 0.

With your settings the thermal zone would just add a polling timer in addit=
ion
to being updated every 250ms via THS interrupt. The real thermal measuremen=
ts
are available every 250ms anyway, so setting a smaller period here will not=
 do
anything useful, and 1s period will not lead to slower updates either.

Values of 0 mean tell the thermal zone to rely on thermal driver to update
the thermal zone by itself (via interrupt) and to not poll.

regards,
	o.

>  			trips {
> @@ -935,8 +935,8 @@
>  		};
>  =

>  		gpu-thermal {
> -			polling-delay-passive =3D <0>;
> -			polling-delay =3D <0>;
> +			polling-delay-passive =3D <100>;
> +			polling-delay =3D <1000>;
>  			thermal-sensors =3D <&ths 1>;
>  		};
>  	};
> -- =

> 2.20.1
> =

> -- =

> You received this message because you are subscribed to the Google Groups=
 "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msg=
id/linux-sunxi/20200405104913.22806-4-peron.clem%40gmail.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
