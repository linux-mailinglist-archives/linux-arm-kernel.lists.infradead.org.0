Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11176E1AEC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4r8kon6MnZFR8W0cjwTwhWEgjrp+60TrN7PrhF1Lz8Q=; b=O2sYoQ779uvoT7
	bgs+jkdrQChwYVNqe4N89rYWcbw5dJH0b2D/qNawmEFHoeuniTvztyu7lsRJmWCljvrUSm6fZZcje
	us6R0+mV4TRUY6b3T/ofj0XMPESoQCeFPPcwUGZ6UCDUM5OZp9PPRjZryfwrNsWNIMisi7h8UZRah
	86MBY0wWHCkC9vm2dHMKXAuSyxZzA2APd2gJtuLhJz4QrtGx5/bQxZx54V02GQ5aIdJ2JpjZmeoyl
	9IiIho7DEFZw3Qstn5ICfaIaWWm024JhAoEPoV92qeVMFfu39LVCZIolaln0MECgz3YIdllJOsmeL
	Fv6Qv3s3/+ZcxmD61jRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFwh-0006AY-K4; Wed, 23 Oct 2019 12:40:59 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFtH-0002K2-57
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:37:31 +0000
Received: by mail-ed1-f67.google.com with SMTP id y7so8092737edo.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 05:37:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CQZd7Ks2W7nTjayD2ynvN6k8gSwIF6xLtKbZwC/BStI=;
 b=eyzZb3CIBL/xg2KzHAj/KQvR8iDSjo0OnyhHGOisO3wm0bSZKXCIOozPRCrcyUK0YV
 PiBv5peA+ISK5P08SmJh3Mp5jr03UNpUWrwfZGKhNhXxmjzk26bhJd0SnADQAIL1C547
 rycfmW8V7BfXuIxKg6ZhEPK/ZK3P2RhxS+h06LeCyYtLZ3KRjmqIHHbIG/al1itfDXE5
 ZNm6jQolJSo5LLyj7r1cMuZltH2DRGM2EZo4CIw7aeUBXC5pK5p/lboA/iKbCYW7txYY
 Joq4uMrh+IekOrd4Hb+Bnk8JG/wDjDHAZSF18bGT1DXtuZXYRsf7dQGcqKe7Wfb/02bD
 31pQ==
X-Gm-Message-State: APjAAAUxl+yCcvb6A71KDCJhbAdIxWgRQcHZAVKBvNcKZs3yDQxe0qrM
 OsB57FkfVmNdTVvBeD0BbU0=
X-Google-Smtp-Source: APXvYqz9/W6CFefTKhw5teICE7vsX29Qd+eM/1KzbIgnFwyGIGtJWDsVIsuDbHO4JINKZ5tGcXNNFQ==
X-Received: by 2002:a17:906:27c5:: with SMTP id
 k5mr31969642ejc.173.1571834245072; 
 Wed, 23 Oct 2019 05:37:25 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id u18sm130680ejr.67.2019.10.23.05.37.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 05:37:24 -0700 (PDT)
Date: Wed, 23 Oct 2019 14:37:22 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 15/36] ARM: s3c: adc: move header to linux/soc/samsung
Message-ID: <20191023123722.GD11048@pi3>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-15-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010203043.1241612-15-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_053727_228013_8909BDD8 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 linus.walleij@linaro.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Sebastian Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Kukjin Kim <kgene@kernel.org>,
 linux-input@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 10:29:59PM +0200, Arnd Bergmann wrote:
