Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654729C076
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 23:29:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2K0uXKuBDG+dlyvtvC9Apt4Uf1ydPCfWmidK2wNHiQ=; b=WvbODLsDq0Bg84
	nRpRKc58jyFJWKmcHvwuYcpi/7KGxOs1DRwl6gYNYLYLsDBcFNkTB67aLF2OYvUxcjdsyu5XEdVaa
	veVzoruxz73s0eiACgEo0oujaIZlK49TBuQfoFERe4MYe8uWuHI6s4YsBTqDYI3dA1zMlOoJwAYCq
	UwIYCM486hEbk1HkVugMCPcRh1iUdTC8LUqmphYRkOOVmSSFwRE+hPMZKzQObv/bCYTdbayNRUu6p
	UEL5U//kREemcwMP+cOxtguVhc285jagV5CRBVWio//cxyQ9RfN4v5rVnLqBXp7o9xGQa9Y034G4h
	Z3hRThthWQWhggjaxYpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1dbL-0004EN-76; Sat, 24 Aug 2019 21:29:35 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1db4-0004DZ-6O; Sat, 24 Aug 2019 21:29:19 +0000
Received: by mail-ot1-x342.google.com with SMTP id 100so1121924otn.2;
 Sat, 24 Aug 2019 14:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NeHDDT5xeUM288NKVamfGsJVmVu1XwAAe3AxKH60utQ=;
 b=Ly3Kf0VwR9LsyZVVa+EOsomX2wAFjqIU390PXXa0DK62nLZ7VpXD9zwowzBPiCUpsU
 7vOQLVMMyyTzHyZrdA/epH1UICSqFzTgv6nLgchp/hjQceNFxDd5l4ctmjrFmwEIrWAq
 5PO2uzSBkIyWPsTzqgmxQKtOaWSasqLiHv4jOIKop84uYrOd/9JSIjQjFCYwiOsFu7eQ
 GG8eqns023jFpz+s1KEungiE53ci+4RT9Ze94r7A3fsaO2lIXr1ev1hUaYLzO30do51e
 vg3UcQc/KEZttKjF53nZpt+yHC5s0sSctlG3CTsj0J3WP1S4++a5z36kxS2aEM8hOOak
 ASNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NeHDDT5xeUM288NKVamfGsJVmVu1XwAAe3AxKH60utQ=;
 b=HfZUmtJEXeFHiwfeMNrqsvbjR/TkiZi3LhpU5UZk7DLVa8mfHQzuV10NyZbGFpkdtQ
 oJI7bAJKZD/925Cnpg4yqpXvZwPEXUd/uTcBhPeMltYf5iWq/IlPfI8F8gy0Pk+kyo1q
 BYf3hNoxedtms74v6y7cAVQolXFaA2ILo8Dp6qFtz7l3xzZXSueYvQGW1WQInK+Q3jxX
 i0VsJfc4vDnWDUMgZF4HqjJ3PTVnooRM7yvAC4LmMI4/fwrG72jSF/FqNTS0WKP07/6X
 CHDBXrcUcEDzSjgCI4pZIJ+qMvl51+G1qdtykWxYtsHc6MZuEI3w+mmx+UZR7ctqwMib
 Q5cQ==
X-Gm-Message-State: APjAAAUXOw8rROkAQryf7JpPkiP8EKyzZMwR/+Zh2nuGUOQKwtm6NSXi
 PQSxLjFmNnXgG44OVhWIUgGhHCrGcU8paHCnI/k=
X-Google-Smtp-Source: APXvYqwZ4LtTbx1t2uEJ3OH/npfUf1S1SQtV0TTY+uuc+2k/bBVJu0K2vv4Zrs3bIWzAMsVuhirsdW09fdbogEOTKAg=
X-Received: by 2002:a9d:1d5:: with SMTP id e79mr9347623ote.98.1566682156724;
 Sat, 24 Aug 2019 14:29:16 -0700 (PDT)
MIME-Version: 1.0
References: <1566633850-9421-1-git-send-email-christianshewitt@gmail.com>
 <1566633850-9421-4-git-send-email-christianshewitt@gmail.com>
In-Reply-To: <1566633850-9421-4-git-send-email-christianshewitt@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 24 Aug 2019 23:29:05 +0200
Message-ID: <CAFBinCC-ncHtni9-Ve1_eQROTrJg0WPkA_rOi1We7T-uSOyYHg@mail.gmail.com>
Subject: Re: [PATCH v2,
 3/3] arm64: dts: meson-g12b-ugoos-am6: add initial device-tree
To: Christian Hewitt <christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_142918_257351_A4F56188 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Oleg Ivanov <balbes-150@yandex.ru>, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christian,

On Sat, Aug 24, 2019 at 10:06 AM Christian Hewitt
<christianshewitt@gmail.com> wrote:
>
> The Ugoos AM6 is based on the Amlogic W400 (G12B) reference design using the
> S922X chipset. Hardware specifications:
>
> - 2GB LPDDR4 RAM
> - 16GB eMMC storage
> - 10/100/1000 Base-T Ethernet using External RGMII PHY
> - 802.11 a/b/g/b/ac + BT 5.0 sdio wireless (Ampak 6398S)
> - HDMI 2.0 (4k@60p) video
> - Composite video + 2-channel audio output on 3.5mm jack
> - S/PDIF audio output
> - Aux input
> - 1x USB 3.0
> - 3x USB 2.0
> - 1x micro SD card slot
>
> The device-tree is laregly based on meson-g12b-odroid-n2 but with audio
typo -> largely

[...]
> +       tflash_vdd: regulator-tflash_vdd {
> +               compatible = "regulator-fixed";
> +
> +               regulator-name = "TFLASH_VDD";
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +
> +               gpio = <&gpio_ao GPIOAO_8 GPIO_ACTIVE_HIGH>;
> +               enable-active-high;
do we need regulator-always-on here as well, see [0]?

[...]
> +       usb_pwr_en: regulator-usb_pwr_en {
> +               compatible = "regulator-fixed";
> +               regulator-name = "USB_PWR_EN";
> +               regulator-min-microvolt = <5000000>;
> +               regulator-max-microvolt = <5000000>;
> +               vin-supply = <&vcc_5v>;
> +
> +               /* Connected to the microUSB port power enable */
> +               gpio = <&gpio GPIOH_6 GPIO_ACTIVE_HIGH>;
> +               enable-active-high;
> +       };
the photos I found don't show a micro USB port (but 3x USB A 2.0 and
1x USB A 3.0 - just like you mentioned in the patch description)
does this regulator exist?

[...]
> +&ethmac {
> +       pinctrl-0 = <&eth_pins>, <&eth_rgmii_pins>;
> +       pinctrl-names = "default";
> +       status = "okay";
> +       phy-mode = "rgmii";
> +       phy-handle = <&external_phy>;
> +       amlogic,tx-delay-ns = <2>;
> +};
is the PHY reset GPIO not wired to GPIOZ_15 like on Odroid-N2 and X96 Max?


Martin


[0] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts?id=dc7f2cb218b5ef65ab3d455a0e62d27e44075203

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
