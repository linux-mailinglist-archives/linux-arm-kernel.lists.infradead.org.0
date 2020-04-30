Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6201BF335
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GeMuVEqaNnH+oI8RgGsuNWjW3alMjQS1UruHjCINT4w=; b=J3KYk5i1uXq5rJ
	73wCyU9jeIktmpx8Vyg401cqkEHWTkBNDhvNrZaZtxcrO8owf9RVVHB0UprRun+CP1pbohBhaedfh
	f2B8jhhQ5naZoXQEuRJjUBCn2RQFpzP1a2VFA7FoIzg54AmVkAU4o6c2gg5zO2tBJR0i+UFMUpC/M
	fOg6tsQ0m3Gyw1kPpdJK2rvLL4fNCJ2bemW5kOv+fzszowPtqiGMSWqaHx8/UTdcGT9SEIG3t+PJe
	Dq9OAqWFZs1aG0EB2/HsP4qM7710X/0us62nHw2XuIvXVtNw9NC9yLnaKDhysTfKPCRBeRcEmM2eU
	mTx5GDrS7VMBgTnhcUrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4nd-00033E-4p; Thu, 30 Apr 2020 08:44:05 +0000
Received: from mail-oo1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4nM-00030q-1c; Thu, 30 Apr 2020 08:43:49 +0000
Received: by mail-oo1-xc43.google.com with SMTP id t12so1103862oot.2;
 Thu, 30 Apr 2020 01:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RJfi8YEQRUQ7Nx9/zDtTwBKV3TKprwuNVW7KwyjiUoc=;
 b=e7I7Q+7VKNBFCc1ou225/A0eOoID6/aWYUAFnRX/+iDZKw7DSHwIPwW1x5AgKniBbb
 jjiRPiLT0bfCFJCEIeXzYQaLiByhMHFrojdlukrxCxJHfJvRxD2JLRwY0Kw4GcWzKgpv
 KyJIdFjDrHQsaWD3gm7ISrflX9rpalM8JsR1CWNzYHpTtOI+KW0+JOQR8C+opcFQXjF6
 S/c6OobDxj2DTU96pUr/bL0pQIjEijtQXxGdF8RHIG5kuPZ4fALdJeOBf6CUQYRwB8+l
 wjZc0cjh7D9rXMdwkVPY5DweLztFSz83g67f1JnSombDq/ads5UK12j7sNeq5Hwuqqsr
 8JFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RJfi8YEQRUQ7Nx9/zDtTwBKV3TKprwuNVW7KwyjiUoc=;
 b=aVB111ysl77RLwk6PYFp75REgHa2DDKv/vdjtMs7oUr2VZYHJkppu99fKz606aqlvo
 /lFSWjrMgOKt6zSWrZeCIEyD3JliEbcf87nOq1TOs1lUxHvQ5P8gshdL7NrDuBQp8TIR
 A/AEtGFmyvh2Gm42c1NDBYsY/KRtJ59ISmy/oPfFQR9FFHzBcpvcU3SDSJgwN4MqWLQr
 2UvjmTfmsafF1gxbeUNHIHwyX4t/0kH3f67pPmoBtoXouMVN+trQoDmyavD5i71YI2/+
 WUi8+GoWD/Mhni/Ab8HPXvpYL6+4osmwKB8FzqUCsFQA81aTsRvlc0xRWKulKYmxMP5W
 exDQ==
X-Gm-Message-State: AGi0PuZBfufD23sv/i70bvWV4FM7ajftBNPgDhtxmUm233h2PwqwNBBN
 Fx7t/6bWMBIc2WKrXAQqWZvqFB9X6285DykewYA=
X-Google-Smtp-Source: APiQypLSZyNqZBc6As1bQvkl0M72z9Bu+wI/WiD4xkyor99UzGV3HeSXzgXCRuS0Ua8uSVnQTYGN2BiezF0okRKwwuY=
X-Received: by 2002:a4a:a209:: with SMTP id m9mr1879725ool.62.1588236226990;
 Thu, 30 Apr 2020 01:43:46 -0700 (PDT)
