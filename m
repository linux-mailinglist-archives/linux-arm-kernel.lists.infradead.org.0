Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C1B1362D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 22:53:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ndMDSZ/Hi/x+HfQGOs70skUa90AFLJzk1suIw8YPYQY=; b=Ad1oneYiMv04Hw
	BrWTcKsi8WlLXrX/5SoIE/maX6X5OgwbcElSvLBygwaqqdd7cg9XS4xODt2BeoTZxy3GTlOURQR/q
	NISM1zZsIrXYqTG/AbpMf9K597fvhQz5XJKPCJ7BFiQo0E6ubanze6mpiIW43+nlHu7C1VQbE/6TP
	SZhsMLac7c/1ped/NZ16Y+FKIxU36pRIO4/y9DOEVaDbq5Sx7jZLR5B8FM9qdaR8/OQCdhmCRVVgg
	b+Kt7y9euw33zrkLmnJtU1i2Wm9Fa8XBRpUD2QyIVIrTTxTKMZtiQaxSI3Pq3EfvYbOqfDsFTlNzG
	Bh5+Cl5b4t1WixTMsvrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipfjj-0002VV-BH; Thu, 09 Jan 2020 21:53:03 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipfjb-0002Ta-Ll
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 21:52:57 +0000
Received: by mail-wm1-x343.google.com with SMTP id a5so4656546wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 13:52:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PAFMu6OuGhlFpgqTP+gMhrDTcSSqhQcB2Fv6Lbqg4lQ=;
 b=GTylmqKvLUYGPHq+UGy1uE9GCfNKR2u1GyzWM5p+PWxlS5lrIGX89TI5Yr0JiO4WSz
 NeVLD49dLUfGQcQ7CptTMuGCHLOOLZVWigfFPbBgalw0WXszrgvrlxrSnPR5Ll6EDWmA
 ZJ8TQLuD2UbgWsSpdnbbhqSUFcCofRIBPKwRQBSg66E+5wXD0rrAtN284rWkQ6wqbd2Y
 VersxGc1+fgcVS0I2+tQK8V/YkcBHdZrjpchPIHospk4WpypBTqj7YYs+ajQA6ENWCXR
 4P60LT5XoIg1UxK3mrIAT8gE4vJfgdX9ZyiME6sds5NnfoIAD/fkZ0ZIGp5I/gzCKvTu
 KnIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PAFMu6OuGhlFpgqTP+gMhrDTcSSqhQcB2Fv6Lbqg4lQ=;
 b=NwHuRm19EjzlsjqQGH8dUx1ohTKoIi7BMstoDKqzZ1uxvKyj2AhJVozfs0RTthYzDK
 bpFhUXrYGs2DtHrn/8m7tP6Tjhhya8+/KT8eVOAXgSCykEMkbBzsueXnPSGwFhiOzMN5
 B7jqstNOxp85v8V4n5XYoa4YBksS5YnoYuB/NZlArbqMdtyU451y3CQmAmAhFqEJRUgr
 F16vu84PMBNnF3phoR2tNcmb2usjBvkSW2nGmN2fb3Rpii2jLMUI6SXiNor3s0HMLpDO
 DD9A5T5HnUs0OLalr1FQn6xt0l4Mz8WIUAxLiXUyZe6mychSJ5pKFrUwIwL/LdegqH9P
 KMLw==
X-Gm-Message-State: APjAAAVhTiUGEhxXcrl97D9deJWWHONZvmh8lsHBUmno8429+9Mv9BOs
 9lBlf3VOJoYwvS+2i/ewApKiNJ+nUl9TpPPZnnP4Xw==
X-Google-Smtp-Source: APXvYqwgFKnvqOmLtAbhuLtuEVA6cRgBG1Fk8JPtuX4xChOPDMzoisf01Fw3ZXQbdFSzwq1yuvpmpQTbeSPrh1KLw58=
X-Received: by 2002:a1c:a795:: with SMTP id q143mr96751wme.52.1578606773706;
 Thu, 09 Jan 2020 13:52:53 -0800 (PST)
MIME-Version: 1.0
References: <20191224044146.232713-1-saravanak@google.com>
 <CAKv+Gu_yDWhvR80Wg1-bzpD1aGwGC-UA+obcgn8CEKKjMdR7rQ@mail.gmail.com>
 <CAGETcx9iA_irfpO2yJSPszeNrfwfYAV0KkZ+AyB7gcDo0v8p1g@mail.gmail.com>
