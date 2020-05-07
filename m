Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DDD1C8380
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 09:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8Deb/pmwk4UUeIxvp2lwfL0B2Q0lsSoARdeonOz8YE=; b=OhEat26wHFdeTg
	57G4QyKHa/9hHFLoo37+JLIiwR+Vmdn0q4OeEDY2jPb2yvQAe41tvP0U4y0dh6RZI2ujhIQUK0Hx+
	pEt/Z9DFJdL70dWod8q0EqPVT3J6LcSVPyx/1Zn7Qkv/dcwxAk8JIHIH4iVzx1ochldTSciTI2hQl
	ZV9T21eBpAIcHrEcJO3chCAsJgM/a8w7h9oP5Gna02Argn3ZwQbTLJBEcJwagU2NeHKo867MD5tdf
	BvJlw2QBHLTi/CM8k8zN1qyZW9+FQxpTpDHDmW5GH6fuTbrRp4ula99IDU7R+Dfoaju2VtWbrM1TR
	ADijcSbwh2EN+2EA40ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWb3v-0001Gu-ND; Thu, 07 May 2020 07:35:19 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWb3k-00005k-0m; Thu, 07 May 2020 07:35:10 +0000
Received: by mail-oi1-x242.google.com with SMTP id k133so4170756oih.12;
 Thu, 07 May 2020 00:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+wVwkPQzOTVq/AWyOPiAoZlhc4kNjx95ZvziB30jVJ8=;
 b=FYCUwPewljyyj59tiYv8gMJoE0hag/z+rDLm2eUUGxhRwNKlYbJPv4qsrGp59eIi6b
 ShnNwk2PS9fuspNpjjPQE471ZMSOQ8PQl72OCoSp+0zX610tmEFZwSyzxTY2scipxukd
 /OAJ5WXUzwHjD2tlTWvCHW2e9w/GhMfLwnoXAAiRxzu4k1f0WIGd1guL3Wdqux5tDkxA
 s+GGuNu7R1pbx8t6cjTvUoA0MzRxRQrJQRrHo5+6vpvVwCpgiu1ARN/VKBLutlijzZ8f
 2SijxOKy+9LIyAG79I7gbYMzDhxSSOaEXZKrHAPP6+Png7L7l9I1oz8IX1AuDVfXXWpR
 EgfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+wVwkPQzOTVq/AWyOPiAoZlhc4kNjx95ZvziB30jVJ8=;
 b=rbt5IQlBg2IrNtmOlQw3NYXY1P/x3WkAncVFtZf8h6Qqeg4XN6ppLovredKG5VnFOO
 Oj9svd/EdiWRao13O7HniamrJ1/PJR2k5nlNpgTdcr7Nn0phiYwuRHPMc46iwJbT0h48
 3PYZsq2XIj7+WkTZsgpXvYe6w3f+RHALuTOHKgQDnHKlNI45NKoT8XlnQ/9wOIHwkVc1
 tVNF/vGaze/+Yu3xk22/IZ7qeqt20kHIDt/hX+w1nKWOrNMczpdOkqprgm4BrKVqMBfN
 YV7CDUDkfs8VKrtVEnDLUT6NPhxhKUQ1oAjJTsqiuOzes0nt3MKi6OM//LfQccQFPxbP
 a5aA==
X-Gm-Message-State: AGi0PubWSEg1rxrp51TXYJCAYM5yol1ZFidA6mGCHmsrwJyxyawJBpWx
 GGDx6xFkc0uNoOivmY+dPyDNCBd2vgoR3vuYcLU=
X-Google-Smtp-Source: APiQypKOSIm1aR82AObDwuPZBddTW8k74JVNFIfdNzDQXmtDEGhGXLW5ztKy0kmgTk3pPpEON6zFp3FGsI7I07Yc+mA=
X-Received: by 2002:a05:6808:5c5:: with SMTP id d5mr5777271oij.8.1588836906362; 
 Thu, 07 May 2020 00:35:06 -0700 (PDT)
MIME-Version: 1.0
References: <1587666159-6035-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CA+V-a8u1rEF1DMAVkZ1=-d_MjLa_49X2Nny_VaEN0Y398GOJhw@mail.gmail.com>
 <20200505094416.GA12543@e121166-lin.cambridge.arm.com>
 <CA+V-a8t2iVNsWnc4ekwkAKAnLx5Mzc+chWnzsi3kuXRrJv34+A@mail.gmail.com>
 <73b446db-9bfa-eb50-96c8-865b9b79c7e4@ti.com>
