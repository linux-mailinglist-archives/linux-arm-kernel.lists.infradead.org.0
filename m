Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33513186AF3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 13:33:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JxfkvNPxLHD6XAIVqQCja6sFqChHfr0PLWYm8yhe/eg=; b=OHgM4oph9fONlZ
	6AgIhL7FvN4QgsOE7Y6Ad/gDzW1vG+EeTa963MmVNa18blQ2N+f1lp8ibTftvP+0tdUSl1csns2oS
	LKIEgZhPulK0Nz1AcG53xEAv5e20vQp15nNXMAoU2dFylG6TRuP0iO3rMjsfjXOlOv3TB3LWDZyQD
	Nt9EExP/zER5kwAGv68tS75d23O3TArkenpQDjuqau9cjOaFMtNAlSf/33otGETRrxaIT7TIH+hOX
	JfxHCjeM3vOBRD4mmsfBFRNZxWl/Tly/JjHmM9AplxYK/MUXrMFVhvo2z8xWhqqCiKYqUD6/deK4f
	KoWxEUS7jAU/tHxx+oQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDowJ-00060T-9p; Mon, 16 Mar 2020 12:33:51 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDow9-0005z8-Kv; Mon, 16 Mar 2020 12:33:43 +0000
Received: by mail-ot1-x344.google.com with SMTP id 111so17555312oth.13;
 Mon, 16 Mar 2020 05:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iU3FB0SyhngQVmNrB57sk80xf7jnFSDISDtNBOMq4Po=;
 b=Ho0aqwmb57ckxndR0nOlrJQQHdA2mJXB5YlwQQJnhKoJXqfcCp/6i4urvKVTyqUldz
 YbwtSkfbmHa2xl1j+qFKiM91ZBRZFyhjhBCe6r6LOMQ8BiL6PEDO+hHk8HlOQfTPnkch
 PfwZ4LoeKANmdvkQ87t5uFKZPMfXDxOsY8wpt2rdYr4zyt1KLSI2J3zFgWHpQaoD2gE4
 3xoE349tRVoJbH4NH8iqDyBEWdbxpGRp5jDY7EwAqIVIG8uMmXhR3T95mbtgBsJlGaOW
 lREaLGHlkUH+o9KybZIh3UGZw+I9Z+TFpELjB5Hc/dXxVC43ew+jXucZoJ87CxVYAgUE
 doww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iU3FB0SyhngQVmNrB57sk80xf7jnFSDISDtNBOMq4Po=;
 b=DNPJT8RX0NoHu4GqoNfZ99RqA5jmk+HUSozcTSt6+OQhcIgoOFyOOQcc9m0zQxNiYI
 hN11TDDgYkaJSFN59YS5LEm3TQt9m5C6j52u3LMnYrv7ScR7+HV6pD0GIv9/md9Pw3vx
 Q5QButN9RtHLYrxAakBhIhLEjdKoQDz83dO1uzeZAQj2nPQ3lJ/l/zCSnUfbI8iEbgsF
 pv2gau+xFpeNjO9g6XvoM3SxAMrP4UQHor7oNUlHYAs9Wwja+VkVaz+oHmmsE+2FruCF
 WYdP4hb3W2EA/H3s5T9Ps0otdQZC/er+xoG1wD2vLOplcon/MmcwnDh2wCgfajCrli33
 AZnQ==
X-Gm-Message-State: ANhLgQ2tZclrlAw3AdUHDAg46sLjMglNh2zVzmRwg0nQwi/Nrp3ruYpT
 zsMyca6T1kYLSNfz1VhI0DdkXR7/4WVEDS5F1xw=
