Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 658B3D33DD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 00:20:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DSToPvKh8Br/X2qpgrkYTJ7/+M7jO43FqqT2OJI1qjE=; b=J9G1wQsgmWTIqxvxsLmAigRyD
	/MqwqqTpCjHF59ZhCjtfHJp2NQRKec5+xRsstOC0SKtUoERlcH6JBRp5VzPSljHHZyeTpfqzLqy1L
	bni5yVY+qLvN6nAD8sz9yC3w6zv15C87Y/OArYTMEcmKFDFpplVUB5rgr9wcvZ68elMxAXJ+YQARA
	JucQwliUHyLcHrG2UmK4guILA6rt3XrRpmPL4BbgP0n8QgE7seYdwribmBiiXxyMdotsU+fcOxCNZ
	T+Zx6NgcSM63BfHJAfGyk6ziXvx2eR+BU0NceT5YLFL6ua9GM+gjLD4SkriUekPnpmSrBrmHU93d+
	TNOKBfDTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIgnd-0005Le-Pi; Thu, 10 Oct 2019 22:20:45 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIgnV-0005KG-Vb
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 22:20:39 +0000
Received: by mail-pl1-x641.google.com with SMTP id q24so3457032plr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 15:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=W3mGTs7MOyLjtpnj0PJB9+Bxqcbq+qsvgn2CFvFNE9o=;
 b=vO3NnEQYc9E8PG1a8ibC12yEWFQFOB1Hx8hGQVef2QBix8XnuHV72vGqiqfBByDX1B
 GB+RXlzi1AgV2HLPIJOxN5OEUrNN1gMc6B+upAOBwjnOFaybpjU2MNBFlpCcCVOGVi34
 Bf6J1QQrOp1pBonMzqpVzSZEKhB48Skt12qivYXo9agFB3h/z3YoYoEanyOXvX4+IV0N
 +vsR5ie1bipkap+s8HO1W/rkb8UOmSt4cT41+D8ayYPw5gSVvww3Yd9sdBrCiRcUCAJQ
 rpk2/At5z7IegYM6MLvNuOvrogHp6udXgni3zdPgfxyAPd31wwzen4UN1i9pSZ5MVqTJ
 /JEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=W3mGTs7MOyLjtpnj0PJB9+Bxqcbq+qsvgn2CFvFNE9o=;
 b=L7jU1JFQ9/Anb/srXuyPAZLVIIQFrR2LDh8/DoPjQ1IaWug/AZUr2QO6Tawl/AOHFL
 qReO8jWwcBEwJPjy33bC5S/in0OI/NC924pLulbEuUQbY/nmPX+o6INKaqmylAI7y8SI
 joH7dcbkA+dt/bPNAJBi3HsOUXRS/9p348q09gvea6nrZE97k9JCyM+1guJb0Nt/ofPL
 w+mNqGY8vcMF/AkJ5TRn9cecs+yyAtzZEp3Zwmkes1hmKwcrRbL0NnDb7CNkQD6fhAe5
 4ADiYoyYBHPMh4dMNNoorURfwpibl96HNuyOvgfqP/Zq1ZdK3+/VqHzPlzhrNfY3QiRx
 e8gQ==
X-Gm-Message-State: APjAAAUafFOLbuatDMI8F/7FQedGFSXBCg4HwYgRR8q9WIg36v2E7zkn
 CmsGgYLg935DnTsP2wvEYlQOrT+B
X-Google-Smtp-Source: APXvYqxhaE1iUzipXQlVGVyDvINWacWoHayHW9CYbbNozw8zmvHGLekFyPQMOcyuxIEYoAhqKGzqbg==
X-Received: by 2002:a17:902:bf0a:: with SMTP id
 bi10mr12162507plb.56.1570746033896; 
 Thu, 10 Oct 2019 15:20:33 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 11sm6805064pgd.0.2019.10.10.15.20.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 15:20:33 -0700 (PDT)
Subject: Re: [PATCH 15/36] ARM: s3c: adc: move header to linux/soc/samsung
To: Arnd Bergmann <arnd@arndb.de>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jean Delvare <jdelvare@suse.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Sebastian Reichel <sre@kernel.org>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-15-arnd@arndb.de>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <da32e8a3-cbb3-ea08-1c55-55980b3dc53e@roeck-us.net>
Date: Thu, 10 Oct 2019 15:20:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191010203043.1241612-15-arnd@arndb.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_152038_022687_47BCE6B5 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-hwmon@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/10/19 1:29 PM, Arnd Bergmann wrote:
> There are multiple drivers using the private adc interface.
> It seems unlikely that they would ever get converted to iio,
> so make the current state official by making the header file
> global.
> 
> The s3c2410_ts driver needs a couple of register definitions
> as well.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

For hwmon:

Acked-by: Guenter Roeck <linux@roeck-us.net>

