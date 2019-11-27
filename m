Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DF510A8BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 03:25:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJN0CY+SPlbqWrwL468rjAeWadV7TuSvONeSVezP5h8=; b=Nv8IYfPCXVGdfD
	I/dOArQ1rnbQo+XO9Tukfe8q6zVZ+1wZa7gYz2D4CEtJ648Sd/6eKDGI0lI2doBzWWf9PTMh5pc2R
	zZnHHjOuny6wenveqZXvw9KOq+0+66BUWdSh7AGR3WRg7F45Xgtf+KuFh+k1AhbaxycBgVIplnkHI
	o2gBPo3yvDo9ECRGjEsbDlDZAmHfkbxXZMiwDsS+XO6+hmniengJx/NeET2CkikWx5JNTbuqSFVvk
	qxttMfM2lHr6aICkYHbfIr8iDojaoK+0dPUjX04ejOE+KPsAhiTDwxpE1IBhhYeyb6A407EwvFuau
	a6BE05sXwQRaknLFtPJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZn12-0001cv-5A; Wed, 27 Nov 2019 02:25:16 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZn0o-0000rr-Pp; Wed, 27 Nov 2019 02:25:04 +0000
Received: by mail-oi1-x241.google.com with SMTP id e9so18683964oif.8;
 Tue, 26 Nov 2019 18:25:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xC9RVEUN60MRiDoiCowOLH+Vqpm85ZffCJiku49WmOU=;
 b=aTlCJq9kHNPfUA7x56iC66yzyHWWV01ste/kdv/OU2wt7kxCa03HxNWVB7oANK+hTY
 t7vx2q+uAWO5GJan2gg4AWeDnW9t+P8g2GQKcF1C8Oh3KOuqdUk1WXSZhirPEqIVdbps
 kODPMv0tSl6uM81EmJ2k2nwyzt0GfAVkjYARBaBdde9X1f0sp0jovhLMiDY2Afk4MRaY
 2kiGtrlWAk5ZHmTJqqBQnSXsRwHQgDUCVBKRfy/MhtsSA6qA44gLINLvuGNwniwJklHc
 gypbhCS7uSZU4p4z2W6mcX4pM/NUlaHgVNNBqhcHILj3XLsKB9nE7peWPCBnphPHS4s/
 63Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xC9RVEUN60MRiDoiCowOLH+Vqpm85ZffCJiku49WmOU=;
 b=hdmbRkWXmIJIr2jE0QCM/j38yV1phS6Q3b8pN2Brk3xXMDS+qhBQgFc7HGsEPpA/kA
 MpuTLqXUIS/qYOwMBrPIqVcjsJGOCwBuzFQoHPHKbwMNMSCd9kURdzNKPA7xeBQHrwQ5
 T7vf1G6c7ZRQFa6I3OlD4Vt3hf36Ik/vFVahFIqY27225ST6N+PNSni1HCrZX+Vlw3/9
 Vr6UaU232qX+xo62Z5ulBKHk0jCHQtCcJS/mHP/AEA4zErPWdM6YXVEVH5Mz5x1YdLkM
 ViRnKuAiyzCyvGvYY6Olw8JuTJh5XOuS/CWbVFmfT52lEdHEsi68EQzorJ4u0neSsttd
 xkwA==
X-Gm-Message-State: APjAAAWiCRy+kQ3zTFdI9jBgY/VFd1L7G9NbFPb7+zZ9B96TpEyRJBlN
 Vk7QnYy3QSNep1LjloQVcykcb1Ak/sRFxMqNC8I=
X-Google-Smtp-Source: APXvYqyQ+qoWokmJpwljroZqf+blVEyS0Tls/wjXa9zQycM+neHHQ0Zehnyeq+CXDZzKQyCm/g4iTieXckglPDt3ux4=
X-Received: by 2002:aca:330a:: with SMTP id z10mr1993629oiz.98.1574821501100; 
 Tue, 26 Nov 2019 18:25:01 -0800 (PST)
MIME-Version: 1.0
References: <20191126165529.30703-1-katsuhiro@katsuster.net>
In-Reply-To: <20191126165529.30703-1-katsuhiro@katsuster.net>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Tue, 26 Nov 2019 18:24:35 -0800
Message-ID: <CA+E=qVcqu7OJayOdrEXRaWYW1JBhJKk7dPDTEJtCD-hDAKohxg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: split rk3399-rockpro64 for v2 and
 v2.1 boards
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_182502_869873_ACAC75A2 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, Hugh Cole-Baker <sigmaris@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 8:55 AM Katsuhiro Suzuki
<katsuhiro@katsuster.net> wrote:

Hi Katsuhiro,

> This patch splits rk3399-rockpro64 dts file to 2 files for v2 and
> v2.1 boards.

Thanks for the patch!

> Both v2 and v2.1 boards can use almost same settings but we find a
> difference in I2C address of audio CODEC ES8136.

I'd prefer to avoid moving and renaming dts files since it can cause a
mess if you don't upgrade your bootloader.

Can we use existing rk3399-rockpro64.dts for v2.1 (and change model
name accordingly) and introduce new dts for v2.0?

Regards,
Vasily


> Reported-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |  3 +-
>  .../dts/rockchip/rk3399-rockpro64-v2.1.dts    | 30 +++++++++++++++++++
>  .../boot/dts/rockchip/rk3399-rockpro64-v2.dts | 30 +++++++++++++++++++
>  ...99-rockpro64.dts => rk3399-rockpro64.dtsi} | 18 -----------
>  4 files changed, 62 insertions(+), 19 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
>  rename arch/arm64/boot/dts/rockchip/{rk3399-rockpro64.dts => rk3399-rockpro64.dtsi} (97%)
>
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 48fb631d5451..3debaeb517fd 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -33,6 +33,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
> -dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts
> new file mode 100644
> index 000000000000..9450207bedad
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts
> @@ -0,0 +1,30 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
> + * Copyright (c) 2019 Katsuhiro Suzuki <katsuhiro@katsuster.net>
> + */
> +
> +/dts-v1/;
> +#include "rk3399-rockpro64.dtsi"
> +
> +/ {
> +       model = "Pine64 RockPro64 v2.1";
> +       compatible = "pine64,rockpro64", "rockchip,rk3399";
> +};
> +
> +&i2c1 {
> +       es8316: codec@11 {
> +               compatible = "everest,es8316";
> +               reg = <0x11>;
> +               clocks = <&cru SCLK_I2S_8CH_OUT>;
> +               clock-names = "mclk";
> +               #sound-dai-cells = <0>;
> +
> +               port {
> +                       es8316_p0_0: endpoint {
> +                               remote-endpoint = <&i2s1_p0_0>;
> +                       };
> +               };
> +       };
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
> new file mode 100644
> index 000000000000..7bd37eaa1d57
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
> @@ -0,0 +1,30 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
> + * Copyright (c) 2019 Katsuhiro Suzuki <katsuhiro@katsuster.net>
> + */
> +
> +/dts-v1/;
> +#include "rk3399-rockpro64.dtsi"
> +
> +/ {
> +       model = "Pine64 RockPro64 v2";
> +       compatible = "pine64,rockpro64", "rockchip,rk3399";
> +};
> +
> +&i2c1 {
> +       es8316: codec@10 {
> +               compatible = "everest,es8316";
> +               reg = <0x10>;
> +               clocks = <&cru SCLK_I2S_8CH_OUT>;
> +               clock-names = "mclk";
> +               #sound-dai-cells = <0>;
> +
> +               port {
> +                       es8316_p0_0: endpoint {
> +                               remote-endpoint = <&i2s1_p0_0>;
> +                       };
> +               };
> +       };
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> similarity index 97%
> rename from arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> rename to arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> index 7f4b2eba31d4..183eda4ffb9c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> @@ -4,16 +4,12 @@
>   * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
>   */
>
> -/dts-v1/;
>  #include <dt-bindings/input/linux-event-codes.h>
>  #include <dt-bindings/pwm/pwm.h>
>  #include "rk3399.dtsi"
>  #include "rk3399-opp.dtsi"
>
>  / {
> -       model = "Pine64 RockPro64";
> -       compatible = "pine64,rockpro64", "rockchip,rk3399";
> -
>         chosen {
>                 stdout-path = "serial2:1500000n8";
>         };
> @@ -476,20 +472,6 @@ &i2c1 {
>         i2c-scl-rising-time-ns = <300>;
>         i2c-scl-falling-time-ns = <15>;
>         status = "okay";
> -
> -       es8316: codec@11 {
> -               compatible = "everest,es8316";
> -               reg = <0x11>;
> -               clocks = <&cru SCLK_I2S_8CH_OUT>;
> -               clock-names = "mclk";
> -               #sound-dai-cells = <0>;
> -
> -               port {
> -                       es8316_p0_0: endpoint {
> -                               remote-endpoint = <&i2s1_p0_0>;
> -                       };
> -               };
> -       };
>  };
>
>  &i2c3 {
> --
> 2.24.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
