Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6891DE1DAD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 16:06:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfibQ59Guo84VUNaGMmrPwKFdIsyuO8bG7RjX8u/IHo=; b=e+3BpRYIxc9T16
	t4OPRlc8b+/tMvJhG5GcZowSeUZYNHCpB83/g7xMTM/1XYZScnFN8GXh+NyuUJplrjggghKMied+4
	Kv5eqiGdejmZ5anuum7LM0ft5mSWUSE/Ad5pUFJmTCzSw+cNrsUK6MWMQLtBOuvAroPJ+7Tbvfga3
	uZJG52WF3ZrI2Q2aVQdlyIZH40POPLHHc7lLn0AQNHsZco1d3fV3y7cYmAkqukdKKfOmGYg8a2D1w
	GeOJwBODL7u8gt4uQPUFiAbSjibtj3TpWll/w1qpogXkAqC5iXRxCljsdj8v8PKrjJNVhYuBXxpcn
	ia73Dc1znvpZ7DB4yxtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNHH2-00058C-Da; Wed, 23 Oct 2019 14:06:04 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNHGo-00057Z-1M
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 14:05:52 +0000
Received: by mail-ed1-f68.google.com with SMTP id l25so4610713edt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 07:05:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VQH/EvjbXwm/VAIhmVob4G0/HIkap/+J+l+jq3KpBXg=;
 b=YmdAexvKhOvlLHLycecB7F+n6/RAteQcOEbf7mmi8INRoYBsM4kYsPgmc5oIL3m6BT
 t1D7TIrXwN3mnz91G5USdyLacD+pxJDglm/53TbP6BNy1mw54lH/aMG+XiIL0gDIE098
 BC/CzflyCgO+foM/V8QkA9NFs19e3DBfIKPKFO6dNHvsf9FL2kLtx+2lrT0t9TVPFMyv
 x6GdE5hq5FstMdBtSX/+XNPRa/QLU+1EPX5d9clbsOcY86LIifXfAtnlCwrfu0mBGJLb
 yvis+gWquuWru77S0JAEZcyywyaCMugVnG4qgHm/F0fMa0LqNMQX2e7KgkecDSfEXU97
 dzZw==
X-Gm-Message-State: APjAAAUvvAWee0GU8ICe0IQyzLpXsv7T0ZfckcwZsoJRoWRqU0kvBqWs
 ikgzFC2oYd7foaTmEj6BRYxRiBHA2/8=
X-Google-Smtp-Source: APXvYqxhJij2FwGWOQDrBZhSUctJohVK3d5ZMbbMV/VKkp43/DubjOIb97D2epny1RKlPSnh6m37tg==
X-Received: by 2002:a17:906:55d1:: with SMTP id
 z17mr32933587ejp.300.1571839547705; 
 Wed, 23 Oct 2019 07:05:47 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id k24sm169807edx.46.2019.10.23.07.05.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 07:05:46 -0700 (PDT)
Date: Wed, 23 Oct 2019 16:05:44 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 35/36] ARM: s3c: move into a common directory
Message-ID: <20191023140544.GL11048@pi3>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010210704.2453990-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010210704.2453990-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_070550_085762_50F7D55E 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org, linus.walleij@linaro.org,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 11:07:04PM +0200, Arnd Bergmann wrote:
> s3c24xx and s3c64xx have a lot in common, but are split across three
> separate directories, which makes the interaction of the header files
> more complicated than necessary.
> 
> Move all three directories into a new mach-s3c, with a minimal
> set of changes to each file.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

(...)

