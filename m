Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC6DD7425
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 13:03:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uIJyL/MCl9g962TqkcttKMzCRRxNtjnlCqleU1vpbls=; b=R+kKrw1HJyeTiL
	1rSy/ltkOFKye1ZCXhMUK5SP+4yCJms1YfPzhQpfQlXBFZFle8NaCrWSGbV/OSyYnxpTwKQ8pcp5I
	ghO8Q28DOqUyk+h0lOt36AuChkNTVsB5SfgK0KiRHK2uwHozPdkvYf5sUJjFXTWSXKOeB0Cr17JBs
	HPeYUPxoT+DXOapvsynZxlTbtF/tsMU2OqXlCiHAoFWLCRqqCoxaqOhqhAU6vdtbeYI8ODyKMRGqz
	GjagIoMh7fHRrI2Pp7kYKT3aKlWiKrZPI+fiuWoNcjSCdGnz6iQELlH0Wu0j7BtXXsebvAJoBEi8p
	1Y8djA9omlDMudm4bRrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKbd-00035T-Tt; Tue, 15 Oct 2019 11:03:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKbW-00034O-9G
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 11:03:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D119A28;
 Tue, 15 Oct 2019 04:02:59 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CED563F68E;
 Tue, 15 Oct 2019 04:02:58 -0700 (PDT)
Date: Tue, 15 Oct 2019 12:02:54 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 02/11] PCI: altera: Use pci_parse_request_of_pci_ranges()
Message-ID: <20191015110254.GA5160@e121166-lin.cambridge.arm.com>
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-3-robh@kernel.org>
 <20190925102423.GR9720@e119886-lin.cambridge.arm.com>
 <CAL_JsqKN709cOLtDLdKXmDzeNLYtGekMT2BiZic4x45UopenwA@mail.gmail.com>
 <20190930151346.GD42880@e119886-lin.cambridge.arm.com>
 <CAL_Jsq+3S7+E+a5E122aR7s0a9SxkMyxw2t=OkO4pS5QUR+0CA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+3S7+E+a5E122aR7s0a9SxkMyxw2t=OkO4pS5QUR+0CA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_040302_367032_D1E2583F 
X-CRM114-Status: GOOD (  20.86  )
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
Cc: PCI <linux-pci@vger.kernel.org>, rfi@lists.rocketboards.org,
 Ley Foon Tan <lftan@altera.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 12:36:22PM -0500, Rob Herring wrote:
> On Mon, Sep 30, 2019 at 10:13 AM Andrew Murray <andrew.murray@arm.com> wrote:
> >
> > On Wed, Sep 25, 2019 at 07:33:35AM -0500, Rob Herring wrote:
> > > On Wed, Sep 25, 2019 at 5:24 AM Andrew Murray <andrew.murray@arm.com> wrote:
> > > >
> > > > On Tue, Sep 24, 2019 at 04:46:21PM -0500, Rob Herring wrote:
> > > > > Convert altera host bridge to use the common
> > > > > pci_parse_request_of_pci_ranges().
> > > > >
> > > > > Cc: Ley Foon Tan <lftan@altera.com>
> > > > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > > > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > > > > Cc: rfi@lists.rocketboards.org
> > > > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > > > ---
> > >
> > > > > @@ -833,9 +800,8 @@ static int altera_pcie_probe(struct platform_device *pdev)
> > > > >               return ret;
> > > > >       }
> > > > >
> > > > > -     INIT_LIST_HEAD(&pcie->resources);
> > > > > -
> > > > > -     ret = altera_pcie_parse_request_of_pci_ranges(pcie);
> > > > > +     ret = pci_parse_request_of_pci_ranges(dev, &pcie->resources,
> > > >
> > > > Does it matter that we now map any given IO ranges whereas we didn't
> > > > previously?
> > > >
> > > > As far as I can tell there are no users that pass an IO range, if they
> > > > did then with the existing code the probe would fail and they'd get
> > > > a "I/O range found for %pOF. Please provide an io_base pointer...".
> > > > However with the new code if any IO range was given (which would
> > > > probably represent a misconfiguration), then we'd proceed to map the
> > > > IO range. When that IO is used, who knows what would happen.
> > >
> > > Yeah, I'm assuming that the DT doesn't have an IO range if IO is not
> > > supported. IMO, it is not the kernel's job to validate the DT.
> >
> > Sure. Is it worth mentioning in the commit message this subtle change
> > in behaviour?
> 
> Will do.

Hi Rob,

I would like to merge this series, are you resending it ? It does not
apply to v5.4-rc1, if you rebase it please also update this patch
log, as per comments above (I can do it too but if you resend it
there is no point).

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