In-Reply-To: <73b446db-9bfa-eb50-96c8-865b9b79c7e4@ti.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 7 May 2020 08:34:40 +0100
Message-ID: <CA+V-a8vrkgZG5vZG7PwGH1Oq0KmTE1E5=2+3w2t5KX9mvV42fQ@mail.gmail.com>
Subject: Re: [PATCH v9 0/8] Add endpoint driver for R-Car PCIe controller
To: Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_003508_123546_55D5744B 
X-CRM114-Status: GOOD (  28.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jingoo Han <jingoohan1@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci <linux-pci@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kishon,

On Thu, May 7, 2020 at 4:13 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Hi Prabhakar,
>
> On 5/5/2020 3:17 PM, Lad, Prabhakar wrote:
> > Hi Lorenzo,
> >
> > On Tue, May 5, 2020 at 10:44 AM Lorenzo Pieralisi
> > <lorenzo.pieralisi@arm.com> wrote:
> >>
> >> On Thu, Apr 30, 2020 at 09:43:20AM +0100, Lad, Prabhakar wrote:
> >>> Hi Kishon,
> >>>
> >>> On Thu, Apr 23, 2020 at 7:23 PM Lad Prabhakar
> >>> <prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> >>>>
> >>>> Hi All,
> >>>>
> >>>> This patch series adds support for endpoint driver for R-Car PCIe controller on
> >>>> R-Car/RZ-G2x SoC's, this also extends the epf framework to handle multiple windows
> >>>> supported by the controller for mapping PCI address locally.
> >>>>
> >>>> Note:
> >>>> The cadence/rockchip/designware endpoint drivers are build tested only.
> >>>>
> >>>> Changes for v9 (Re-spun this series as there were minimal changes requested):
> >>>> * Rebased patches on top of v5.7.rc1
> >>>> * Replaced mdelay(1) with usleep_range(1000, 1001) in rcar_pcie_ep_assert_intx()
> >>>> * Added a check for max_functions read from DT to restrict with
> >>>>   RCAR_EPC_MAX_FUNCTIONS
> >>>> * Replaced MSICAP0_MMENUM with MSICAP0_MMESE
> >>>> * Retry ioremap for other windows on failure in pci_epc_mem_alloc_addr()
> >>>> * Fixed looping for number windows in pci_epc_mem_exit()
> >>>> * Set maximum to 1 for max-functions in DT binding (I have restored the acks
> >>>>   from  Rob and Shimoda-san)
> >>>> * Sorted the entry in MAINTAINERS
> >>>>
> >>>> Changes for v8:
> >>>> * Dropped adding R8A774C0 (0x002d) pci-id in pci_ids.h
> >>>> * Fixed typo in commit message for patch 2/8
> >>>> * Reworded commit message for patch 5/8 as suggested by Bjorn
> >>>> * Split up patch to add pci_epc_mem_init() interface to add page_size argument
> >>>>   as suggested by Bjorn.
> >>>>
> >>>> Changes for v7:
> >>>> * Fixed review comments pointed by Shimoda-san
> >>>>   1] Made DT bindings dual licensed, added Shimoda-san as maintainer and fixed
> >>>>      the example as its built with #{address,size}-cells = <1>. I have still
> >>>>      restored the Ack from Rob and Shimoda-san with these changes.
> >>>>   2] Split up the patches so that they can be picked up by respective subsystem
> >>>>      patches 1/4-9/11 are now part of this series.
> >>>>   3] Dropped altering a comment in pci-epc.h
> >>>>   4] Used a local variable align_size in pci_epc_mem_alloc_addr() so that size
> >>>>      variable doesn't get overwritten in the loop.
> >>>>   5] Replaced i-=1 with i--
> >>>>   6] Replaced rcar with R-Car in patch subject and description.
> >>>>   7] Set MACCTLR in init() callback
> >>>>
> >>>> Changes for v6:
> >>>> 1] Rebased patches on endpoint branch of https://git.kernel.org/pub/
> >>>>    scm/linux/kernel/git/lpieralisi/pci.git/
> >>>> 2] Fixed review comments from Shimoda-san
> >>>>    a] Made sure defconfig changes were in separate patch
> >>>>    b] Created rcar_pcie_host/rcar_pcie_ep structures
> >>>>    c] Added pci-id for R8A774C0
> >>>>    d] Added entry in MAINTAINERS for dt-binding
> >>>>    e] Dropped unnecessary braces
> >>>> 3] Added support for msi.
> >>>>
> >>>> Changes for v5:
> >>>> 1] Rebased patches on next branch of https://git.kernel.org/pub/scm/
> >>>>    linux/kernel/git/helgaas/pci.git
> >>>> 2] Fixed review comments reported by Kishon while fetching the matching
> >>>>    window in function pci_epc_get_matching_window()
> >>>> 3] Fixed review comments reported by Bjorn
> >>>>    a] Split patch up first patch so that its easier to review and incremental
> >>>>    b] Fixed typos
> >>>> 4] Included Reviewed tag from Rob for the dt-binding patch
> >>>> 5] Fixed issue reported by Nathan for assigning variable to itself
> >>>>
> >>>> Changes for v4:
> >>>> 1] Fixed dtb_check error reported by Rob
> >>>> 2] Fixed review comments reported by Kishon
> >>>>    a] Dropped pci_epc_find_best_fit_window()
> >>>>    b] Fixed initializing mem ptr in __pci_epc_mem_init()
> >>>>    c] Dropped map_size from pci_epc_mem_window structure
> >>>>
> >>>> Changes for v3:
> >>>> 1] Fixed review comments from Bjorn and Kishon.
> >>>> 3] Converted to DT schema
> >>>>
> >>>> Changes for v2:
> >>>> 1] Fixed review comments from Biju for dt-bindings to include an example
> >>>>    for a tested platform.
> >>>> 2] Fixed review comments from Kishon to extend the features of outbound
> >>>>    regions in epf framework.
> >>>> 3] Added support to parse outbound-ranges in OF.
> >>>>
> >>>> Lad Prabhakar (8):
> >>>>   PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
> >>>>   PCI: rcar: Move shareable code to a common file
> >>>>   PCI: rcar: Fix calculating mask for PCIEPAMR register
> >>>>   PCI: endpoint: Pass page size as argument to pci_epc_mem_init()
> >>>>   PCI: endpoint: Add support to handle multiple base for mapping
> >>>>     outbound memory
> >>> Could you please do the needy for the above two patches, so that this
> >>> can be picked up by Lorenzo.
> >>
> >> Yes please. I would kindly ask you to rebase it on top of my
> >> pci/rcar branch - with Kishon's ACK when provided.
> >>
> > Sure will do that as soon as I get Kishon's Ack.
>
> I've given my Acked by on the two endpoint core patches. I've also tested my
> endpoint series [1] after applying this series.
>
Thank you for testing and the Ack's.