>  rename arch/arm/{plat-samsung => mach-s3c}/Kconfig (98%)
>  rename arch/arm/{mach-s3c24xx/Kconfig => mach-s3c/Kconfig.s3c24xx} (100%)
>  rename arch/arm/{mach-s3c64xx/Kconfig => mach-s3c/Kconfig.s3c64xx} (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/Makefile (83%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/Makefile.boot (100%)
>  rename arch/arm/{mach-s3c24xx/Makefile => mach-s3c/Makefile.s3c24xx} (92%)
>  rename arch/arm/{mach-s3c64xx/Makefile => mach-s3c/Makefile.s3c64xx} (83%)
>  rename arch/arm/{plat-samsung => mach-s3c}/adc.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/anubis.h (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/ata-core.h (100%)

Looks like generic file now (shared between S3C24xx and S3C64xx) so I
would prefer to add a -s3c64xx suffix to make it clear.

>  rename arch/arm/{mach-s3c64xx => mach-s3c}/backlight.h (100%)

The same.

>  rename arch/arm/{mach-s3c24xx => mach-s3c}/bast-ide.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/bast-irq.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/bast.h (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/common-smdk.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/common-smdk.h (100%)

The same as SMDK is a common name (Samsung Developers Kit, or something
like this).

>  rename arch/arm/{plat-samsung => mach-s3c}/cpu.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/cpufreq-utils.c (100%)

Suffix.

>  rename arch/arm/{mach-s3c64xx => mach-s3c}/cpuidle.c (100%)

Suffix.

>  rename arch/arm/{mach-s3c64xx => mach-s3c}/crag6410.h (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/dev-audio.c (100%)

Suffix.

>  rename arch/arm/{mach-s3c64xx => mach-s3c}/dev-backlight.c (100%)

Suffix.

>  rename arch/arm/{mach-s3c64xx/dev-uart.c => mach-s3c/dev-uart-s3c64xx.c} (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/dev-uart.c (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/devs.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/fb-core.h (100%)

Suffix.

>  rename arch/arm/{plat-samsung => mach-s3c}/gpio-samsung.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/gta02.h (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/h1940-bluetooth.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/h1940.h (100%)
>  rename arch/arm/{mach-s3c24xx/include/mach/dma.h => mach-s3c/include/mach/dma-s3c24xx.h} (100%)
>  rename arch/arm/{mach-s3c64xx/include/mach/dma.h => mach-s3c/include/mach/dma-s3c64xx.h} (100%)
>  create mode 100644 arch/arm/mach-s3c/include/mach/dma.h
>  rename arch/arm/{mach-s3c24xx/include/mach/gpio-samsung.h => mach-s3c/include/mach/gpio-samsung-s3c24xx.h} (100%)
>  rename arch/arm/{mach-s3c64xx/include/mach/gpio-samsung.h => mach-s3c/include/mach/gpio-samsung-s3c64xx.h} (100%)
>  create mode 100644 arch/arm/mach-s3c/include/mach/gpio-samsung.h
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/include/mach/hardware.h (100%)

Suffix.

>  rename arch/arm/{mach-s3c24xx => mach-s3c}/include/mach/io.h (100%)

Suffix.

>  rename arch/arm/{mach-s3c24xx/include/mach/irqs.h => mach-s3c/include/mach/irqs-s3c24xx.h} (100%)
>  rename arch/arm/{mach-s3c64xx/include/mach/irqs.h => mach-s3c/include/mach/irqs-s3c64xx.h} (100%)
>  create mode 100644 arch/arm/mach-s3c/include/mach/irqs.h
>  rename arch/arm/{mach-s3c24xx/include/mach/map.h => mach-s3c/include/mach/map-s3c24xx.h} (100%)
>  rename arch/arm/{mach-s3c64xx/include/mach/map.h => mach-s3c/include/mach/map-s3c64xx.h} (100%)
>  create mode 100644 arch/arm/mach-s3c/include/mach/map.h
>  rename arch/arm/{mach-s3c24xx/include/mach/pm-core.h => mach-s3c/include/mach/pm-core-s3c24xx.h} (100%)
>  rename arch/arm/{mach-s3c64xx/include/mach/pm-core.h => mach-s3c/include/mach/pm-core-s3c64xx.h} (100%)
>  create mode 100644 arch/arm/mach-s3c/include/mach/pm-core.h
>  rename arch/arm/{mach-s3c24xx/include/mach/regs-clock.h => mach-s3c/include/mach/regs-clock-s3c24xx.h} (100%)
>  rename arch/arm/{mach-s3c64xx/include/mach/regs-clock.h => mach-s3c/include/mach/regs-clock-s3c64xx.h} (100%)
>  create mode 100644 arch/arm/mach-s3c/include/mach/regs-clock.h
>  rename arch/arm/{mach-s3c24xx/include/mach/regs-gpio.h => mach-s3c/include/mach/regs-gpio-s3c24xx.h} (100%)
>  rename arch/arm/{mach-s3c64xx/include/mach/regs-gpio.h => mach-s3c/include/mach/regs-gpio-s3c64xx.h} (100%)
>  create mode 100644 arch/arm/mach-s3c/include/mach/regs-gpio.h
>  rename arch/arm/{mach-s3c24xx/include/mach/regs-irq.h => mach-s3c/include/mach/regs-irq-s3c24xx.h} (100%)
>  rename arch/arm/{mach-s3c64xx/include/mach/regs-irq.h => mach-s3c/include/mach/regs-irq-s3c64xx.h} (100%)
>  create mode 100644 arch/arm/mach-s3c/include/mach/regs-irq.h
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/include/mach/regs-s3c2443-clock.h (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/include/mach/rtc-core.h (100%)

Suffix.

>  rename arch/arm/{mach-s3c24xx => mach-s3c}/include/mach/s3c2412.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/adc-core.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/cpu.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/devs.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/fb.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/gpio-cfg-helpers.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/gpio-cfg.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/gpio-core.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/iic-core.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/keypad.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/map-base.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/map-s3c.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/map-s5p.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/pm-common.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/pm.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/pwm-core.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/regs-adc.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/regs-irqtype.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/samsung-time.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/sdhci.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/usb-phy.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/include/plat/wakeup-mask.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/init.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/iotiming-s3c2410.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/iotiming-s3c2412.c (100%)
>  rename arch/arm/{mach-s3c24xx/irq-pm.c => mach-s3c/irq-pm-s3c24xx.c} (100%)
>  rename arch/arm/{mach-s3c64xx/irq-pm.c => mach-s3c/irq-pm-s3c64xx.c} (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/irq-s3c24xx-fiq-exports.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/irq-s3c24xx-fiq.S (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/irq-s3c24xx.c (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/irq-uart.h (100%)

Suffix.

>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-amlm5900.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-anubis.c (99%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-anw6410.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-at2440evb.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-bast.c (99%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-crag6410-module.c (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-crag6410.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-gta02.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-h1940.c (99%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-hmt.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-jive.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-mini2440.c (99%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-mini6410.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-n30.c (99%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-ncp.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-nexcoder.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-osiris-dvs.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-osiris.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-otom.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-qt2410.c (99%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-real6410.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-rx1950.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-rx3715.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-s3c2416-dt.c (98%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-s3c64xx-dt.c (98%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-smartq.c (99%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-smartq.h (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-smartq5.c (99%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-smartq7.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-smdk2410.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-smdk2413.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-smdk2416.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-smdk2440.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-smdk2443.c (99%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-smdk6400.c (99%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-smdk6410.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-tct_hammer.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-vr1000.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-vstms.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/nand-core.h (100%)

Suffix.

>  rename arch/arm/{mach-s3c64xx => mach-s3c}/onenand-core.h (100%)

Suffix.

>  rename arch/arm/{mach-s3c24xx => mach-s3c}/osiris.h (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/otom.h (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/pl080.c (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/platformdata.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/pll-s3c2410.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/pll-s3c2440-12000000.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/pll-s3c2440-16934400.c (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/pm-common.c (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/pm-gpio.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/pm-h1940.S (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/pm-s3c2410.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/pm-s3c2412.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/pm-s3c2416.c (100%)
>  rename arch/arm/{mach-s3c24xx/pm.c => mach-s3c/pm-s3c24xx.c} (100%)
>  rename arch/arm/{mach-s3c64xx/pm.c => mach-s3c/pm-s3c64xx.c} (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/pm.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/regs-dsc.h (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/regs-gpio-memport.h (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/regs-mem.h (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/regs-modem.h (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/regs-srom.h (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/regs-sys.h (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/regs-syscon-power.h (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/regs-usb-hsotg-phy.h (100%)

Suffix to all regs above.

>  rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2410.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2412-power.h (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2412.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2416.c (99%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2440.c (98%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2442.c (98%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2443.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c244x.c (99%)
>  rename arch/arm/{mach-s3c24xx/common.c => mach-s3c/s3c24xx.c} (99%)
>  rename arch/arm/{mach-s3c24xx/common.h => mach-s3c/s3c24xx.h} (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/s3c6400.c (98%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/s3c6410.c (99%)
>  rename arch/arm/{mach-s3c64xx/common.c => mach-s3c/s3c64xx.c} (99%)
>  rename arch/arm/{mach-s3c64xx/common.h => mach-s3c/s3c64xx.h} (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/setup-camif.c (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/setup-fb-24bpp.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/setup-i2c.c (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/setup-i2c0.c (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/setup-i2c1.c (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/setup-ide.c (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/setup-keypad.c (100%)

Suffix to all setup above.

>  rename arch/arm/{mach-s3c24xx/setup-sdhci-gpio.c => mach-s3c/setup-sdhci-gpio-s3c24xx.c} (100%)
>  rename arch/arm/{mach-s3c64xx/setup-sdhci-gpio.c => mach-s3c/setup-sdhci-gpio-s3c64xx.c} (100%)
>  rename arch/arm/{mach-s3c24xx/setup-spi.c => mach-s3c/setup-spi-s3c24xx.c} (100%)
>  rename arch/arm/{mach-s3c64xx/setup-spi.c => mach-s3c/setup-spi-s3c64xx.c} (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/setup-ts.c (100%)

Suffix.

>  rename arch/arm/{mach-s3c64xx => mach-s3c}/setup-usb-phy.c (100%)

Suffix.

>  rename arch/arm/{mach-s3c24xx => mach-s3c}/simtec-audio.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/simtec-nor.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/simtec-pm.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/simtec-usb.c (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/simtec.h (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/sleep-s3c2410.S (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/sleep-s3c2412.S (100%)
>  rename arch/arm/{mach-s3c24xx/sleep.S => mach-s3c/sleep-s3c24xx.S} (100%)
>  rename arch/arm/{mach-s3c64xx/sleep.S => mach-s3c/sleep-s3c64xx.S} (100%)
>  rename arch/arm/{mach-s3c24xx => mach-s3c}/spi-core.h (100%)

Suffix.

>  rename arch/arm/{mach-s3c24xx => mach-s3c}/vr1000.h (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/wakeup-mask.c (100%)
>  rename arch/arm/{plat-samsung => mach-s3c}/watchdog-reset.c (100%)
>  rename arch/arm/{mach-s3c64xx => mach-s3c}/watchdog-reset.h (100%)

Suffix.

Rest looks reasonable.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
