Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF49C123CFD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 03:15:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uXhqTYSr5mua37vXQ9WLeuWk54HuYuWUpwnrzmJFDU=; b=Gv53NRic9QqfjM
	eL8+ADbcPxINWYAxedXZI8cte+2OmaeYWAQIZ8YzV+RZUUYbFd4XthV0N+jz/0zECT4nT38TykVcC
	hSyfNFvVk02PKpA0bVroMrIWqUQWHdJ+q7N67ISqQvAOg1a2GMXQ8jl7NBEaXNw5+PlLOHwU8tvjN
	VNSB5gRGzFQkIJxcvKcUg7AO2pBhsWUdmqcj5EmJaZwEhNnCuOQgftsaAUjaRD1Ho3VlTDTyuAzb1
	e6+BOPukpZ7+ldhUe1FsxMwGD15tsQmGHRA3stT3UVLo7t7tTeBl+c4xuZ+deRNEpeU0Px/4UHzO6
	lqhcKhutHFOBa5DloFPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihOrs-00059Z-3t; Wed, 18 Dec 2019 02:15:16 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihOre-0004ec-1R
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 02:15:04 +0000
Received: by mail-oi1-x242.google.com with SMTP id p67so278111oib.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 18:14:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lJLy770YGqzkELOCvbFFD3CzTSJb3Fm9LrGS1w2fcfg=;
 b=IdLbKoGGtGhRtEGBUCMwCVwCVw26dfeUlZwo1+BCPHeJEt9dxZDYFNDVvZd8QZSPFH
 PGHJcOLdjrz0rnp9qhRRt8hMF51JiPleMoj063DffM1YetrD4jXq4IWGuj7nzMIYV0km
 4G43lQVysb1moVLRxY+H4lf4/t3qORgrm4FAEWwjPXJwsEtqT4mW0WoCNxHnBzDqwElq
 NnYn6wdUkqOZ84gOiMzqiwg6khhz6G3/nFY6eQTg5G0h1CvgJDoQWG4oKrcaKgtMchGT
 aRGCQ9tg1OIkm9HW3m+DmNMTqSMOAw7g2eVrH36UWgMr3qTk4wLIYWSninCO2HTn8cwa
 GbJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lJLy770YGqzkELOCvbFFD3CzTSJb3Fm9LrGS1w2fcfg=;
 b=S1N/1EDxA08S6E2cEtx5QHEtBFQ/6E9qYQSMLIcnwMrNlsnq1IuHdaSJs+E10FRuqZ
 ki3iYdcYRM4QLhY1FjD7C7mQ87SuNqtf36M4AyPFUtuetjiEB343dIMdCoqHF0iqWkV2
 olLIM4BY+4kM+N4YYUs82HKCtE/ds9IY/O/Esa5tI+PFk3OyWRcXKMOwA3f3aV90R2SK
 2e2UuHoIMAYLvIzAK8ds6rjzKzoAnm3DICR16bAINGhpYYbUcIxN4kDIdHNpkths/vFk
 D1/O9Pjj+PAVwF+wyBGT9Fk3YPyJCqPbJ5D1MB4UPfdTeT1NeApQEJCnZZIwin/H8wFw
 izUA==
X-Gm-Message-State: APjAAAVxpj9H+ABmqsmAMyeleKV0zW7eiKDTNsObDOFk9BzjvFY63OMq
 QHXDa8BbViClM9Tw3pmbTqeJuY2bA7F7rL7djlPBKg==
X-Google-Smtp-Source: APXvYqxd2HlxlJmwTNCYZHO0xOeD3uGAhhlt3LslSwVY13A95b5LlfdM8DVaccZbqeHOUsGEYnbbM5RWVEpudAKooPI=
X-Received: by 2002:aca:5490:: with SMTP id i138mr101718oib.69.1576635298004; 
 Tue, 17 Dec 2019 18:14:58 -0800 (PST)
MIME-Version: 1.0
References: <20191126162902.16788-1-ardb@kernel.org>
 <CAGETcx8SftK_=-Z374AzQ7vy2RGWqvF3ry+q9Y+cQ5dUhgNEew@mail.gmail.com>
 <CAKv+Gu_-1b=3_hUq41T_RNDtaUWBbFquDWQK64sZKGNdMseHGQ@mail.gmail.com>
