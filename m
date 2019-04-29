Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C0CE5CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 17:08:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXWZefqcBy6FoJYZEp/glFPr/JEZQF8HIsqTI5qMmds=; b=bzAyDjQKRznBAn
	5a3Lz0gv5XGrHT6DaHam/isFjBbBoBJE/M5nQ2aFLTABt8jcj6dV6vcDGxCDI2OM0cP3dW5OLqYXr
	++Wj4KIw2qpIt8x4Swy4ktxmU4CqUFY9HeDniSYcnQGuO1XBXF6AHwdkAUmujghcw0DhAuvqsuFWA
	B6jhslicZzWwxkG4aN6qXpSA7sku/r45LEOxZxVXe3h58CEI+klirSpn5cQNu7SKf2ikPQ/IdRlHX
	GwiOTGf7vnOLkzJq/pOVEmmKsZTXOn25FUuhKrtjmNK5FAV/2utYHz64MuSZztc4BmBUUVCa0+vK0
	9F3V2A4kjT1ejanY5cxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7tB-0007pG-QK; Mon, 29 Apr 2019 15:08:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7t4-0007oq-9U
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 15:08:11 +0000
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 562F020673
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 15:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556550489;
 bh=2O7a/FpMiU1c/6hzHnNT+0grVkRA/hQ4O75li6epWLg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=m515t2tHsByqUjakosPVoHrNpbKKNESPrHhZQzONvHsk0tv+8cm5X9fXtkzHy7SL2
 gDhYbBHldODZpM8RHBpbYYQHhhs4sEG/LWPtn5Hh3dOhXpCmJ4L/EW/rIvcdbV6JGd
 tNzT5rSwCn0muXeDvPuSlmlU2xsCahJU/dDFLfsQ=
Received: by mail-lf1-f46.google.com with SMTP id h18so8131059lfj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 08:08:09 -0700 (PDT)
X-Gm-Message-State: APjAAAUlXciTXBtNRuHEsU8WaIyiW6kSbIlw1uOvr+MfudpQWsGr7Eln
 h+9La0+1agq3aRjq0p5amXFRXVpOsIFYp6juins=
X-Google-Smtp-Source: APXvYqxQuqe+XFe7OwPOP/a2wP2QUVcpVat2AFjvQdMhDPgFFbkc57yVprUFaihJxe44JN7kb7aX8D7yMhHudvvM5DY=
X-Received: by 2002:a19:6d1b:: with SMTP id i27mr35259594lfc.156.1556550487522; 
 Mon, 29 Apr 2019 08:08:07 -0700 (PDT)
MIME-Version: 1.0
References: <1555978589-4998-1-git-send-email-vnkgutta@codeaurora.org>
In-Reply-To: <1555978589-4998-1-git-send-email-vnkgutta@codeaurora.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 29 Apr 2019 17:07:56 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeCPWPdE1d3EYr4bD1hLMRDXohaz-7yrmk_R-V6ZD6rhQ@mail.gmail.com>
Message-ID: <CAJKOXPeCPWPdE1d3EYr4bD1hLMRDXohaz-7yrmk_R-V6ZD6rhQ@mail.gmail.com>
Subject: Re: [PATCH] driver core: platform: Fix the usage of platform device
 name(pdev->name)
