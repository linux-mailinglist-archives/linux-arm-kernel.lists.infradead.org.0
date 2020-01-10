Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E21FC13678F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 07:41:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fmR9Ua1IKQvP6bGNCkDwvMd3LeuVkYM/NqmUZn3oSc8=; b=V6Tvh+ghYqDuAj
	1uKUq8rBFNW7uELD7r5oMS+3n+5Uh/A/mfMZcWeaSopmCSnrm/CoHMm1z1y7ek8lZGqglb0pj722u
	jT10nsFjEKVfnGRQH5twkS+mXoH9fk3pWxoX/5XqQErfMWBR2GfQeuMtaQjNeePX5tZbG4b11+yZF
	Q8ZFDb5Ka0nxOEiUHle+/mCd22LIrkFhnI6eeRBOJ86JeDgid6t6Ce2L4oCxbFFSXn74RNDY8Kw5X
	+v2V5OhVme/X4Kj7SzP/zd/tVAss7KY419HiByS5BtAudiUiHptLxFc4Ni1k1vsIazPIj+CoUGovu
	37QUUh1N1CCGT4+0nEDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipnys-0002nL-G0; Fri, 10 Jan 2020 06:41:14 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipnyk-0002mq-Mc
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 06:41:08 +0000
Received: by mail-wr1-x442.google.com with SMTP id q6so653555wro.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 22:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x/RZ4u0JUpuGVwwhSIZqye0oIIcumhyPw3EAY8ouXyM=;
 b=GxZgFbxDOTwF4adCXyVdmjulIseFJKagZ1Y48ouQhAPdK6sb4/Dco+KIaYEcXpnqSC
 InD5wvPYobtLG8O4DZSW2Uo3RJSVw1+7vH+jr8AqOQxNSkdHHUAPX7RdPX3+i6ZuQGxl
 VuIgTzHeIrnYwn3HmzXrTUIqyN9SzPYlTWr2bNqSV2xK1QUiOxUwU53df5AXWrQv9inN
 IjolUD49XRU+mZ07jmPLXFZ9q7JP//LrSNKJItAjVEc28ZUGlawCVWIjR8PHZqj4ZmYw
 uKj4srBNEbULWNrWGSNOnr88NiGVhQ2pmzCigYjeBzakOvoKZSkormLVo0MWzwt9E4zI
 YNUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x/RZ4u0JUpuGVwwhSIZqye0oIIcumhyPw3EAY8ouXyM=;
 b=MGmTG9PxyVvi7+0wBM32A1bfuK5dT6Jnejm/KIuARnvgVuFm6NdJ7uYke43J5nZhgl
 RCkKXPf1mUgf91HpwjIuZaUoDhG5LEh8I61TvFhhIjommq1jOPbiJ+Q9m+Kya6ZvPM3i
 5dQeDuxVjCyXvvtwuV4k3ZTbKNZELQBQ33+zOufDY9KmMjPP7nc1m/+80+n5JAM4UlF0
 Mdn6eb+hOonrDVb7xDm61g6uD1gOpV6xSNkhqFu8iyiIRB+JmFg14NHm4rolJ7m79mJ3
 orR6UW9gtDuVfSKvSBwRUHXefex2pV+r7WRnvOb+0AxcK703eqIq0h4l/N8k+97/FiCu
 6Ehg==
X-Gm-Message-State: APjAAAULNCVP457awYWxAAX3qP63CGTo7qw2sCWTXDJDI0h5Za1QMncv
 vZpEagzPFO8//N/uBMY9bIGWAZHXZWgrtxsz4OWVEw==
X-Google-Smtp-Source: APXvYqyk1pyuZcdjeKNy45f1N63H1kc2qf5vnApG+al6Fj/bt/H8O3hNITqWTrhPnJLQOJ3XZCNvnBrhx1euH7XIxRw=
X-Received: by 2002:a5d:46c1:: with SMTP id g1mr1571884wrs.200.1578638464682; 
 Thu, 09 Jan 2020 22:41:04 -0800 (PST)
MIME-Version: 1.0
References: <20200110030112.188845-1-saravanak@google.com>
In-Reply-To: <20200110030112.188845-1-saravanak@google.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 10 Jan 2020 07:40:53 +0100
Message-ID: <CAKv+Gu-4jvME3cuPBDtTVFn+-ZzttneFuBkor+N3G0JpeO4BzA@mail.gmail.com>
Subject: Re: [PATCH v3] efi: arm: defer probe of PCIe backed efifb on DT
 systems
