Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7986E160BE6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:49:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9XhuYus2kbdYbdbnCbmkMTJ4+g/8JrOSjKZn+eRQQ3A=; b=Eyz2RVB42x6aVaBrwE8ZfFXgpJ
	M1U/XJ6ejLBr30FP465vyrLvNZs5rczvNpYOf9Q/bsjtARu+K74yK2NdwGsDgBum8+ImWx+Kh3ihr
	YTku5x32Rmi9jdeUt/Sb+v6a2w+nfSQ49kGh6tC37+Ch6WLKePXnLkgosF9pJkOiGB3ZZtRya2hz0
	dieSEorOzGTPm4b21Ubj6OFRhdKia5+Y7fTViKu90FDHhO56MIlIihQSpFMC+ihc7hmu0TMbfo9Xw
	OnBysc/YMhIjymDo+5e9CXW+Y7SH8ucyzJwSK3vc0XFTUl4ag1xrhuk4ezbelMFlxh3myulrCo+Q3
	R1ILWMAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3b9f-0006y5-Hh; Mon, 17 Feb 2020 07:49:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3b9X-0006xN-Vy
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:49:17 +0000
Received: by mail-wm1-x343.google.com with SMTP id q9so16052212wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=lcsYrSRBQv0/tuOiLtIdcGzeEqOZwy/ucgpprLmBBKY=;
 b=jtItyBiUgRgk6BmdYboXya2a/o9c2S21KkV7KiQxBx+O6/WaPpvHVfErJdssFjbZ4i
 P30GjGDkteiyBRZp0k8BhIW+1GcTywIEbovUouGu/OgfmsDsIjMiWshH7A4OKSd28gaH
 p5SS5NkDBquZz6AKGgu5seByFxMBbzCNQHVBbI7NAocYAgt1VqeoXMVMcjdYd9C4ccU6
 LDQwxS+4Xepn/dGwZJkW2wyMnIxyfFq2eDYcMgs9DQ6Dt7px1HlhQqUTSIfbTL6kZZGl
 jVFgUT/VcLP8iDlE2qaccCbQRDlQ7ewgbyFDpZ9SdHnRiRZuTI/jZHIkheuqwFHAzb/k
 Riiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=lcsYrSRBQv0/tuOiLtIdcGzeEqOZwy/ucgpprLmBBKY=;
 b=mVusUX4wOZFfMQO6Pxo6rZco5C5Lv9Hw9H1pZNtQNjy3/DqZnRh7Wj8eADh2r7EEWu
 uNXywaknkjoMZSb7jTdPmVfkztS4JxVKNQrNdNIv/owiZijB+7gvQMNuBX8SmFxtMhkp
 m+PLVid+XQS9u/EBOwUdoZDFu5RA3NkCvABr6A6WbwiO/UpDzal6/oun2mTYznGnLSyW
 xJf/WqAoUA2x7dIGq6hozTEllGk4EOGSAFe4ML75fa8wwNy6p19LqjVlOVKgl1rbdlyr
 Rxu3AE5AewqT1PM4ndP3K/mnIKcpx7zZi6FPOSfnPcmkdwLYEeiy22GXV4mayV8J6S6a
 sdQw==
X-Gm-Message-State: APjAAAVhrENu9xaL7laTgUaAvFpWRJLcEYg3iQjApIJ/+Dj0q3yCpK0M
 abnPjNNm2Ttf7ir0UN3/7pTilw==
X-Google-Smtp-Source: APXvYqyJtjN2qsgU+dia/mVioDpDwyoJ+ti/pQN/I0BI9y/1B7olbgnxkE2KdsFVusIV1tYvrwUnkA==
X-Received: by 2002:a1c:a553:: with SMTP id o80mr20042142wme.94.1581925754379; 
 Sun, 16 Feb 2020 23:49:14 -0800 (PST)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id u23sm19462367wmu.14.2020.02.16.23.49.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Feb 2020 23:49:13 -0800 (PST)
References: <20200216173446.1823-1-linux.amoon@gmail.com>
 <20200216173446.1823-3-linux.amoon@gmail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCHv1 2/3] arm64: dts: meson: Add missing regulator linked to
 VCCV5 regulator to VDDIO_C/TF_IO
In-reply-to: <20200216173446.1823-3-linux.amoon@gmail.com>
Date: Mon, 17 Feb 2020 08:49:12 +0100
Message-ID: <1jo8txzm9z.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_234916_024563_764B1FBA 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: devicetree@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sun 16 Feb 2020 at 18:34, Anand Moon <linux.amoon@gmail.com> wrote:

> As per schematics add missing VCCV5 power supply to VDDIO_C/TF_IO
> regulator. Also add TF_3V3N_1V8_EN signal name to gpio pin.

Why ? I don't see the connection with the cover letter here ...

>
> Fixes: c35f6dc5c377 (arm64: dts: meson: Add minimal support for Odroid-N2)
> Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> index 353db3b32cc4..23eddff85fe5 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> @@ -66,11 +66,14 @@ tf_io: gpio-regulator-tf_io {
>  		regulator-min-microvolt = <1800000>;
>  		regulator-max-microvolt = <3300000>;
>  
> +		/* TF_3V3N_1V8_EN */
This is not terribly useful ... same for the previous patch

>  		gpios = <&gpio_ao GPIOAO_9 GPIO_ACTIVE_HIGH>;
>  		gpios-states = <0>;
>  
>  		states = <3300000 0>,
>  			 <1800000 1>;
> +		/* U16 RT9179GB */
> +		vin-supply = <&vcc_5v>;
That is not parsed and not even part of the gpio regulator binding
documentation. It won't make any difference.

>  	};
>  
>  	flash_1v8: regulator-flash_1v8 {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