> There are multiple drivers using the private adc interface.
> It seems unlikely that they would ever get converted to iio,
> so make the current state official by making the header file
> global.
> 
> The s3c2410_ts driver needs a couple of register definitions
> as well.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-s3c64xx/mach-crag6410.c         |  2 +-
>  arch/arm/mach-s3c64xx/mach-mini6410.c         |  2 +-
>  arch/arm/mach-s3c64xx/mach-real6410.c         |  2 +-
>  arch/arm/mach-s3c64xx/mach-smdk6410.c         |  2 +-
>  arch/arm/plat-samsung/adc.c                   |  2 +-
>  arch/arm/plat-samsung/devs.c                  |  2 +-
>  drivers/hwmon/s3c-hwmon.c                     |  2 +-
>  drivers/input/touchscreen/s3c2410_ts.c        | 37 ++++++++++++++++++-
>  drivers/power/supply/s3c_adc_battery.c        |  2 +-
>  .../linux/soc/samsung/s3c-adc.h               |  0
>  10 files changed, 43 insertions(+), 10 deletions(-)
>  rename arch/arm/plat-samsung/include/plat/adc.h => include/linux/soc/samsung/s3c-adc.h (100%)
> 
> diff --git a/arch/arm/mach-s3c64xx/mach-crag6410.c b/arch/arm/mach-s3c64xx/mach-crag6410.c
> index da5b50981a14..133453562d23 100644
> --- a/arch/arm/mach-s3c64xx/mach-crag6410.c
> +++ b/arch/arm/mach-s3c64xx/mach-crag6410.c
> @@ -57,7 +57,7 @@
>  #include <plat/keypad.h>
>  #include <plat/devs.h>
>  #include <plat/cpu.h>
> -#include <plat/adc.h>
> +#include <linux/soc/samsung/s3c-adc.h>
>  #include <linux/platform_data/i2c-s3c2410.h>
>  #include <plat/pm.h>
>  #include <plat/samsung-time.h>
> diff --git a/arch/arm/mach-s3c64xx/mach-mini6410.c b/arch/arm/mach-s3c64xx/mach-mini6410.c
> index 0dd36ae49e6a..c7140300bd3f 100644
> --- a/arch/arm/mach-s3c64xx/mach-mini6410.c
> +++ b/arch/arm/mach-s3c64xx/mach-mini6410.c
> @@ -27,7 +27,7 @@
>  #include <mach/regs-gpio.h>
>  #include <mach/gpio-samsung.h>
>  
> -#include <plat/adc.h>
> +#include <linux/soc/samsung/s3c-adc.h>
>  #include <plat/cpu.h>
>  #include <plat/devs.h>
>  #include <plat/fb.h>
> diff --git a/arch/arm/mach-s3c64xx/mach-real6410.c b/arch/arm/mach-s3c64xx/mach-real6410.c
> index 0ff88b6859c4..f55097fde94c 100644
> --- a/arch/arm/mach-s3c64xx/mach-real6410.c
> +++ b/arch/arm/mach-s3c64xx/mach-real6410.c
> @@ -29,7 +29,7 @@
>  #include <mach/gpio-samsung.h>
>  #include <mach/irqs.h>
>  
> -#include <plat/adc.h>
> +#include <linux/soc/samsung/s3c-adc.h>
>  #include <plat/cpu.h>
>  #include <plat/devs.h>
>  #include <plat/fb.h>
> diff --git a/arch/arm/mach-s3c64xx/mach-smdk6410.c b/arch/arm/mach-s3c64xx/mach-smdk6410.c
> index 95bdcfe95a53..3042f6cbffd9 100644
> --- a/arch/arm/mach-s3c64xx/mach-smdk6410.c
> +++ b/arch/arm/mach-s3c64xx/mach-smdk6410.c
> @@ -60,7 +60,7 @@
>  
>  #include <plat/devs.h>
>  #include <plat/cpu.h>
> -#include <plat/adc.h>
> +#include <linux/soc/samsung/s3c-adc.h>
>  #include <linux/platform_data/touchscreen-s3c2410.h>
>  #include <plat/keypad.h>
>  #include <plat/samsung-time.h>
> diff --git a/arch/arm/plat-samsung/adc.c b/arch/arm/plat-samsung/adc.c
> index ee3d5c989a76..623a9774cc52 100644
> --- a/arch/arm/plat-samsung/adc.c
> +++ b/arch/arm/plat-samsung/adc.c
> @@ -20,7 +20,7 @@
>  #include <linux/regulator/consumer.h>
>  
>  #include <plat/regs-adc.h>
> -#include <plat/adc.h>
> +#include <linux/soc/samsung/s3c-adc.h>
>  
>  /* This driver is designed to control the usage of the ADC block between
>   * the touchscreen and any other drivers that may need to use it, such as
> diff --git a/arch/arm/plat-samsung/devs.c b/arch/arm/plat-samsung/devs.c
> index fd94a35e22f8..ddd90f0bb380 100644
> --- a/arch/arm/plat-samsung/devs.c
> +++ b/arch/arm/plat-samsung/devs.c
> @@ -44,7 +44,7 @@
>  
>  #include <plat/cpu.h>
>  #include <plat/devs.h>
> -#include <plat/adc.h>
> +#include <linux/soc/samsung/s3c-adc.h>
>  #include <linux/platform_data/ata-samsung_cf.h>
>  #include <plat/fb.h>
>  #include <plat/fb-s3c2410.h>
> diff --git a/drivers/hwmon/s3c-hwmon.c b/drivers/hwmon/s3c-hwmon.c
> index b490fe3d2ee8..f2703c5460d0 100644
> --- a/drivers/hwmon/s3c-hwmon.c
> +++ b/drivers/hwmon/s3c-hwmon.c
> @@ -20,7 +20,7 @@
>  #include <linux/hwmon.h>
>  #include <linux/hwmon-sysfs.h>
>  
> -#include <plat/adc.h>
> +#include <linux/soc/samsung/s3c-adc.h>
>  #include <linux/platform_data/hwmon-s3c.h>
>  
>  struct s3c_hwmon_attr {
> diff --git a/drivers/input/touchscreen/s3c2410_ts.c b/drivers/input/touchscreen/s3c2410_ts.c
> index b346e7cafd62..1a5a178ea286 100644
> --- a/drivers/input/touchscreen/s3c2410_ts.c
> +++ b/drivers/input/touchscreen/s3c2410_ts.c
> @@ -21,10 +21,43 @@
>  #include <linux/clk.h>
>  #include <linux/io.h>
>  
> -#include <plat/adc.h>
> -#include <plat/regs-adc.h>
> +#include <linux/soc/samsung/s3c-adc.h>
>  #include <linux/platform_data/touchscreen-s3c2410.h>
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
>  #define TSC_SLEEP  (S3C2410_ADCTSC_PULL_UP_DISABLE | S3C2410_ADCTSC_XY_PST(0))
>  
>  #define INT_DOWN	(0)
> diff --git a/drivers/power/supply/s3c_adc_battery.c b/drivers/power/supply/s3c_adc_battery.c
> index 3d00b35cafc9..60b7f41ab063 100644
> --- a/drivers/power/supply/s3c_adc_battery.c
> +++ b/drivers/power/supply/s3c_adc_battery.c
> @@ -22,7 +22,7 @@
>  #include <linux/init.h>
>  #include <linux/module.h>
>  
> -#include <plat/adc.h>
> +#include <linux/soc/samsung/s3c-adc.h>
>  
>  #define BAT_POLL_INTERVAL		10000 /* ms */
>  #define JITTER_DELAY			500 /* ms */
> diff --git a/arch/arm/plat-samsung/include/plat/adc.h b/include/linux/soc/samsung/s3c-adc.h
> similarity index 100%
> rename from arch/arm/plat-samsung/include/plat/adc.h
> rename to include/linux/soc/samsung/s3c-adc.h

Can you update the name of header guard? __LINUX_SOC_SAMSUNG_S3C_ADC_H?

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
