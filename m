Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D73C25CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 19:36:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ijz5zM0y1/otGy8OG2IwqbgN7Bde0WMisWkY9Uveie4=; b=Y79T2ryvmCjGGZ
	1lbtkH1QneGaYHMgVMlkZZQRMDoqHnDbBGS75AMpK+tVSfUz7+XAiN/Ft3L9t4okwAUbaI3L7fer+
	DedHXzeGpUhvDp9v3Ti9Qlaks5f8fFhne4eJSFJIzTH0Ar1qTPewjEdVoyVKszmNtakvJeYR2XzCO
	L+UYdufydXQMa2b39Mx6MC/dMkhkTsJttn4eKPUndYkampUnMbJBWHLJSL+g9oLGfbUcokkuH2M9L
	mKBqT1DLPgq4bxVKnf8vgfezKdpQ76h0+WDm1u2VgJgiQZftlshM2QMrXZwrlqtMxVdM1NIgjCg07
	rmXX7NxbPHdS8z4cJCtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEzbI-0002Wb-QJ; Mon, 30 Sep 2019 17:36:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEzb8-0002W4-T2
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 17:36:36 +0000
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 742B2224D6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 17:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569864994;
 bh=zv4Uxz31XKM+MyjvtqcSjJlGgyTtf32vJB/lTpIHbDc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cHvJD06PMIzqUbJ1zlwF5MFgINfQZlmbqEnm1VNd3xI6UtbILrXYDEjoSI8dt+1kZ
 w+Bv83P7KaVeJBX2+40Xj6QI0uniL0cbCStECLik8uA4qNOitQ/w73EsvrP8us/hzd
 7jx82UdGVO80vcwpjzgoi5dUMY34PYIJZwUPV8ss=
Received: by mail-qk1-f178.google.com with SMTP id u186so8538262qkc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 10:36:34 -0700 (PDT)
X-Gm-Message-State: APjAAAVEvu3ZN7+Ex5OXkhrqKzzHw0BMOatYvcD5OeqWnWDske/T4l2p
 +idKbNB5mjtyJVkeKjxCRMWDyrQLjPVz6RfL1w==
X-Google-Smtp-Source: APXvYqxLrOssw9YrboppxecvjeDTysPUyAiqArm1DBIXe/0oTUVaz6AFg2izbbt7oMclPdk29NzrflIdhzCHlxZ4hB8=
X-Received: by 2002:a05:620a:12d5:: with SMTP id
 e21mr1318692qkl.152.1569864993590; 
 Mon, 30 Sep 2019 10:36:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-3-robh@kernel.org>
 <20190925102423.GR9720@e119886-lin.cambridge.arm.com>
 <CAL_JsqKN709cOLtDLdKXmDzeNLYtGekMT2BiZic4x45UopenwA@mail.gmail.com>
 <20190930151346.GD42880@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190930151346.GD42880@e119886-lin.cambridge.arm.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 30 Sep 2019 12:36:22 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+3S7+E+a5E122aR7s0a9SxkMyxw2t=OkO4pS5QUR+0CA@mail.gmail.com>
Message-ID: <CAL_Jsq+3S7+E+a5E122aR7s0a9SxkMyxw2t=OkO4pS5QUR+0CA@mail.gmail.com>
Subject: Re: [PATCH 02/11] PCI: altera: Use pci_parse_request_of_pci_ranges()
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_103635_590095_26B2ADB3 
X-CRM114-Status: GOOD (  26.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 PCI <linux-pci@vger.kernel.org>, rfi@lists.rocketboards.org,
 Bjorn Helgaas <bhelgaas@google.com>, Ley Foon Tan <lftan@altera.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 10:13 AM Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Wed, Sep 25, 2019 at 07:33:35AM -0500, Rob Herring wrote:
> > On Wed, Sep 25, 2019 at 5:24 AM Andrew Murray <andrew.murray@arm.com> wrote:
> > >
> > > On Tue, Sep 24, 2019 at 04:46:21PM -0500, Rob Herring wrote:
> > > > Convert altera host bridge to use the common
> > > > pci_parse_request_of_pci_ranges().
> > > >
> > > > Cc: Ley Foon Tan <lftan@altera.com>
> > > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > > > Cc: rfi@lists.rocketboards.org
> > > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > > ---
> >
> > > > @@ -833,9 +800,8 @@ static int altera_pcie_probe(struct platform_device *pdev)
> > > >               return ret;
> > > >       }
> > > >
> > > > -     INIT_LIST_HEAD(&pcie->resources);
> > > > -
> > > > -     ret = altera_pcie_parse_request_of_pci_ranges(pcie);
> > > > +     ret = pci_parse_request_of_pci_ranges(dev, &pcie->resources,
> > >
> > > Does it matter that we now map any given IO ranges whereas we didn't
> > > previously?
> > >
> > > As far as I can tell there are no users that pass an IO range, if they
> > > did then with the existing code the probe would fail and they'd get
> > > a "I/O range found for %pOF. Please provide an io_base pointer...".
> > > However with the new code if any IO range was given (which would
> > > probably represent a misconfiguration), then we'd proceed to map the
> > > IO range. When that IO is used, who knows what would happen.
> >
> > Yeah, I'm assuming that the DT doesn't have an IO range if IO is not
> > supported. IMO, it is not the kernel's job to validate the DT.
>
> Sure. Is it worth mentioning in the commit message this subtle change
> in behaviour?

Will do.

> > > I wonder if there is a better way for a host driver to indicate that
> > > it doesn't support IO?
> >
> > We can probably test for this in the schema.
> >
> > ranges:
> >   items:
> >     minItems: 7
> >     items:
> >       - not: { const: 0x01000000 }
> >
> > Or "- enum: [ 0x42000000, 0x02000000 ]"
> >
> > Of course, in theory, the bus, dev, fn fields could be non-zero and we
> > could use minium/maximum to handle those, but in practice I think they
> > are rarely used for FDT.
>
> Many controllers also appear to set the top bit (relocatable), e.g.
> 0x82000000...

That begs the question how many should set the relocatable bit and don't...

Anyways, it's still a smallish set of possible values and worthwhile
to describe which ones a controller supports.

> At present there are no PCI bindings that use the YAML schema, if I've
> understood correctly.

Probably so, there has been at least one under review. Intel LGM IIRC.
We do need a common PCI schema too. Hopefully someone beats me to it.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