X-Google-Smtp-Source: ADFU+vunioe+QWKw8j1Bl+f35z1EgNbIWiFK9X1ZpyeZAg5Og09WtiPgTXrhXd8gSYgqrBjQUh+ilgczIyEUJvIUgog=
X-Received: by 2002:a05:6830:20c9:: with SMTP id
 z9mr22360874otq.44.1584362018759; 
 Mon, 16 Mar 2020 05:33:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CA+V-a8vchrpa-1N1J+yVdo6-3zouOHX6=G4epWm68yirPirzag@mail.gmail.com>
 <20200316121859.GB5043@e121166-lin.cambridge.arm.com>
In-Reply-To: <20200316121859.GB5043@e121166-lin.cambridge.arm.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 16 Mar 2020 12:33:12 +0000
Message-ID: <CA+V-a8tEty80_XsU2qhmxLVWXnsfv3PE+ZiVfw+jrcOJXTwr6A@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] Add support for PCIe controller to work in
 endpoint mode on R-Car SoCs
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_053341_683946_8469C986 
X-CRM114-Status: GOOD (  21.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Will Deacon <will@kernel.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 LAK <linux-arm-kernel@lists.infradead.org>, Jingoo Han <jingoohan1@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lorenzo,

On Mon, Mar 16, 2020 at 12:19 PM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Fri, Mar 13, 2020 at 03:46:42PM +0000, Lad, Prabhakar wrote:
> > Hi Bjorn/Kishon,
> >
> > On Fri, Feb 28, 2020 at 3:41 PM Lad Prabhakar
> > <prabhakar.csengg@gmail.com> wrote:
> > >
> > > This patch series adds support for PCIe controller on rcar to work in
> > > endpoint mode, this also extends the epf framework to handle base region
> > > for mapping PCI address locally.
> > >
> > > Note:
> > > The cadence/rockchip/designware endpoint drivers are build tested only.
> > >
> > > Changes for v5:
> > > 1] Rebased the patches on next branch of https://git.kernel.org/pub/scm/
> > >    linux/kernel/git/helgaas/pci.git
> > > 2] Fixed review comments reported by Kishon while fetching the matching
> > >    window in function pci_epc_get_matching_window()
> > > 3] Fixed review comments reported by Bjorn
> > >    a] Split patch up first patch so that its easier to review and incremental
> > >    b] Fixed typos
> > > 4] Included Reviewed tag from Rob for the dt-binding patch
> > > 5] Fixed issue reported by Nathan for assigning variable to itself
> > >
> > > Changes for v4:
> > > 1] Fixed dtb_check error reported by Rob
> > > 2] Fixed review comments reported by Kishon
> > >    a] Dropped pci_epc_find_best_fit_window()
> > >    b] Fixed initializing mem ptr in __pci_epc_mem_init()
> > >    c] Dropped map_size from pci_epc_mem_window structure
> > >
> > > Changes for v3:
> > > 1] Fixed review comments from Bjorn and Kishon.
> > > 3] Converted to DT schema
> > >
> > > Changes for v2:
> > > 1] Fixed review comments from Biju for dt-bindings to include an example
> > >    for a tested platform.
> > > 2] Fixed review comments from Kishon to extend the features of outbound
> > >    regions in epf framework.
> > > 3] Added support to parse outbound-ranges in OF.
> > >
> > > Lad Prabhakar (7):
> > >   PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
> > >   PCI: rcar: Move shareable code to a common file
> > >   PCI: rcar: Fix calculating mask for PCIEPAMR register
> > >   PCI: endpoint: Add support to handle multiple base for mapping
> > >     outbound memory
> > >   dt-bindings: PCI: rcar: Add bindings for R-Car PCIe endpoint
> > >     controller
> > >   PCI: rcar: Add support for rcar PCIe controller in endpoint mode
> > >   misc: pci_endpoint_test: Add Device ID for RZ/G2E PCIe controller
> > >
> > Gentle ping.
>
> You should ask the R-CAR maintainers first to have a look at your
> code and ACK accordingly.
>
Thanks I have pinged the R-CAR maintainers to do the needy.

Cheers,
--Prabhakar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