> ---
>   arch/arm/mach-s3c64xx/mach-crag6410.c         |  2 +-
>   arch/arm/mach-s3c64xx/mach-mini6410.c         |  2 +-
>   arch/arm/mach-s3c64xx/mach-real6410.c         |  2 +-
>   arch/arm/mach-s3c64xx/mach-smdk6410.c         |  2 +-
>   arch/arm/plat-samsung/adc.c                   |  2 +-
>   arch/arm/plat-samsung/devs.c                  |  2 +-
>   drivers/hwmon/s3c-hwmon.c                     |  2 +-
>   drivers/input/touchscreen/s3c2410_ts.c        | 37 ++++++++++++++++++-
>   drivers/power/supply/s3c_adc_battery.c        |  2 +-
>   .../linux/soc/samsung/s3c-adc.h               |  0
>   10 files changed, 43 insertions(+), 10 deletions(-)
>   rename arch/arm/plat-samsung/include/plat/adc.h => include/linux/soc/samsung/s3c-adc.h (100%)
> 
> diff --git a/arch/arm/mach-s3c64xx/mach-crag6410.c b/arch/arm/mach-s3c64xx/mach-crag6410.c
> index da5b50981a14..133453562d23 100644
> --- a/arch/arm/mach-s3c64xx/mach-crag6410.c
> +++ b/arch/arm/mach-s3c64xx/mach-crag6410.c
> @@ -57,7 +57,7 @@
>   #include <plat/keypad.h>
>   #include <plat/devs.h>
>   #include <plat/cpu.h>
> -#include <plat/adc.h>
> +#include <linux/soc/samsung/s3c-adc.h>
>   #include <linux/platform_data/i2c-s3c2410.h>
>   #include <plat/pm.h>
>   #include <plat/samsung-time.h>
> diff --git a/arch/arm/mach-s3c64xx/mach-mini6410.c b/arch/arm/mach-s3c64xx/mach-mini6410.c
> index 0dd36ae49e6a..c7140300bd3f 100644
> --- a/arch/arm/mach-s3c64xx/mach-mini6410.c
> +++ b/arch/arm/mach-s3c64xx/mach-mini6410.c
> @@ -27,7 +27,7 @@
>   #include <mach/regs-gpio.h>
>   #include <mach/gpio-samsung.h>
>   
> -#include <plat/adc.h>
> +#include <linux/soc/samsung/s3c-adc.h>
>   #include <plat/cpu.h>
>   #include <plat/devs.h>
>   #include <plat/fb.h>
> diff --git a/arch/arm/mach-s3c64xx/mach-real6410.c b/arch/arm/mach-s3c64xx/mach-real6410.c
> index 0ff88b6859c4..f55097fde94c 100644
> --- a/arch/arm/mach-s3c64xx/mach-real6410.c
> +++ b/arch/arm/mach-s3c64xx/mach-real6410.c
> @@ -29,7 +29,7 @@
>   #include <mach/gpio-samsung.h>
>   #include <mach/irqs.h>
>   
> -#include <plat/adc.h>
> +#include <linux/soc/samsung/s3c-adc.h>
>   #include <plat/cpu.h>
>   #include <plat/devs.h>
>   #include <plat/fb.h>
> diff --git a/arch/arm/mach-s3c64xx/mach-smdk6410.c b/arch/arm/mach-s3c64xx/mach-smdk6410.c
> index 95bdcfe95a53..3042f6cbffd9 100644
> --- a/arch/arm/mach-s3c64xx/mach-smdk6410.c
> +++ b/arch/arm/mach-s3c64xx/mach-smdk6410.c
> @@ -60,7 +60,7 @@
>   
>   #include <plat/devs.h>
>   #include <plat/cpu.h>
> -#include <plat/adc.h>
> +#include <linux/soc/samsung/s3c-adc.h>
>   #include <linux/platform_data/touchscreen-s3c2410.h>
>   #include <plat/keypad.h>
>   #include <plat/samsung-time.h>
> diff --git a/arch/arm/plat-samsung/adc.c b/arch/arm/plat-samsung/adc.c
> index ee3d5c989a76..623a9774cc52 100644
> --- a/arch/arm/plat-samsung/adc.c
> +++ b/arch/arm/plat-samsung/adc.c
> @@ -20,7 +20,7 @@
>   #include <linux/regulator/consumer.h>
>   
>   #include <plat/regs-adc.h>
> -#include <plat/adc.h>
> +#include <linux/soc/samsung/s3c-adc.h>
>   
>   /* This driver is designed to control the usage of the ADC block between
>    * the touchscreen and any other drivers that may need to use it, such as
> diff --git a/arch/arm/plat-samsung/devs.c b/arch/arm/plat-samsung/devs.c
> index fd94a35e22f8..ddd90f0bb380 100644
> --- a/arch/arm/plat-samsung/devs.c
> +++ b/arch/arm/plat-samsung/devs.c
> @@ -44,7 +44,7 @@
>   
>   #include <plat/cpu.h>
>   #include <plat/devs.h>
> -#include <plat/adc.h>
> +#include <linux/soc/samsung/s3c-adc.h>
>   #include <linux/platform_data/ata-samsung_cf.h>
>   #include <plat/fb.h>
>   #include <plat/fb-s3c2410.h>
> diff --git a/drivers/hwmon/s3c-hwmon.c b/drivers/hwmon/s3c-hwmon.c
> index b490fe3d2ee8..f2703c5460d0 100644
> --- a/drivers/hwmon/s3c-hwmon.c
> +++ b/drivers/hwmon/s3c-hwmon.c
> @@ -20,7 +20,7 @@
>   #include <linux/hwmon.h>
>   #include <linux/hwmon-sysfs.h>
>   
> -#include <plat/adc.h>
> +#include <linux/soc/samsung/s3c-adc.h>
>   #include <linux/platform_data/hwmon-s3c.h>
>   
>   struct s3c_hwmon_attr {
> diff --git a/drivers/input/touchscreen/s3c2410_ts.c b/drivers/input/touchscreen/s3c2410_ts.c
> index b346e7cafd62..1a5a178ea286 100644
> --- a/drivers/input/touchscreen/s3c2410_ts.c
> +++ b/drivers/input/touchscreen/s3c2410_ts.c
> @@ -21,10 +21,43 @@
>   #include <linux/clk.h>
>   #include <linux/io.h>
>   
> -#include <plat/adc.h>
> -#include <plat/regs-adc.h>
> +#include <linux/soc/samsung/s3c-adc.h>
>   #include <linux/platform_data/touchscreen-s3c2410.h>
>   
> +#define	S3C2410_ADCCON			(0x00)
> +#define	S3C2410_ADCTSC			(0x04)
> +#define	S3C2410_ADCDLY			(0x08)
> +#define	S3C2410_ADCDAT0			(0x0C)
> +#define	S3C2410_ADCDAT1			(0x10)
> +#define	S3C64XX_ADCUPDN			(0x14)
> +#define	S3C2443_ADCMUX			(0x18)
> +#define	S3C64XX_ADCCLRINT		(0x18)
> +#define	S5P_ADCMUX			(0x1C)
> +#define	S3C64XX_ADCCLRINTPNDNUP		(0x20)
> +
> +/* ADCTSC Register Bits */
> +#define S3C2443_ADCTSC_UD_SEN		(1 << 8)
> +#define S3C2410_ADCTSC_YM_SEN		(1<<7)
> +#define S3C2410_ADCTSC_YP_SEN		(1<<6)
> +#define S3C2410_ADCTSC_XM_SEN		(1<<5)
> +#define S3C2410_ADCTSC_XP_SEN		(1<<4)
> +#define S3C2410_ADCTSC_PULL_UP_DISABLE	(1<<3)
> +#define S3C2410_ADCTSC_AUTO_PST		(1<<2)
> +#define S3C2410_ADCTSC_XY_PST(x)	(((x)&0x3)<<0)
> +
> +/* ADCDAT0 Bits */
> +#define S3C2410_ADCDAT0_UPDOWN		(1<<15)
> +#define S3C2410_ADCDAT0_AUTO_PST	(1<<14)
> +#define S3C2410_ADCDAT0_XY_PST		(0x3<<12)
> +#define S3C2410_ADCDAT0_XPDATA_MASK	(0x03FF)
> +
> +/* ADCDAT1 Bits */
> +#define S3C2410_ADCDAT1_UPDOWN		(1<<15)
> +#define S3C2410_ADCDAT1_AUTO_PST	(1<<14)
> +#define S3C2410_ADCDAT1_XY_PST		(0x3<<12)
> +#define S3C2410_ADCDAT1_YPDATA_MASK	(0x03FF)
> +
> +
>   #define TSC_SLEEP  (S3C2410_ADCTSC_PULL_UP_DISABLE | S3C2410_ADCTSC_XY_PST(0))
>   
>   #define INT_DOWN	(0)
> diff --git a/drivers/power/supply/s3c_adc_battery.c b/drivers/power/supply/s3c_adc_battery.c
> index 3d00b35cafc9..60b7f41ab063 100644
> --- a/drivers/power/supply/s3c_adc_battery.c
> +++ b/drivers/power/supply/s3c_adc_battery.c
> @@ -22,7 +22,7 @@
>   #include <linux/init.h>
>   #include <linux/module.h>
>   
> -#include <plat/adc.h>
> +#include <linux/soc/samsung/s3c-adc.h>
>   
>   #define BAT_POLL_INTERVAL		10000 /* ms */
>   #define JITTER_DELAY			500 /* ms */
> diff --git a/arch/arm/plat-samsung/include/plat/adc.h b/include/linux/soc/samsung/s3c-adc.h
> similarity index 100%
> rename from arch/arm/plat-samsung/include/plat/adc.h
> rename to include/linux/soc/samsung/s3c-adc.h
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
