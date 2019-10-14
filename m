Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 648E4D5B7A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 08:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2Mg4BQ7/62qXtdfmm+RNRiJ3IVWYaSzjscjTXb0RHo=; b=Ko2u5pud/uEYrV
	DQOHQqClV2dywUh3cdWelRCkbPKBvihgeLfRk5UzZlKuqZGCn7cexFW0K/En98KRDcbYkujiuKdEU
	oIRl3P9q7ZCOJYZsnvaJorDaQhpC7UHbsFtAyIrHJa4eYGbkp9FiGG2lYjR0lVd8ZHxnKV1qg2j0Z
	fJlUgRivxGi5TWpz3zau10Y9LEUSoUh1zSg3GPoLcBRU1Jl83oQIdrExkbZ6uK3QAnlxdaF3FEjcZ
	PTdCGXfVFnc3nx4qgHaYDMd8VJymoMqK8FQ3WnAj6DZpUATprgYZdGVHCLamq/waufRbwTSxnJN1L
	91Y+pqkT1qRiycshKIbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJu0h-0005q6-Rw; Mon, 14 Oct 2019 06:39:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJu0I-0005ij-UF
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 06:38:52 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6F21A205C9;
 Mon, 14 Oct 2019 06:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571035130;
 bh=Pv06LrYxjw3dHimznfA8fTDJTvLiXVi82RdsmJkilkE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ym2zzes0RgPVlJ41alo9e1pNe5Qf3s7zFAPxMepB3RtBqegaPeXybOPzzIpmG0TJ1
 LSr5uCoUiiaRbILPn7fNnqhYRxcSssqzA4YEaw6aDgsprEg8VtLKm9Lq68JdG3OAhx
 Mroj1/L0ashHD5GNl001HEb+1+AV5+5C4fnuFReI=
Date: Mon, 14 Oct 2019 14:38:07 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH 1/1] ARM: dts: imx28: add poweroff support
Message-ID: <20191014063801.GD12262@dragon>
References: <20190923091700.22517-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923091700.22517-1-sebastien.szymanski@armadeus.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_233851_003685_E82CBD99 
X-CRM114-Status: GOOD (  15.47  )
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
 Sascha Hauer <s.hauer@pengutronix.de>,
 Julien Boibessot <julien.boibessot@armadeus.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 11:17:00AM +0200, S=E9bastien Szymanski wrote:
> This add poweroff support using the generic syscon-poweroff driver.
> =

> Signed-off-by: S=E9bastien Szymanski <sebastien.szymanski@armadeus.com>
> ---
>  arch/arm/boot/dts/imx28.dtsi | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> =

> diff --git a/arch/arm/boot/dts/imx28.dtsi b/arch/arm/boot/dts/imx28.dtsi
> index e14d8ef0158b..37fa8131a022 100644
> --- a/arch/arm/boot/dts/imx28.dtsi
> +++ b/arch/arm/boot/dts/imx28.dtsi
> @@ -1114,8 +1114,16 @@
>  			};
>  =

>  			power: power@80044000 {
> +				compatible =3D "syscon", "simple-mfd";
>  				reg =3D <0x80044000 0x2000>;
> -				status =3D "disabled";
> +
> +				mxs_poweroff: mxs-poweroff {

Node name should be generic.  So 'poweroff' might be better.

> +					compatible =3D "syscon-poweroff";
> +					regmap =3D <&power>;
> +					offset =3D <0x104>;
> +					value =3D <0x3E770001>;

Use lowercase for hex value.

> +					status =3D "disabled";

Why need to disable it by default?

Shawn

> +				};
>  			};
>  =

>  			saif1: saif@80046000 {
> -- =

> 2.21.0
> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
