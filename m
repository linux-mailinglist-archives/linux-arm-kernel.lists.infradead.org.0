Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE488C240A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 17:14:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+ak9gSnIazisBqbhV3tgEt0DH7JQSUISaIXqCyNWuE=; b=JwXZ4PdHY7poj9
	pYDMSGf0YUTdfhjx+3lS7cpqpGFVH4m9XRA5p/SWT7hpLUCojwVdtEWVCziemTZloboozpChnq/4Z
	yeHJvXXeFn8kFJzEb5i9Ya3jw0mEeLvpE6QeRLddTGqXuQFecfPbCa+h0nFkS9JacuUr50fr1NK3A
	hdygICtrQSsuK941zgEgIFOdZUQSc73iRMMy+uBu+ntnldrCaWIg3TgU1ffXsxUp/WqD3zTfOmsId
	M8Fno9c+22NRxd15kDLbEhoZcwewG/P697wEcaLA6eks2xDNQYObeWE2Vwokxeje6HWSPWw3F8nih
	WGRSSHqJuBl2yXLrbwvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iExN9-0007A1-NT; Mon, 30 Sep 2019 15:13:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iExN1-00079R-5O
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 15:13:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C996E1000;
 Mon, 30 Sep 2019 08:13:49 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 40F823F706;
 Mon, 30 Sep 2019 08:13:49 -0700 (PDT)
Date: Mon, 30 Sep 2019 16:13:47 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 02/11] PCI: altera: Use pci_parse_request_of_pci_ranges()
Message-ID: <20190930151346.GD42880@e119886-lin.cambridge.arm.com>
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-3-robh@kernel.org>
 <20190925102423.GR9720@e119886-lin.cambridge.arm.com>
 <CAL_JsqKN709cOLtDLdKXmDzeNLYtGekMT2BiZic4x45UopenwA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqKN709cOLtDLdKXmDzeNLYtGekMT2BiZic4x45UopenwA@mail.gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_081351_249454_31B7F205 
X-CRM114-Status: GOOD (  22.33  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 rfi@lists.rocketboards.org, Bjorn Helgaas <bhelgaas@google.com>,
 Ley Foon Tan <lftan@altera.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 07:33:35AM -0500, Rob Herring wrote:
> On Wed, Sep 25, 2019 at 5:24 AM Andrew Murray <andrew.murray@arm.com> wrote:
> >
> > On Tue, Sep 24, 2019 at 04:46:21PM -0500, Rob Herring wrote:
> > > Convert altera host bridge to use the common
> > > pci_parse_request_of_pci_ranges().
> > >
> > > Cc: Ley Foon Tan <lftan@altera.com>
> > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > > Cc: rfi@lists.rocketboards.org
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > ---
> 
> > > @@ -833,9 +800,8 @@ static int altera_pcie_probe(struct platform_device *pdev)
> > >               return ret;
> > >       }
> > >
> > > -     INIT_LIST_HEAD(&pcie->resources);
> > > -
> > > -     ret = altera_pcie_parse_request_of_pci_ranges(pcie);
> > > +     ret = pci_parse_request_of_pci_ranges(dev, &pcie->resources,
> >
> > Does it matter that we now map any given IO ranges whereas we didn't
> > previously?
> >
> > As far as I can tell there are no users that pass an IO range, if they
> > did then with the existing code the probe would fail and they'd get
> > a "I/O range found for %pOF. Please provide an io_base pointer...".
> > However with the new code if any IO range was given (which would
> > probably represent a misconfiguration), then we'd proceed to map the
> > IO range. When that IO is used, who knows what would happen.
> 
> Yeah, I'm assuming that the DT doesn't have an IO range if IO is not
> supported. IMO, it is not the kernel's job to validate the DT.

Sure. Is it worth mentioning in the commit message this subtle change
in behaviour?

> 
> > I wonder if there is a better way for a host driver to indicate that
> > it doesn't support IO?
> 
> We can probably test for this in the schema.
> 
> ranges:
>   items:
>     minItems: 7
>     items:
>       - not: { const: 0x01000000 }
> 
> Or "- enum: [ 0x42000000, 0x02000000 ]"
> 
> Of course, in theory, the bus, dev, fn fields could be non-zero and we
> could use minium/maximum to handle those, but in practice I think they
> are rarely used for FDT.

Many controllers also appear to set the top bit (relocatable), e.g.
0x82000000...

At present there are no PCI bindings that use the YAML schema, if I've
understood correctly.

Thanks,

Andrew Murray

> 
> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
