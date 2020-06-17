Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6B71FC5BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 07:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QoouJJrJad+uNtZqDh/FZVpDzS9KOJb7fKvjFB352F4=; b=Yq55e7IktDRzwS
	XUUGx+MtKssJsmvx8uVau+6a0YbvokTtUoHZKFJSn/wSgms5c7XvWPiec+WFgQtnxGx58vyQHkU8w
	xSqU2vNUeiA0UCVzKf43GjhmdQy/1g2dsAST9p3hZs21yP25GvuaZT539ia83A6hDntQka6RAzjKH
	tv8u15PNCsJCj7iTKs5jtlpeqAI49BfoJUiC/ocjCZ/TD+mIw40echxo9SIAYgjNEHn3ohhIbToBW
	n7S/L9+iX0Mj1OINkRqK5YDxyBMgvRYpYQEhTyCnfiaFcrGnhADQu5sKCnvn7MW76vQsbCZjWQLte
	tjS9bIvd64W/dkl1PjCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlQo5-00038x-Ke; Wed, 17 Jun 2020 05:40:17 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlQnU-0002zV-9P
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 05:39:41 +0000
Received: by mail-ua1-x944.google.com with SMTP id v25so369384uau.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 22:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v9qIRx2tmhQ3c3ThbA5nkdagn3KrF5Ngnlh6eWWB5sQ=;
 b=tV5VmVtHEExLDAgnm3QHdrBX6Z+X2xewEeIPR6nHkE1YvO2YLuZj5m7aMMzZc0N5qn
 b+bHb3H1Pc+gT0kD2XioSKa20MP/FHGwtV/+Ku/ZtIp1b1oux3Iapejc2V8uF24wb84E
 iGb7tbt9DpISBvbBvsKSNtrp9WUTQMdXNgm5SX6l5DWFH999VJdCu1JcxskvBo+k2OZQ
 /Oz077l3N08uClrw1bPyI3kIatKaQbccwkvGEVq1gF7KwfD3tn5OMSSBypaFjkdpH7m4
 0SVo1rcoH6DlH7ilS9OSS3zJzdheVKSrfuPcWqR5TLKQeSrLrMatTJo4OiBQ9ZDSl+L5
 e/zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v9qIRx2tmhQ3c3ThbA5nkdagn3KrF5Ngnlh6eWWB5sQ=;
 b=a52qfj4Le7YTptRmekS0xUuWGNQGlLOBOkfKiWwgifHAOKfnBrzN8oS5IrW4ju8Lz9
 REjTLIvJiKX5UMvLvQLevsw5pLJYiNLg/QZKZq+LpoBQyZ9kiWx2JLdLPBy8DPzMRoRO
 nC9CeP0T2EdOELqWKQwaRLqKVeKzUfsipS6RojJcgRbpOkoNOlOdrcrUukOYqNDP92x/
 seKt4NAANhoSTo06M9DhhxXAl6HfosGuOivFp06IPWBFX152CzTiFpWbmByB9n1k6NVU
 gSvIWsrGLZczi0KdVv+uQagIqgdkLK0zjEb5B0jwDFCxidAVfJ5PaoT/VGmRyMrHENL1
 VIMg==
X-Gm-Message-State: AOAM5305NESckbgcRt74bpwzjg/3TaHLP41f/dqPA0TAacJ0TOxJaFEP
 ML6vyxnud2PzFXRbbx5fhyncBjICbQfN5SfqYQ1aMw==
X-Google-Smtp-Source: ABdhPJz89Ef33YgEHunwRCxdjaFBZmv3URUcXF7ranAVS8kN/9HInOJDHD51KTNr0Mh1t1tL3cEoGx09WYVLD327dfg=
X-Received: by 2002:ab0:1eca:: with SMTP id p10mr4534103uak.94.1592372379134; 
 Tue, 16 Jun 2020 22:39:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200608091739.2368-1-narmstrong@baylibre.com>
 <20200608091739.2368-6-narmstrong@baylibre.com>
In-Reply-To: <20200608091739.2368-6-narmstrong@baylibre.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Wed, 17 Jun 2020 11:09:28 +0530
Message-ID: <CAHLCerP+jEhZJs7yPmwPEm15FnrShJjNzOJ2UNcXVP5-WFbwVg@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] arm64: dts: meson-khadas-vim3: add Khadas MCU nodes
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_223940_349246_AE61CFF2 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Kevin Hilman <khilman@baylibre.com>,
 Linux PM list <linux-pm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 8, 2020 at 2:47 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add the Khadas MCU node with active FAN thermal nodes for all the
> Khadas VIM3 variants.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>


> ---
>  .../boot/dts/amlogic/meson-khadas-vim3.dtsi   | 23 +++++++++++++++++++
>  1 file changed, 23 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> index 094ecf2222bb..3325e54ea690 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> @@ -183,6 +183,23 @@
>         hdmi-phandle = <&hdmi_tx>;
>  };
>
> +&cpu_thermal {
> +       trips {
> +               cpu_active: cpu-active {
> +                       temperature = <80000>; /* millicelsius */
> +                       hysteresis = <2000>; /* millicelsius */
> +                       type = "active";
> +               };
> +       };
> +
> +       cooling-maps {
> +               map {
> +                       trip = <&cpu_active>;
> +                       cooling-device = <&khadas_mcu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +               };
> +       };
> +};
> +
>  &ext_mdio {
>         external_phy: ethernet-phy@0 {
>                 /* Realtek RTL8211F (0x001cc916) */
> @@ -222,6 +239,12 @@
>         pinctrl-0 = <&i2c_ao_sck_pins>, <&i2c_ao_sda_pins>;
>         pinctrl-names = "default";
>
> +       khadas_mcu: system-controller@18 {
> +               compatible = "khadas,mcu";
> +               reg = <0x18>;
> +               #cooling-cells = <2>;
> +       };
> +
>         gpio_expander: gpio-controller@20 {
>                 compatible = "ti,tca6408";
>                 reg = <0x20>;
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
