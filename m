Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A15DDACD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 22:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lg1N5p6dkxbLueodxv94yegpMsRKB/CES0TEDNx6bvc=; b=eJhPaQNodiR5VY
	CtIYXeNa01mrgLCiphrdnUkwM6gYhOh3Jb7gNwUnf1ucjKZ66TWK7p6dFWsYXbfLFIRGhAr5p14ZG
	KgRc5j1hHuNS4N+PNKvCIpZWHZu/2RKxbVFQ0gp4gY7sJZPYd5F8BZOARuOHRo8H05Rf3o2DgydoF
	vuEmZX9dw8eV2ntU2K+7FbWagYgqiAX7geciLm1kLL8EI6mhxmeVjdVeqov2EdzeQ3tjbAWWCRU20
	WBtI+nYQTFdOwwmxCa1h5v2OxLaDoTCQg9V4oPwIBKPOFpfRdwzKB0K9WJjYYWfdS7nzi6tgEin42
	EIhZHhn1TRvU4RlE1wUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLv2G-0005Sz-Fu; Sat, 19 Oct 2019 20:09:12 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLv25-0005Sc-KM
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 20:09:03 +0000
Received: from mail-qt1-f180.google.com ([209.85.160.180]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MvJwN-1i47443gwb-00rKVl for <linux-arm-kernel@lists.infradead.org>; Sat,
 19 Oct 2019 22:08:58 +0200
Received: by mail-qt1-f180.google.com with SMTP id o12so14418828qtf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 19 Oct 2019 13:08:57 -0700 (PDT)
X-Gm-Message-State: APjAAAX7XScYmQW2G7DViDzaz2Nz4w4sSLVmeFL4nZoQJWLuwU9W6yg3
 QC00i9uGOAGu/qD300DO2VXEQIpAhk51z7o+0zo=
X-Google-Smtp-Source: APXvYqweKdxjH3580CJWEb/rgw/f/C+LWxOFtdDRFBMALRPPhfdYI119qJ6bZXMKGuz5toZAsMGVIOKx15wuv5eebv0=
X-Received: by 2002:a0c:c70a:: with SMTP id w10mr16645869qvi.222.1571515736628; 
 Sat, 19 Oct 2019 13:08:56 -0700 (PDT)
MIME-Version: 1.0
References: <20191018163047.1284736-1-arnd@arndb.de>
 <20191018163047.1284736-2-arnd@arndb.de>
 <20191019184234.4cdb37a735fe632528880d76@gmail.com>
In-Reply-To: <20191019184234.4cdb37a735fe632528880d76@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 19 Oct 2019 22:08:40 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0LWeGJshr=AdeE3QXHYe2jVmc90K_2prc=4=ZFk0hr=g@mail.gmail.com>
Message-ID: <CAK8P3a0LWeGJshr=AdeE3QXHYe2jVmc90K_2prc=4=ZFk0hr=g@mail.gmail.com>
Subject: Re: [PATCH 2/6] ARM: ep93xx: enable SPARSE_IRQ
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
X-Provags-ID: V03:K1:yJLGD+Z5GZ/zQq/uOSGRpMpaH6ujD6QUKB6wxK6UEQalQ+4ywWQ
 4SXd7beV+TTNoEJ8g4uwyW5/8lJ15botGE+SzrEWxpAFbh6J8pEYfyF0MD8M9JMCvwxIr7V
 H+VFjJmNp9UYEQqsbpiIY5eR+hTr2hUb+rmMOOvDO97k0ZfIoGUFAL5p5UxI6UP5fNjh/fI
 xyxaHsaXUDufS46BhYIug==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RKZP4rFkUok=:900I7f6Vq5+4Y7vFV28+ka
 q/ZVHPE63J8PEmqkkeI72fxjonHPJGiD7q98oNmfvaL1Fn1calwpppMcU5VWbryJFuFV3u53u
 EuHs4LQxAiZu9I7ZvSskaQKCxkQisd6rnknu7bDgAscCvxA2UF61pYpTA2FqMwPZMgyPGbqwp
 HlfAKyiTfwSJJVJP55aiRjCZsdY5CLCwZa4TBPEcgdPvKfcSEA1PrGs6TAkKb9udnAbvAoTrM
 kPFWpYXM5TrQVG1UzBOl3uZg2gez7vn62X7vX5c0Sm/S2gGMTBeWRMXONwQQwDbFaFr6y3A+T
 WUhPfa9/WTNtK4z+oCxWZ6XtbKEhU+8wxKG2Akjj/DZCZLfjPUB7pVwixOjsxR6IA2Z+dPJao
 XUsk8bIIEoSuGLP8S0zLBr55XLWKPO4gpp2tzeULPZchu/2NffVf3U5z/yEEpn5YoYpOsJ/VD
 VpYAR8Sb5yYa9OCg0/dqN72YpZGrDePC3y3YHwNbrGXg9SUtvQCcHfgcR1PTV1udMK8z4WTqz
 mw+7pjmCQ6NGF/IBk79H3IGeSG6/WPc1KjVlMi5PA91XvLd9YLq+MxYIDbqcx1z76BIEHPrnW
 MkoizjYD8/OLOlnD+I+M/rkqirlH/BUc1b8o+CC4bX7XfBzg8587vVv7uqCCAiDVi0yx3U+i2
 uC2dHPSqd5cHYjFNXdSeB17rLaTxSRCmLpzwnZBBL//2mmB3rFNcG86Qbic8cnu2g0J01kq6u
 hGmq5WoGMZX6+Vf1nBUb5XjEoIw9hfmTqMRiuViIVAWH3TFtMBOMOUcEZpEgVoDEtFJK4Xh/i
 WvBOd8sdXvS4L5k7YdVlxR5PPIn0mUxWglKOQMR+GALCgJoecnDGas4ojSzQt2W6T2hH59VF1
 R5LfKxVA8sQnCfGG5iFQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_130901_966048_2B9EF1D7 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
 Hartley Sweeten <hsweeten@visionengravers.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Lukasz Majewski <lukma@denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 19, 2019 at 6:43 PM Alexander Sverdlin
<alexander.sverdlin@gmail.com> wrote:
> On Fri, 18 Oct 2019 18:29:15 +0200
> Arnd Bergmann <arnd@arndb.de> wrote:
>
> > Without CONFIG_SPARSE_IRQ, we rely on mach/irqs.h to define NR_IRQS
> > globally. Do the minimal conversion by setting .nr_irqs in each
> > machine descriptor.
> >
> > Only the vision_ep9307 machine has extra IRQs for GPIOs, so make
> > .nr_irqs the original value there, while using the plain NR_EP93XX_IRQS
> > everywhere else.
>
> This patch causes multiple problems on EDB9302:
>
> 1. WARNINGs during gpiochip registration, for instance:
>
> ------------[ cut here ]------------
> WARNING: CPU: 0 PID: 1 at kernel/irq/chip.c:1013 __irq_do_set_handler+0x94/0x188
> CPU: 0 PID: 1 Comm: swapper Tainted: G        W         5.4.0-rc3 #1
> Hardware name: Cirrus Logic EDB9302 Evaluation Board
> [<c000e878>] (unwind_backtrace) from [<c000d574>] (show_stack+0x10/0x18)
> [<c000d574>] (show_stack) from [<c0335e28>] (dump_stack+0x18/0x24)
> [<c0335e28>] (dump_stack) from [<c001cf1c>] (__warn+0xa4/0xc8)
> [<c001cf1c>] (__warn) from [<c001cfe8>] (warn_slowpath_fmt+0xa8/0xb8)
> [<c001cfe8>] (warn_slowpath_fmt) from [<c0055668>] (__irq_do_set_handler+0x94/0x188)
> [<c0055668>] (__irq_do_set_handler) from [<c005647c>] (irq_set_chained_handler_and_data+0x48/0x7c)
> [<c005647c>] (irq_set_chained_handler_and_data) from [<c01ab440>] (gpiochip_add_data_with_key+0x6d4/0xabc)
> [<c01ab440>] (gpiochip_add_data_with_key) from [<c01ab868>] (devm_gpiochip_add_data+0x40/0x88)
> [<c01ab868>] (devm_gpiochip_add_data) from [<c01ae554>] (ep93xx_gpio_probe+0x1ac/0x280)
> [<c01ae554>] (ep93xx_gpio_probe) from [<c01e0f34>] (platform_drv_probe+0x28/0x6c)
> [<c01e0f34>] (platform_drv_probe) from [<c01df588>] (really_probe+0x1c8/0x340)
> [<c01df588>] (really_probe) from [<c01ddfe4>] (bus_for_each_drv+0x58/0xc0)
> [<c01ddfe4>] (bus_for_each_drv) from [<c01df904>] (__device_attach+0xb4/0x104)
> [<c01df904>] (__device_attach) from [<c01de1d4>] (bus_probe_device+0x8c/0x94)
> [<c01de1d4>] (bus_probe_device) from [<c01db5e4>] (device_add+0x3d0/0x59c)
> [<c01db5e4>] (device_add) from [<c01e16d8>] (platform_device_add+0x100/0x20c)
> [<c01e16d8>] (platform_device_add) from [<c03f50b0>] (ep93xx_init_devices+0x16c/0x20c)
> [<c03f50b0>] (ep93xx_init_devices) from [<c03f53a0>] (edb93xx_init_machine+0xc/0x84)
> [<c03f53a0>] (edb93xx_init_machine) from [<c03f1984>] (customize_machine+0x20/0x38)
> [<c03f1984>] (customize_machine) from [<c03f0e54>] (do_one_initcall+0x78/0x1a0)
> [<c03f0e54>] (do_one_initcall) from [<c03f1080>] (kernel_init_freeable+0x104/0x1b8)
> [<c03f1080>] (kernel_init_freeable) from [<c034c358>] (kernel_init+0x8/0xf8)
> [<c034c358>] (kernel_init) from [<c00090d0>] (ret_from_fork+0x14/0x24)
> Exception stack(0xc4433fb0 to 0xc4433ff8)
> 3fa0:                                     00000000 00000000 00000000 00000000
> 3fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> 3fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> ---[ end trace 8f9e35e2d6224882 ]---

My first guess would be that this is just the missing irq domain code:

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 38e096e6925f..7c195af6f75d 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -205,6 +205,7 @@ config GPIO_EP93XX
        depends on ARCH_EP93XX
        select GPIO_GENERIC
        select GPIOLIB_IRQCHIP
+       select IRQ_DOMAIN_HIERARCHY

 config GPIO_EXAR
        tristate "Support for GPIO pins on XR17V352/354/358"

But most likely there are more changes required to the gpio code.

> 2. Broken sound (I2S), this looks like below in the log:
>
> ep93xx-i2s ep93xx-i2s: Missing dma channel for stream: 0
>  CS4271: ASoC: pcm constructor failed: -22
> edb93xx-audio edb93xx-audio: ASoC: can't create pcm CS4271 HiFi :-22
>
> And /proc/interrupts has two entries less. Without patch:
>
> # cat /proc/interrupts
>            CPU0
>   7:          0       VIC   7 Edge      i2s-pcm-out
>   8:          0       VIC   8 Edge      i2s-pcm-in
>  39:          2       VIC   7 Edge      eth0
>  51:       7532       VIC  19 Edge      ep93xx timer
>  52:        144       VIC  20 Edge      uart-pl010
>  53:          4       VIC  21 Edge      ep93xx-spi
>  60:          0       VIC  28 Edge      ep93xx-i2s
> Err:          0
>
> With patch:
>
> # cat /proc/interrupts
>            CPU0
>  39:        146       VIC   7 Edge      eth0
>  51:     162161       VIC  19 Edge      ep93xx timer
>  52:        139       VIC  20 Edge      uart-pl010
>  53:          4       VIC  21 Edge      ep93xx-spi
>  60:          0       VIC  28 Edge      ep93xx-i2s
> Err:          0

I guess that is partial success: some irqs do work ;-)

The two interrupts that did not get registered are for the
dmaengine driver, and that makes sense given the error
message about the DMA not working. No idea how
that would be a result of the irq changes though.

> I will try to look into I2S problem...

Thanks!

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
