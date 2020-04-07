Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5811A07B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 08:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ifr1pahw8ZX0aXAwPFBzDrom1YbYBsPa/fVUIJfZNSs=; b=ElYcgwbiiaQosu
	hrMTfYBjms+k5PR/wkGJwnTAZWqTVOImri9pZRjo3mbJemtHNnnXHZKuoK3MjeozL4vTy2MPPh6ka
	umdZMFXMEpK5bn/RRobZPxSJdvCMnxjhqjqYvtr3u7uGYlHQlNDfUCFLjP2eKMoMDorXQVgeToqt9
	xqWpyU8mnVJ98hubH3it1QsgUZ2WegvlKNVCY9JinDX9kKJxO+e9p4q/UpI8Xl9DNF1INwjcI8V77
	LW4LW4YCjx9VVioAWk8KtdwDq224pu8bQxgQmJF/u32ndE5aTT19kULkHCsM/jYQN9pNKGGu/T/HO
	BoQQlMYikYoaXeZ/Zbww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLi6g-0005V5-07; Tue, 07 Apr 2020 06:53:10 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLi6a-0005Ue-0R
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 06:53:05 +0000
Received: by mail-qt1-x843.google.com with SMTP id x2so559855qtr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 23:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vWzddfgz7uTE/9V/V86TERRrsNQQISOhESAwCEUneBo=;
 b=q1SWZgGwg4IOTQBPhG40WaUEPyUsX+FyFrDs5950iqCm/t8Heu0eZHAFpGoUmZq6Bd
 Xt9rXDCXr5n9qN08BMqz7yICGB2sH0AhkAXJlTs1J7X89vRCHIuaPvju9lH5s+f6PC/L
 9VOu1HA363LRV4cm1ZSVTe3/KXdojZNaS3z/JhiAGsbhSzHB0xJtMXNE1tArKqjoQ9dX
 J93dSXODgr6msokMUAPf5TyjdVehaJmZr57P2BIpLtHSJMbkqa12pUGAK1RsrhZOcA+S
 +GwPXJJGGlLkoUpRmAlQvM5i20ex3c1CjK0uQUPaCH7Msb6KUnoHHaI7KERkD6T+TxkD
 1zGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vWzddfgz7uTE/9V/V86TERRrsNQQISOhESAwCEUneBo=;
 b=aUrHZ4077IXPLcUKxPpLy2pOsldmXXIfrh5z24dHrLTuB1hZ1PnipESPkPCPIrxBao
 eP5gSPu7ar4DfqUJ8pXXSmCBZXfJ+4m/sArOwZb7fji+qAs7WRihSWMUNco756DYE/J6
 4ukO2oOJ31yVuqa3bTyRhTegUvDIDwHE5j9Szfg3c5rPaj/Z0qrljlLkg2xbTzLWJTtO
 3RUJg+lg16Txmge6Av4+SG33jXY6xFUVy4xs1DFNrqolHEOj0k2ZuBalDSpcMC/3K4br
 auhSZiBO84Upf6VDVEnU3WUDWl9gBl4kIOsU4l3LPmIEMWI+zEmD4kc9Kj/sL1F+5d5z
 vKMw==
X-Gm-Message-State: AGi0PuaVmbcae3dbW3xWn6FCGZLjCfU5eOiOIZveZqkKf4syvPQbPhiM
 oProxMTP/BGWsPwt9dhHBp0vb59WxQvOyidYRrg=
X-Google-Smtp-Source: APiQypI66gw7vMWPdfIdgXDBcmt9McXyUBt2rwqcPJXsAdNoo5YK7kjPqDasabdi/daxyv9FQqWl3aCPN2y58P0heE8=
X-Received: by 2002:aed:21c5:: with SMTP id m5mr897676qtc.42.1586242382828;
 Mon, 06 Apr 2020 23:53:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200407055837.3508017-1-alistair@alistair23.me>
 <20200407055837.3508017-3-alistair@alistair23.me>
In-Reply-To: <20200407055837.3508017-3-alistair@alistair23.me>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 6 Apr 2020 23:52:36 -0700
Message-ID: <CA+E=qVf_Zr6JXQVxRuUdTWL7oxq5dRp+jeHF8PWDSozyFZMaCw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: allwinner: Enable Bluetooth and WiFi on
 sopine baseboard
To: Alistair Francis <alistair@alistair23.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_235304_053455_4AACB2D2 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, netdev <netdev@vger.kernel.org>,
 Marcel Holtmann <marcel@holtmann.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 "open list:BLUETOOTH DRIVERS" <linux-bluetooth@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, alistair23@gmail.com,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 6, 2020 at 10:58 PM Alistair Francis <alistair@alistair23.me> wrote:
>
> The sopine board has an optional RTL8723BS WiFi + BT module that can be
> connected to UART1. Add this to the device tree so that it will work
> for users if connected.

It's optional, so patch should have 'DO-NOT-MERGE' tag and appropriate
change should go into dt overlay.

> Signed-off-by: Alistair Francis <alistair@alistair23.me>
> ---
>  .../allwinner/sun50i-a64-sopine-baseboard.dts | 23 +++++++++++++++++++
>  1 file changed, 23 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> index 2f6ea9f3f6a2..f4be1bc56b07 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> @@ -103,6 +103,16 @@ ext_rgmii_phy: ethernet-phy@1 {
>         };
>  };
>
> +&mmc1 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&mmc1_pins>;
> +       vmmc-supply = <&reg_dldo4>;
> +       vqmmc-supply = <&reg_eldo1>;
> +       non-removable;
> +       bus-width = <4>;
> +       status = "okay";
> +};
> +
>  &mmc2 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&mmc2_pins>;
> @@ -174,6 +184,19 @@ &uart0 {
>         status = "okay";
>  };
>
> +&uart1 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
> +       uart-has-rtscts = <1>;
> +       status = "okay";
> +
> +       bluetooth {
> +               compatible = "realtek,rtl8723bs-bt";
> +               device-wake-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* PL5 */
> +               host-wake-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
> +       };
> +};
> +
>  /* On Pi-2 connector */
>  &uart2 {
>         pinctrl-names = "default";
> --
> 2.25.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
