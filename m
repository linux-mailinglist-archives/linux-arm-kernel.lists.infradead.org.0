Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8AC10CEE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 20:29:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vHSSDexowq9lIco9EYDlkjSuXjjjyOgs1PFYolAXl7Q=; b=GWpFT4oXp0qgjk
	y/5WYNmEZrbdH/JXeMvAkcU7ka4HLq+OqMpdqnp4Lf6S94reErkiq9Bwp8V3jDSpkavJiGseyl2DP
	aMO3FW1QGsFkk0BnkVVZ4FKNJ5HlvH7Od4oFSj2t2A2X/OciILgPbhxbyZOaexLvhu+IQ5Jr//JUd
	sXXbdLehwJLC9axv6icX92kGfgPT/SafOR/C6/mGd7JR59Dy5hDZcOMAoMMtuShv4eIZ6hR3Vzk6I
	1YgG4W+M7w2X5F3i8TLkwypd8TGx7SmBk6TIxjeZtwyyQLYek20b5tOuLmhbB2qV9UqEUq5iqaPfd
	79ofkqayBSaiWkGvEWLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaPTc-0003yk-Nu; Thu, 28 Nov 2019 19:29:20 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaPTR-0003xp-0G
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 19:29:10 +0000
Received: by mail-ot1-x343.google.com with SMTP id c19so22993628otr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 11:29:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dWjSSi5aq5uM2KHYjbtzMMEROQeiD1YWonOayYvqyPY=;
 b=phfC43VyqugLnkw06GjuHHWximhkOGnseIDlCLCBW6Im/uakoX4EPLz3itzutNZ5Pv
 IQ1M7RmmU11Ii1EuG3UowxXy1UEDz+GdM3YeBrQ0KgHHQdo0WxSuBEpqexb1vnRt3KB7
 SADjzJ4ytVG72KfvJxKEzqfQBYlrDjIgnr9qncgm4gvNZGzRWgo+mcJySBMXpWTySECh
 n82UmgugzoDYfE+k0PpQVN1/abJA/ZIKDRYBGHB04uCa7tRquxvyfzpdKaNv5IreEUSC
 pzrd5m/kCzSCJW7CrI1xJhsPjsM2CEvJUUMkJMSNwF/APeK6HET441BoWxMl5SYikxu7
 HtOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dWjSSi5aq5uM2KHYjbtzMMEROQeiD1YWonOayYvqyPY=;
 b=raxuOy3ZuSwhZYN+5sjFpSrlaocIWlvuDljovwRfbh28RQXwYKkkDpZSdFMyOVqhRg
 YqV6crBsCXGAZtmqtvlFePxQvrMPryeWakVuFhmyRjs+ce8IZmF5cQd52x7JbY8wUtJe
 KzgMhWZjQzZoGQe+R5zjJUSZzPj5i4pGdbfv5j0Tb4/xF+ar+du5PMtJaddgSGgF+q8y
 SGwwnkdwKtFbd7E7pkme2dld5Q/vF3650S2khHYowoi+Qb0Fj3IJOnJYABRcOIvXPJRr
 kI1FgtfY/cM74UP6RlNbkJiL4FG4XaLBfUkFLaauswxyaTjyLwlKy/7EK9CkSAnziW2Q
 ytVQ==
X-Gm-Message-State: APjAAAUG74qXi7/Kt90uN7m4eA6bCxS7LTlbJTkdXbKoY6sNsvs3vV6+
 YKyYWYen8RcmwnDGEw7bZr/qgTnk/GFmbwJWZh3U7A==
X-Google-Smtp-Source: APXvYqzxl3D+VhUEF/SkqMh+WTUSoybuysILJoeq0mHnv087jrYtxmnSe3o+CfKdqWBhCUzE9NGlSxmw/YdVLxl/TZc=
X-Received: by 2002:a05:6830:60f:: with SMTP id
 w15mr8509841oti.225.1574969344088; 
 Thu, 28 Nov 2019 11:29:04 -0800 (PST)
