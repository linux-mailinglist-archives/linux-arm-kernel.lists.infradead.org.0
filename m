Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0896F120F67
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 17:27:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DdwGO6Xc98IQdvPe+wUrB5Yp81/W81MCaSM6gSS8Zc=; b=bTrZ+lfCV/2dW+
	P01EUUyWwOVH8CC7GCsR/m5CXjZpizff1H3U65HICIPqfGc9zoi1u5hLm7HN1LVUM0fxKYmY1Yfjo
	GEX9LB5vKzwuRwXvlkw3EoUiUsYjXmG/SjuHLLXw3kGA9QCYExbfk8SprDceGKEYRIWOhKaCJLy+J
	HFJ+dPlQyDbF6oAlzknmpUG+niSRyAboGc4hQpi5nnf7pFBSNuH1k9HLHC04hzd0FBfwTYqiNg4Gr
	Yhz4OlTCDMjrUu/uVWrJe1OgUDOaPNK44yyXEj8uKU7iPuZ+7oBUAFCVg5P4Z3E6wWNUrbt5ZdIJz
	88Ji22umcb2rb4oOff/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igtDg-0003bE-4e; Mon, 16 Dec 2019 16:27:40 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igtDV-0003a6-Qf
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 16:27:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 4D5C5FB03;
 Mon, 16 Dec 2019 17:27:25 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sZtjjrcIejdo; Mon, 16 Dec 2019 17:27:24 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 92F69498AE; Mon, 16 Dec 2019 17:27:23 +0100 (CET)
Date: Mon, 16 Dec 2019 17:27:23 +0100
From: Guido =?iso-8859-1?Q?G=FCnther?= <guido.gunther@puri.sm>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH] arm64: dts: imx8mq-librem5-devkit: add accelerometer and
 gyro sensor
Message-ID: <20191216162723.GA23173@bogon.m.sigxcpu.org>
References: <20191203130336.18763-1-martin.kepplinger@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203130336.18763-1-martin.kepplinger@puri.sm>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_082730_024669_03CA39F0 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, robh@kernel.org, kernel@puri.sm,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Tue, Dec 03, 2019 at 02:03:36PM +0100, Martin Kepplinger wrote:
> Now that there is driver support, describe the accel and gyro sensor parts
> of the LSM9DS1 IMU.
> =

> Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
> ---
>  arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
> =

> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/ar=
ch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> index 683a11035643..7a92704c53ec 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> @@ -415,6 +415,13 @@
>  	pinctrl-0 =3D <&pinctrl_i2c3>;
>  	status =3D "okay";
>  =

> +	accel_gyro@6a {
> +		compatible =3D "st,lsm9ds1-imu";
> +		reg =3D <0x6a>;
> +		vdd-supply =3D <&reg_3v3_p>;
> +		vddio-supply =3D <&reg_3v3_p>;
> +	};
> +

Reviewed-by: Guido G=FCnther <agx@sigxcpu.org>
 -- Guido

>  	magnetometer@1e	{
>  		compatible =3D "st,lsm9ds1-magn";
>  		reg =3D <0x1e>;
> -- =

> 2.20.1
> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
