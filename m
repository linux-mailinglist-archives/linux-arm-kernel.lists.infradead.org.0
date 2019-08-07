Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 060CC846EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:13:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZbTEeOrgWglrPMjp055N9BqEf0VmI7vbeaqgnZ1ytmA=; b=XrpoKYgmUKAg0k
	WBBLzO+NB4ZHvbYNKQYvVYXCjcC5RN4P7hXHI8HbqUmdeu32NjJ6JOI9aqmkgIO+8zghDl8eByvx8
	+i48EcuBWcw9XaxrQs8dNFlD3rE/hwvyoLAnuy0cwRJ+9GdLXpHzFlZrLD4V9xCRfSsmlX/7ZkwPu
	k/TYPEzbNtMSW3YCTOZMNDaKC8R3RpSJ3yr1JMRuPekuNHBd2eSTDfoImU1deUTn3hh5MKzuTp5Nf
	j++iCBgaBAhzRvzOlJEXr4ASVNfeyS1GT9sn0Q8s2+cBFddv+6IWHU4bCIZW6rjKFlPdawcLTZlr8
	JQ14/LpZ/1fo0NNkNc8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvH4e-00067j-0k; Wed, 07 Aug 2019 08:13:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvH4Q-00067O-Ah
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:13:19 +0000
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 59D70229ED
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  7 Aug 2019 08:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565165597;
 bh=ZzOLDubo8R09snB3dXIqUMFWNbyNheWbS3pPB0VyYpE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qIMXavRYElwABh8sorJIdVRvOr9U7z2iG+AC/YJnmXiNrCFYTaSOiweKK3WqdR9kt
 v4NYRpQR4xwTEMNuy+mY5CpAu1lnY8hvdLR1jBqbp5y7GH4O25O8o1GHnEJ7TlubUM
 5DRsfFk8sjPfAAE+thEvHDZtJSuMsv06zZN2Mji4=
Received: by mail-lf1-f42.google.com with SMTP id c19so63362681lfm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 01:13:17 -0700 (PDT)
X-Gm-Message-State: APjAAAUHTcbU8haD4+BMCwwiS3lkcAz1nQZVivCTk/17e4RVOmlhhmSU
 OgqWhwIzttcElZPcPw/FH68AOnjFyepMXo7TEp8=
X-Google-Smtp-Source: APXvYqyMLiTTcKzJv2ui5II+IaAbxqCDN3np2W8ZnEeh2YUGjUBZV1yjTQi1efB5id52IG+jexTXZulq8AGh+S3Fk3Y=
X-Received: by 2002:ac2:44ac:: with SMTP id c12mr5263808lfm.33.1565165595525; 
 Wed, 07 Aug 2019 01:13:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190806165749.29468-1-GNUtoo@cyberdimension.org>
In-Reply-To: <20190806165749.29468-1-GNUtoo@cyberdimension.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 7 Aug 2019 10:13:04 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcuPQa-jVtFMfiseuXq3P=mxc6DecCCj_j-y2NauMqTdA@mail.gmail.com>
Message-ID: <CAJKOXPcuPQa-jVtFMfiseuXq3P=mxc6DecCCj_j-y2NauMqTdA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: add touchkey nodes for midas
To: "Denis 'GNUtoo' Carikli" <GNUtoo@cyberdimension.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_011318_415133_D7DAF9B7 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Simon Shields <simon@lineageos.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 6 Aug 2019 at 19:04, Denis 'GNUtoo' Carikli
<GNUtoo@cyberdimension.org> wrote:
>
> From: Simon Shields <simon@lineageos.org>
>
> this patch adds the fixed VTOUCH_3.3V regulator and configures
> the touchkey node + i2c-gpio node.

Use the simple imperative form and please describe the user-visible
impact of this changes (or why you are doing it). Probably you want to
enable keys on touchscreen but it's not explicitly stated...
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst?h=v5.3-rc3&id=e21a712a9685488f5ce80495b37b9fdbe96c230d#n102


>
> Signed-off-by: Simon Shields <simon@lineageos.org>
> GNUtoo@cyberdimension.org: Fixed keycodes.
> Signed-off-by: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
> ---
>  arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi |  4 +++
>  arch/arm/boot/dts/exynos4412-midas.dtsi     | 29 +++++++++++++++++++++
>  arch/arm/boot/dts/exynos4412-n710x.dts      |  4 +++
>  3 files changed, 37 insertions(+)
>
> diff --git a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
> index ce87d2ff27aa..e71f103ab940 100644
> --- a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
> +++ b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
> @@ -166,5 +166,9 @@
>  &s5c73m3 {
>         standby-gpios = <&gpm0 1 GPIO_ACTIVE_LOW>;   /* ISP_STANDBY */
>         vdda-supply = <&ldo17_reg>;
> +};
> +
> +&touchkey_reg {
> +       gpio = <&gpm0 0 GPIO_ACTIVE_HIGH>;

You break existing code...

>         status = "okay";
>  };
> diff --git a/arch/arm/boot/dts/exynos4412-midas.dtsi b/arch/arm/boot/dts/exynos4412-midas.dtsi
> index 83be3a797411..797e8de40580 100644
> --- a/arch/arm/boot/dts/exynos4412-midas.dtsi
> +++ b/arch/arm/boot/dts/exynos4412-midas.dtsi
> @@ -13,6 +13,7 @@
>  #include "exynos4412.dtsi"
>  #include "exynos4412-ppmu-common.dtsi"
>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/clock/maxim,max77686.h>
>  #include <dt-bindings/pinctrl/samsung.h>
> @@ -92,6 +93,15 @@
>                 enable-active-high;
>         };
>
> +       touchkey_reg: voltage-regulator-4 {

There is already voltage-regulator-4 node.

> +               compatible = "regulator-fixed";
> +               regulator-name = "VTOUCH_3.3V";

Let's keep the name as in schematics - "LED_VDD_3.3V"... which brings
us to the question is it really needed for touch keys? or for display
panel?

> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +               enable-active-high;
> +               status = "disabled";
> +       };
> +
>         gpio-keys {
>                 compatible = "gpio-keys";
>                 pinctrl-names = "default";
> @@ -197,6 +207,25 @@
>                 };
>         };
>
> +       i2c_touchkey: i2c-gpio-4 {

No need for label.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