To: Venkata Narendra Kumar Gutta <vnkgutta@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_080810_371982_C0E2F46E 
X-CRM114-Status: GOOD (  22.43  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: tsoni@codeaurora.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 jshriram@codeaurora.org, gregkh@linuxfoundation.org,
 Liviu Dudau <liviu.dudau@arm.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Sudeep Holla <sudeep.holla@arm.com>,
 alexander.deucher@amd.com, linux-mmc@vger.kernel.org, psodagud@codeaurora.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 23 Apr 2019 at 05:36, Venkata Narendra Kumar Gutta
<vnkgutta@codeaurora.org> wrote:
>
> Platform core is using pdev->name as the platform device name to do
> the binding of the devices with the drivers. But, when the platform
> driver overrides the platform device name with dev_set_name(),
> the pdev->name is pointing to a location which is freed and becomes

If pdev->name is invalid then it should be removed/fixed. Why leaving
it pointing to wrong place and changing the users to something else?
This looks like either duct-tape for real problem.

> an invalid parameter to do the binding match.
>
> use-after-free instance:
>
> [   33.325013] BUG: KASAN: use-after-free in strcmp+0x8c/0xb0
> [   33.330646] Read of size 1 at addr ffffffc10beae600 by task modprobe
> [   33.339068] CPU: 5 PID: 518 Comm: modprobe Tainted:
>                         G S      W  O      4.19.30+ #3
> [   33.346835] Hardware name: MTP (DT)
> [   33.350419] Call trace:
> [   33.352941]  dump_backtrace+0x0/0x3b8
> [   33.356713]  show_stack+0x24/0x30
> [   33.360119]  dump_stack+0x160/0x1d8
> [   33.363709]  print_address_description+0x84/0x2e0
> [   33.368549]  kasan_report+0x26c/0x2d0
> [   33.372322]  __asan_report_load1_noabort+0x2c/0x38
> [   33.377248]  strcmp+0x8c/0xb0
> [   33.380306]  platform_match+0x70/0x1f8
> [   33.384168]  __driver_attach+0x78/0x3a0
> [   33.388111]  bus_for_each_dev+0x13c/0x1b8
> [   33.392237]  driver_attach+0x4c/0x58
> [   33.395910]  bus_add_driver+0x350/0x560
> [   33.399854]  driver_register+0x23c/0x328
> [   33.403886]  __platform_driver_register+0xd0/0xe0
>
> So, use dev_name(&pdev->dev), which fetches the platform device name from
> the kobject(dev->kobj->name) of the device instead of the pdev->name.
>
> Signed-off-by: Venkata Narendra Kumar Gutta <vnkgutta@codeaurora.org>
> ---
>  drivers/base/platform.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> diff --git a/drivers/base/platform.c b/drivers/base/platform.c
> index dab0a5a..0e23aa2 100644
> --- a/drivers/base/platform.c
> +++ b/drivers/base/platform.c
> @@ -888,7 +888,7 @@ static ssize_t modalias_show(struct device *dev, struct device_attribute *a,
>         if (len != -ENODEV)
>                 return len;
>
> -       len = snprintf(buf, PAGE_SIZE, "platform:%s\n", pdev->name);
> +       len = snprintf(buf, PAGE_SIZE, "platform:%s\n", dev_name(&pdev->dev));
>
>         return (len >= PAGE_SIZE) ? (PAGE_SIZE - 1) : len;
>  }
> @@ -964,7 +964,7 @@ static int platform_uevent(struct device *dev, struct kobj_uevent_env *env)
>                 return rc;
>
>         add_uevent_var(env, "MODALIAS=%s%s", PLATFORM_MODULE_PREFIX,
> -                       pdev->name);
> +                       dev_name(&pdev->dev));

This is wrong fix and it causes ARM Vexpress board fail to boot under
QEMU (but probably in real world as well). The problem is in not
mached drivers. For example the pdev->name is "vexpress-syscfg" and
dev_name(&pdev->dev) is "vexpress-syscfg.6.auto". The effect - none of
AMBA devices are registered, including missing MMC device (mmci.c,
arm,pl180).

One can see the error of missing root device:
[   13.458982] VFS: Cannot open root device "mmcblk0" or
unknown-block(0,0): error -6

... also before there is a warning like:
[    0.285029] ------------[ cut here ]------------
[    0.285507] WARNING: CPU: 0 PID: 1 at
/home/krzk/dev/yocto-proceq/build/workspace/sources/linux-mainline-next/drivers/bus/vexpress-config.c:183
vexpress_config_init+0x90/0xe0
[    0.285936] Modules linked in:
[    0.286251] CPU: 0 PID: 1 Comm: swapper Tainted: G        W
5.1.0-rc6-next-20190429-g0593ae1f5df5 #27
[    0.286507] Hardware name: ARM-Versatile Express
[    0.286977] [<8010e05c>] (unwind_backtrace) from [<8010b76c>]
(show_stack+0x10/0x14)
[    0.287219] [<8010b76c>] (show_stack) from [<8011ac64>] (__warn+0xf8/0x110)
[    0.287400] [<8011ac64>] (__warn) from [<8011ad94>]
(warn_slowpath_null+0x40/0x48)
[    0.287579] [<8011ad94>] (warn_slowpath_null) from [<809151bc>]
(vexpress_config_init+0x90/0xe0)
[    0.287811] [<809151bc>] (vexpress_config_init) from [<80102710>]
(do_one_initcall+0x54/0x1b4)
[    0.288014] [<80102710>] (do_one_initcall) from [<80900e84>]
(kernel_init_freeable+0x12c/0x1c8)
[    0.288214] [<80900e84>] (kernel_init_freeable) from [<80634048>]
(kernel_init+0x8/0x110)
[    0.288388] [<80634048>] (kernel_init) from [<801010e8>]
(ret_from_fork+0x14/0x2c)
[    0.288597] Exception stack(0x86835fb0 to 0x86835ff8)
[    0.288882] 5fa0:                                     00000000
00000000 00000000 00000000
[    0.289193] 5fc0: 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000
[    0.289479] 5fe0: 00000000 00000000 00000000 00000000 00000013 00000000
[    0.289776] ---[ end trace 3f0995a2bae83983 ]---

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
