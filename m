Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8193EC1E40
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 11:39:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yS0jv6WM/qbOOsIXhPIl0mISQMJdJ50QTKodsZVuwA=; b=Ql+lCehesVG6+d
	STazsjNqZx3vafxR8x/onMToxMsWW5K7fn+jmk0LoLBTKTcIt9bR9bGa/OYoGBFu3bnAxEIieB+5z
	e01tI5dom2ytsBRCXFOexiJtcu1/yygLazbzS/tN/88jFhR+VZOtU48wJpjfB6lFEax6Wz80cmAwM
	ZQtp71i2XXnQ4Xg0SumVnBn8Yy43qP1WFyzYcgqWY11bhDq1REmyqoiNXiqFisP1ElNSIKtnSf+q5
	7Y47HxNnsWAkO7FwWrtEFileUJWXJ7HjK2Myx3xaq3tUZAzq3WnKneGqt0obg8JcAtphKQDXr3oOw
	W+ZPBrJJo8tX7aGpyyDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEs9X-0004UQ-Vc; Mon, 30 Sep 2019 09:39:36 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEs9N-0004SO-97
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 09:39:26 +0000
Received: by mail-vs1-xe44.google.com with SMTP id m22so6284504vsl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 02:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Cxq2bHjW+AlD4mf7jruqGrWE0fprB7ccNLUpIWh7TxQ=;
 b=ezaO9zszxJd+4Paz2hLVlDZc0d6U3pC4lCfi0hx3DLO+w5QuhSGeHUVHnB1NsO87YU
 /hKG68czBD7AnAolLrFBmu/xnQhcuDjd7HywSkHZaKPG4IrnGsro8QpWqisGbzZCMhK4
 fezjraSoXEiZbu8t5OWLAa62APj89GVmbo3sB8C6T4LL5PNtgGyRmBjhloSD9y42790/
 ZCeVZDcrRMTwJ4fQm7Jmx9rXCm7VmTJZot1YSFSD92VbD0LsQgyLKH6/JsDLHB9NgJvn
 DsC7BP3BZj8eCYngdpQGJJpalLx5oRJo0qgn+6E13Ez66aVjncVI36aajxbrpr1AOB+/
 2uEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Cxq2bHjW+AlD4mf7jruqGrWE0fprB7ccNLUpIWh7TxQ=;
 b=VZLav/WPG3saCJu0CW4Iud1Mf8vrt4s7ITyCxifDrauq8SG1qrjpR4iU0gjYuf0fJX
 AF2d3Qvcix42nIMhGgl2C7GgTzG/mzjldvrw/6QWwJKe8HmRj31e3eYdh6KvNLgJwAOj
 NfDJL6bf3r7B8IIHZmw9EOIO4cHOVfS9ozF0IhK7BGG+sfDjAPKB78I5VKYVPhIczFhy
 uNT3CfIOfUcQ6bA/B2L23+NHMUmIABrgyPFPzMZ27ykbKrL/zyVMR61Sh8pznb943WXW
 YR0hr51m7tSvXs9TARS19L1FtzK/9ZBiMhYjdcVY/RlndhT2MNjIrg6d1ErRP1GAXSNj
 Rz9A==
X-Gm-Message-State: APjAAAU8xAGVBn5gdEPA9VrRpRVIr3//edKAw6/3pYHFGYV/UVouTVLf
 /jgXQF5VKoZiplAccfo/WXLOX2KcMuY8dW88r+RSHQ==
X-Google-Smtp-Source: APXvYqwypOTWZbzuX6iCn3PcY5YBeeHcL68LEGV3573E+3R3Wicv0r3ZFov2Xry98RLO/sXnr4hY51+x2ckMi5V8fnk=
X-Received: by 2002:a67:842:: with SMTP id 63mr9032821vsi.9.1569836364416;
 Mon, 30 Sep 2019 02:39:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190927184352.28759-1-glaroque@baylibre.com>
 <20190927184352.28759-4-glaroque@baylibre.com>
In-Reply-To: <20190927184352.28759-4-glaroque@baylibre.com>
From: Amit Kucheria <amit.kucheria@linaro.org>
Date: Mon, 30 Sep 2019 15:09:13 +0530
Message-ID: <CAHLCerPQ4Uzoo2F-fNxZNV0_uZZnLwNenDYZTzgj7pfOiwPtGg@mail.gmail.com>
Subject: Re: [PATCH v6 3/7] arm64: dts: amlogic: g12: add temperature sensor
To: Guillaume La Roque <glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_023925_331702_36D847AF 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 linux-amlogic@lists.infradead.org, Zhang Rui <rui.zhang@intel.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 28, 2019 at 12:14 AM Guillaume La Roque
<glaroque@baylibre.com> wrote:
>
> Add cpu and ddr temperature sensors for G12 Socs
>
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Tested-by: Christian Hewitt <christianshewitt@gmail.com>
> Tested-by: Kevin Hilman <khilman@baylibre.com>
> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>


Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  .../boot/dts/amlogic/meson-g12-common.dtsi    | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> index 38d70ce1cfc7..0660d9ef6a86 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> @@ -1353,6 +1353,26 @@
>                                 };
>                         };
>
> +                       cpu_temp: temperature-sensor@34800 {
> +                               compatible = "amlogic,g12a-cpu-thermal",
> +                                            "amlogic,g12a-thermal";
> +                               reg = <0x0 0x34800 0x0 0x50>;
> +                               interrupts = <GIC_SPI 35 IRQ_TYPE_EDGE_RISING>;
> +                               clocks = <&clkc CLKID_TS>;
> +                               #thermal-sensor-cells = <0>;
> +                               amlogic,ao-secure = <&sec_AO>;
> +                       };
> +
> +                       ddr_temp: temperature-sensor@34c00 {
> +                               compatible = "amlogic,g12a-ddr-thermal",
> +                                            "amlogic,g12a-thermal";
> +                               reg = <0x0 0x34c00 0x0 0x50>;
> +                               interrupts = <GIC_SPI 36 IRQ_TYPE_EDGE_RISING>;
> +                               clocks = <&clkc CLKID_TS>;
> +                               #thermal-sensor-cells = <0>;
> +                               amlogic,ao-secure = <&sec_AO>;
> +                       };
> +
>                         usb2_phy0: phy@36000 {
>                                 compatible = "amlogic,g12a-usb2-phy";
>                                 reg = <0x0 0x36000 0x0 0x2000>;
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
