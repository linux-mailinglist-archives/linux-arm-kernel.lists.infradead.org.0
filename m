Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6D6F383B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 20:10:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5V3G+uz+QOwwqRCjYyrGLg11ptZJ9e+wV9eHZah+ZG0=; b=a0mpdE3G1kYJxU
	S+Y/YZPABOC/ozn+gp8RjUJsSWTHSHPaSbK6ggScpCeCdiY8v4LafMRFwqWqQfq+Kcm+7DM1Ucma3
	8D77C/cXHPclW0Vhwsi0loG95nRJpeMKgUlZW8dCWiRzAWDqJv3VnY7LKktXp1C/FbChQnxkxxikZ
	VrjA9GgznPNIEu6hhGPDcIrqIXcXQWpHwwcux02L1cNe6B2eGjZ4dAqS8ASuQiGIl+ras3IDs16GU
	QzHceH8py/infauSu7h0UQJiB8g6HirXqnNvtrpDV1cvB7eA2x/UiqHK51UlgmMBgaYR1+u9MM+3W
	hUCyMe6j4CBsBLrwyPNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSnB1-0005UK-2u; Thu, 07 Nov 2019 19:10:39 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSnAt-0005TN-WC
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 19:10:33 +0000
Received: by mail-il1-x142.google.com with SMTP id p6so2844299ilp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 11:10:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Pkb5jMFuLCEWCYW/JsNLSSIWv1a87ksEuR1XT2B21OU=;
 b=E4yuGYMS1pq9v1+WF35EsKgSb9HtDZWkJ3jNVKnVOGnXkuxGKERzeomvsq61IKZ+BS
 5vDnyoe59CafR7ujung+DFAh5VrxhyezrfAPIK46pLKEGDol4nS0bHrghLG1+x8cP+Tz
 XWUXgXGAWb8K+OefOWhoAmQ6PtfilZ7rpXyTKa4SB3qk0/4cnIWvk218Qha95C9QUZdP
 awkOnTqUy+AocpO/EOWrjgGMutNupXwNBRObdnRnLCRIkg5KqEFN18PnhUM/IkRgjdT0
 9bDxLZtA6buuUF4XI8ScG6JyWq3De1yqQKC53DMhnvo4wkyS+H61eoKPf70b+0N44EcV
 lLiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Pkb5jMFuLCEWCYW/JsNLSSIWv1a87ksEuR1XT2B21OU=;
 b=DHd3rni0pvwPHtAJPLk+E5fNz7LZxpIYlahmM+YmkpvmsHt1kk+rsXAGq5qdXQ77iF
 NIkTMO3pBvTYaLhd7k+ACqp06yhxZvW8jWS9ykS3O8obA3StduFIC0gDh6wqimOWhpIb
 n5eEUPZtrBUvVqJAFUJT0I2IhdBLW6eDINj8QF8qFibb2B0Az6g4uA+s/zVh73HfEadS
 IOeaZCKuNwz7PuiJfQwGxgTpbrWOoGt9tDYPPAvsukq1kWSrg+dhQ5G5mSwHgHVHilPJ
 4/sOKito61qsoXntMpEo/5PJ7I5hUALXgWEMeypozVkOL4mZ8QALm92GO/7gBu3W1M1D
 j/ow==
X-Gm-Message-State: APjAAAVbn3ZSpKBcKGrhnEraSn6q9gOzhrQpCEU03sr1qWwBVumS4+hP
 iqGu3hvLkFeR76aq/DUzWUdtm2V76U1w1qxvUMLF8Q==
X-Google-Smtp-Source: APXvYqwHrMqf0QGsixAbdr9YO/brEv5lOHVZjAT153yUV3MxVGAnMIC9SdFTs2dZJSNR204F/AOxPhvAJj2cdqQv4XA=
X-Received: by 2002:a92:3b04:: with SMTP id i4mr6543252ila.211.1573153830610; 
 Thu, 07 Nov 2019 11:10:30 -0800 (PST)
MIME-Version: 1.0
References: <20191021205426.28825-1-rjones@gateworks.com>
In-Reply-To: <20191021205426.28825-1-rjones@gateworks.com>
From: Bobby Jones <rjones@gateworks.com>
Date: Thu, 7 Nov 2019 11:10:19 -0800
Message-ID: <CALAE=UAEFobA2SXOTJWAqexg+VNN_VTXGLGH+VwqqjKkuFwddg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx: ventana: add fxos8700 on gateworks boards
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Marco Felsch <m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_111032_094426_AC695978 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Shawn,

I just wanted to follow up with this and see if you had a chance to
look at this. I submitted this after responding to Marco on my initial
submission but haven't heard anything since and didn't want it to fall
through the cracks. It may be worth mentioning that both the bindings
for the fxos8700 and lsm9ds1 have been accepted by iio.

In addition to this submission I have the following that I'd like to
check in on as well:

[PATCH] ARM: dts: imx: imx6qdl-gw553x.dtsi: add lsm9ds1 iio imu/magn support
[PATCH] ARM: dts: imx: Add GW5907
[PATCH] ARM: dts: imx: Add GW5912
[PATCH] ARM: dts: imx: Add GW5913
[PATCH] ARM: dts: imx: Add GW5910

Please let me know if there's anything I can do. Thanks!

Regards,
Bobby




On Mon, Oct 21, 2019 at 1:54 PM Robert Jones <rjones@gateworks.com> wrote:
>
> Add fxos8700 iio imu entries for Gateworks ventana SBCs.
>
> Signed-off-by: Robert Jones <rjones@gateworks.com>
> ---
>  arch/arm/boot/dts/imx6qdl-gw52xx.dtsi | 5 +++++
>  arch/arm/boot/dts/imx6qdl-gw53xx.dtsi | 5 +++++
>  arch/arm/boot/dts/imx6qdl-gw54xx.dtsi | 5 +++++
>  3 files changed, 15 insertions(+)
>
> diff --git a/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
> index 1a9a9d9..2d7d01e 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
> @@ -313,6 +313,11 @@
>                 interrupts = <12 2>;
>                 wakeup-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
>         };
> +
> +       fxos8700@1e {
> +               compatible = "nxp,fxos8700";
> +               reg = <0x1e>;
> +       };
>  };
>
>  &ldb {
> diff --git a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
> index 54b2bea..bf1a2c6 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
> @@ -304,6 +304,11 @@
>                 interrupts = <11 2>;
>                 wakeup-gpios = <&gpio1 11 GPIO_ACTIVE_LOW>;
>         };
> +
> +       fxos8700@1e {
> +               compatible = "nxp,fxos8700";
> +               reg = <0x1e>;
> +       };
>  };
>
>  &ldb {
> diff --git a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
> index 1b6c133..d9e09a9 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
> @@ -361,6 +361,11 @@
>                 interrupts = <12 2>;
>                 wakeup-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
>         };
> +
> +       fxos8700@1e {
> +               compatible = "nxp,fxos8700";
> +               reg = <0x1e>;
> +       };
>  };
>
>  &ldb {
> --
> 2.9.2
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
