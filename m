Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E91DD9AE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 18:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JYXFQWe9Gb4jF2aJtnywIP3GI4JZKbM7z9Jox5T3KSg=; b=JXV2h/r5bjyLv1
	yjP1gEXB7cV6rJwItv21i6xREF+ZvCPivwGbV5Eyz0VwOJPlGChN1TnzuR42CJvkrkS26H+JVUWxC
	EMDL9dypmE9hH+a69p+fOxUX3m8Aj+Bo3QG6O3/TWhOH8/c4P/4ttPOLzs9Fi38VFOp4cMf41Ujp3
	ErRtW+IYAzjqCtrZLzLICfVwjA+ItOOTCPEp/BXiUw4fgtA9iumpPle7gh9ICZrPeZ4S/IF2KBC5C
	j9DIHW1kHULhgCSm00NXedL/n/6KZ2x3llkWVbET6fQnSexPatdF1lP0/ki2LZwGVKXd3VT/FtCz4
	D39U0T8HHiD+JsTd8RaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLroW-00052g-DB; Sat, 19 Oct 2019 16:42:48 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLroM-000529-5K
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 16:42:39 +0000
Received: by mail-wr1-x444.google.com with SMTP id t16so4207754wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 19 Oct 2019 09:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0bulbVbLFGY/pgLXwzKHTMch+8Jp9lMq9IfLMGu0aYU=;
 b=HgIyqCuUO+e+giNE3pXqdKKKNkzDBd/g7tALz2r5hkQthl3/8yUK+5arjmMrt0O7nR
 koMmynGdv1ZbjNfbEVxCr7dngv4FM5oaZ+hgqvVReIcaoMKpfMly6lBltbyE1kQtgYoF
 XY5hDpI0yXdzWh3LM+xXCymu6CMemw+vwM+slnxnoeNW340l94hK9kFbdBo80TS8bQkR
 aBWxDWy7ANe+niAEN/yPp+gxgHyyXxtTeaKcicBuhuz87s/NiSqS9cXV3xptQZ5RgRgd
 BI0B7i9xUUiowVJCJtVphjcGoje5iyciLfiUFPRH8rZaVSgcTX8eoMJwfMYaKBAykGLI
 LpiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0bulbVbLFGY/pgLXwzKHTMch+8Jp9lMq9IfLMGu0aYU=;
 b=na9Q9Y2iRTBCKwViULOAT9m6+7p3RbCZtOwmvBhnkmg2MoFQmKocrU5U/UZeX21Gxs
 v1aAVrXFUZWjhbihxm+HVV/2ukJZ2fjzGo/inI+nse2v8IHEAIe5CaP8UJpB4sYkrCfu
 qGw5diLnz8weQoiXatV+tXBvei0PGAL5zdS5Ro/OBy57iiEWciBAnqV8x3KsPf5P02kb
 zsG72o2zzBgv/YG+HFV9yVF7OHyED4n47oNRg1e0XEe1OyuiWPwsGdLtiTB0i4W3qkZE
 1T7D8PF9adg6S8dL4piggrUSRPL9zcX3wz6QTqyaHWudRRJiRfd9z15u6VIqqLCW5Mde
 zsAg==
X-Gm-Message-State: APjAAAUPLu04MH8F02k+IqcRFMo1q7hquEJB6cFrlmnm8e6D1T3RI7bk
 fyMnHFFPBE6kMeM2AJ+x2wEm6be9
X-Google-Smtp-Source: APXvYqyM4l9k7cGD3tumxE88d3itrboRb1M11XuIyWc1ueSHSjk92dpIJ8FfpUbXhENTni2Dg7NB2A==
X-Received: by 2002:adf:8567:: with SMTP id 94mr9317417wrh.65.1571503356410;
 Sat, 19 Oct 2019 09:42:36 -0700 (PDT)
Received: from giga-mm ([62.68.26.146])
 by smtp.gmail.com with ESMTPSA id 143sm15047896wmb.33.2019.10.19.09.42.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2019 09:42:35 -0700 (PDT)