Cheers,
--Prabhakar

> Thanks
> Kishon
>
> [1] -> http://lore.kernel.org/r/20200506151429.12255-1-kishon@ti.com
> >
> > Cheers,
> > --Prabhakar
> >
> >> Thanks,
> >> Lorenzo
> >>
> >>> Cheers,
> >>> --Prabhakar
> >>>
> >>>>   dt-bindings: PCI: rcar: Add bindings for R-Car PCIe endpoint
> >>>>     controller
> >>>>   PCI: rcar: Add endpoint mode support
> >>>>   MAINTAINERS: Add file patterns for rcar PCI device tree bindings
> >>>>
> >>>>  .../devicetree/bindings/pci/rcar-pci-ep.yaml  |   77 ++
> >>>>  MAINTAINERS                                   |    1 +
> >>>>  drivers/pci/controller/Kconfig                |   18 +
> >>>>  drivers/pci/controller/Makefile               |    3 +-
> >>>>  .../pci/controller/cadence/pcie-cadence-ep.c  |    2 +-
> >>>>  .../pci/controller/dwc/pcie-designware-ep.c   |   16 +-
> >>>>  drivers/pci/controller/pcie-rcar-ep.c         |  557 ++++++++
> >>>>  drivers/pci/controller/pcie-rcar-host.c       | 1065 +++++++++++++++
> >>>>  drivers/pci/controller/pcie-rcar.c            | 1206 +----------------
> >>>>  drivers/pci/controller/pcie-rcar.h            |  140 ++
> >>>>  drivers/pci/controller/pcie-rockchip-ep.c     |    2 +-
> >>>>  drivers/pci/endpoint/pci-epc-mem.c            |  204 ++-
> >>>>  include/linux/pci-epc.h                       |   38 +-
> >>>>  13 files changed, 2078 insertions(+), 1251 deletions(-)
> >>>>  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
> >>>>  create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
> >>>>  create mode 100644 drivers/pci/controller/pcie-rcar-host.c
> >>>>  create mode 100644 drivers/pci/controller/pcie-rcar.h
> >>>>
> >>>> --
> >>>> 2.17.1
> >>>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