MIME-Version: 1.0
References: <20191126162902.16788-1-ardb@kernel.org>
In-Reply-To: <20191126162902.16788-1-ardb@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 28 Nov 2019 11:28:27 -0800
Message-ID: <CAGETcx8SftK_=-Z374AzQ7vy2RGWqvF3ry+q9Y+cQ5dUhgNEew@mail.gmail.com>
Subject: Re: [PATCH] efi: arm: defer probe of PCIe backed efifb on DT systems
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_112909_073623_EC011EF4 
X-CRM114-Status: GOOD (  28.73  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-efi@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 8:30 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> The new of_devlink support breaks PCIe probing on ARM platforms booting
> via UEFI if the firmware exposes a EFI framebuffer that is backed by a
> PCI device.

Thanks for testing with of_devlink enabled!

> The reason is that the probing order gets reversed,
> resulting in a resource conflict on the framebuffer memory window when
> the PCIe probes last, causing it to give up entirely.

Just so I understand it clearly, the probe order reversal is only
between this efi-framebuffer device and the PCIe device right? Not all
PCI devices or something like that, right? Do you have any info on
what dependency causes this reversal? Just curious.

> Given that we rely on PCI quirks to deal with EFI framebuffers that get
> moved around in memory, we cannot simply drop the memory reservation, so
> instead, let's use the device link infrastructure to register this
> dependency, and force the probing to occur in the expected order.
>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Saravana Kannan <saravanak@google.com>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  drivers/firmware/efi/arm-init.c | 66 ++++++++++++++++++--
>  1 file changed, 61 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/firmware/efi/arm-init.c b/drivers/firmware/efi/arm-init.c
> index 311cd349a862..617226d50774 100644
> --- a/drivers/firmware/efi/arm-init.c
> +++ b/drivers/firmware/efi/arm-init.c
> @@ -14,6 +14,7 @@
>  #include <linux/memblock.h>
>  #include <linux/mm_types.h>
>  #include <linux/of.h>
> +#include <linux/of_address.h>
>  #include <linux/of_fdt.h>
>  #include <linux/platform_device.h>
>  #include <linux/screen_info.h>
> @@ -267,15 +268,70 @@ void __init efi_init(void)
>                 efi_memmap_unmap();
>  }
>
> +static bool __init efifb_overlaps_pci_range(const struct of_pci_range *range)
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
>  static int __init register_gop_device(void)
>  {
> -       void *pd;
> +       struct platform_device *pd;
> +       struct device_node *np;
> +       bool found = false;
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
> +       err = platform_device_add_data(pd, &screen_info, sizeof(screen_info));
> +       if (err)
> +               return err;
> +
> +       /*
> +        * If the efifb framebuffer is backed by a PCI graphics controller, we
> +        * have to ensure that this relation is expressed using a device link
> +        * when running in DT mode, or the probe order may be reversed,
> +        * resulting in a resource reservation conflict on the memory window
> +        * that the efifb framebuffer steals from the PCIe host bridge.
> +        */
> +       for_each_node_by_type(np, "pci") {
> +               struct of_pci_range_parser parser;
> +               struct of_pci_range range;
> +               struct device *sup_dev;
> +
> +               if (found) {
> +                       of_node_put(np);
> +                       break;
> +               }

It looks like you are doing this here because you can't break out of
two loops when you set found = true. Is that right? If so, I think
doing this at the end of the loop would make it more obvious on what's
going on.

> +
> +               err = of_pci_range_parser_init(&parser, np);
> +               if (err) {
> +                       pr_warn("of_pci_range_parser_init() failed: %d\n", err);
> +                       continue;
> +               }
> +
> +               sup_dev = get_dev_from_fwnode(&np->fwnode);
> +
> +               for_each_of_pci_range(&parser, &range) {
> +                       if (efifb_overlaps_pci_range(&range)) {
> +                               found = true;
> +                               if (!device_link_add(&pd->dev, sup_dev, 0))
> +                                       pr_warn("device_link_add() failed\n");

I think dev_warn(&pd->dev,...) might make the message more useful.
Otherwise, it's so confusing.

> +                               break;
> +                       }
> +               }
> +               put_device(sup_dev);

Can't you do the if (found) here? Another option is to simply do a
"goto out;" at the end of the if block where you set found = true.

> +       }
> +       return platform_device_add(pd);
>  }
> -subsys_initcall(register_gop_device);
> +device_initcall(register_gop_device);

Looks like you are doing this so that this efi-framebuffer device gets
added after the PCIe device? So that device_add_link() succeeds?

I'm wondering if it would be better to implement this as a
fwnode_operations.add_links(). Since this efi-framebuffer device won't have any
fwnode, you can create your own fwnode and implement the add_links()
property. Not a strong opinion on this, but some food for thought.

Thanks,
Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
