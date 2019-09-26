Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF9BBFB1D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 23:46:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZevChLan99DJC5OlK0OsgFdjZGCnRK+a0FZ9GqFCsfI=; b=DLj26FJYE81KRp
	jHTqHSNRpQNDY12FKKu8XExzERLVwVWUuEZIKpVIAERWkpbK4KA3r2tdT6RMqKXuFXWM3oL7RMej1
	qux+jqR7NGQKcJfzZhGbiyrxEBjZEk/LkXBM1UY7JLV+/F/d1+oRforzRhb+a99Pg6OttLBBRj70C
	mg5wlc1gKpUM4kMWVt18wmwmP88tPpJabgqM/guJClHCK4Vzf2CUcOcWOlcs1Dg6MfPJItcXp3rD7
	cY9c7xw27dHsoYkj8PTovr/YG7zLQ5hDWoTAUA6bJoA+HIDJ/XaTylkk3FzMwHPqJlEyPOj5FSl83
	gRWa1T4dEpMx/vrpJcNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDbaN-00018S-3s; Thu, 26 Sep 2019 21:46:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDbZ5-0007Ym-Gv
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 21:44:45 +0000
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2BCB2245C
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 21:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569534283;
 bh=r9iUZ3xZ2uMsXW7rQV7RMqQESKbTLrIuyOwfkbYEZLs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=sMObkmUZmqpnExM8bz8MEnZGfupBlIz+aa0n1TjVwjdZF8YIcJ01Lfq8BOs3wocJe
 DO3k/8jdJ89rMxZDES0x1fakblEVra+dIEfbzj80ustEj6ocLbzdpuxl9EIKl8/1YF
 fVCQhWDEKvx7Hwsqz9Umm9g0dynSVWo8z3q7/488=
Received: by mail-qt1-f173.google.com with SMTP id r5so4828428qtd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 14:44:42 -0700 (PDT)
X-Gm-Message-State: APjAAAWAkSjSn/cgEZiHdX/g/gSSNsiDP5GPZGVDWjC1VxAMUW0WdbAV
 1EXjtA1+ahTdEBN9YFmZbWVlcujfNhOKlw6w2Q==
X-Google-Smtp-Source: APXvYqwv+D0Jq+ovkUxTwqp6gYb4j4V558s6dRtAHKz09nF40eEEKka4fyZVcmcbX2AQig7dCJk4MguEwUH32YdtERg=
X-Received: by 2002:ac8:6915:: with SMTP id e21mr6477376qtr.224.1569534282085; 
 Thu, 26 Sep 2019 14:44:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-6-robh@kernel.org>
 <20190925103752.GS9720@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190925103752.GS9720@e119886-lin.cambridge.arm.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 26 Sep 2019 16:44:31 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJW2t3F6HdKqcHguYLLiYQ6XWOsQbY-TFsDXhrDjjszew@mail.gmail.com>
Message-ID: <CAL_JsqJW2t3F6HdKqcHguYLLiYQ6XWOsQbY-TFsDXhrDjjszew@mail.gmail.com>
Subject: Re: [PATCH 05/11] PCI: versatile: Use
 pci_parse_request_of_pci_ranges()
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_144443_620611_D2437634 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 5:37 AM Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Tue, Sep 24, 2019 at 04:46:24PM -0500, Rob Herring wrote:
> > Convert ARM Versatile host bridge to use the common
> > pci_parse_request_of_pci_ranges().
> >
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> >  drivers/pci/controller/pci-versatile.c | 62 +++++---------------------
> >  1 file changed, 11 insertions(+), 51 deletions(-)
> >
> > diff --git a/drivers/pci/controller/pci-versatile.c b/drivers/pci/controller/pci-versatile.c
> > index f59ad2728c0b..237b1abb26f2 100644
> > --- a/drivers/pci/controller/pci-versatile.c
> > +++ b/drivers/pci/controller/pci-versatile.c
> > @@ -62,60 +62,12 @@ static struct pci_ops pci_versatile_ops = {
> >       .write  = pci_generic_config_write,
> >  };
> >
> > -static int versatile_pci_parse_request_of_pci_ranges(struct device *dev,
> > -                                                  struct list_head *res)
> > -{
> > -     int err, mem = 1, res_valid = 0;
> > -     resource_size_t iobase;
> > -     struct resource_entry *win, *tmp;
> > -
> > -     err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, res, &iobase);
> > -     if (err)
> > -             return err;
> > -
> > -     err = devm_request_pci_bus_resources(dev, res);
> > -     if (err)
> > -             goto out_release_res;
> > -
> > -     resource_list_for_each_entry_safe(win, tmp, res) {
> > -             struct resource *res = win->res;
> > -
> > -             switch (resource_type(res)) {
> > -             case IORESOURCE_IO:
> > -                     err = devm_pci_remap_iospace(dev, res, iobase);
> > -                     if (err) {
> > -                             dev_warn(dev, "error %d: failed to map resource %pR\n",
> > -                                      err, res);
> > -                             resource_list_destroy_entry(win);
> > -                     }
> > -                     break;
> > -             case IORESOURCE_MEM:
> > -                     res_valid |= !(res->flags & IORESOURCE_PREFETCH);
> > -
> > -                     writel(res->start >> 28, PCI_IMAP(mem));
> > -                     writel(PHYS_OFFSET >> 28, PCI_SMAP(mem));
> > -                     mem++;
> > -
> > -                     break;
> > -             }
> > -     }
> > -
> > -     if (res_valid)
> > -             return 0;
> > -
> > -     dev_err(dev, "non-prefetchable memory resource required\n");
> > -     err = -EINVAL;
> > -
> > -out_release_res:
> > -     pci_free_resource_list(res);
> > -     return err;
> > -}
> > -
> >  static int versatile_pci_probe(struct platform_device *pdev)
> >  {
> >       struct device *dev = &pdev->dev;
> >       struct resource *res;
> > -     int ret, i, myslot = -1;
> > +     struct resource_entry *entry;
> > +     int ret, i, myslot = -1, mem = 0;
>
> I think 'mem' should be initialised to 1, at least that's what the original
> code did. However I'm not sure why it should start from 1.

The original code I moved from arch/arm had 32MB @ 0x0c000000 called
"PCI unused" which was requested with request_resource(), but never
provided to the PCI core. Otherwise, I kept the setup the same. No one
has complained in 4 years, though I'm not sure anyone would have
noticed if I just deleted PCI support...

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
