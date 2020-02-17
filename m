Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1B9160BBE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:39:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HVnwBQpawk+SMMRdN8lV5jWIdwO7gnMcRm+Pmf/ZlA0=; b=JDRaz8SX8w6cwl6hX9a1nrfUJL
	sfvkQfIXI9A2zFzhx4A20yj6w2Y8fIRSFXa0+3XkWjpKCrjXZOjN4Ge9WYFRc1oFadQFg+kaop5z0
	zTe3E+cJaSsWIah2MeGmCp869WlF2eO/eJaAoVptL5xmL0Cn0I1AVq6ZW3MFFAnWcpbS0Fbi/KF8I
	Ld3ZilyfLTp2VHHzgOXx2G276ceBFh/RyLxOgKJiKeTGmC39/JGSQS8jsjWt4IepUo644D7s4PEXk
	qzUFF9TTGHtFr8Cymtv61qMzbIuWiVJrUD9ByjEoC/r87GAu9ivUsueQNHpvvijLbm7WNnCGgQ2KP
	112qwsMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3azm-00024l-OU; Mon, 17 Feb 2020 07:39:10 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3azd-000245-3Q
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:39:03 +0000
Received: by mail-wr1-x442.google.com with SMTP id z3so18390420wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=Ra+M29CjHPnhIpuNAQgZQpc3ckx3Pxcs/DfQWA9zI+8=;
 b=xSIYa2za/Qrh1kzrTrcFaipMEucxZqWSY1/sGPKm7xetj4GzRFRHUlgd8Pxv7F7Amp
 KVvw7M8fgQQK/Tz4HDQwlT2Kp9qz4Phw/SIyj0xXHUpSlF0azECO0qc1CRYOuhyt/Ueq
 WMPzRKD3GSXgHqMlBbR8s3D8oIw/zCmV/f62nKfE3CKXSjDjR0IEHmMfmPxbkmrpZRCu
 TfnSiEuIvqx/UKMzfhTm8kr6ev6jphuZlw6l0dkS2ouHS3uZ6dLgVgA5uZvOaiYNfTX6
 7Naf2BDDJRtpuhJInlOKV9mO9uhL0+kTu+nQfF+TRLnXk75rqNEvH3L+ZI0mJwlNQ4xE
 Esmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=Ra+M29CjHPnhIpuNAQgZQpc3ckx3Pxcs/DfQWA9zI+8=;
 b=Hk6tQlCyN2sSATFzFTwnzuJSf/XN3vnosOEunc+S6NBEDmwlACcStSYyBa4Xnracd4
 tJ/DF7UFleHQvXilqZ7/RLrjPCAVmF6E9wNRFdq0No8lxpeqRExr/E23poQ1oZZogN6M
 TYS/VCKuTQXnHwagloF288IufQiu2oQ9Uo/Od7Ua+i/khUsc7qsWvwVfZxkUZhV/vK8z
 UUSDdnRc2mGEuiUgkT4Vz4Y4fJ6biH58Y6ZlTFAV5YPyvp66Wj5WtxeIoMH19kyjj5g9
 U95dvcu+q57Ng/JvStNe/oTSyXtv6w3LrIpU3AjAfg/mO1ID+2eogvfgAh78sw7az3dW
 D7TA==
X-Gm-Message-State: APjAAAVpsDUfNxBBYjfv3SALoXA9Xvsw618JD7bqi8hvDEICKCJlBCnA
 27U0m++EP2m6oz8TYHbm2KgsuQ==
X-Google-Smtp-Source: APXvYqx9fOOdunfmR6iWLBjPSh9B++/NSNDOBPnAw9CgNVgoSc4uWoD7y74CF/YZ2CXXmZLxUHsT9g==
X-Received: by 2002:a5d:5273:: with SMTP id l19mr21442762wrc.175.1581925138814; 
 Sun, 16 Feb 2020 23:38:58 -0800 (PST)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id c15sm19842783wrt.1.2020.02.16.23.38.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Feb 2020 23:38:58 -0800 (PST)
References: <20200216202101.2810-1-linux.amoon@gmail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] arm64: dts: amlogic: odroid-n2: set usb-pwr-en regulator
 always on
In-reply-to: <20200216202101.2810-1-linux.amoon@gmail.com>
Date: Mon, 17 Feb 2020 08:38:57 +0100
Message-ID: <1jpnedzmr2.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_233901_167117_529D9468 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sun 16 Feb 2020 at 21:21, Anand Moon <linux.amoon@gmail.com> wrote:

> usb-pwr-en regulator is getting disable after booting, setting
> regulator-alway-on help enable the regulator after booting.

This explains what your patch does, not why it needs to be done.
Why does this regulator need be on at all time ? What device needs it
and cannot claim it properly ?

>
> [   31.766097] USB_PWR_EN: disabling
>
> Fixes: c35f6dc5c377 (arm64: dts: meson: Add minimal support for Odroid-N2)
> Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> Patch generated on top of my earier patch.
> [0] https://patchwork.kernel.org/patch/11384531/
> [1] https://patchwork.kernel.org/patch/11384533/
>
> Before
> [root@alarm ~]# cat /sys/kernel/debug/regulator/regulator_summary | grep USB
>        USB_PWR_EN                 0    1      0 unknown  5000mV     0mA  5000mV  5000mV
> After
> [root@alarm ~]# cat /sys/kernel/debug/regulator/regulator_summary | grep USB
>        USB_PWR_EN                 1    1      0 unknown  5000mV     0mA  5000mV  5000mV
> ---
>  arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> index 23eddff85fe5..938a9e15adfc 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> @@ -177,6 +177,7 @@ usb_pwr_en: regulator-usb_pwr_en {
>  		regulator-min-microvolt = <5000000>;
>  		regulator-max-microvolt = <5000000>;
>  		vin-supply = <&vcc_5v>;
> +		regulator-always-on;
>  
>  		/* Connected to the microUSB port power enable */
>  		gpio = <&gpio GPIOH_6 GPIO_ACTIVE_HIGH>;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
