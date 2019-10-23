Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37264E1CD9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3uqImJV2+oxALwSUAcfje9BUeNctS+/TLQU8TH8Jj0=; b=LmIMaErhGH/Bzk
	hfPSjxmO3uWI4/9A8tCpEQKIgWsLsv36xY9tfadWxiK5Wnf/fCPgGsAr3HwPQwOqbR7KsigvT9Ktq
	O+klF6FwaB9gDYJcqaemHtUY6CmZHTKm9Wi82AFUBdXMONKNOULP1RcJTWqUJwDSYxwr0QS7YQdJG
	bd5pmDZXPRRv5Q2qz/D0RXjEz7vdPNAvMnsiOXVrlgnIcSNJvX0/eDayD72DmnSlz9NiRmShdHWSJ
	R2h7QgEfnWANAQMskjqeQClxHoVv7cwpf6tAFSIB7RW1pLqFzJytXX9yQVFRWcO909TNtkYLXxjBd
	UK2vMdjEKs96/UTWZvow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNGqE-0006y7-Fu; Wed, 23 Oct 2019 13:38:22 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGpw-0006xk-W9
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:38:06 +0000
Received: by mail-ed1-f67.google.com with SMTP id p59so7363255edp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 06:38:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JdQWHLcsUgyYWnnt0MPLxsj3f5JUEwKpW4xYYLo1gSQ=;
 b=TI94aqwbSYeEd1Y95moeha07UQx9cVT6CnK5EoWYbm4ZdHhgYYcy+FFBXArktXM++5
 R1qWS6fsvtfofD5Wd3UicFJatzbFRexp4tg/eArqj2rOxLkb3Pn6g4wqi6+M7bksxk25
 VCOmYKVWcOf7rKjMilpkaCcxu95QKG7eDpXGrPUOe8wV5SE4gc+QWdFa83E2HvraYu5+
 L9kudBRGZ5N63RkwNNca9S+HiKQsPXqKdffZ2D492G+adEzfUyLyOrIQCmgE8kdZJOTr
 lBdJOKS4TtmuAvCDewJyNNzXwG4YIeIsIEFZcXV6khNvyllh9smT2MuijUqEjKFb3bnj
 FHDQ==
X-Gm-Message-State: APjAAAVnu9JGmDBQX19mAPJ4dSfkb2MMqK4rM07ivlgazXZFO9XL5kKR
 rGPhdh4OlXKNldgnv56JHvo=
X-Google-Smtp-Source: APXvYqznzfI2yu9EcEWXsQoudXaWG86Q6SHwWYne68/ze740Or62NpWTxWEuRpb3gsmBqnO6YC3r2w==
X-Received: by 2002:aa7:c895:: with SMTP id p21mr38009391eds.38.1571837883219; 
 Wed, 23 Oct 2019 06:38:03 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id f6sm183016edu.68.2019.10.23.06.38.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 06:38:02 -0700 (PDT)
