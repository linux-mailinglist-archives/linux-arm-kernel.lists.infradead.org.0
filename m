Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01830BF36D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 14:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HercjPpMwJc1iKAXmzQ9InjNfESvZqg7/SQ65o98Sdo=; b=ATwCks+rOOTYiP
	SbK9OLqAtw1/O/KXMKmUssq5vR/Kr7Goy5nilqdYVqIGO0SlkOurnsFoMMRzdOF53oQZhi4sQtKVS
	2I6MEUAqknwcG2NnE2YmRk5cD/DupNpj+X46AJNNDhGh7yUaTb+aqSJFlyL7TZH+UcYASdXwq5otj
	HsSQ3XcYqlEGNzQAmXspH8kJFb+ra7MMRDPb8gmeEjvWFs8nzyJahLuwHkH1Csyb09UE8QZdx2iKP
	zozJXlQEvCwi0pwPZtqtO6vTqu2dKvSdGQiTmm7GFb0pAbZEOAL1DWVsSblDC87DIo3afRW+/6u2V
	m83s4aEkC9b6T+iQ85wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDTHr-0007Mw-OU; Thu, 26 Sep 2019 12:54:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDTHA-0007DG-QO
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 12:53:46 +0000
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 806E8222C6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 12:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569502412;
 bh=SulBQ1ETOKJRPwyLxC3RBSbGJjkCp4pqGn6BT0nXAjo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=PDofUudjW/n6OeXbMcjF6TsIekb/Wa/IqsdcCfmYFXgfpdAWO/tPCrSXIKnrvSKig
 0b8rSEF9YQva8LAuTggD2YR6J7QgTHn6z+N+451/C70wQSu2slJnI5XFzMIMOzD/+v
 oOkjqIAaYMc+gOkU6+xSAdnMGMsmjSEsVKyQZfWM=
Received: by mail-qk1-f180.google.com with SMTP id y144so1627000qkb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 05:53:32 -0700 (PDT)
X-Gm-Message-State: APjAAAVVxxe6o4lXtfLwo1tPA+I7yLAy8xO4T4qzmcA5I47dlmlN1MZm
 BJ9tmIjAyOxSxR4iZrWmrKgiVJ0FDZ1J9k0aeQ==
X-Google-Smtp-Source: APXvYqwUE9RcbGxD9bpLD6eBdsRB2calHjD+3fmuY9jJY0+d3IxPyQ41OWZzpJS8Jbs0h316UvLumDh038M4IuQJ60Y=
X-Received: by 2002:a37:682:: with SMTP id 124mr3035124qkg.393.1569502411592; 
 Thu, 26 Sep 2019 05:53:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-12-robh@kernel.org>
 <20190926084718.GA9720@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190926084718.GA9720@e119886-lin.cambridge.arm.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 26 Sep 2019 07:53:20 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+5cbPd_7Yoo6DvK9LFwf-npChWxRPMq-TtqFSALbXuDw@mail.gmail.com>
Message-ID: <CAL_Jsq+5cbPd_7Yoo6DvK9LFwf-npChWxRPMq-TtqFSALbXuDw@mail.gmail.com>
Subject: Re: [PATCH 11/11] PCI: rcar: Use inbound resources for setup
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_055341_737361_CD54D4AC 
X-CRM114-Status: GOOD (  19.03  )
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
 <linux-arm-kernel@lists.infradead.org>, Simon Horman <horms@verge.net.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 3:47 AM Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Tue, Sep 24, 2019 at 04:46:30PM -0500, Rob Herring wrote:
> > Now that the helpers provide the inbound resources in the host bridge
> > 'dma_ranges' resource list, convert Renesas R-Car PCIe host bridge to
> > use the resource list to setup the inbound addresses.
> >
> > Cc: Simon Horman <horms@verge.net.au>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> >  drivers/pci/controller/pcie-rcar.c | 45 +++++++++++-------------------
> >  1 file changed, 16 insertions(+), 29 deletions(-)
> >
> > diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
> > index b8d6e86a5539..453c931aaf77 100644
> > --- a/drivers/pci/controller/pcie-rcar.c
> > +++ b/drivers/pci/controller/pcie-rcar.c
> > @@ -1014,16 +1014,16 @@ static int rcar_pcie_get_resources(struct rcar_pcie *pcie)
> >  }
> >
> >  static int rcar_pcie_inbound_ranges(struct rcar_pcie *pcie,
> > -                                 struct of_pci_range *range,
> > +                                 struct resource_entry *entry,
> >                                   int *index)
> >  {
> > -     u64 restype = range->flags;
> > -     u64 cpu_addr = range->cpu_addr;
> > -     u64 cpu_end = range->cpu_addr + range->size;
> > -     u64 pci_addr = range->pci_addr;
> > +     u64 restype = entry->res->flags;
> > +     u64 cpu_addr = entry->res->start;
> > +     u64 cpu_end = entry->res->end;
> > +     u64 pci_addr = entry->res->start - entry->offset;
> >       u32 flags = LAM_64BIT | LAR_ENABLE;
> >       u64 mask;
> > -     u64 size;
> > +     u64 size = resource_size(entry->res);
> >       int idx = *index;
> >
> >       if (restype & IORESOURCE_PREFETCH)
> > @@ -1037,9 +1037,7 @@ static int rcar_pcie_inbound_ranges(struct rcar_pcie *pcie,
> >               unsigned long nr_zeros = __ffs64(cpu_addr);
> >               u64 alignment = 1ULL << nr_zeros;
> >
> > -             size = min(range->size, alignment);
> > -     } else {
> > -             size = range->size;
> > +             size = min(size, alignment);
> >       }
>
> AFAICT the (if cpu_addr > 0) is here because the result of __ffs64 is undefined
> if no bits are set (according to the comment). However by removing the else
> statement we no longer guarantee that nr_zeros is defined.

You might want to read this again...

The 'if (cpu_addr > 0) {' is still there and nr_zeros is only under
that condition. We just init 'size' instead of setting it in the else
clause.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
