Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8801184C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 11:17:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=95LxrcvvpeTsNCzkremvqxxjCqWRkEE8c2BxV7LCKfE=; b=S3sezPZ6ZkIgSUODpNsdt/IfPM
	Hbl4C7g2T3zXcuXiHk2b1owL2DMD5ojQCGFMXyuJnKMzKCJ30yfKvX82WmodSHL8l6y7Ke59XVCtC
	RZCygKJ2VASzAUY3yB2PLAbqWxo+VSkhvMueWRdNxOpunb/QfP1I2rdp3xRby4N11mpRal6TDoFCv
	yKZwYFUxH6nDJme6XAEm3mT4h4/jyDnjyeUlx3pbz5TcMBKBy3qqQqnygkUD1yqGXqtL1MpnuuFOL
	cyPrvXAvaQTgOTglqOgj9Gblb5Ytw25asiUoO/eaRU3bfXBP2dN9Bl69k7uKUTIUpB2KMxwUDIOSM
	dVY827iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iecaK-00006U-MB; Tue, 10 Dec 2019 10:17:40 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieca0-0008Vk-PT
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 10:17:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id p9so2497233wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 02:17:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=xmLlcTghzPFIQ8mfUoSKx274MOGK7c0q1BOLA3zin5c=;
 b=fcSvCZuDu/jCInvDVS5idg2zFC+JxUezgWsEzS5YwYFM1JFAhzC92Nm24kZZOmk094
 RfkjjBX4Tl7pVGKiTXkb6ZXjC8C5cdJ/xvvMdZu5xSlYUlCaPYcv4skpDFMDdUy6wKkE
 j81+cogTRKJl+jY4iIEWkAoeVhuzbSa1Sg3rYZ2J/NAC82qC8k4qMSaQ9SRIMQ1Xs9VM
 XIeopc2OHN73WVTc7bcO1iL6c8KxgROgkxyPTdf8WVQ+OZrbg/S39bH4Efd6uV/iI781
 OYm3bzPYAf5N4zJXWgkloQEMKq6WKNRc1Jp54ueSiHCXeH4J9ka0xLNn64pC13mRi3qz
 2oMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=xmLlcTghzPFIQ8mfUoSKx274MOGK7c0q1BOLA3zin5c=;
 b=aQGdMYOOVqjz+GO9nz61JaCepqivxezk9uQoyx7Jj6r3KkuF3aA1DPcxp1G9VNAJSr
 aunn9iJwW+jwnqOvy/QZLZZqWn6h4EsqE+TbX5UlizFPngTzSLKBeQHEstRUYMC49sbb
 byFAZcpAd9d3OOFT2RCIJlg4Ggc9IzFSZPGDBj6WB2dEcpX+9dPIt7Wd0KmsQZe/yUkd
 6TaxkA/URhXpvMO5xybgjhjavH0pDfP/indLoGVUOPIRJsUKYlyIe1iLrBkMghHJtwEC
 Th31RK5kRZZuLD9791KjEIk5Pk04AefAVAGB23bGb/3oHoutCXTuwqNJq++4ZoxaMSoz
 acDA==
X-Gm-Message-State: APjAAAWkuGrd1InyDmg7VIKIvkEsu4JtndRE2wFhBLKxGfUv81fFiMYz
 fUpNBVYLnFlIl+m/wBdTVgqGfw==
X-Google-Smtp-Source: APXvYqwVnyN4tOCPyX/fALkBBhtIPe2HLM6zr6GYhucBkFtEKMV/e/35eKhQlSa5MVPgf6uQKl+RIQ==
X-Received: by 2002:a05:600c:507:: with SMTP id
 i7mr4398123wmc.135.1575973037693; 
 Tue, 10 Dec 2019 02:17:17 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id g2sm2697067wrw.76.2019.12.10.02.17.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 02:17:17 -0800 (PST)
References: <20191202111253.94872-1-jian.hu@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] arm64: dts: meson-a1: add I2C nodes
In-reply-to: <20191202111253.94872-1-jian.hu@amlogic.com>
Date: Tue, 10 Dec 2019 11:17:16 +0100
Message-ID: <1j8snkh4cz.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_021720_822469_DF448515 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob
 Herring <robh@kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Wolfram Sang <wsa@the-dreams.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Mon 02 Dec 2019 at 12:12, Jian Hu <jian.hu@amlogic.com> wrote:

> There are four I2C controllers in A1 series,
> Share the same comptible with AXG.The I2C nodes
> depend on pinmux and clock controller.
>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 149 ++++++++++++++++++++++
>  1 file changed, 149 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> index eab2ecd36aa8..d0a73d953f5e 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> @@ -16,6 +16,13 @@
>  	#address-cells = <2>;
>  	#size-cells = <2>;
>  
> +	aliases {
> +		i2c0 = &i2c0;
> +		i2c1 = &i2c1;
> +		i2c2 = &i2c2;
> +		i2c3 = &i2c3;
> +	};
> +

I wonder if assigning i2c bus alias in the SoC dtsi is such a good idea.

Such aliases are usually assigned as needed by each board design:
meson-a1-ad401.dts in your case.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
