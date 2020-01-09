Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0730136093
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 19:53:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/USvHPcHXKz10jNEblwTZOPTrG2CecUid2Ru8JuUgE=; b=cxgLr5C9Lo0dW3
	8FvJWQ/QTgVjrqrOGvfALVEx4frA5oCF6WohXSPAvf1iap50tnPw071v3pyBZwo8XQh2lUI/kt5p4
	Jq37ILjw6D2s/CiD/8oBneZV7aIHg9su6w2UzGid2CW63MDbLLAATJpsPGGVipwnGXOKd3TUn3QPT
	cwryLY0GozNJgsdYJw/SFuJwMFsOQwEnmNeBAT8Gsp3oc1xTGj1Da45KTqDlj+dzXPPVko7MNRrnJ
	XaOmRYvL9ruvU96WpFLdtCcaMbRU7C0pbrabvjDiWcsCnrYnm/x5vcEhtCXhwvdgNz8iJYn5OO1en
	tqPdPNBDwhlnHPRvrtFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcw2-0005zo-5Y; Thu, 09 Jan 2020 18:53:34 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcvs-0005yl-C4
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 18:53:25 +0000
Received: by mail-oi1-x242.google.com with SMTP id l9so6811138oii.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 10:53:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LjrsEf49wxN7nbgg0ejb27fYAdliJCmtVPCHpdH/qLw=;
 b=nbsjGP0t5XsrJ4fFUnDPSRHA8/sLBXsgAlK+wM5pdnHzsZM29HqyVrjtamseVopALT
 r2jEHn31JnXHEnK5T4XuQl4kxmJpsXHEWdtsceXMEqBGBX9PlCkx6uYxDeq+PvvzbMxW
 mHnATg+LU3VBWvmENF9PfPxgBDlMri/JFVHitDKZX3aLhFeiHua0N0hTPT6TwYTJ5cn2
 FxJh2s3Vlog8YwAYxR0aKCjpCaj+owJwnfZp8Os9I5khGXNf5u2v1oyhTixr7Exx14Zf
 Pz21n6JKf98cj1vqaZVvtrlTLY7U1lNoYT6air52s64WpvewD9zgNl7sbp7U4qocyt9j
 JPRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LjrsEf49wxN7nbgg0ejb27fYAdliJCmtVPCHpdH/qLw=;
 b=CZX1Q/JqheIvO8dESp29mc9l+mg2RX1NvBM/5sF/TB6kfMr/0h6XTRrvYVZa4Vvwn5
 dCX2xRxT1u8ewguRqUA88FJVmWhPW2VNu9QSqzSMh3jWgnOQA9Y7lSQFm/zMkE8ZjnlU
 yZoi610rA4RqmOA9ke6SgenfXu9RyI8Wc9X/JbyB/qAsdSKwX/YA4ixjlYG2eQIOouRd
 b/7u8jsH57b6Q1d7jkLMdYhzKbZOyeoGPQ9GXbhkkhMyKiPiR4CTi2XxE5KXzZ2OxjzW
 fgDHQPzsYH8CDMNC7A/2yDTvzYCeDjnX4DiwkcOTkPuLhpDtK5kdSBudo+7QgqO8zLlJ
 PGWQ==
X-Gm-Message-State: APjAAAV6nfrHHXOzYdXMsrU3hBsnD1e03qT/HuPHddkizvY/FT8dllx1
 IvpEh73gI53WgRo/q/1r1dh9lEti/P7iZCtOuJZkWw==
X-Google-Smtp-Source: APXvYqzPmxBE+erUn0sSaFoHQdBFQrRk5ky8t4eEE9fAiXhM2jvamfjvIymet2QmHKnSAf9++E4OLUyK5Hq/WohYoto=
X-Received: by 2002:aca:ea43:: with SMTP id i64mr4481440oih.30.1578596002690; 
 Thu, 09 Jan 2020 10:53:22 -0800 (PST)