In-Reply-To: <CAKv+Gu_-1b=3_hUq41T_RNDtaUWBbFquDWQK64sZKGNdMseHGQ@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 17 Dec 2019 18:14:22 -0800
Message-ID: <CAGETcx8zKwbDvVGcJXgw9GC61bzQt2kC2CYcgqTfMrDnMNDBrQ@mail.gmail.com>
Subject: Re: [PATCH] efi: arm: defer probe of PCIe backed efifb on DT systems
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_181502_136565_A28F73ED 
X-CRM114-Status: GOOD (  42.35  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 12:19 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> On Thu, 28 Nov 2019 at 20:29, Saravana Kannan <saravanak@google.com> wrote:
> >
> > On Tue, Nov 26, 2019 at 8:30 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > The new of_devlink support breaks PCIe probing on ARM platforms booting
> > > via UEFI if the firmware exposes a EFI framebuffer that is backed by a
> > > PCI device.
> >
> > Thanks for testing with of_devlink enabled!
> >
>
> Sure, no trouble at all.
>
> > > The reason is that the probing order gets reversed,
> > > resulting in a resource conflict on the framebuffer memory window when
> > > the PCIe probes last, causing it to give up entirely.
> >
> > Just so I understand it clearly, the probe order reversal is only
> > between this efi-framebuffer device and the PCIe device right? Not all
> > PCI devices or something like that, right? Do you have any info on
> > what dependency causes this reversal? Just curious.
> >
>
> It is the probe reversal between the efi-framebuffer on the one hand
> and the entire PCIe hierarchy on the other.
>
> For some reason, PCIe host controllers are usually probed very early,
> and I wouldn't be surprised if deferring that may cause other issues
> as well. However, of_devlink is presumably specific to DT systems,
> where PCIe does not play such a fundamental role like it does on x86,
> for instance.
>
> > > Given that we rely on PCI quirks to deal with EFI framebuffers that get
> > > moved around in memory, we cannot simply drop the memory reservation, so
> > > instead, let's use the device link infrastructure to register this
> > > dependency, and force the probing to occur in the expected order.
> > >
> > > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > Cc: Saravana Kannan <saravanak@google.com>
> > > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > > ---
> > >  drivers/firmware/efi/arm-init.c | 66 ++++++++++++++++++--
> > >  1 file changed, 61 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/firmware/efi/arm-init.c b/drivers/firmware/efi/arm-init.c
> > > index 311cd349a862..617226d50774 100644
> > > --- a/drivers/firmware/efi/arm-init.c
> > > +++ b/drivers/firmware/efi/arm-init.c
> > > @@ -14,6 +14,7 @@
> > >  #include <linux/memblock.h>
> > >  #include <linux/mm_types.h>
> > >  #include <linux/of.h>
> > > +#include <linux/of_address.h>
> > >  #include <linux/of_fdt.h>
> > >  #include <linux/platform_device.h>
> > >  #include <linux/screen_info.h>
> > > @@ -267,15 +268,70 @@ void __init efi_init(void)
> > >                 efi_memmap_unmap();
> > >  }
> > >
> > > +static bool __init efifb_overlaps_pci_range(const struct of_pci_range *range)
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
> > >  static int __init register_gop_device(void)
> > >  {
> > > -       void *pd;
> > > +       struct platform_device *pd;
> > > +       struct device_node *np;
> > > +       bool found = false;
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
> > > +       err = platform_device_add_data(pd, &screen_info, sizeof(screen_info));
> > > +       if (err)
> > > +               return err;
> > > +
> > > +       /*
> > > +        * If the efifb framebuffer is backed by a PCI graphics controller, we
> > > +        * have to ensure that this relation is expressed using a device link
> > > +        * when running in DT mode, or the probe order may be reversed,
> > > +        * resulting in a resource reservation conflict on the memory window
> > > +        * that the efifb framebuffer steals from the PCIe host bridge.
> > > +        */
> > > +       for_each_node_by_type(np, "pci") {
> > > +               struct of_pci_range_parser parser;
> > > +               struct of_pci_range range;
> > > +               struct device *sup_dev;
> > > +
> > > +               if (found) {
> > > +                       of_node_put(np);
> > > +                       break;
> > > +               }
> >
> > It looks like you are doing this here because you can't break out of
> > two loops when you set found = true. Is that right? If so, I think
> > doing this at the end of the loop would make it more obvious on what's
> > going on.
> >
>
> Yeah, I realized that after I posted it.
>
> > > +
> > > +               err = of_pci_range_parser_init(&parser, np);
> > > +               if (err) {
> > > +                       pr_warn("of_pci_range_parser_init() failed: %d\n", err);
> > > +                       continue;
> > > +               }
> > > +
> > > +               sup_dev = get_dev_from_fwnode(&np->fwnode);
> > > +
> > > +               for_each_of_pci_range(&parser, &range) {
> > > +                       if (efifb_overlaps_pci_range(&range)) {
> > > +                               found = true;
> > > +                               if (!device_link_add(&pd->dev, sup_dev, 0))
> > > +                                       pr_warn("device_link_add() failed\n");
> >
> > I think dev_warn(&pd->dev,...) might make the message more useful.
> > Otherwise, it's so confusing.
> >
>
> OK
>
> > > +                               break;
> > > +                       }
> > > +               }
> > > +               put_device(sup_dev);
> >
> > Can't you do the if (found) here? Another option is to simply do a
> > "goto out;" at the end of the if block where you set found = true.
> >
>
> Indeed.
>
> > > +       }
> > > +       return platform_device_add(pd);
> > >  }
> > > -subsys_initcall(register_gop_device);
> > > +device_initcall(register_gop_device);
> >
> > Looks like you are doing this so that this efi-framebuffer device gets
> > added after the PCIe device? So that device_add_link() succeeds?
> >
>
> I should have mentioned this in the commit log, I suppose: I copied
> this from the x86 code that registers the efifb platform device, it
> also uses device_initcall() to prevent probing too early.
>
> > I'm wondering if it would be better to implement this as a
> > fwnode_operations.add_links(). Since this efi-framebuffer device won't have any
> > fwnode, you can create your own fwnode and implement the add_links()
> > property. Not a strong opinion on this, but some food for thought.
> >
>
> I have no idea how that would look, Could you elaborate? I'd prefer it
> if we could have a solution where this logic is only invoked when
> necessary, i.e., when we are using device links in the first place.

I haven't forgotten this thread -- it's in my TODO list. I'm hoping to
get to this during the holiday weeks. I plan on sending an example
patch with some of your code in it and you can take it from there.
Does that sound good?

Thanks,
Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
