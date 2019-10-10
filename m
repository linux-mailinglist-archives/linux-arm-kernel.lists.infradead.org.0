Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C518D33F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 00:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tnxbxM/9k2YmtRCOaPGJ0urK2DSeW1IdJz4jeXBVyvI=; b=qowDkfP/sNpGQe
	B2ASXIlQn6TNvxGEdfJh1VcwwGdEnby4Uct/S/LSNTnEfCjh4e4vdBxvwuvsB0A5RGn8E80/TRgwa
	2CMIl1Sg6UhYTlt/r1KThRyHX8/Vhga4FU7r9ZbC/Ur45i7NE3SLBnvzqvtzRZlnkQOYapNQvL7xM
	Ae2WCUdWFQYGp3CNym0THW2jzxAdPN9a+oDF2OQtD/vKCPrFdGqxJzdbkJe9FFSnfGW54ztbvqFlY
	AKcRREWqVSoal7rW+zUV60MBMO3HswdxCSSnQ0t4nVatr6gnSfzzWUjkd15YtF5NMXLW0tW4kiWT/
	uyAe1VKG3Kohdmv8Zwjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIgwm-0007is-PE; Thu, 10 Oct 2019 22:30:12 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIgwZ-0007Lr-VV
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 22:30:02 +0000
Received: by mail-pl1-x642.google.com with SMTP id q15so3472631pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 15:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+Rq5CoTE2b9CRlBzcczaJbDgzRspVbnY0jyqvQtXOLk=;
 b=F0TXQ8XOSIFR3LftRORcvg6zYvgwuWjXU/vMmsRqPOPJbp6sOmBg8cT/WR2SO4+7n7
 YmoVnNKu6N76Qt8+eZ88+5IydI3fL1sL0ojTwUSN0V50JeV8uqQE7Dpd3/jGR6CUj6dO
 padyHY857EaLkA/6Js8ckRa0uRB6sYPuUvwYdfEQcI/pXCscm9U/3CCyonjBjvAcXloj
 bC8Jcip2EX3aXc7IC7deq7maBynlc80ExvuSzBctzGoHDk6PoErrk56bK+n1e+HWpWHJ
 DOdQQ945k1KQEG58m1UH5ATl38u5n/seJtzaFJugIOauRY7IObLwvl+fBP2dm+XicFy+
 RdRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+Rq5CoTE2b9CRlBzcczaJbDgzRspVbnY0jyqvQtXOLk=;
 b=FN4rOuh3iGr+rKqDJA0Fk5ds+S5u7Rdz+uczz4DngnTLEwMIebyF5/IHgSSNw5llzv
 vAz4ai/d5pst6db/RHWvZfjWRkz3pqNvzHFuGbhx3Gv8oxu9z+a6QunxgldTcp766FTF
 WP7jaPAilKNBxZxb870qv1LpW3MixZ1Ene9huWH6ZilOVHgomWaNcKcyBoVdqH3gazzn
 cfk+mVwdwKeCN3jq08KO4ot+HoDB0+8M3G+3xJDynj1bUNOeycso4RpQQ/m2r9uRnLKK
 GIpemiw1xlehXixTocjvKC52SfDYshHlbM0OdGk07H6FODZ6w2Ul/UXjo7LVdEi3ex43
 IQpA==
X-Gm-Message-State: APjAAAUyHZkA9xpFhAmx7eQYjIBZMHjv/Q1IQ00IkuaDgR9bhpxukL6v
 rjvsooCe6KRQHRJLdEEcFKs=
X-Google-Smtp-Source: APXvYqyTxO9tIPDRTcjUxp64SziEtWMojxOT65LeO0UkvFHvXqwvgTyLxurGAOgkGXCJxq2hsDxzSg==
X-Received: by 2002:a17:902:6b06:: with SMTP id
 o6mr12111867plk.154.1570746598284; 
 Thu, 10 Oct 2019 15:29:58 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id h70sm6222740pgc.48.2019.10.10.15.29.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 15:29:57 -0700 (PDT)
Date: Thu, 10 Oct 2019 15:29:55 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH 15/36] ARM: s3c: adc: move header to linux/soc/samsung
Message-ID: <20191010222955.GB229325@dtor-ws>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-15-arnd@arndb.de>
 <da32e8a3-cbb3-ea08-1c55-55980b3dc53e@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da32e8a3-cbb3-ea08-1c55-55980b3dc53e@roeck-us.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_153000_042096_55967D2D 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 linus.walleij@linaro.org, Sebastian Reichel <sre@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Kukjin Kim <kgene@kernel.org>,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 03:20:32PM -0700, Guenter Roeck wrote:
> On 10/10/19 1:29 PM, Arnd Bergmann wrote:
> > There are multiple drivers using the private adc interface.
> > It seems unlikely that they would ever get converted to iio,
> > so make the current state official by making the header file
> > global.
> > 
> > The s3c2410_ts driver needs a couple of register definitions
> > as well.
> > 
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> For hwmon:
> 
> Acked-by: Guenter Roeck <linux@roeck-us.net>

For input:

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>


