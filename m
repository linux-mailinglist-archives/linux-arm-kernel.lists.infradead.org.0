Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8916B7EB46
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 06:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6jl2F7u8g4FaAVpgw0uUQUf25EjzwJ3CU+NSecLh9ak=; b=MfFnK6V+0Zvhh5
	8aH1eAOvwpEMe8VPT/6FmPb6O3gyFLf+0EL0HTfy68gWvibS0znlriNP3UzzYAZk1FjMoc4+k66mg
	a7EOn/QXUkJT/EBDCclrLnL6j+zTOnEKbRN7DY82ygj/PNiCqWsZ+vtqRfSUQBWRa5/IXEJkt89WN
	Y7VBmNj2PUkJd4ce7g7NYmXLj108e1PBOItmK4W5ZPO3TbSWIJs4bzIsXkTky/YWFwTb9+PQlz56d
	hzWbeC+K2zv3mZb1lZQagQNppvpUvfP8Cw/XV+X/UxIVhkaEGJ6Jjlq3bQ7uPd3XdEFWD7sVrUgCb
	1fzT4RKL/KUP7CU5Vq1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htP4K-00048M-H6; Fri, 02 Aug 2019 04:21:28 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htP48-00047x-Q2
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 04:21:18 +0000
Received: by mail-qk1-x743.google.com with SMTP id t187so1134890qke.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 21:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q9UBcMKtePrtEaomibezEEEJmQ4FGM8GYQb7rZ+rqS0=;
 b=l77Xm6dVdFosSZz4ISpaeYA7N3fyZ4FrUY6Msp8xRh2WT283dDS5cl5Ph96Lh17ca4
 1sqbwz0J5Wo2+Hfyw9n1MlhFQZ6Xp2/iNaSYddqSxhO3pMI6shuo+Yr47tn26F1OIeyN
 0vybk8mv34jD1mv+IIMd50UPndQRhkiafo+WY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q9UBcMKtePrtEaomibezEEEJmQ4FGM8GYQb7rZ+rqS0=;
 b=GDFytdWkPIwR+1zutN6/0YmLhZ1ajcsoD2/ixBPT83oz/kd40+Szj2HxphMQrDanRQ
 xaxFMfL/YV14OjvliXfrGy8pS5QmFjnZr39trFdFPWiLCyGQly4L1g002pvrxVtsTflo
 cQOIM+A/qCD6Z94ElGhC6ed7ZLcWRdr5xWjsF6tRc74ngDq9GDH0Un6FNhAMZOBb0ILp
 cJ5fRy80ljMaaped0/kYV14YGnRqzWkhwmxNnYPc7DNnVUjnX1DypEGn0Yj5OL/d+BEn
 o4ExIZZnYrGau3JBbUQkxfzn7heRDDKxJswLFKzjcSOzuTMpAivnXVs/CINoVRC+o6Im
 Kolw==
X-Gm-Message-State: APjAAAWJaQojDqNfcn3dYJkurP0BGEyTcVDw03Shz7759DmOJ33/UXRo
 pyzWhyEoDhyPTAB976rYHLjL8PaflO9pI305Kv4=
X-Google-Smtp-Source: APXvYqx+1KRNUxUimqfzDpoeWfQqVYjpwpMAv6POY1MuPBx01LXJU1p7xULXTW7V3lAp+QMTexKFlSiRSNfwf0S6ye0=
X-Received: by 2002:a37:b0c6:: with SMTP id
 z189mr88058946qke.208.1564719675402; 
 Thu, 01 Aug 2019 21:21:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190802041010.1234178-1-taoren@fb.com>