In-Reply-To: <CAGETcx9iA_irfpO2yJSPszeNrfwfYAV0KkZ+AyB7gcDo0v8p1g@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 9 Jan 2020 22:52:42 +0100
Message-ID: <CAKv+Gu9Dk65GVY1x6YBUp1zbwhUNhbHF2KhnQSU7xdniALaiGQ@mail.gmail.com>
Subject: Re: [PATCH v2] efi: arm: defer probe of PCIe backed efifb on DT
 systems
To: Saravana Kannan <saravanak@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_135255_720704_1DD6FBD9 
X-CRM114-Status: GOOD (  37.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

On Thu, 9 Jan 2020 at 19:53, Saravana Kannan <saravanak@google.com> wrote:
>
> On Thu, Jan 9, 2020 at 6:06 AM Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
> >
> > On Tue, 24 Dec 2019 at 05:41, Saravana Kannan <saravanak@google.com> wrote:
> > >
> > > From: Ard Biesheuvel <ardb@kernel.org>
> > >
> > > The new of_devlink support breaks PCIe probing on ARM platforms booting
> > > via UEFI if the firmware exposes a EFI framebuffer that is backed by a
> > > PCI device. The reason is that the probing order gets reversed,
> > > resulting in a resource conflict on the framebuffer memory window when
> > > the PCIe probes last, causing it to give up entirely.
> > >
> > > Given that we rely on PCI quirks to deal with EFI framebuffers that get
> > > moved around in memory, we cannot simply drop the memory reservation, so
> > > instead, let's use the device link infrastructure to register this
> > > dependency, and force the probing to occur in the expected order.
> > >
> > > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > > Co-developed-by: Saravana Kannan <saravanak@google.com>
> > > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > > ---
> > >
> > > Hi Ard,
> > >
> > > I compile tested it and I think it should work. If you can actually run
> > > and test it, that'd be nice.
> > >
> > > You can also optimize find_pci_overlap_node() by caching the result if
> > > you think that's necessary.
> > >
> > > Right now this code will run always just like your code did. But once I
> > > rename of_devlink to fw_devlink, this code won't be run if fw_devlink is
> > > disabled.
> > >
> > > v1 -> v2:
> > > - Rewrote the device linking part to not depend on initcall ordering
> > >
> > >  drivers/firmware/efi/arm-init.c | 106 ++++++++++++++++++++++++++++++--
> > >  1 file changed, 102 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/firmware/efi/arm-init.c b/drivers/firmware/efi/arm-init.c
> > > index 904fa09e6a6b..8b789ff83af0 100644
> > > --- a/drivers/firmware/efi/arm-init.c
> > > +++ b/drivers/firmware/efi/arm-init.c
> > > @@ -10,10 +10,12 @@
> > >  #define pr_fmt(fmt)    "efi: " fmt
> > >
> > >  #include <linux/efi.h>
> > > +#include <linux/fwnode.h>
> > >  #include <linux/init.h>
> > >  #include <linux/memblock.h>
> > >  #include <linux/mm_types.h>
> > >  #include <linux/of.h>
> > > +#include <linux/of_address.h>
> > >  #include <linux/of_fdt.h>
> > >  #include <linux/platform_device.h>
> > >  #include <linux/screen_info.h>
> > > @@ -276,15 +278,111 @@ void __init efi_init(void)
> > >                 efi_memmap_unmap();
> > >  }
> > >
> > > +static bool efifb_overlaps_pci_range(const struct of_pci_range *range)
> > > +{
> > > +       u64 fb_base = screen_info.lfb_base;
> > > +
> > > +       if (screen_info.capabilities & VIDEO_CAPABILITY_64BIT_BASE)
> > > +               fb_base |= (u64)(unsigned long)screen_info.ext_lfb_base << 32;
> > > +
> > > +       return fb_base >= range->cpu_addr &&
> > > +              fb_base < (range->cpu_addr + range->size);
> > > +}
> > > +
> > > +static struct device_node *find_pci_overlap_node(void)
> > > +{
> > > +       struct device_node *np;
> > > +
> > > +       for_each_node_by_type(np, "pci") {
> > > +               struct of_pci_range_parser parser;
> > > +               struct of_pci_range range;
> > > +               int err;
> > > +
> > > +               err = of_pci_range_parser_init(&parser, np);
> > > +               if (err) {
> > > +                       pr_warn("of_pci_range_parser_init() failed: %d\n", err);
> > > +                       continue;
> > > +               }
> > > +
> > > +               for_each_of_pci_range(&parser, &range)
> > > +                       if (efifb_overlaps_pci_range(&range))
> > > +                               return np;
> > > +       }
> > > +       return NULL;
> > > +}
> > > +
> > > +/*
> > > + * If the efifb framebuffer is backed by a PCI graphics controller, we have
> > > + * to ensure that this relation is expressed using a device link when
> > > + * running in DT mode, or the probe order may be reversed, resulting in a
> > > + * resource reservation conflict on the memory window that the efifb
> > > + * framebuffer steals from the PCIe host bridge.
> > > + */
> > > +static int efifb_add_links(const struct fwnode_handle *fwnode,
> > > +                          struct device *dev)
> > > +{
> > > +       struct device_node *sup_np;
> > > +       struct device *sup_dev;
> > > +
> > > +       sup_np = find_pci_overlap_node();
> > > +
> > > +       /*
> > > +        * If there's no PCI graphics controller backing the efifb, we are
> > > +        * done here.
> > > +        */
> > > +       if (!sup_np)
> > > +               return 0;
> > > +
> > > +       sup_dev = get_dev_from_fwnode(&sup_np->fwnode);
> > > +       of_node_put(sup_np);
> > > +
> > > +       /*
> > > +        * Return -ENODEV if the PCI graphics controller device hasn't been
> > > +        * registered yet.  This ensures that efifb isn't allowed to probe
> > > +        * and this function is retried again when new devices are
> > > +        * registered.
> > > +        */
> > > +       if (!sup_dev)
> > > +               return -ENODEV;
> > > +
> > > +       /*
> > > +        * If this fails, retrying this function at a later point won't
> > > +        * change anything. So, don't return an error after this.
> > > +        */
> > > +       if (!device_link_add(dev, sup_dev, 0))
> > > +               dev_warn(dev, "device_link_add() failed\n");
> > > +
> > > +       put_device(sup_dev);
> > > +
> > > +       return 0;
> > > +}
> > > +
> > > +static struct fwnode_operations efifb_fwnode_ops = {
> >
> > Please make this const
>
> Ack
>
> > > +       .add_links = efifb_add_links,
> > > +};
> > > +
> > > +static struct fwnode_handle efifb_fwnode = {
> > > +       .ops = &efifb_fwnode_ops,
> > > +};
> > > +
> > >  static int __init register_gop_device(void)
> > >  {
> > > -       void *pd;
> > > +       struct platform_device *pd;
> > > +       int err;
> > >
> > >         if (screen_info.orig_video_isVGA != VIDEO_TYPE_EFI)
> > >                 return 0;
> > >
> > > -       pd = platform_device_register_data(NULL, "efi-framebuffer", 0,
> > > -                                          &screen_info, sizeof(screen_info));
> > > -       return PTR_ERR_OR_ZERO(pd);
> > > +       pd = platform_device_alloc("efi-framebuffer", 0);
> > > +       if (!pd)
> > > +               return -ENOMEM;
> > > +
> >
> > Add
> >
> >   if (IS_ENABLED(CONFIG_PCI))
> >
> > here
>
> As in around the line below where I set the fwnode? Then it's going to
> warn about unused variable.

If you use if() instead of #if, the compiler will not warn about an
unused variable here.

> Maybe I should just do the if
> (IS_ENABLED(CONFIG_PCI)) inside the add_links() function to short
> circuit it.
>

No, let's put it it here.

> Responding to your other email here. Adding ifdef CONFIG_PCI was my
> first inclination, but then those 2 functions are defined if
> CONFIG_OF_ADDRESS are defined and if not the stubs are always there.
> There's no #ifdef CONFIG_PCI around any of them AFAICT. So I'm
> confused about what's going on.
>

There is

> > > +       pd->dev.fwnode = &efifb_fwnode;
> > > +
> > > +       err = platform_device_add_data(pd, &screen_info, sizeof(screen_info));
> > > +       if (err)
> > > +               return err;
> > > +
> > > +       return platform_device_add(pd);
> > >  }
> > >  subsys_initcall(register_gop_device);
> > > --
> > > 2.24.1.735.g03f4e72817-goog
> > >
> >
> > With the changes above
>
> Yeah, will make them all.
>
> >
> > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> >
>
> Thanks!
>
> -Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