Date: Wed, 23 Oct 2019 15:38:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 30/36] ARM: s3c: remove cpufreq header dependencies
Message-ID: <20191023133800.GI11048@pi3>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-30-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010203043.1241612-30-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_063805_033834_A47E7026 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>, linus.walleij@linaro.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 10:30:14PM +0200, Arnd Bergmann wrote:
> The cpufreq drivers are split between the machine directory
> and the drivers/cpufreq directory. In order to share header
> files after we convert s3c to multiplatform, those headers
> have to live in a different global location.
> 
> Move them to linux/soc/samsung/ in lack of a better place.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-s3c24xx/common.c                         |  1 -
>  arch/arm/mach-s3c24xx/cpufreq-utils.c                  |  2 +-
>  arch/arm/mach-s3c24xx/iotiming-s3c2410.c               |  2 +-
>  arch/arm/mach-s3c24xx/iotiming-s3c2412.c               |  2 +-
>  arch/arm/mach-s3c24xx/mach-bast.c                      |  2 +-
>  arch/arm/mach-s3c24xx/mach-osiris-dvs.c                |  2 +-
>  arch/arm/mach-s3c24xx/mach-osiris.c                    |  2 +-
>  arch/arm/mach-s3c24xx/pll-s3c2410.c                    |  4 ++--
>  arch/arm/mach-s3c24xx/pll-s3c2440-12000000.c           |  4 ++--
>  arch/arm/mach-s3c24xx/pll-s3c2440-16934400.c           |  4 ++--
>  arch/arm/mach-s3c24xx/s3c2410.c                        |  1 -
>  arch/arm/mach-s3c24xx/s3c2412.c                        |  1 -
>  arch/arm/mach-s3c24xx/s3c244x.c                        |  2 --
>  arch/arm/mach-s3c64xx/s3c6400.c                        |  1 -
>  arch/arm/mach-s3c64xx/s3c6410.c                        |  2 +-
>  arch/arm/plat-samsung/include/plat/cpu.h               |  9 ---------
>  drivers/cpufreq/s3c2410-cpufreq.c                      |  5 ++---
>  drivers/cpufreq/s3c2412-cpufreq.c                      |  5 ++---
>  drivers/cpufreq/s3c2440-cpufreq.c                      |  5 ++---
>  drivers/cpufreq/s3c24xx-cpufreq-debugfs.c              |  2 +-
>  drivers/cpufreq/s3c24xx-cpufreq.c                      |  5 ++---
>  .../linux/soc/samsung/s3c-cpu-freq.h                   |  0
>  .../linux/soc/samsung/s3c-cpufreq-core.h               |  2 +-
>  include/linux/soc/samsung/s3c-pm.h                     | 10 ++++++++++
>  24 files changed, 33 insertions(+), 42 deletions(-)
>  rename arch/arm/plat-samsung/include/plat/cpu-freq.h => include/linux/soc/samsung/s3c-cpu-freq.h (100%)
>  rename arch/arm/plat-samsung/include/plat/cpu-freq-core.h => include/linux/soc/samsung/s3c-cpufreq-core.h (99%)
> 
> diff --git a/arch/arm/mach-s3c24xx/common.c b/arch/arm/mach-s3c24xx/common.c
> index ebf6bde67816..d16a164df6c4 100644
> --- a/arch/arm/mach-s3c24xx/common.c
> +++ b/arch/arm/mach-s3c24xx/common.c
> @@ -35,7 +35,6 @@
>  
>  #include <plat/cpu.h>
>  #include <plat/devs.h>
> -#include <plat/cpu-freq.h>
>  #include <plat/pwm-core.h>
>  
>  #include "common.h"
> diff --git a/arch/arm/mach-s3c24xx/cpufreq-utils.c b/arch/arm/mach-s3c24xx/cpufreq-utils.c
> index 1a7f38d085dd..43ab714eaa9e 100644
> --- a/arch/arm/mach-s3c24xx/cpufreq-utils.c
> +++ b/arch/arm/mach-s3c24xx/cpufreq-utils.c
> @@ -15,7 +15,7 @@
>  #include <mach/map.h>
>  #include <mach/regs-clock.h>
>  
> -#include <plat/cpu-freq-core.h>
> +#include <linux/soc/samsung/s3c-cpufreq-core.h>
>  
>  #include "regs-mem.h"
>  
> diff --git a/arch/arm/mach-s3c24xx/iotiming-s3c2410.c b/arch/arm/mach-s3c24xx/iotiming-s3c2410.c
> index 9f90aaf70bf3..5b3b16dd0ce8 100644
> --- a/arch/arm/mach-s3c24xx/iotiming-s3c2410.c
> +++ b/arch/arm/mach-s3c24xx/iotiming-s3c2410.c
> @@ -17,7 +17,7 @@
>  #include <mach/map.h>
>  #include <mach/regs-clock.h>
>  
> -#include <plat/cpu-freq-core.h>
> +#include <linux/soc/samsung/s3c-cpufreq-core.h>
>  
>  #include "regs-mem.h"
>  
> diff --git a/arch/arm/mach-s3c24xx/iotiming-s3c2412.c b/arch/arm/mach-s3c24xx/iotiming-s3c2412.c
> index 59356d10fbcf..a22b5611697d 100644
> --- a/arch/arm/mach-s3c24xx/iotiming-s3c2412.c
> +++ b/arch/arm/mach-s3c24xx/iotiming-s3c2412.c
> @@ -24,7 +24,7 @@
>  #include <asm/mach/map.h>
>  
>  #include <plat/cpu.h>
> -#include <plat/cpu-freq-core.h>
> +#include <linux/soc/samsung/s3c-cpufreq-core.h>
>  
>  #include <mach/s3c2412.h>
>  
> diff --git a/arch/arm/mach-s3c24xx/mach-bast.c b/arch/arm/mach-s3c24xx/mach-bast.c
> index cc941b5030ea..b2f2d036bca2 100644
> --- a/arch/arm/mach-s3c24xx/mach-bast.c
> +++ b/arch/arm/mach-s3c24xx/mach-bast.c
> @@ -46,7 +46,7 @@
>  #include <mach/gpio-samsung.h>
>  
>  #include <plat/cpu.h>
> -#include <plat/cpu-freq.h>
> +#include <linux/soc/samsung/s3c-cpu-freq.h>
>  #include <plat/devs.h>
>  #include <plat/gpio-cfg.h>
>  #include <plat/samsung-time.h>
> diff --git a/arch/arm/mach-s3c24xx/mach-osiris-dvs.c b/arch/arm/mach-s3c24xx/mach-osiris-dvs.c
> index 5d819b6ea428..1250520b3bcc 100644
> --- a/arch/arm/mach-s3c24xx/mach-osiris-dvs.c
> +++ b/arch/arm/mach-s3c24xx/mach-osiris-dvs.c
> @@ -14,7 +14,7 @@
>  
>  #include <linux/mfd/tps65010.h>
>  
> -#include <plat/cpu-freq.h>
> +#include <linux/soc/samsung/s3c-cpu-freq.h>
>  #include <mach/gpio-samsung.h>
>  
>  #define OSIRIS_GPIO_DVS	S3C2410_GPB(5)
> diff --git a/arch/arm/mach-s3c24xx/mach-osiris.c b/arch/arm/mach-s3c24xx/mach-osiris.c
> index 262e77bd48de..674164264076 100644
> --- a/arch/arm/mach-s3c24xx/mach-osiris.c
> +++ b/arch/arm/mach-s3c24xx/mach-osiris.c
> @@ -37,7 +37,7 @@
>  #include <linux/mtd/partitions.h>
>  
>  #include <plat/cpu.h>
> -#include <plat/cpu-freq.h>
> +#include <linux/soc/samsung/s3c-cpu-freq.h>
>  #include <plat/devs.h>
>  #include <plat/gpio-cfg.h>
>  #include <plat/samsung-time.h>
> diff --git a/arch/arm/mach-s3c24xx/pll-s3c2410.c b/arch/arm/mach-s3c24xx/pll-s3c2410.c
> index 0561f79ddce8..3fbc99eaa4a2 100644
> --- a/arch/arm/mach-s3c24xx/pll-s3c2410.c
> +++ b/arch/arm/mach-s3c24xx/pll-s3c2410.c
> @@ -15,8 +15,8 @@
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  
> -#include <plat/cpu.h>
> -#include <plat/cpu-freq-core.h>
> +#include <linux/soc/samsung/s3c-cpufreq-core.h>
> +#include <linux/soc/samsung/s3c-pm.h>
>  
>  /* This array should be sorted in ascending order of the frequencies */
>  static struct cpufreq_frequency_table pll_vals_12MHz[] = {
> diff --git a/arch/arm/mach-s3c24xx/pll-s3c2440-12000000.c b/arch/arm/mach-s3c24xx/pll-s3c2440-12000000.c
> index 2ec3a2f9a6a5..fdb8e8c2fe3b 100644
> --- a/arch/arm/mach-s3c24xx/pll-s3c2440-12000000.c
> +++ b/arch/arm/mach-s3c24xx/pll-s3c2440-12000000.c
> @@ -13,8 +13,8 @@
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  
> -#include <plat/cpu.h>
> -#include <plat/cpu-freq-core.h>
> +#include <linux/soc/samsung/s3c-cpufreq-core.h>
> +#include <linux/soc/samsung/s3c-pm.h>
>  
>  /* This array should be sorted in ascending order of the frequencies */
>  static struct cpufreq_frequency_table s3c2440_plls_12[] = {
> diff --git a/arch/arm/mach-s3c24xx/pll-s3c2440-16934400.c b/arch/arm/mach-s3c24xx/pll-s3c2440-16934400.c
> index 4b3d9e36c6bb..438b6fc099a4 100644
> --- a/arch/arm/mach-s3c24xx/pll-s3c2440-16934400.c
> +++ b/arch/arm/mach-s3c24xx/pll-s3c2440-16934400.c
> @@ -13,8 +13,8 @@
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  
> -#include <plat/cpu.h>
> -#include <plat/cpu-freq-core.h>
> +#include <linux/soc/samsung/s3c-cpufreq-core.h>
> +#include <linux/soc/samsung/s3c-pm.h>
>  
>  /* This array should be sorted in ascending order of the frequencies */
>  static struct cpufreq_frequency_table s3c2440_plls_169344[] = {
> diff --git a/arch/arm/mach-s3c24xx/s3c2410.c b/arch/arm/mach-s3c24xx/s3c2410.c
> index 21fd5404bc98..8427c150dd22 100644
> --- a/arch/arm/mach-s3c24xx/s3c2410.c
> +++ b/arch/arm/mach-s3c24xx/s3c2410.c
> @@ -30,7 +30,6 @@
>  #include <asm/irq.h>
>  #include <asm/system_misc.h>
>  
> -#include <plat/cpu-freq.h>
>  
>  #include <mach/regs-clock.h>
>  
> diff --git a/arch/arm/mach-s3c24xx/s3c2412.c b/arch/arm/mach-s3c24xx/s3c2412.c
> index c3fb3e6c0dd8..209f952a6c98 100644
> --- a/arch/arm/mach-s3c24xx/s3c2412.c
> +++ b/arch/arm/mach-s3c24xx/s3c2412.c
> @@ -34,7 +34,6 @@
>  #include <mach/regs-gpio.h>
>  
>  #include <plat/cpu.h>
> -#include <plat/cpu-freq.h>
>  #include <plat/devs.h>
>  #include <plat/pm.h>
>  
> diff --git a/arch/arm/mach-s3c24xx/s3c244x.c b/arch/arm/mach-s3c24xx/s3c244x.c
> index a75f588b9d45..f5bd489bac85 100644
> --- a/arch/arm/mach-s3c24xx/s3c244x.c
> +++ b/arch/arm/mach-s3c24xx/s3c244x.c
> @@ -28,8 +28,6 @@
>  #include <mach/hardware.h>
>  #include <asm/irq.h>
>  
> -#include <plat/cpu-freq.h>
> -
>  #include <mach/regs-clock.h>
>  #include <mach/regs-gpio.h>
>  
> diff --git a/arch/arm/mach-s3c64xx/s3c6400.c b/arch/arm/mach-s3c64xx/s3c6400.c
> index 81233495d548..d18af724c807 100644
> --- a/arch/arm/mach-s3c64xx/s3c6400.c
> +++ b/arch/arm/mach-s3c64xx/s3c6400.c
> @@ -28,7 +28,6 @@
>  
>  #include <asm/irq.h>
>  
> -#include <plat/cpu-freq.h>
>  #include <mach/regs-clock.h>
>  
>  #include <plat/cpu.h>
> diff --git a/arch/arm/mach-s3c64xx/s3c6410.c b/arch/arm/mach-s3c64xx/s3c6410.c
> index 9465a6e0f068..b1d725e55cd2 100644
> --- a/arch/arm/mach-s3c64xx/s3c6410.c
> +++ b/arch/arm/mach-s3c64xx/s3c6410.c
> @@ -29,7 +29,7 @@
>  
>  #include <asm/irq.h>
>  
> -#include <plat/cpu-freq.h>
> +#include <linux/soc/samsung/s3c-pm.h>
>  #include <mach/regs-clock.h>
>  
>  #include <plat/cpu.h>
> diff --git a/arch/arm/plat-samsung/include/plat/cpu.h b/arch/arm/plat-samsung/include/plat/cpu.h
> index 02d7f991d5a3..9dfd58bcc03d 100644
> --- a/arch/arm/plat-samsung/include/plat/cpu.h
> +++ b/arch/arm/plat-samsung/include/plat/cpu.h
> @@ -124,15 +124,6 @@ extern struct syscore_ops s3c2412_pm_syscore_ops;
>  extern struct syscore_ops s3c2416_pm_syscore_ops;
>  extern struct syscore_ops s3c244x_pm_syscore_ops;
>  
> -/* system device subsystems */
> -
> -extern struct bus_type s3c2410_subsys;
> -extern struct bus_type s3c2410a_subsys;
> -extern struct bus_type s3c2412_subsys;
> -extern struct bus_type s3c2416_subsys;
> -extern struct bus_type s3c2440_subsys;
> -extern struct bus_type s3c2442_subsys;
> -extern struct bus_type s3c2443_subsys;
>  extern struct bus_type s3c6410_subsys;
>  
>  #endif
> diff --git a/drivers/cpufreq/s3c2410-cpufreq.c b/drivers/cpufreq/s3c2410-cpufreq.c
> index 5c6cb590b63f..9c2f29cacdd0 100644
> --- a/drivers/cpufreq/s3c2410-cpufreq.c
> +++ b/drivers/cpufreq/s3c2410-cpufreq.c
> @@ -16,13 +16,12 @@
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  #include <linux/io.h>
> +#include <linux/soc/samsung/s3c-cpufreq-core.h>
> +#include <linux/soc/samsung/s3c-pm.h>
>  
>  #include <asm/mach/arch.h>
>  #include <asm/mach/map.h>
>  
> -#include <plat/cpu.h>
> -#include <plat/cpu-freq-core.h>
> -
>  #include <mach/map.h>
>  
>  #define S3C2410_CLKREG(x) ((x) + S3C24XX_VA_CLKPWR)
> diff --git a/drivers/cpufreq/s3c2412-cpufreq.c b/drivers/cpufreq/s3c2412-cpufreq.c
> index d922d0d47c80..38dc9e6db633 100644
> --- a/drivers/cpufreq/s3c2412-cpufreq.c
> +++ b/drivers/cpufreq/s3c2412-cpufreq.c
> @@ -19,15 +19,14 @@
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  #include <linux/io.h>
> +#include <linux/soc/samsung/s3c-cpufreq-core.h>
> +#include <linux/soc/samsung/s3c-pm.h>
>  
>  #include <asm/mach/arch.h>
>  #include <asm/mach/map.h>
>  
>  #include <mach/s3c2412.h>
>  
> -#include <plat/cpu.h>
> -#include <plat/cpu-freq-core.h>
> -
>  #include <mach/map.h>
>  
>  #define S3C2410_CLKREG(x) ((x) + S3C24XX_VA_CLKPWR)
> diff --git a/drivers/cpufreq/s3c2440-cpufreq.c b/drivers/cpufreq/s3c2440-cpufreq.c
> index 5fe7a891fa13..442abdccb9c1 100644
> --- a/drivers/cpufreq/s3c2440-cpufreq.c
> +++ b/drivers/cpufreq/s3c2440-cpufreq.c
> @@ -20,13 +20,12 @@
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  #include <linux/io.h>
> +#include <linux/soc/samsung/s3c-cpufreq-core.h>
> +#include <linux/soc/samsung/s3c-pm.h>
>  
>  #include <asm/mach/arch.h>
>  #include <asm/mach/map.h>
>  
> -#include <plat/cpu.h>
> -#include <plat/cpu-freq-core.h>
> -
>  #include <mach/map.h>
>  
>  #define S3C2410_CLKREG(x) ((x) + S3C24XX_VA_CLKPWR)
> diff --git a/drivers/cpufreq/s3c24xx-cpufreq-debugfs.c b/drivers/cpufreq/s3c24xx-cpufreq-debugfs.c
> index 290e3539d03e..93971dfe7c75 100644
> --- a/drivers/cpufreq/s3c24xx-cpufreq-debugfs.c
> +++ b/drivers/cpufreq/s3c24xx-cpufreq-debugfs.c
> @@ -18,7 +18,7 @@
>  #include <linux/seq_file.h>
>  #include <linux/err.h>
>  
> -#include <plat/cpu-freq-core.h>
> +#include <linux/soc/samsung/s3c-cpufreq-core.h>
>  
>  static struct dentry *dbgfs_root;
>  static struct dentry *dbgfs_file_io;
> diff --git a/drivers/cpufreq/s3c24xx-cpufreq.c b/drivers/cpufreq/s3c24xx-cpufreq.c
> index c786e1197d3c..01b1823ea208 100644
> --- a/drivers/cpufreq/s3c24xx-cpufreq.c
> +++ b/drivers/cpufreq/s3c24xx-cpufreq.c
> @@ -21,13 +21,12 @@
>  #include <linux/device.h>
>  #include <linux/sysfs.h>
>  #include <linux/slab.h>
> +#include <linux/soc/samsung/s3c-cpufreq-core.h>
> +#include <linux/soc/samsung/s3c-pm.h>
>  
>  #include <asm/mach/arch.h>
>  #include <asm/mach/map.h>
>  
> -#include <plat/cpu.h>
> -#include <plat/cpu-freq-core.h>
> -
>  #include <mach/map.h>
>  
>  /* note, cpufreq support deals in kHz, no Hz */
> diff --git a/arch/arm/plat-samsung/include/plat/cpu-freq.h b/include/linux/soc/samsung/s3c-cpu-freq.h
> similarity index 100%
> rename from arch/arm/plat-samsung/include/plat/cpu-freq.h
> rename to include/linux/soc/samsung/s3c-cpu-freq.h
> diff --git a/arch/arm/plat-samsung/include/plat/cpu-freq-core.h b/include/linux/soc/samsung/s3c-cpufreq-core.h
> similarity index 99%
> rename from arch/arm/plat-samsung/include/plat/cpu-freq-core.h
> rename to include/linux/soc/samsung/s3c-cpufreq-core.h
> index 2c7cf2665634..4d22be1031b9 100644

Can you also update the header guard names to match new location?

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