MIME-Version: 1.0
References: <1587666159-6035-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1587666159-6035-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 30 Apr 2020 09:43:20 +0100
Message-ID: <CA+V-a8u1rEF1DMAVkZ1=-d_MjLa_49X2Nny_VaEN0Y398GOJhw@mail.gmail.com>
Subject: Re: [PATCH v9 0/8] Add endpoint driver for R-Car PCIe controller
To: Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_014348_117307_83B56F62 
X-CRM114-Status: GOOD (  24.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, Apr 23, 2020 at 7:23 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
>
> Hi All,
>
> This patch series adds support for endpoint driver for R-Car PCIe controller on
> R-Car/RZ-G2x SoC's, this also extends the epf framework to handle multiple windows
> supported by the controller for mapping PCI address locally.
>
> Note:
> The cadence/rockchip/designware endpoint drivers are build tested only.
>
> Changes for v9 (Re-spun this series as there were minimal changes requested):
> * Rebased patches on top of v5.7.rc1
> * Replaced mdelay(1) with usleep_range(1000, 1001) in rcar_pcie_ep_assert_intx()
> * Added a check for max_functions read from DT to restrict with
>   RCAR_EPC_MAX_FUNCTIONS
> * Replaced MSICAP0_MMENUM with MSICAP0_MMESE
> * Retry ioremap for other windows on failure in pci_epc_mem_alloc_addr()
> * Fixed looping for number windows in pci_epc_mem_exit()
> * Set maximum to 1 for max-functions in DT binding (I have restored the acks
>   from  Rob and Shimoda-san)
> * Sorted the entry in MAINTAINERS
>
> Changes for v8:
> * Dropped adding R8A774C0 (0x002d) pci-id in pci_ids.h
> * Fixed typo in commit message for patch 2/8
> * Reworded commit message for patch 5/8 as suggested by Bjorn
> * Split up patch to add pci_epc_mem_init() interface to add page_size argument
>   as suggested by Bjorn.
>
> Changes for v7:
> * Fixed review comments pointed by Shimoda-san
>   1] Made DT bindings dual licensed, added Shimoda-san as maintainer and fixed
>      the example as its built with #{address,size}-cells = <1>. I have still
>      restored the Ack from Rob and Shimoda-san with these changes.
>   2] Split up the patches so that they can be picked up by respective subsystem
>      patches 1/4-9/11 are now part of this series.
>   3] Dropped altering a comment in pci-epc.h
>   4] Used a local variable align_size in pci_epc_mem_alloc_addr() so that size
>      variable doesn't get overwritten in the loop.
>   5] Replaced i-=1 with i--
>   6] Replaced rcar with R-Car in patch subject and description.
>   7] Set MACCTLR in init() callback
>
> Changes for v6:
> 1] Rebased patches on endpoint branch of https://git.kernel.org/pub/
>    scm/linux/kernel/git/lpieralisi/pci.git/
> 2] Fixed review comments from Shimoda-san
>    a] Made sure defconfig changes were in separate patch
>    b] Created rcar_pcie_host/rcar_pcie_ep structures
>    c] Added pci-id for R8A774C0
>    d] Added entry in MAINTAINERS for dt-binding
>    e] Dropped unnecessary braces
> 3] Added support for msi.
>
> Changes for v5:
> 1] Rebased patches on next branch of https://git.kernel.org/pub/scm/
>    linux/kernel/git/helgaas/pci.git
> 2] Fixed review comments reported by Kishon while fetching the matching
>    window in function pci_epc_get_matching_window()
> 3] Fixed review comments reported by Bjorn
>    a] Split patch up first patch so that its easier to review and incremental
>    b] Fixed typos
> 4] Included Reviewed tag from Rob for the dt-binding patch
> 5] Fixed issue reported by Nathan for assigning variable to itself
>
> Changes for v4:
> 1] Fixed dtb_check error reported by Rob
> 2] Fixed review comments reported by Kishon
>    a] Dropped pci_epc_find_best_fit_window()
>    b] Fixed initializing mem ptr in __pci_epc_mem_init()
>    c] Dropped map_size from pci_epc_mem_window structure
>
> Changes for v3:
> 1] Fixed review comments from Bjorn and Kishon.
> 3] Converted to DT schema
>
> Changes for v2:
> 1] Fixed review comments from Biju for dt-bindings to include an example
>    for a tested platform.
> 2] Fixed review comments from Kishon to extend the features of outbound
>    regions in epf framework.
> 3] Added support to parse outbound-ranges in OF.
>
> Lad Prabhakar (8):
>   PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
>   PCI: rcar: Move shareable code to a common file
>   PCI: rcar: Fix calculating mask for PCIEPAMR register
>   PCI: endpoint: Pass page size as argument to pci_epc_mem_init()
>   PCI: endpoint: Add support to handle multiple base for mapping
>     outbound memory
Could you please do the needy for the above two patches, so that this
can be picked up by Lorenzo.

Cheers,
--Prabhakar

>   dt-bindings: PCI: rcar: Add bindings for R-Car PCIe endpoint
>     controller
>   PCI: rcar: Add endpoint mode support
>   MAINTAINERS: Add file patterns for rcar PCI device tree bindings
>
>  .../devicetree/bindings/pci/rcar-pci-ep.yaml  |   77 ++
>  MAINTAINERS                                   |    1 +
>  drivers/pci/controller/Kconfig                |   18 +
>  drivers/pci/controller/Makefile               |    3 +-
>  .../pci/controller/cadence/pcie-cadence-ep.c  |    2 +-
>  .../pci/controller/dwc/pcie-designware-ep.c   |   16 +-
>  drivers/pci/controller/pcie-rcar-ep.c         |  557 ++++++++
>  drivers/pci/controller/pcie-rcar-host.c       | 1065 +++++++++++++++
>  drivers/pci/controller/pcie-rcar.c            | 1206 +----------------
>  drivers/pci/controller/pcie-rcar.h            |  140 ++
>  drivers/pci/controller/pcie-rockchip-ep.c     |    2 +-
>  drivers/pci/endpoint/pci-epc-mem.c            |  204 ++-
>  include/linux/pci-epc.h                       |   38 +-
>  13 files changed, 2078 insertions(+), 1251 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
>  create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
>  create mode 100644 drivers/pci/controller/pcie-rcar-host.c
>  create mode 100644 drivers/pci/controller/pcie-rcar.h
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