To: Saravana Kannan <saravanak@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_224106_946175_02796BD2 
X-CRM114-Status: GOOD (  26.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Will Deacon <will@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Android Kernel Team <kernel-team@android.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 at 04:01, Saravana Kannan <saravanak@google.com> wrote:
>
> From: Ard Biesheuvel <ardb@kernel.org>
>
> The new of_devlink support breaks PCIe probing on ARM platforms booting
> via UEFI if the firmware exposes a EFI framebuffer that is backed by a
> PCI device. The reason is that the probing order gets reversed,
> resulting in a resource conflict on the framebuffer memory window when
> the PCIe probes last, causing it to give up entirely.
>
> Given that we rely on PCI quirks to deal with EFI framebuffers that get
> moved around in memory, we cannot simply drop the memory reservation, so
> instead, let's use the device link infrastructure to register this
> dependency, and force the probing to occur in the expected order.
>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> Co-developed-by: Saravana Kannan <saravanak@google.com>
> Signed-off-by: Saravana Kannan <saravanak@google.com>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>
> v1 -> v2:
> - Rewrote the device linking part to not depend on initcall ordering
> v2 -> v3:
> - Added const and check for CONFIG_PCI
>

Thanks. I've queued this version in efi/next for v5.6


>  drivers/firmware/efi/arm-init.c | 107 ++++++++++++++++++++++++++++++--
>  1 file changed, 103 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/firmware/efi/arm-init.c b/drivers/firmware/efi/arm-init.c
> index 904fa09e6a6b..d99f5b0c8a09 100644
> --- a/drivers/firmware/efi/arm-init.c
> +++ b/drivers/firmware/efi/arm-init.c
> @@ -10,10 +10,12 @@
>  #define pr_fmt(fmt)    "efi: " fmt
>
>  #include <linux/efi.h>
> +#include <linux/fwnode.h>
>  #include <linux/init.h>
>  #include <linux/memblock.h>
>  #include <linux/mm_types.h>
>  #include <linux/of.h>
> +#include <linux/of_address.h>
>  #include <linux/of_fdt.h>
>  #include <linux/platform_device.h>
>  #include <linux/screen_info.h>
> @@ -276,15 +278,112 @@ void __init efi_init(void)
>                 efi_memmap_unmap();
>  }
>
> +static bool efifb_overlaps_pci_range(const struct of_pci_range *range)
> +{
> +       u64 fb_base = screen_info.lfb_base;
> +
> +       if (screen_info.capabilities & VIDEO_CAPABILITY_64BIT_BASE)
> +               fb_base |= (u64)(unsigned long)screen_info.ext_lfb_base << 32;
> +
> +       return fb_base >= range->cpu_addr &&
> +              fb_base < (range->cpu_addr + range->size);
> +}
> +
> +static struct device_node *find_pci_overlap_node(void)
> +{
> +       struct device_node *np;
> +
> +       for_each_node_by_type(np, "pci") {
> +               struct of_pci_range_parser parser;
> +               struct of_pci_range range;
> +               int err;
> +
> +               err = of_pci_range_parser_init(&parser, np);
> +               if (err) {
> +                       pr_warn("of_pci_range_parser_init() failed: %d\n", err);
> +                       continue;
> +               }
> +
> +               for_each_of_pci_range(&parser, &range)
> +                       if (efifb_overlaps_pci_range(&range))
> +                               return np;
> +       }
> +       return NULL;
> +}
> +
> +/*
> + * If the efifb framebuffer is backed by a PCI graphics controller, we have
> + * to ensure that this relation is expressed using a device link when
> + * running in DT mode, or the probe order may be reversed, resulting in a
> + * resource reservation conflict on the memory window that the efifb
> + * framebuffer steals from the PCIe host bridge.
> + */
> +static int efifb_add_links(const struct fwnode_handle *fwnode,
> +                          struct device *dev)
> +{
> +       struct device_node *sup_np;
> +       struct device *sup_dev;
> +
> +       sup_np = find_pci_overlap_node();
> +
> +       /*
> +        * If there's no PCI graphics controller backing the efifb, we are
> +        * done here.
> +        */
> +       if (!sup_np)
> +               return 0;
> +
> +       sup_dev = get_dev_from_fwnode(&sup_np->fwnode);
> +       of_node_put(sup_np);
> +
> +       /*
> +        * Return -ENODEV if the PCI graphics controller device hasn't been
> +        * registered yet.  This ensures that efifb isn't allowed to probe
> +        * and this function is retried again when new devices are
> +        * registered.
> +        */
> +       if (!sup_dev)
> +               return -ENODEV;
> +
> +       /*
> +        * If this fails, retrying this function at a later point won't
> +        * change anything. So, don't return an error after this.
> +        */
> +       if (!device_link_add(dev, sup_dev, 0))
> +               dev_warn(dev, "device_link_add() failed\n");
> +
> +       put_device(sup_dev);
> +
> +       return 0;
> +}
> +
> +static const struct fwnode_operations efifb_fwnode_ops = {
> +       .add_links = efifb_add_links,
> +};
> +
> +static struct fwnode_handle efifb_fwnode = {
> +       .ops = &efifb_fwnode_ops,
> +};
> +
>  static int __init register_gop_device(void)
>  {
> -       void *pd;
> +       struct platform_device *pd;
> +       int err;
>
>         if (screen_info.orig_video_isVGA != VIDEO_TYPE_EFI)
>                 return 0;
>
> -       pd = platform_device_register_data(NULL, "efi-framebuffer", 0,
> -                                          &screen_info, sizeof(screen_info));
> -       return PTR_ERR_OR_ZERO(pd);
> +       pd = platform_device_alloc("efi-framebuffer", 0);
> +       if (!pd)
> +               return -ENOMEM;
> +
> +       if (IS_ENABLED(CONFIG_PCI))
> +               pd->dev.fwnode = &efifb_fwnode;
> +
> +       err = platform_device_add_data(pd, &screen_info, sizeof(screen_info));
> +       if (err)
> +               return err;
> +
> +       return platform_device_add(pd);
>  }
>  subsys_initcall(register_gop_device);
> --
> 2.25.0.rc1.283.g88dfdc4193-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
