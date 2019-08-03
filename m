Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4648078C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 19:52:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZOdvdFSu2mSW0L6xlAwGfPkg97ssArlwOsnhIabMKWU=; b=ibTnjmkc4fCJCd
	CqA/WtgSSdMsirnbDrubVQengdxSJCclitvzBiugT23EJ/8qLdRvGbuypwxWaTx7Q22x/wAJ07iZO
	WI0sy4VY8XzelhLh4Ch4Kks7wQn0wL58/beELneY2K71QX8CVw/qfgU6izxFlk+E/IRFmWMsGeCgP
	6ogs6MygTrYp8AGxHrEXym9K31Tf4wU++f4eW7Dr7ZOPvWGBjYKfXRMo+1QUw7naR4u4dzABT2fQC
	/xEA6J7y7M8HxvJinQGySF8TgjA+wbbdPpzIYWDZHEd525H2UoXC5bDZx01eRGn4wjSYhjDpdveHU
	AdzSOWsJZX5AxGTBDhPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htyD9-0001ex-UU; Sat, 03 Aug 2019 17:52:56 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htyCt-0001dS-O0; Sat, 03 Aug 2019 17:52:41 +0000
Received: by mail-oi1-x241.google.com with SMTP id m206so59248084oib.12;
 Sat, 03 Aug 2019 10:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=giFFxAwzHVZcTDv5cDCIurtf5E8rD1w0AM4tyzYzsnQ=;
 b=AqJbCsXDWob/b1bzOngByMcRxPfvkbkLz4G34Vbw2MZRlyroyApUC5Yw87zvK1Fur+
 ApIUWtaYUtyP4jsJhLc+gdiuuNvpHs9jHIzxCAp91ZlfGebQMuEfPKgOhEWoSqbDqinM
 3YB973dJ2gsupR7H4uAehDFoKZ1fLBkDf88snzFgsNMMy7LP8S6V1Su/qea2eX6LY5Bt
 Mc6LCYXIshNWNXUKtet/Mh2yuJdoqwCUDVkt+1FRiqqMLXrb6YtQA9OZYz3dM3MX/M9n
 vQ3zQo6Y/m6jnWotG6iMVH6ooG0O9XcBCoDO1up9zhMyWlMXB4Fb3B3GP4rc4bjb0ox3
 3rQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=giFFxAwzHVZcTDv5cDCIurtf5E8rD1w0AM4tyzYzsnQ=;
 b=KljNesDh7+vyGn6bzUJNIBy7FhJ7eDwJ3w4Noc7BDO4Ufu//esKTbpD78evQOjlGqE
 KLr9GQaF4F6aD5wyzYevXYqBpwmDPQb82abjBiU6b7Da6TAMoLHewky3UBsJkPPg3nUl
 f0XfquawOAzOprGEDsREVVyY4svRrWYGG9QzXkqkGVLXG3ghr6qcxkpIZuDxh3jUSQUq
 0cUR7r7KMHQfHt4CaaXiVgXJk9mkD2zRKzZtZ3IvcM2lz/ZKemvA4IeJbEsl013BYF6k
 +HHhfsiUu53brhiQhkBpBfvWROs66owjtBZJ1mrFI/y/wGTwTgzMWLG2Jodfjgd2pj76
 9sGw==
X-Gm-Message-State: APjAAAUlkDyNpY2HW+nHUPZ5VItgUbk6o+TbZaSO4R6Qcv6DgHqCbdKZ
 FMq9wVibvXsAJOog3Ze3PEsODyAAjh9lhTSJPGA=
X-Google-Smtp-Source: APXvYqxqdM5pIwO1f3rZx14fWOmsfcgj0wzLh+wItwhmdI2TFmrHh+uLmQVwCG+sWXsST/bisXbSaeQf/oOwXtq+xYQ=
X-Received: by 2002:a05:6808:3d6:: with SMTP id
 o22mr6383634oie.140.1564854757760; 
 Sat, 03 Aug 2019 10:52:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190731153529.30159-1-glaroque@baylibre.com>
 <20190731153529.30159-4-glaroque@baylibre.com>
In-Reply-To: <20190731153529.30159-4-glaroque@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 3 Aug 2019 19:52:26 +0200
Message-ID: <CAFBinCBYPiLgmTNk+7Db3EPSPePwbnAshCbomYPXWdse8i0oJw@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] arm64: dts: amlogic: g12: add temperature sensor
To: Guillaume La Roque <glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_105239_807740_BB4A7C46 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, khilman@baylibre.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Guillaume,

On Wed, Jul 31, 2019 at 5:36 PM Guillaume La Roque
<glaroque@baylibre.com> wrote:
>
> Add cpu and ddr temperature sensors for G12 Socs
>
> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
with the nit-pick below addressed:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

> ---
>  .../boot/dts/amlogic/meson-g12-common.dtsi    | 22 +++++++++++++++++++
>  1 file changed, 22 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> index 06e186ca41e3..7f862a3490fb 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> @@ -1353,6 +1353,28 @@
>                                 };
>                         };
>
> +                       cpu_temp: temperature-sensor@34800 {
> +                               compatible = "amlogic,g12-cpu-thermal",
> +                                            "amlogic,g12-thermal";
> +                               reg = <0x0 0x34800 0x0 0x50>;
> +                               interrupts = <GIC_SPI 35 IRQ_TYPE_EDGE_RISING>;
> +                               clocks = <&clkc CLKID_TS>;
> +                               status = "okay";
I believe nodes are enabled automatically if they don't have a status property

> +                               #thermal-sensor-cells = <0>;
> +                               amlogic,ao-secure = <&sec_AO>;
> +                       };
> +
> +                       ddr_temp: temperature-sensor@34c00 {
> +                               compatible = "amlogic,g12-ddr-thermal",
> +                                            "amlogic,g12-thermal";
> +                               reg = <0x0 0x34c00 0x0 0x50>;
> +                               interrupts = <GIC_SPI 36 IRQ_TYPE_EDGE_RISING>;
> +                               clocks = <&clkc CLKID_TS>;
> +                               status = "okay";
same here


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
