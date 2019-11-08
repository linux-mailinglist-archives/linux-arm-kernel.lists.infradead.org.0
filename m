Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EABFF4243
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 09:37:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uj07q/tINmjI5VpCMUX7MVthIUk/Mr0t+pazfKCHYH4=; b=UhyeCfs7HYj4U9
	dD8zZDUQbeUiknxaaj1G6PlhcBxuNps6kxGARvbPLxTutryUKyxy9dzNO2ShUu3X+eVFVHIZB6Woq
	W6CfZzkgy5JUQGDf47erCRV4jdEis47e8u2T8j1fY1d42Zh7O/OgYudKHXxrlU7XUfs8D6rImzL/R
	NOPrGJTUv5VDt9SyltnUxUZWHIBv7BjcVrGWxviwsh7c6kxKubIs7IjeFnesJOkheuuaZKzTO04gB
	sJ2uv9xCxsPX7J+mNXCvF3grZGA8V5EIUKpoT+If1MhVDKw6eHKRiGXGH3NeekzzX8uN/icTVRJxc
	YrWNN2YHf8Ox89RnHL3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSzle-0001OW-3V; Fri, 08 Nov 2019 08:37:18 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSzlU-0001Ng-MQ
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 08:37:10 +0000
Received: by mail-oi1-f196.google.com with SMTP id j7so4576681oib.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 00:37:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y06rTA9jyJ3Mxb7FOxzfvb/JyrQ6mJjiIx0NSmTLT3w=;
 b=Eu5NHHlTTJqYyjT1yY59TsIqqSkmv2aPqiS5Gsnv3sooW3/7TPjebq35hroS6laAPF
 T4b7ry3Juz19KggYlQHAwHYF1/2mHxBwCQ7rCMKqVfccICj/TdHVT1Watbi7tqPb3eS6
 cI7BhFvJXOqE40M+T66pufAt9EljjIwrezlEn9XVqHCuhbbSP5oC3yqfXCC3NfH/Ojkt
 hfr3ajurbrDIwW5rIjBnmoXYmBRpw8QacNGEJVdAHEyUPPtxdGJBMX3ROcC4XxpO9uTP
 J+Mko4yrXvYRr/Ax+Omn1DX31JdTZnkvrmHnbAnAWGJq7ZfsicDprahasV34bAdRSCYh
 I1nQ==
X-Gm-Message-State: APjAAAVpiOga+aN0lGh+1d0S5GFTfEzENnS1utlaR13G7aRa59M0KmRr
 SmOl4Ypco8tRGztBAdR8cZbpV4c6WMkf7RodeqU=
X-Google-Smtp-Source: APXvYqw443xjtR/GhQGqZswNAQFjWLyPmQgXA4uSDYnc1ZjfU91/njipFK4I8i0EWJx17iUi7lyKc1yYaFBEyegxbZY=
X-Received: by 2002:aca:fc92:: with SMTP id a140mr7932910oii.153.1573202227574; 
 Fri, 08 Nov 2019 00:37:07 -0800 (PST)
MIME-Version: 1.0
References: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191106193609.19645-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdVZwgVnq2kwjNJQHfvUH0sk6M7Hz-AJR82jMOsCNfW9wQ@mail.gmail.com>
 <CA+V-a8swtOUaxKnCdiTV5wvvxLEJ6XdODL=7bvQmFKY0zQTj2w@mail.gmail.com>
 <CAMuHMdXkbWkQgswMNL7Dw7_jucH+MsuAW+-CjoGVYsm=tjShRw@mail.gmail.com>
 <CA+V-a8sS4gX8o__R_pHK2Otb=s_aAWbtvDLfOhAQAJb77Jz_Sw@mail.gmail.com>
In-Reply-To: <CA+V-a8sS4gX8o__R_pHK2Otb=s_aAWbtvDLfOhAQAJb77Jz_Sw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 8 Nov 2019 09:36:56 +0100
Message-ID: <CAMuHMdVDdweR5Mx+RLnKCkw0kb2J=AMsAPoFm8PVbxsY2u-EvA@mail.gmail.com>
Subject: Re: [PATCH 3/5] PCI: rcar: Add R-Car PCIe endpoint device tree
 bindings
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_003708_732207_03A6C1D5 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Thu, Nov 7, 2019 at 11:46 PM Lad, Prabhakar
<prabhakar.csengg@gmail.com> wrote:
> On Thu, Nov 7, 2019 at 8:08 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Thu, Nov 7, 2019 at 10:26 AM Lad, Prabhakar
> > <prabhakar.csengg@gmail.com> wrote:
> > > On Thu, Nov 7, 2019 at 8:44 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > On Wed, Nov 6, 2019 at 8:36 PM Lad Prabhakar <prabhakar.csengg@gmail.com> wrote:
> > > > > From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > > >
> > > > > This patch adds the bindings for the R-Car PCIe endpoint driver.
> > > > >
> > > > > Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > >
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt

> > > > > +- reg: Five register ranges as listed in the reg-names property
> > > > > +- reg-names: Must include the following names
> > > > > +       - "apb-base"
> > > > > +       - "memory0"
> > > > > +       - "memory1"
> > > > > +       - "memory2"
> > > > > +       - "memory3"
> > > >
> > > > What is the purpose of the last 4 regions?
> > > > Can they be chosen by the driver, at runtime?
> > > >
> > > no the driver cannot choose them at runtime, as these are the only
> > > PCIE memory(0/1/2/3) ranges
> > > in the AXI address space where host memory can be mapped.
> >
> > Are they fixed by the PCIe hardware, i.e. could they be looked up by the
> > driver based on the compatible value?
> >
> yes they are fixed by the PCIe hardware and could be looked up by the driver
> based on the compatible value.

Thanks, so we don't need to describe them in DT.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