> 
> > ---
> >   arch/arm/mach-s3c64xx/mach-crag6410.c         |  2 +-
> >   arch/arm/mach-s3c64xx/mach-mini6410.c         |  2 +-
> >   arch/arm/mach-s3c64xx/mach-real6410.c         |  2 +-
> >   arch/arm/mach-s3c64xx/mach-smdk6410.c         |  2 +-
> >   arch/arm/plat-samsung/adc.c                   |  2 +-
> >   arch/arm/plat-samsung/devs.c                  |  2 +-
> >   drivers/hwmon/s3c-hwmon.c                     |  2 +-
> >   drivers/input/touchscreen/s3c2410_ts.c        | 37 ++++++++++++++++++-
> >   drivers/power/supply/s3c_adc_battery.c        |  2 +-
> >   .../linux/soc/samsung/s3c-adc.h               |  0
> >   10 files changed, 43 insertions(+), 10 deletions(-)
> >   rename arch/arm/plat-samsung/include/plat/adc.h => include/linux/soc/samsung/s3c-adc.h (100%)
> > 
> > diff --git a/arch/arm/mach-s3c64xx/mach-crag6410.c b/arch/arm/mach-s3c64xx/mach-crag6410.c
> > index da5b50981a14..133453562d23 100644
> > --- a/arch/arm/mach-s3c64xx/mach-crag6410.c
> > +++ b/arch/arm/mach-s3c64xx/mach-crag6410.c
> > @@ -57,7 +57,7 @@
> >   #include <plat/keypad.h>
> >   #include <plat/devs.h>
> >   #include <plat/cpu.h>
> > -#include <plat/adc.h>
> > +#include <linux/soc/samsung/s3c-adc.h>
> >   #include <linux/platform_data/i2c-s3c2410.h>
> >   #include <plat/pm.h>
> >   #include <plat/samsung-time.h>
> > diff --git a/arch/arm/mach-s3c64xx/mach-mini6410.c b/arch/arm/mach-s3c64xx/mach-mini6410.c
> > index 0dd36ae49e6a..c7140300bd3f 100644
> > --- a/arch/arm/mach-s3c64xx/mach-mini6410.c
> > +++ b/arch/arm/mach-s3c64xx/mach-mini6410.c
> > @@ -27,7 +27,7 @@
> >   #include <mach/regs-gpio.h>
> >   #include <mach/gpio-samsung.h>
> > -#include <plat/adc.h>
> > +#include <linux/soc/samsung/s3c-adc.h>
> >   #include <plat/cpu.h>
> >   #include <plat/devs.h>
> >   #include <plat/fb.h>
> > diff --git a/arch/arm/mach-s3c64xx/mach-real6410.c b/arch/arm/mach-s3c64xx/mach-real6410.c
> > index 0ff88b6859c4..f55097fde94c 100644
> > --- a/arch/arm/mach-s3c64xx/mach-real6410.c
> > +++ b/arch/arm/mach-s3c64xx/mach-real6410.c
> > @@ -29,7 +29,7 @@
> >   #include <mach/gpio-samsung.h>
> >   #include <mach/irqs.h>
> > -#include <plat/adc.h>
> > +#include <linux/soc/samsung/s3c-adc.h>
> >   #include <plat/cpu.h>
> >   #include <plat/devs.h>
> >   #include <plat/fb.h>
> > diff --git a/arch/arm/mach-s3c64xx/mach-smdk6410.c b/arch/arm/mach-s3c64xx/mach-smdk6410.c
> > index 95bdcfe95a53..3042f6cbffd9 100644
> > --- a/arch/arm/mach-s3c64xx/mach-smdk6410.c
> > +++ b/arch/arm/mach-s3c64xx/mach-smdk6410.c
> > @@ -60,7 +60,7 @@
> >   #include <plat/devs.h>
> >   #include <plat/cpu.h>
> > -#include <plat/adc.h>
> > +#include <linux/soc/samsung/s3c-adc.h>
> >   #include <linux/platform_data/touchscreen-s3c2410.h>
> >   #include <plat/keypad.h>
> >   #include <plat/samsung-time.h>
> > diff --git a/arch/arm/plat-samsung/adc.c b/arch/arm/plat-samsung/adc.c
> > index ee3d5c989a76..623a9774cc52 100644
> > --- a/arch/arm/plat-samsung/adc.c
> > +++ b/arch/arm/plat-samsung/adc.c
> > @@ -20,7 +20,7 @@
> >   #include <linux/regulator/consumer.h>
> >   #include <plat/regs-adc.h>
> > -#include <plat/adc.h>
> > +#include <linux/soc/samsung/s3c-adc.h>
> >   /* This driver is designed to control the usage of the ADC block between
> >    * the touchscreen and any other drivers that may need to use it, such as
> > diff --git a/arch/arm/plat-samsung/devs.c b/arch/arm/plat-samsung/devs.c
> > index fd94a35e22f8..ddd90f0bb380 100644
> > --- a/arch/arm/plat-samsung/devs.c
> > +++ b/arch/arm/plat-samsung/devs.c
> > @@ -44,7 +44,7 @@
> >   #include <plat/cpu.h>
> >   #include <plat/devs.h>
> > -#include <plat/adc.h>
> > +#include <linux/soc/samsung/s3c-adc.h>
> >   #include <linux/platform_data/ata-samsung_cf.h>
> >   #include <plat/fb.h>
> >   #include <plat/fb-s3c2410.h>
> > diff --git a/drivers/hwmon/s3c-hwmon.c b/drivers/hwmon/s3c-hwmon.c
> > index b490fe3d2ee8..f2703c5460d0 100644
> > --- a/drivers/hwmon/s3c-hwmon.c
> > +++ b/drivers/hwmon/s3c-hwmon.c
> > @@ -20,7 +20,7 @@
> >   #include <linux/hwmon.h>
> >   #include <linux/hwmon-sysfs.h>
> > -#include <plat/adc.h>
> > +#include <linux/soc/samsung/s3c-adc.h>
> >   #include <linux/platform_data/hwmon-s3c.h>
> >   struct s3c_hwmon_attr {
> > diff --git a/drivers/input/touchscreen/s3c2410_ts.c b/drivers/input/touchscreen/s3c2410_ts.c
> > index b346e7cafd62..1a5a178ea286 100644
> > --- a/drivers/input/touchscreen/s3c2410_ts.c
> > +++ b/drivers/input/touchscreen/s3c2410_ts.c
> > @@ -21,10 +21,43 @@
> >   #include <linux/clk.h>
> >   #include <linux/io.h>
> > -#include <plat/adc.h>
> > -#include <plat/regs-adc.h>
> > +#include <linux/soc/samsung/s3c-adc.h>
> >   #include <linux/platform_data/touchscreen-s3c2410.h>
> > +#define	S3C2410_ADCCON			(0x00)
> > +#define	S3C2410_ADCTSC			(0x04)
> > +#define	S3C2410_ADCDLY			(0x08)
> > +#define	S3C2410_ADCDAT0			(0x0C)
> > +#define	S3C2410_ADCDAT1			(0x10)
> > +#define	S3C64XX_ADCUPDN			(0x14)
> > +#define	S3C2443_ADCMUX			(0x18)
> > +#define	S3C64XX_ADCCLRINT		(0x18)
> > +#define	S5P_ADCMUX			(0x1C)
> > +#define	S3C64XX_ADCCLRINTPNDNUP		(0x20)
> > +
> > +/* ADCTSC Register Bits */
> > +#define S3C2443_ADCTSC_UD_SEN		(1 << 8)
> > +#define S3C2410_ADCTSC_YM_SEN		(1<<7)
> > +#define S3C2410_ADCTSC_YP_SEN		(1<<6)
> > +#define S3C2410_ADCTSC_XM_SEN		(1<<5)
> > +#define S3C2410_ADCTSC_XP_SEN		(1<<4)
> > +#define S3C2410_ADCTSC_PULL_UP_DISABLE	(1<<3)
> > +#define S3C2410_ADCTSC_AUTO_PST		(1<<2)
> > +#define S3C2410_ADCTSC_XY_PST(x)	(((x)&0x3)<<0)
> > +
> > +/* ADCDAT0 Bits */
> > +#define S3C2410_ADCDAT0_UPDOWN		(1<<15)
> > +#define S3C2410_ADCDAT0_AUTO_PST	(1<<14)
> > +#define S3C2410_ADCDAT0_XY_PST		(0x3<<12)
> > +#define S3C2410_ADCDAT0_XPDATA_MASK	(0x03FF)
> > +
> > +/* ADCDAT1 Bits */
> > +#define S3C2410_ADCDAT1_UPDOWN		(1<<15)
> > +#define S3C2410_ADCDAT1_AUTO_PST	(1<<14)
> > +#define S3C2410_ADCDAT1_XY_PST		(0x3<<12)
> > +#define S3C2410_ADCDAT1_YPDATA_MASK	(0x03FF)
> > +
> > +
> >   #define TSC_SLEEP  (S3C2410_ADCTSC_PULL_UP_DISABLE | S3C2410_ADCTSC_XY_PST(0))
> >   #define INT_DOWN	(0)
> > diff --git a/drivers/power/supply/s3c_adc_battery.c b/drivers/power/supply/s3c_adc_battery.c
> > index 3d00b35cafc9..60b7f41ab063 100644
> > --- a/drivers/power/supply/s3c_adc_battery.c
> > +++ b/drivers/power/supply/s3c_adc_battery.c
> > @@ -22,7 +22,7 @@
> >   #include <linux/init.h>
> >   #include <linux/module.h>
> > -#include <plat/adc.h>
> > +#include <linux/soc/samsung/s3c-adc.h>
> >   #define BAT_POLL_INTERVAL		10000 /* ms */
> >   #define JITTER_DELAY			500 /* ms */
> > diff --git a/arch/arm/plat-samsung/include/plat/adc.h b/include/linux/soc/samsung/s3c-adc.h
> > similarity index 100%
> > rename from arch/arm/plat-samsung/include/plat/adc.h
> > rename to include/linux/soc/samsung/s3c-adc.h
> > 
> 

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