In-Reply-To: <20190802041010.1234178-1-taoren@fb.com>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 2 Aug 2019 04:21:03 +0000
Message-ID: <CACPK8XcuwNE3aBrsgn-paTZt-EtF6pc6WwYBQef5xc7157bk2g@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: aspeed: Add Facebook Wedge100 BMC
To: Tao Ren <taoren@fb.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_212116_881532_CD763A81 
X-CRM114-Status: GOOD (  20.52  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 devicetree <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2 Aug 2019 at 04:10, Tao Ren <taoren@fb.com> wrote:
>
> Add initial version of device tree for Facebook Wedge100 AST2400 BMC
> platform.
>
> Signed-off-by: Tao Ren <taoren@fb.com>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  Changes in v2:
>  - remove "debug" from bootargs.

Thanks. I applied wedge40 and then this one fails to apply due to
conflicts in the Makefile. Next time you have two patches, send them
as a series they apply one atop the other.

The naming of these two files suggests they come from a family. I
noticed there's very minor differences, a pca9548 switch and the use
of a watchdog.

Are these device trees complete? If yes, do you think it's worthwhile
to have a common wedge description in eg.
aspeed-bmc-facebook-wedge.dtsi, and put the unique description in
respective dts board files?

The upside of this is reduced duplication.

If you have a reason not to, then that is okay and we can leave it as
you submitted them.

Cheers,

Joel

--- arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts    2019-08-02
13:44:26.536934502 +0930
+++ arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts    2019-08-02
13:44:02.980670672 +0930
@@ -5,8 +5,8 @@
 #include "aspeed-g4.dtsi"

 / {
-    model = "Facebook Wedge 100 BMC";
-    compatible = "facebook,wedge100-bmc", "aspeed,ast2400";
+    model = "Facebook Wedge 40 BMC";
+    compatible = "facebook,wedge40-bmc", "aspeed,ast2400";

     aliases {
         /*
@@ -35,8 +35,7 @@
 };

 &wdt2 {
-    status = "okay";
-    aspeed,reset-type = "system";
+    status = "disabled";
 };

 &fmc {
@@ -111,13 +110,6 @@

 &i2c7 {
     status = "okay";
-
-    i2c-switch@70 {
-        compatible = "nxp,pca9548";
-        #address-cells = <1>;
-        #size-cells = <0>;
-        reg = <0x70>;
-    };
 };

>
>  arch/arm/boot/dts/Makefile                    |   1 +
>  .../boot/dts/aspeed-bmc-facebook-wedge100.dts | 149 ++++++++++++++++++
>  2 files changed, 150 insertions(+)
>  create mode 100644 arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts
>
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 39a05a10a2a2..d71504ed82d3 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1273,6 +1273,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>         aspeed-bmc-facebook-cmm.dtb \
>         aspeed-bmc-facebook-minipack.dtb \
>         aspeed-bmc-facebook-tiogapass.dtb \
> +       aspeed-bmc-facebook-wedge100.dtb \
>         aspeed-bmc-facebook-yamp.dtb \
>         aspeed-bmc-intel-s2600wf.dtb \
>         aspeed-bmc-inspur-fp5280g2.dtb \
> diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts
> new file mode 100644
> index 000000000000..b1e10f0c85c9
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts
> @@ -0,0 +1,149 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +// Copyright (c) 2018 Facebook Inc.
> +/dts-v1/;
> +
> +#include "aspeed-g4.dtsi"
> +
> +/ {
> +       model = "Facebook Wedge 100 BMC";
> +       compatible = "facebook,wedge100-bmc", "aspeed,ast2400";
> +
> +       aliases {
> +               /*
> +                * Override the default uart aliases to avoid breaking
> +                * the legacy applications.
> +                */
> +               serial0 = &uart5;
> +               serial1 = &uart1;
> +               serial2 = &uart3;
> +               serial3 = &uart4;
> +       };
> +
> +       chosen {
> +               stdout-path = &uart3;
> +               bootargs = "console=ttyS2,9600n8 root=/dev/ram rw";
> +       };
> +
> +       memory@40000000 {
> +               reg = <0x40000000 0x20000000>;
> +       };
> +};
> +
> +&wdt1 {
> +       status = "okay";
> +       aspeed,reset-type = "system";
> +};
> +
> +&wdt2 {
> +       status = "okay";
> +       aspeed,reset-type = "system";
> +};
> +
> +&fmc {
> +       status = "okay";
> +       flash@0 {
> +               status = "okay";
> +               m25p,fast-read;
> +               label = "fmc0";
> +#include "facebook-bmc-flash-layout.dtsi"
> +       };
> +};
> +
> +&uart1 {
> +       status = "okay";
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_txd1_default
> +                    &pinctrl_rxd1_default>;
> +};
> +
> +&uart3 {
> +       status = "okay";
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_txd3_default
> +                    &pinctrl_rxd3_default>;
> +};
> +
> +&uart4 {
> +       status = "okay";
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_txd4_default
> +                    &pinctrl_rxd4_default>;
> +};
> +
> +&uart5 {
> +       status = "okay";
> +};
> +
> +&mac1 {
> +       status = "okay";
> +       no-hw-checksum;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_rgmii2_default &pinctrl_mdio2_default>;
> +};
> +
> +&i2c0 {
> +       status = "okay";
> +};
> +
> +&i2c1 {
> +       status = "okay";
> +};
> +
> +&i2c2 {
> +       status = "okay";
> +};
> +
> +&i2c3 {
> +       status = "okay";
> +};
> +
> +&i2c4 {
> +       status = "okay";
> +};
> +
> +&i2c5 {
> +       status = "okay";
> +};
> +
> +&i2c6 {
> +       status = "okay";
> +};
> +
> +&i2c7 {
> +       status = "okay";
> +
> +       i2c-switch@70 {
> +               compatible = "nxp,pca9548";
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +               reg = <0x70>;
> +       };
> +};
> +
> +&i2c8 {
> +       status = "okay";
> +};
> +
> +&i2c9 {
> +       status = "okay";
> +};
> +
> +&i2c10 {
> +       status = "okay";
> +};
> +
> +&i2c11 {
> +       status = "okay";
> +};
> +
> +&i2c12 {
> +       status = "okay";
> +};
> +
> +&i2c13 {
> +       status = "okay";
> +};
> +
> +&vhub {
> +       status = "okay";
> +};
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