MIME-Version: 1.0
References: <20191224044146.232713-1-saravanak@google.com>
 <CAKv+Gu_yDWhvR80Wg1-bzpD1aGwGC-UA+obcgn8CEKKjMdR7rQ@mail.gmail.com>
In-Reply-To: <CAKv+Gu_yDWhvR80Wg1-bzpD1aGwGC-UA+obcgn8CEKKjMdR7rQ@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 9 Jan 2020 10:52:46 -0800
Message-ID: <CAGETcx9iA_irfpO2yJSPszeNrfwfYAV0KkZ+AyB7gcDo0v8p1g@mail.gmail.com>
Subject: Re: [PATCH v2] efi: arm: defer probe of PCIe backed efifb on DT
 systems
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_105324_438720_57A68B57 
X-CRM114-Status: GOOD (  35.05  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, Jan 9, 2020 at 6:06 AM Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
>
> On Tue, 24 Dec 2019 at 05:41, Saravana Kannan <saravanak@google.com> wrote:
> >
> > From: Ard Biesheuvel <ardb@kernel.org>
> >
> > The new of_devlink support breaks PCIe probing on ARM platforms booting
> > via UEFI if the firmware exposes a EFI framebuffer that is backed by a
> > PCI device. The reason is that the probing order gets reversed,
> > resulting in a resource conflict on the framebuffer memory window when
> > the PCIe probes last, causing it to give up entirely.
> >
> > Given that we rely on PCI quirks to deal with EFI framebuffers that get
> > moved around in memory, we cannot simply drop the memory reservation, so
> > instead, let's use the device link infrastructure to register this
> > dependency, and force the probing to occur in the expected order.
> >
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > Co-developed-by: Saravana Kannan <saravanak@google.com>
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > ---
> >
> > Hi Ard,
> >
> > I compile tested it and I think it should work. If you can actually run
> > and test it, that'd be nice.
> >
> > You can also optimize find_pci_overlap_node() by caching the result if
> > you think that's necessary.
> >
> > Right now this code will run always just like your code did. But once I
> > rename of_devlink to fw_devlink, this code won't be run if fw_devlink is
> > disabled.
> >
> > v1 -> v2:
> > - Rewrote the device linking part to not depend on initcall ordering
> >
> >  drivers/firmware/efi/arm-init.c | 106 ++++++++++++++++++++++++++++++--
> >  1 file changed, 102 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/firmware/efi/arm-init.c b/drivers/firmware/efi/arm-init.c
> > index 904fa09e6a6b..8b789ff83af0 100644
> > --- a/drivers/firmware/efi/arm-init.c
> > +++ b/drivers/firmware/efi/arm-init.c
> > @@ -10,10 +10,12 @@
> >  #define pr_fmt(fmt)    "efi: " fmt
> >
> >  #include <linux/efi.h>
> > +#include <linux/fwnode.h>
> >  #include <linux/init.h>
> >  #include <linux/memblock.h>
> >  #include <linux/mm_types.h>
> >  #include <linux/of.h>
> > +#include <linux/of_address.h>
> >  #include <linux/of_fdt.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/screen_info.h>
> > @@ -276,15 +278,111 @@ void __init efi_init(void)
> >                 efi_memmap_unmap();
> >  }
> >
> > +static bool efifb_overlaps_pci_range(const struct of_pci_range *range)
> > +{
> > +       u64 fb_base = screen_info.lfb_base;
> > +
> > +       if (screen_info.capabilities & VIDEO_CAPABILITY_64BIT_BASE)
> > +               fb_base |= (u64)(unsigned long)screen_info.ext_lfb_base << 32;
> > +
> > +       return fb_base >= range->cpu_addr &&
> > +              fb_base < (range->cpu_addr + range->size);
> > +}
> > +
> > +static struct device_node *find_pci_overlap_node(void)
> > +{
> > +       struct device_node *np;
> > +
> > +       for_each_node_by_type(np, "pci") {
> > +               struct of_pci_range_parser parser;
> > +               struct of_pci_range range;
> > +               int err;
> > +
> > +               err = of_pci_range_parser_init(&parser, np);
> > +               if (err) {
> > +                       pr_warn("of_pci_range_parser_init() failed: %d\n", err);
> > +                       continue;
> > +               }
> > +
> > +               for_each_of_pci_range(&parser, &range)
> > +                       if (efifb_overlaps_pci_range(&range))
> > +                               return np;
> > +       }
> > +       return NULL;
> > +}
> > +
> > +/*
> > + * If the efifb framebuffer is backed by a PCI graphics controller, we have
> > + * to ensure that this relation is expressed using a device link when
> > + * running in DT mode, or the probe order may be reversed, resulting in a
> > + * resource reservation conflict on the memory window that the efifb
> > + * framebuffer steals from the PCIe host bridge.
> > + */
> > +static int efifb_add_links(const struct fwnode_handle *fwnode,
> > +                          struct device *dev)
> > +{
> > +       struct device_node *sup_np;
> > +       struct device *sup_dev;
> > +
> > +       sup_np = find_pci_overlap_node();
> > +
> > +       /*
> > +        * If there's no PCI graphics controller backing the efifb, we are
> > +        * done here.
> > +        */
> > +       if (!sup_np)
> > +               return 0;
> > +
> > +       sup_dev = get_dev_from_fwnode(&sup_np->fwnode);
> > +       of_node_put(sup_np);
> > +
> > +       /*
> > +        * Return -ENODEV if the PCI graphics controller device hasn't been
> > +        * registered yet.  This ensures that efifb isn't allowed to probe
> > +        * and this function is retried again when new devices are
> > +        * registered.
> > +        */
> > +       if (!sup_dev)
> > +               return -ENODEV;
> > +
> > +       /*
> > +        * If this fails, retrying this function at a later point won't
> > +        * change anything. So, don't return an error after this.
> > +        */
> > +       if (!device_link_add(dev, sup_dev, 0))
> > +               dev_warn(dev, "device_link_add() failed\n");
> > +
> > +       put_device(sup_dev);
> > +
> > +       return 0;
> > +}
> > +
> > +static struct fwnode_operations efifb_fwnode_ops = {
>
> Please make this const

Ack

> > +       .add_links = efifb_add_links,
> > +};
> > +
> > +static struct fwnode_handle efifb_fwnode = {
> > +       .ops = &efifb_fwnode_ops,
> > +};
> > +
> >  static int __init register_gop_device(void)
> >  {
> > -       void *pd;
> > +       struct platform_device *pd;
> > +       int err;
> >
> >         if (screen_info.orig_video_isVGA != VIDEO_TYPE_EFI)
> >                 return 0;
> >
> > -       pd = platform_device_register_data(NULL, "efi-framebuffer", 0,
> > -                                          &screen_info, sizeof(screen_info));
> > -       return PTR_ERR_OR_ZERO(pd);
> > +       pd = platform_device_alloc("efi-framebuffer", 0);
> > +       if (!pd)
> > +               return -ENOMEM;
> > +
>
> Add
>
>   if (IS_ENABLED(CONFIG_PCI))
>
> here

As in around the line below where I set the fwnode? Then it's going to
warn about unused variable. Maybe I should just do the if
(IS_ENABLED(CONFIG_PCI)) inside the add_links() function to short
circuit it.

Responding to your other email here. Adding ifdef CONFIG_PCI was my
first inclination, but then those 2 functions are defined if
CONFIG_OF_ADDRESS are defined and if not the stubs are always there.
There's no #ifdef CONFIG_PCI around any of them AFAICT. So I'm
confused about what's going on.

> > +       pd->dev.fwnode = &efifb_fwnode;
> > +
> > +       err = platform_device_add_data(pd, &screen_info, sizeof(screen_info));
> > +       if (err)
> > +               return err;
> > +
> > +       return platform_device_add(pd);
> >  }
> >  subsys_initcall(register_gop_device);
> > --
> > 2.24.1.735.g03f4e72817-goog
> >
>
> With the changes above

Yeah, will make them all.

>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
>

Thanks!

-Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
