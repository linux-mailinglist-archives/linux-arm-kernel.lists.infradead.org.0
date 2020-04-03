Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0811C19D228
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 10:28:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0RRcDvQ+boKKUAMzRWHf+qn4Y4vgUguZB73SZFVwrKQ=; b=HN+2D0RM++Z7AV
	KcCOyDqJ/gDXvTV0NyUPMvSJPG+4T11UslbRsXHvKMAiJ6TEWa+fXvrfUd31vSYToT1RcAzlUueDJ
	BeXU2bY1O+ajF6nxgbtnbbIJB7mCTl+oHfg0Wb6ZmfUWeoE2AGv99nCYs3tcRFx0eMmJ9JgT7ln5Q
	DNgfV97kQwazv5X1DkBK4a2O0hErXNsb/OKFR/RUbPMchrIxY5Itkp6JlhJQkzmVjPCjHVES9AmH1
	cXi1xbciyW6nFDW9zD/4TiyxUY8OXS2ntFLUrsuzNhpkbJOgpBn6A45sBharZ62uyJeotr1FJcQdT
	sx8pkqyp0sDMaKGTH6VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKHgs-0003Z9-Rg; Fri, 03 Apr 2020 08:28:38 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKHgg-0003WQ-VH; Fri, 03 Apr 2020 08:28:28 +0000
Received: by mail-oi1-f194.google.com with SMTP id k5so5394443oiw.10;
 Fri, 03 Apr 2020 01:28:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Jd71ZkzudxX5g2IyvVUOYdKyHi8OFqEjn6IvsJ3wV7k=;
 b=qykIbR6EXA76Glt6mK1SzHqnQon//rIthEJ4vYKYSTVK0BXH0wgq2rsoPOxiW60ds+
 rZJ2TN0LsFvrBz+7uXpuRr6pqloOkivS14eWFngIR0eOitEbyOkHfvZmYMnB0i3JHvaF
 S39ja0TLKo80qbTyPAtrJWMOyZliNo8tXr+1SMN8BsNA0mAVwNzB5t4m3XLm32l/R4QM
 sjMqzF6lWSfNz8rUTRRd/t29iTHH+m7Xf0KItyFSiCTMebLr0Y7LXUQeTXjD6bkgyvcZ
 VYxfKMcNxALlUUbNoGhKhVEDmQUj9Cx1kRRZ3F5UUTkoAk4J6Nr/AOPiA1lG5wr4s+nm
 Hc1Q==
X-Gm-Message-State: AGi0PuZp6EHklQuZJ52jbqhuxSu2H5D7nwCu7fYVv8KegevA8b0RqLTH
 8e+A51SozkPc7uqqr2zeq34ZxuH+e+C26KZxAos=
X-Google-Smtp-Source: APiQypIS6fpMGxM4Q7dZQ7e1YsUy6vcUkIWwvKfW8MQ2oAPzqQO4S5tcl4AqLxJx41ERvItQuVYYFJJlh5Wv+BynmHU=
X-Received: by 2002:aca:cdd1:: with SMTP id d200mr2041353oig.153.1585902505654; 
 Fri, 03 Apr 2020 01:28:25 -0700 (PDT)
MIME-Version: 1.0
References: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1585856319-4380-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB454403D69A74036B74CC8220D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
In-Reply-To: <TYAPR01MB454403D69A74036B74CC8220D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 3 Apr 2020 10:28:13 +0200
Message-ID: <CAMuHMdVWn=U82k5RJnBaRUgRHh3bRfdncOupmX67-u-nbwsG9w@mail.gmail.com>
Subject: Re: [PATCH v6 02/11] arm64: defconfig: enable CONFIG_PCIE_RCAR_HOST
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_012827_004134_764CE090 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Chris Paterson <Chris.Paterson2@renesas.com>, Arnd Bergmann <arnd@arndb.de>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Simon Horman <horms@verge.net.au>, Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shimoda-san,

On Fri, Apr 3, 2020 at 10:03 AM Yoshihiro Shimoda
<yoshihiro.shimoda.uh@renesas.com> wrote:
> > From: Lad Prabhakar, Sent: Friday, April 3, 2020 4:39 AM
> >
> > config option PCIE_RCAR internally selects PCIE_RCAR_HOST which builds the
> > same driver. So this patch renames CONFIG_PCIE_RCAR to
> > CONFIG_PCIE_RCAR_HOST so that PCIE_RCAR can be safely dropped from Kconfig
> > file.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Thank you for the patch!
>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
>
> But, I'm thinking this patch (and patch 03/11) should be separated
> from this patch series for arm64 subsystem to ease maintenance.
> My scenario is:
>  1) patch series 1: R-Car PCIe endpoint support.
>  -- This means: patch 1, 4 - 9, 11
>
>  2) After the patch series 1 is merged, submit this patch 2/11 to arm subsystem
>    and submit the patch 10/11 to misc subsystem.
>
>  3) At last, submit patch 3/11 after the patch 2/11 is merged.
>
> Geert-san, what do you think?

Thanks, I agree with your summary.

I can take patch 2/11 through renesas-devel.
Probably it's best if I submit it to arm-soc as a fix for v5.8, after
the driver part
has been merged into v5.8-rc1, so 3/11 can be submitted for v5.9.

BTW, I'm wondering about "[PATCH v6 05/11] PCI: rcar: Fix calculating
mask for PCIEPAMR register". Can the issue fixed by this patch happen with
the current driver in host mode, or is that limited to ep mode?
In case of the former, please submit it to the PCI maintainer as a separate
fix.

Thanks!

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
