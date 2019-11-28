Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3392210CF20
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 21:19:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xer3aTGk8laIuRxwOywsdoE+6s33G9SYhIpDfoJVfSM=; b=RB3T7Rt1rZYseT
	yncJ+GJeJzx904a2s4B0jsa03ygutNUsC1s3eo/6cgQjOb8z+gb3wYt5x0lLEN3x2hwQugHmBrta5
	zmARmVInuHjhkk5nQ6KoJBCVpUQIXyeR/IXFAbY0eXKm8X+lBfDu0KIFHha5yC7RwULtJcLV9UJCi
	4l+hTyLR/hdEXOC4xyAFgIqv0qiNJuq/VQtbcMQogIFH3y/S25Va7dTVHsQVChlDGDtioHsxXjuVz
	GMt5TybUjCxtKfQGIuJdqI4E/Fx4o1tfwMFDHjMDrmJOuXD4tfItMhxJHabXIbYazOFVvYB7wx3+E
	xKY+Q1RDJhsoJ/HPdbrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaQGC-0003cj-6C; Thu, 28 Nov 2019 20:19:32 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaQG0-0003c4-A4
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 20:19:22 +0000
Received: by mail-wr1-x444.google.com with SMTP id a15so32520245wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 12:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xwfbITtTKZf6U4UKVcFswXjKlWYF5vruKcu6KmOu+jE=;
 b=R/b0ZkjsDQkkCZ2RZ77zpVd2zqx00vWlOhSSe39JfmVB29SGL5khb6sgtzq/KvnSZX
 /Zg7XMrhbcPnBhi5h+EW2Gb2NQAWjujMAw1eet1+WzpN1bAATd2BJeq8ImuWHGN2J+MQ
 FYtISt7ks+N+Nyd1JVUSkyUPVDX9i7mZ5EDwT61JeojrfyW0B/wzFNeUm/NXEl9lvxIS
 1h2oFx37NpAeuMemhPnQkd+JR3ZZ/hzBVo0uQV4hPZ0o1OTwZ9JGlhm41yhfsEDiWkUt
 TKDNzMIuYoHJBMsZBOq1QV9aRkHG5SwFdNIJD36uVOhX7cGEd0FKq6eIoCKcKYZRPtJt
 oysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xwfbITtTKZf6U4UKVcFswXjKlWYF5vruKcu6KmOu+jE=;
 b=FVUh6z05TRmd3wNWDdY44eEzoI0Ahtr5ZApEH+jfRI3fNKC1iN1fARoaJbMUuEYVKY
 3xcH7xIh1xI65p2xRS9R1V8kwFIRDh6MfeO3e2BLZCVMuoSnF92ISqpeqXVfZrdjixoo
 H6YYiY7XttDBCPcmI0jPGReD9JyZlX8o1NsRAEobnRjBRab1bOE451PdF/FLTPhrvCLx
 WjuEjSlCMLTmjF2g/RwkHSVoXzpd0XVMU++fgL7oasgA5cWU5XTOb32RxGgGrqA8TMrP
 rk6KIyto/VKxhaYTPnC2QV20HHe1Yc1PLc0xCLZT9yOnd/8Z1oQVOJQzL7ecwCpTtYbG
 OyAA==
X-Gm-Message-State: APjAAAVA6oWO9UpcAnYMiSivPCghm5aEd2BF0OeSLE04yhSoc4mrOeCR
 kTy3KPRz6vDdtS2Qpmq8eWbUQb9V/3ayEa/ZGT9f7g==
X-Google-Smtp-Source: APXvYqynieOBcZ8Zilip2yTJnXgPUsKF3Z1rCvcfJjq3jGJ71IFLcZaiJgkovL+bo7Y/Bk3FTD9F4jUJmIpa9U+JPk4=
X-Received: by 2002:a5d:46c1:: with SMTP id g1mr29005289wrs.200.1574972358213; 
 Thu, 28 Nov 2019 12:19:18 -0800 (PST)
MIME-Version: 1.0
References: <20191126162902.16788-1-ardb@kernel.org>
 <CAGETcx8SftK_=-Z374AzQ7vy2RGWqvF3ry+q9Y+cQ5dUhgNEew@mail.gmail.com>