Date: Sat, 19 Oct 2019 18:42:34 +0200
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 2/6] ARM: ep93xx: enable SPARSE_IRQ
Message-Id: <20191019184234.4cdb37a735fe632528880d76@gmail.com>
In-Reply-To: <20191018163047.1284736-2-arnd@arndb.de>
References: <20191018163047.1284736-1-arnd@arndb.de>
 <20191018163047.1284736-2-arnd@arndb.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-unknown-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_094238_228462_AD1ED41C 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.sverdlin[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Hubert Feurstein <hubert.feurstein@contec.at>,
 Hartley Sweeten <hsweeten@visionengravers.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Lukasz Majewski <lukma@denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Arnd,

On Fri, 18 Oct 2019 18:29:15 +0200
Arnd Bergmann <arnd@arndb.de> wrote:

> Without CONFIG_SPARSE_IRQ, we rely on mach/irqs.h to define NR_IRQS
> globally. Do the minimal conversion by setting .nr_irqs in each
> machine descriptor.
> 
> Only the vision_ep9307 machine has extra IRQs for GPIOs, so make
> .nr_irqs the original value there, while using the plain NR_EP93XX_IRQS
> everywhere else.

This patch causes multiple problems on EDB9302:

1. WARNINGs during gpiochip registration, for instance:

------------[ cut here ]------------
WARNING: CPU: 0 PID: 1 at kernel/irq/chip.c:1013 __irq_do_set_handler+0x94/0x188
CPU: 0 PID: 1 Comm: swapper Tainted: G        W         5.4.0-rc3 #1
Hardware name: Cirrus Logic EDB9302 Evaluation Board
[<c000e878>] (unwind_backtrace) from [<c000d574>] (show_stack+0x10/0x18)
[<c000d574>] (show_stack) from [<c0335e28>] (dump_stack+0x18/0x24)
[<c0335e28>] (dump_stack) from [<c001cf1c>] (__warn+0xa4/0xc8)
[<c001cf1c>] (__warn) from [<c001cfe8>] (warn_slowpath_fmt+0xa8/0xb8)
[<c001cfe8>] (warn_slowpath_fmt) from [<c0055668>] (__irq_do_set_handler+0x94/0x188)
[<c0055668>] (__irq_do_set_handler) from [<c005647c>] (irq_set_chained_handler_and_data+0x48/0x7c)
[<c005647c>] (irq_set_chained_handler_and_data) from [<c01ab440>] (gpiochip_add_data_with_key+0x6d4/0xabc)
[<c01ab440>] (gpiochip_add_data_with_key) from [<c01ab868>] (devm_gpiochip_add_data+0x40/0x88)
[<c01ab868>] (devm_gpiochip_add_data) from [<c01ae554>] (ep93xx_gpio_probe+0x1ac/0x280)
[<c01ae554>] (ep93xx_gpio_probe) from [<c01e0f34>] (platform_drv_probe+0x28/0x6c)
[<c01e0f34>] (platform_drv_probe) from [<c01df588>] (really_probe+0x1c8/0x340)
[<c01df588>] (really_probe) from [<c01ddfe4>] (bus_for_each_drv+0x58/0xc0)
[<c01ddfe4>] (bus_for_each_drv) from [<c01df904>] (__device_attach+0xb4/0x104)
[<c01df904>] (__device_attach) from [<c01de1d4>] (bus_probe_device+0x8c/0x94)
[<c01de1d4>] (bus_probe_device) from [<c01db5e4>] (device_add+0x3d0/0x59c)
[<c01db5e4>] (device_add) from [<c01e16d8>] (platform_device_add+0x100/0x20c)
[<c01e16d8>] (platform_device_add) from [<c03f50b0>] (ep93xx_init_devices+0x16c/0x20c)
[<c03f50b0>] (ep93xx_init_devices) from [<c03f53a0>] (edb93xx_init_machine+0xc/0x84)
[<c03f53a0>] (edb93xx_init_machine) from [<c03f1984>] (customize_machine+0x20/0x38)
[<c03f1984>] (customize_machine) from [<c03f0e54>] (do_one_initcall+0x78/0x1a0)
[<c03f0e54>] (do_one_initcall) from [<c03f1080>] (kernel_init_freeable+0x104/0x1b8)
[<c03f1080>] (kernel_init_freeable) from [<c034c358>] (kernel_init+0x8/0xf8)
[<c034c358>] (kernel_init) from [<c00090d0>] (ret_from_fork+0x14/0x24)
Exception stack(0xc4433fb0 to 0xc4433ff8)
3fa0:                                     00000000 00000000 00000000 00000000
3fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
3fe0: 00000000 00000000 00000000 00000000 00000013 00000000
---[ end trace 8f9e35e2d6224882 ]---

2. Broken sound (I2S), this looks like below in the log:

ep93xx-i2s ep93xx-i2s: Missing dma channel for stream: 0
 CS4271: ASoC: pcm constructor failed: -22
edb93xx-audio edb93xx-audio: ASoC: can't create pcm CS4271 HiFi :-22

And /proc/interrupts has two entries less. Without patch:

# cat /proc/interrupts
           CPU0       
  7:          0       VIC   7 Edge      i2s-pcm-out
  8:          0       VIC   8 Edge      i2s-pcm-in
 39:          2       VIC   7 Edge      eth0
 51:       7532       VIC  19 Edge      ep93xx timer
 52:        144       VIC  20 Edge      uart-pl010
 53:          4       VIC  21 Edge      ep93xx-spi
 60:          0       VIC  28 Edge      ep93xx-i2s
Err:          0

With patch:

# cat /proc/interrupts 
           CPU0       
 39:        146       VIC   7 Edge      eth0
 51:     162161       VIC  19 Edge      ep93xx timer
 52:        139       VIC  20 Edge      uart-pl010
 53:          4       VIC  21 Edge      ep93xx-spi
 60:          0       VIC  28 Edge      ep93xx-i2s
Err:          0

I will try to look into I2S problem...
 
> ---
> It's been a while since I did this, no idea what else is needed
> here or if this is correct at all.
> 
> Cc: Hartley Sweeten <hsweeten@visionengravers.com>
> Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> Cc: Hubert Feurstein <hubert.feurstein@contec.at>
> Cc: Lukasz Majewski <lukma@denx.de>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/Kconfig                               | 2 ++
>  arch/arm/mach-ep93xx/adssphere.c               | 1 +
>  arch/arm/mach-ep93xx/edb93xx.c                 | 8 ++++++++
>  arch/arm/mach-ep93xx/gesbc9312.c               | 1 +
>  arch/arm/mach-ep93xx/{include/mach => }/irqs.h | 7 -------
>  arch/arm/mach-ep93xx/micro9.c                  | 4 ++++
>  arch/arm/mach-ep93xx/simone.c                  | 1 +
>  arch/arm/mach-ep93xx/snappercl15.c             | 1 +
>  arch/arm/mach-ep93xx/soc.h                     | 1 +
>  arch/arm/mach-ep93xx/ts72xx.c                  | 3 ++-
>  arch/arm/mach-ep93xx/vision_ep9307.c           | 1 +
>  11 files changed, 22 insertions(+), 8 deletions(-)
>  rename arch/arm/mach-ep93xx/{include/mach => }/irqs.h (94%)

-- 
Alexander Sverdlin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
