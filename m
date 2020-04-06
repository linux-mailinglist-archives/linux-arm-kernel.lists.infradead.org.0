Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 439DC19F0B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 09:24:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xBrqujjc/XRdqJ4MrftfT2zyUceD3vdHP5pWAqXYkjs=; b=CmGo98jooQ2Frn
	6BeAoc6legSuVengW5TneEa25cq26ZS6Q3PBzOH/Tm3+c4/PoBEcD15YFYoA3r1qzy9x6K21/Awb7
	XoRwATDOmfV+2sVKUzG6Rh8OeIO8z4e5jrihV8VwPllRxOw1bjEnObor9vOoWOLv0xcy/kzYkNpvF
	Wr9gue5lUoodJDaPBTviJeW83cV8Bg5QzMJNUfh01CIPxDYSna/IWnGsP2qDDve30414xa1RU8Zhl
	uOH/nZ+ercYf+N5RgjkoxXSACTi4sZkbmkn806XjVYAiOFPEKz7jJGEZCl3p99GLwF7PYls8nHCGR
	DcFDQi7+v4r3YXOKl9xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLM7E-00045T-2w; Mon, 06 Apr 2020 07:24:16 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLM77-000458-Fw
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 07:24:10 +0000
Received: by mail-pg1-x541.google.com with SMTP id r4so5660832pgg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 00:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cvdiiK8A3JfX89bAM/u1sbYNdDSep2Av2QFgQXdtYrM=;
 b=tAoEfKySvi5LDswAHvkoW/8ngcqm+NeEur0VYfo62g7qmEAbreqA5S1+7wEDFeJboI
 U2a1vWqACk6zF8t/rfwVfFrFMfHGrXDD9fP+T1GqNDUNDdqkrLk28wYV41boMO+7ML/3
 HgD1wnIsTuuVoQrQy+tkWpJPrKr9mPE1ZHJ3epoyYItf1+hiQqw4BhgEUFeXZ9kQ+ilD
 e+G+extmXUk/lBsB3jIRgnhGbZH3JWq7OxhGeQzR8lVNppf0t920ExjMqrNQqdC4r/pg
 cCS8OEdlfW6hgwslzzh5UcWTKPNHshdJUPeTh10xa+l/ZdK0PNpr6duA1ieshzHEkA9Z
 GHIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cvdiiK8A3JfX89bAM/u1sbYNdDSep2Av2QFgQXdtYrM=;
 b=NfSCv1Ur5xfXumyuBCDomSxKftb8fbvPYXJDvtzOHDKTHz0hJfB5MDHG4oYDIqVwqU
 ghtKEptMkD8urvAKOCW+AIR6EzObX7VE0s3V2keNGX4e4NhHkYdBDd2GS3i8gQNrjc8Q
 RLTqw+iKAapSXPb5lCxnr6giXij4ZsWvKqh8uY495sjH8ic4bYeCzBZ//ZRgLd9t3yW5
 adFrVR7Q/taXNlAFLpluFpWMWVYMM8DQ01Jm2CZeJb/Ga4qJ0aj6/8LaDKXerLT1t2fh
 nNX2OsScURgSpSKLA9qHfFEXGBuRIjtYQpk9xREq0QqFmjIGBe8BTmPfgYR832RnKJ8e
 v3wA==
X-Gm-Message-State: AGi0PuZZo/p8dq05JSKIiGd/LGxXprX75PY/6r2cyz2s0TUr56OWZStB
 AmWqWfWPFFzQTWLFwLj8W7n8goaiksSO
X-Google-Smtp-Source: APiQypJHNV4GcrdOMLjdcSUcX2b+lOkDfpG5uZeoHwrwNHwEWBEMXPmZWfl/FaOJPk437Blp/k7hPw==
X-Received: by 2002:a62:cfc5:: with SMTP id
 b188mr20902217pfg.135.1586157848647; 
 Mon, 06 Apr 2020 00:24:08 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6e80:687d:9124:eff9:55e8:1727])
 by smtp.gmail.com with ESMTPSA id v8sm7159491pfn.213.2020.04.06.00.24.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 Apr 2020 00:24:08 -0700 (PDT)
Date: Mon, 6 Apr 2020 12:54:01 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V4 22/22] ARM: dts: stm32: Rename LEDs to match
 silkscreen on AV96
Message-ID: <20200406072401.GH2937@Mani-XPS-13-9360>
References: <20200401132237.60880-1-marex@denx.de>
 <20200401132237.60880-23-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401132237.60880-23-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_002409_599676_5E879F6D 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 03:22:37PM +0200, Marek Vasut wrote:
> The LED labels do not match the silkscreen on the board, fix it.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: No change
> V3: No change
> ---
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index 31f23e60629f..9fcc15b6e76d 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -55,21 +55,21 @@ memory@c0000000 {
>  	led {
>  		compatible = "gpio-leds";
>  		led1 {
> -			label = "green:user1";
> +			label = "green:user0";
>  			gpios = <&gpioz 7 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger = "heartbeat";
>  			default-state = "off";
>  		};
>  
>  		led2 {
> -			label = "green:user2";
> +			label = "green:user1";
>  			gpios = <&gpiof 3 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger = "mmc0";
>  			default-state = "off";
>  		};
>  
>  		led3 {
> -			label = "green:user3";
> +			label = "green:user2";
>  			gpios = <&gpiog 0 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger = "mmc1";
>  			default-state = "off";
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
