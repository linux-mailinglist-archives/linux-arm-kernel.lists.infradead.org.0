Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29398C2416
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 17:16:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/B7npb/8HJn33aIVzYiTUcj42Fej7yMwF9w89fNP94=; b=IbSdB78m5/r9KQ
	Pu9t3BW8SRRD4ule8SrSfnNTbniUlcTIkH0m4tvBZx7ahYdVTVDw5M4bjuADfdT62zkd0vCvETIvA
	+P446GjKws/UQeO8d9/94S/ZOSLQuvQSXodxYZcbn2mIpqhJrecVfsSFJlKrToowmdVgaCPKyZQf5
	/X3ylborXFnfIrQ7G+12tK1Upp0UlbTnDFWfMW1+HbWIFKLQu7BzelszDfGEoD4SCeHsqIk3hqFn+
	axxsrgT/wwSN7xVkCR/aq6XgnKk0ytvq0Q9dTrbPgO59x7zTHn8plOfRsun+OJ5OTJI36xbOSSD/U
	7B1uMJ24HjBzG/Jz7WjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iExPt-0000MY-B2; Mon, 30 Sep 2019 15:16:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iExPh-0000Lv-8L
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 15:16:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CFC251000;
 Mon, 30 Sep 2019 08:16:35 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 46A1D3F706;
 Mon, 30 Sep 2019 08:16:35 -0700 (PDT)
Date: Mon, 30 Sep 2019 16:16:33 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 05/11] PCI: versatile: Use
 pci_parse_request_of_pci_ranges()
Message-ID: <20190930151633.GE42880@e119886-lin.cambridge.arm.com>
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-6-robh@kernel.org>
 <20190925103752.GS9720@e119886-lin.cambridge.arm.com>
 <CAL_JsqJW2t3F6HdKqcHguYLLiYQ6XWOsQbY-TFsDXhrDjjszew@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJW2t3F6HdKqcHguYLLiYQ6XWOsQbY-TFsDXhrDjjszew@mail.gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_081637_377792_16A95CB6 
X-CRM114-Status: GOOD (  21.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Thu, Sep 26, 2019 at 04:44:31PM -0500, Rob Herring wrote:
> On Wed, Sep 25, 2019 at 5:37 AM Andrew Murray <andrew.murray@arm.com> wrote:
> >
> > On Tue, Sep 24, 2019 at 04:46:24PM -0500, Rob Herring wrote:
> > > Convert ARM Versatile host bridge to use the common
> > > pci_parse_request_of_pci_ranges().
> > >
> > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > ---
> > >  drivers/pci/controller/pci-versatile.c | 62 +++++---------------------
> > >  1 file changed, 11 insertions(+), 51 deletions(-)
> > >
> > > diff --git a/drivers/pci/controller/pci-versatile.c b/drivers/pci/controller/pci-versatile.c
> > > index f59ad2728c0b..237b1abb26f2 100644
> > > --- a/drivers/pci/controller/pci-versatile.c
> > > +++ b/drivers/pci/controller/pci-versatile.c
> > > @@ -62,60 +62,12 @@ static struct pci_ops pci_versatile_ops = {
> > >       .write  = pci_generic_config_write,
> > >  };
> > >
> > > -static int versatile_pci_parse_request_of_pci_ranges(struct device *dev,
> > > -                                                  struct list_head *res)
> > > -{
> > > -     int err, mem = 1, res_valid = 0;
> > > -     resource_size_t iobase;
> > > -     struct resource_entry *win, *tmp;
> > > -
> > > -     err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, res, &iobase);
> > > -     if (err)
> > > -             return err;
> > > -
> > > -     err = devm_request_pci_bus_resources(dev, res);
> > > -     if (err)
> > > -             goto out_release_res;
> > > -
> > > -     resource_list_for_each_entry_safe(win, tmp, res) {
> > > -             struct resource *res = win->res;
> > > -
> > > -             switch (resource_type(res)) {
> > > -             case IORESOURCE_IO:
> > > -                     err = devm_pci_remap_iospace(dev, res, iobase);
> > > -                     if (err) {
> > > -                             dev_warn(dev, "error %d: failed to map resource %pR\n",
> > > -                                      err, res);
> > > -                             resource_list_destroy_entry(win);
> > > -                     }
> > > -                     break;
> > > -             case IORESOURCE_MEM:
> > > -                     res_valid |= !(res->flags & IORESOURCE_PREFETCH);
> > > -
> > > -                     writel(res->start >> 28, PCI_IMAP(mem));
> > > -                     writel(PHYS_OFFSET >> 28, PCI_SMAP(mem));
> > > -                     mem++;
> > > -
> > > -                     break;
> > > -             }
> > > -     }
> > > -
> > > -     if (res_valid)
> > > -             return 0;
> > > -
> > > -     dev_err(dev, "non-prefetchable memory resource required\n");
> > > -     err = -EINVAL;
> > > -
> > > -out_release_res:
> > > -     pci_free_resource_list(res);
> > > -     return err;
> > > -}
> > > -
> > >  static int versatile_pci_probe(struct platform_device *pdev)
> > >  {
> > >       struct device *dev = &pdev->dev;
> > >       struct resource *res;
> > > -     int ret, i, myslot = -1;
> > > +     struct resource_entry *entry;
> > > +     int ret, i, myslot = -1, mem = 0;
> >
> > I think 'mem' should be initialised to 1, at least that's what the original
> > code did. However I'm not sure why it should start from 1.
> 
> The original code I moved from arch/arm had 32MB @ 0x0c000000 called
> "PCI unused" which was requested with request_resource(), but never
> provided to the PCI core. Otherwise, I kept the setup the same. No one
> has complained in 4 years, though I'm not sure anyone would have
> noticed if I just deleted PCI support...

OK, well it would be good to see a tested-by tag from someone for this.

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

Thanks,

Andrew Murray

> 
> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
