Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFE71746FC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 14:08:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dV5kdTqrqVVa/CHvvTRC0f+2Q9VtBA+xld2k86SeLOI=; b=IuPb35wGMrCTJg
	ZEKv1OYbQ0Gu4/mm6seqSzUpDWlTc5QPHpFww8gMrUcZbIPOItRMXVbQiAjoyLbKkIxf77QlY+wZn
	OVKkzLdpZzSwgphF80uJCuDciwiiOtjFAqkdBSphvlexjTnSqA3gitukOPqmv1UG9wjj77bPxXRQG
	HigxXHII4/kT7PjdfD6Pn9BnmiilN7WBOrX3CLoTtJHDPV8wc46+c842IKNUwkAN/6yn5WFztA8v4
	BAR11A0dtcn0Cs1ZmG+Fw3gZ+3VZClygQMrgzJlVbTi/MoKlW1Vm32rfwSec0aE00muh48MMGgc98
	3zWH1/YhEBLNupsyQBQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j81qg-0005ZS-CY; Sat, 29 Feb 2020 13:08:06 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j81qY-0005Z4-K3
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 13:08:00 +0000
Received: by mail-lj1-x241.google.com with SMTP id q23so6485147ljm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Feb 2020 05:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nTXTbcLqGzk+vxiic2xdZAKhi85aGcMjL5+CI+XDl9o=;
 b=lqvZPGiwNgY/6Rk/KYqjLNbsgAWCtdcQERvLsaN628nqmK68A/x0ohJBgJbZHBc24z
 AWuk9YEsVP7uD208dxYjEnvFib4V/ox3gDL36JTuU0HVm6qhLaK5Lt4zd90a9WISt8Ry
 z3kluZ/YtKUw5dLIxB7yE+rCGeWpRA1nFaNHJsEGdQ9jCb9DKcDMcETkvHEEr7yBnmV2
 bp0IcTaxqXtUC2s+HBkvAilB3hVq0eHNtoKtpQfeolw+GkvuFHvnaGmSNgdsNzYceStf
 q7WjwDAEJdTqtxaC3SQFT3snuYSIUfHKPFUB7aSgzEyBxa/qUBUKyIcY5HskfsoJodWz
 iLQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nTXTbcLqGzk+vxiic2xdZAKhi85aGcMjL5+CI+XDl9o=;
 b=N+t4VKdU5+IZQ1MoJp2zn3a7VweCdIv6AkVPr6iehmt7R/uYKHMXCDCLhtzL+bzqkM
 CF/4ecuQI3rcY8UL5GTt1tV7mAOd2REEkoulQVz+bCdO4Nyip5oNsV7Gx4m7kCYTE5ZK
 own176xGhzHVGf+vfoUJ1nXt7Uz411M4OaIsYBmYY7Nd/FWj7uh3IQlUVjU725v5iAMD
 pZ35Miv7otiCmOwGi0Rc6QyjS3O49OR4bEK7P8LdZoX8xwupxo1DT6zm3At4FAfHUiaV
 7pzyStR2baHfqT0Yq2QN1qcjLJvOjiDH5CqSWHWQ/Vcy7RB76ixVLWaEEpvB6AjbWG4/
 6qjA==
X-Gm-Message-State: ANhLgQ10DmnkNpwok7FMcuTO/LoJgLdCosTCOoBWpbYdOnXGgom/r9hQ
 z6/ulI4S5IwGa4aMx7iLPcN6CjscvorwcIZ52V7nEw==
X-Google-Smtp-Source: ADFU+vuAjHxsXHjO8yLsCrKlJ+WeQ6jtz8pxqrobWbXo1PJyxc2p5LTY62oDIJXwndXkWHs8VMtQVu1MYbiHXAMJSnM=
X-Received: by 2002:a05:651c:cf:: with SMTP id
 15mr6157364ljr.288.1582981676104; 
 Sat, 29 Feb 2020 05:07:56 -0800 (PST)
MIME-Version: 1.0
References: <20200229104347.11126-1-vitor@massaru.org>
In-Reply-To: <20200229104347.11126-1-vitor@massaru.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 29 Feb 2020 10:07:45 -0300
Message-ID: <CAOMZO5Ddg2VhXkrWTn6xAX0N8fDLCNFmccE+xrcvKeRmmRmotQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: freescale: add gpio-fan/thermal support for
 Google i.MX 8MQ Phanbell
To: Vitor Massaru Iha <vitor@massaru.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_050758_686370_F8E9A26D 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, lkcamp@lists.libreplanetbr.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Marco Franchi <marco.franchi@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vitor,

Thanks for your patch.

On Sat, Feb 29, 2020 at 7:43 AM Vitor Massaru Iha <vitor@massaru.org> wrote:
>
> It was based on Google Source Code for Coral Edge TPU Mendel release:
> https://coral.googlesource.com/linux-imx/
>
> It was tested on Coral Dev Board using this command:
>   sudo stress --cpu 4 --timeout 3600
>
> Signed-off-by: Vitor Massaru Iha <vitor@massaru.org>
> ---
>  .../boot/dts/freescale/imx8mq-phanbell.dts    | 78 +++++++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  2 +-
>  2 files changed, 79 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
> index 3f2a489a4ad8..fb9f208d1e41 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
> @@ -35,6 +35,14 @@
>                 gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
>                 enable-active-high;
>         };
> +
> +       fan: gpio_fan {

Underscores are not recommended in property names. Please use
"gpio-fan" instead.

> +               compatible = "gpio-fan";
> +               gpio-fan,speed-map = <0 0 8600 1>;
> +               gpios = <&gpio3 5 GPIO_ACTIVE_HIGH>;

Please add an entry for the pinctrl description of this GPIO.
It worked because GPIO is the default functionality of the pin after
POR, but we should better not rely on it (bootloaders may change it)
and explicitly it in the device tree.

> +               #cooling-cells = <2>;
> +               status = "okay";
> +       };
>  };
>
>  &A53_0 {
> @@ -374,3 +382,73 @@
>                 >;
>         };
>  };
> +
> +&tmu {

Please keep the nodes in alphabetical order.


> +       throttle-cfgs {
> +               throttle_devfreq: devfreq {
> +                       throttle,max_state = <2>;

I don't see this property documented anywhere. Should it be removed?

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