In-Reply-To: <CAGETcx8SftK_=-Z374AzQ7vy2RGWqvF3ry+q9Y+cQ5dUhgNEew@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 28 Nov 2019 21:19:07 +0100
Message-ID: <CAKv+Gu_-1b=3_hUq41T_RNDtaUWBbFquDWQK64sZKGNdMseHGQ@mail.gmail.com>
Subject: Re: [PATCH] efi: arm: defer probe of PCIe backed efifb on DT systems
To: Saravana Kannan <saravanak@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_121920_486786_840AFFAF 
X-CRM114-Status: GOOD (  38.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 Nov 2019 at 20:29, Saravana Kannan <saravanak@google.com> wrote:
>
> On Tue, Nov 26, 2019 at 8:30 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > The new of_devlink support breaks PCIe probing on ARM platforms booting
> > via UEFI if the firmware exposes a EFI framebuffer that is backed by a
> > PCI device.
>
> Thanks for testing with of_devlink enabled!
>

Sure, no trouble at all.

> > The reason is that the probing order gets reversed,
> > resulting in a resource conflict on the framebuffer memory window when
> > the PCIe probes last, causing it to give up entirely.
>
> Just so I understand it clearly, the probe order reversal is only
> between this efi-framebuffer device and the PCIe device right? Not all
> PCI devices or something like that, right? Do you have any info on
> what dependency causes this reversal? Just curious.
>

It is the probe reversal between the efi-framebuffer on the one hand
and the entire PCIe hierarchy on the other.

For some reason, PCIe host controllers are usually probed very early,
and I wouldn't be surprised if deferring that may cause other issues
as well. However, of_devlink is presumably specific to DT systems,
where PCIe does not play such a fundamental role like it does on x86,
for instance.

> > Given that we rely on PCI quirks to deal with EFI framebuffers that get
> > moved around in memory, we cannot simply drop the memory reservation, so
> > instead, let's use the device link infrastructure to register this
> > dependency, and force the probing to occur in the expected order.
> >
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: Saravana Kannan <saravanak@google.com>
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >  drivers/firmware/efi/arm-init.c | 66 ++++++++++++++++++--
> >  1 file changed, 61 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/firmware/efi/arm-init.c b/drivers/firmware/efi/arm-init.c
> > index 311cd349a862..617226d50774 100644
> > --- a/drivers/firmware/efi/arm-init.c
> > +++ b/drivers/firmware/efi/arm-init.c
> > @@ -14,6 +14,7 @@
> >  #include <linux/memblock.h>
> >  #include <linux/mm_types.h>
> >  #include <linux/of.h>
> > +#include <linux/of_address.h>
> >  #include <linux/of_fdt.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/screen_info.h>
> > @@ -267,15 +268,70 @@ void __init efi_init(void)
> >                 efi_memmap_unmap();
> >  }
> >
> > +static bool __init efifb_overlaps_pci_range(const struct of_pci_range *range)
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
> >  static int __init register_gop_device(void)
> >  {
> > -       void *pd;
> > +       struct platform_device *pd;
> > +       struct device_node *np;
> > +       bool found = false;
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
> > +       err = platform_device_add_data(pd, &screen_info, sizeof(screen_info));
> > +       if (err)
> > +               return err;
> > +
> > +       /*
> > +        * If the efifb framebuffer is backed by a PCI graphics controller, we
> > +        * have to ensure that this relation is expressed using a device link
> > +        * when running in DT mode, or the probe order may be reversed,
> > +        * resulting in a resource reservation conflict on the memory window
> > +        * that the efifb framebuffer steals from the PCIe host bridge.
> > +        */
> > +       for_each_node_by_type(np, "pci") {
> > +               struct of_pci_range_parser parser;
> > +               struct of_pci_range range;
> > +               struct device *sup_dev;
> > +
> > +               if (found) {
> > +                       of_node_put(np);
> > +                       break;
> > +               }
>
> It looks like you are doing this here because you can't break out of
> two loops when you set found = true. Is that right? If so, I think
> doing this at the end of the loop would make it more obvious on what's
> going on.
>

Yeah, I realized that after I posted it.

> > +
> > +               err = of_pci_range_parser_init(&parser, np);
> > +               if (err) {
> > +                       pr_warn("of_pci_range_parser_init() failed: %d\n", err);
> > +                       continue;
> > +               }
> > +
> > +               sup_dev = get_dev_from_fwnode(&np->fwnode);
> > +
> > +               for_each_of_pci_range(&parser, &range) {
> > +                       if (efifb_overlaps_pci_range(&range)) {
> > +                               found = true;
> > +                               if (!device_link_add(&pd->dev, sup_dev, 0))
> > +                                       pr_warn("device_link_add() failed\n");
>
> I think dev_warn(&pd->dev,...) might make the message more useful.
> Otherwise, it's so confusing.
>

OK

> > +                               break;
> > +                       }
> > +               }
> > +               put_device(sup_dev);
>
> Can't you do the if (found) here? Another option is to simply do a
> "goto out;" at the end of the if block where you set found = true.
>

Indeed.

> > +       }
> > +       return platform_device_add(pd);
> >  }
> > -subsys_initcall(register_gop_device);
> > +device_initcall(register_gop_device);
>
> Looks like you are doing this so that this efi-framebuffer device gets
> added after the PCIe device? So that device_add_link() succeeds?
>

I should have mentioned this in the commit log, I suppose: I copied
this from the x86 code that registers the efifb platform device, it
also uses device_initcall() to prevent probing too early.

> I'm wondering if it would be better to implement this as a
> fwnode_operations.add_links(). Since this efi-framebuffer device won't have any
> fwnode, you can create your own fwnode and implement the add_links()
> property. Not a strong opinion on this, but some food for thought.
>

I have no idea how that would look, Could you elaborate? I'd prefer it
if we could have a solution where this logic is only invoked when
necessary, i.e., when we are using device links in the first place.

Thanks,
Ard.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
