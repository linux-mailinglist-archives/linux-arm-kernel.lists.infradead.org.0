Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 114C4B769E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ubrHnFaJCIbjFWw2NSal0X36prb8RrcJNFd0V7u/Jeo=; b=Uh7clo+HXFV0aq
	pm3RYwKH+yEN3qyyNXuB8UZ+wopHoPKxUXEu9ObRdbGj5q+UhIW/8Mbw3KlnMZEJ5Rz+MKqj1qLTh
	1OORSK3PDpAj2pqouLHHfLJogShBSTX2X+IxRoxxv5G1PzrMGTCZclH6TJRANbjSFpxtB9xupd/VY
	KnwKPpAs4x//yWRmwBzZ3uILKgJVjE3uB3mHU5ChhOFHiM7dc3lOfz5Z25Lz9qLdqH3n5WledJBzx
	fIlExcW/RvDdzappMA3M6rrHAQH4Q7YPNlNffvyJn3xQffu+ERiqb4XyXhjM8lyE8PTD/a8YcA0df
	nPOHXZ5lkrvMMWBOOFYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAt2f-0003Nn-A6; Thu, 19 Sep 2019 09:48:01 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAt2N-0003MP-Su
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 09:47:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id b24so3153917wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 02:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=0p8PJFm343mkDyUK1kcLoeazmTgyFgYAv1YKHEZ0wic=;
 b=0ZKB+2yWmVQkfXIMUzyUUU85P/CHRA+yZ/Xp6HbLHCkH0D0PgwD0ZT0MyRMnDMfwIl
 3SYttbXLY2mFRvRAVgCbC8EuEeaYXBdhl3pCzUnKdYsGsdnqKet8jTc//tOgEA4EeU5b
 mchSGGKISpDzcRfoXQgDlX/RqVeafWvdRKG0F6DbBLQmWYz3X/6l0m4FCmRbGxFG80V5
 B4DetCb+XN0koqpFjABxrPoztepBUZnjRL6mgc85BhVhOBhXMT1adYq24iis/tS1IHi6
 mnpWikLzJYf69LEHelu4pScDs0R51VOIZk5fFdA3fvoRszXxFPnsMKd7zT0q4yzmq4fp
 fVow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=0p8PJFm343mkDyUK1kcLoeazmTgyFgYAv1YKHEZ0wic=;
 b=ZNgBjVqGSV1xhQliB2OuVDpVjH4Iqgz58Mjxoz2yrXq3kPdOlkIjHlyOrZ0R1aGxZl
 8BtTfhs13T2rU9fEqn8GboAJipux50iL0Fg2qwFWLgdFE0Ph0XkTM66X1JhqnhHFaiVF
 uE5kO1bTA+hUbIA1m0bQT5FxT9LoIT9IKI4x6FZQapVntFyiHEZyj1HKXboihQslbZ27
 aCd4kvip7SBkOx4pymcRGfVXDToycsmleo0gOuo6faLffX5jJCpv6UhgIckjbTjKkquB
 k+WQoT+X0m2oUZw3Dx5SVq4TzIrId5jeNXFtDeGp9GwnyCiwzVRjS52f1TgUrXj/FNMW
 YrDg==
X-Gm-Message-State: APjAAAXL9bSuoQ3f3OSjlKmd6l42mBFIvctvGiQMiciKQh0J5W+5LMcQ
 sebp5gAPDkgEAWh6ULjvN/viiQ==
X-Google-Smtp-Source: APXvYqx1yyOtKHmh61Sl0KRLhE2VzwYwXScwSqTkeTG71qjhTRYR40qvO/LxsUxT8abtvM1xwHOqwQ==
X-Received: by 2002:a1c:720a:: with SMTP id n10mr2234248wmc.0.1568886462342;
 Thu, 19 Sep 2019 02:47:42 -0700 (PDT)
Received: from [192.168.1.62] (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id z189sm7765108wmc.25.2019.09.19.02.47.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Sep 2019 02:47:41 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: meson: Add capacity-dmips-mhz attributes to
 G12B
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1568429380-3231-1-git-send-email-christianshewitt@gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <881d927d-cddd-350e-d907-9a33f53ff980@baylibre.com>
Date: Thu, 19 Sep 2019 11:47:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568429380-3231-1-git-send-email-christianshewitt@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_024743_943573_BC60DF5B 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Frank Hartung <supervisedthinking@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/09/2019 04:49, Christian Hewitt wrote:
> From: Frank Hartung <supervisedthinking@gmail.com>
> 
> From: Frank Hartung <supervisedthinking@gmail.com>
> 
> Meson G12B SoCs (S922X and A311D) are a big-little design where not all CPUs
> are equal; the A53s cores are weaker than the A72s.
> 
> Include capacity-dmips-mhz properties to tell the OS there is a difference
> in processing capacity. The dmips values are based on similar submissions for
> other A53/A72 SoCs: HiSilicon 3660 [1] and Rockchip RK3399 [2].
> 
> This change is particularly beneficial for use-cases like retro gaming where
> emulators often run on a single core. The OS now chooses an A72 core instead
> of an A53 core.
> 
> [1] https://lore.kernel.org/patchwork/patch/862742/
> [2] https://patchwork.kernel.org/patch/10836577/
> 
> Signed-off-by: Frank Hartung <supervisedthinking@gmail.com>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-g12b.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
> index 5628ccd..7f78d88 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
> @@ -49,6 +49,7 @@
>  			compatible = "arm,cortex-a53";
>  			reg = <0x0 0x0>;
>  			enable-method = "psci";
> +			capacity-dmips-mhz = <592>;
>  			next-level-cache = <&l2>;
>  		};
>  
> @@ -57,6 +58,7 @@
>  			compatible = "arm,cortex-a53";
>  			reg = <0x0 0x1>;
>  			enable-method = "psci";
> +			capacity-dmips-mhz = <592>;
>  			next-level-cache = <&l2>;
>  		};
>  
> @@ -65,6 +67,7 @@
>  			compatible = "arm,cortex-a73";
>  			reg = <0x0 0x100>;
>  			enable-method = "psci";
> +			capacity-dmips-mhz = <1024>;
>  			next-level-cache = <&l2>;
>  		};
>  
> @@ -73,6 +76,7 @@
>  			compatible = "arm,cortex-a73";
>  			reg = <0x0 0x101>;
>  			enable-method = "psci";
> +			capacity-dmips-mhz = <1024>;
>  			next-level-cache = <&l2>;
>  		};
>  
> @@ -81,6 +85,7 @@
>  			compatible = "arm,cortex-a73";
>  			reg = <0x0 0x102>;
>  			enable-method = "psci";
> +			capacity-dmips-mhz = <1024>;
>  			next-level-cache = <&l2>;
>  		};
>  
> @@ -89,6 +94,7 @@
>  			compatible = "arm,cortex-a73";
>  			reg = <0x0 0x103>;
>  			enable-method = "psci";
> +			capacity-dmips-mhz = <1024>;
>  			next-level-cache = <&l2>;
>  		};
>  
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
