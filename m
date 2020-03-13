Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09499184BCD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 16:56:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjSoqBUT1+osQG/yhUewwRY6lGvDc018Xn/evVGMhW4=; b=NdHqmswq7k5hIP
	YAqspsd4o2Lgn1oJcrrPAtzAIs1C4/ucnAmpo5yP+exdHK23tAT7tssEcacGGf1kYMvlg/zCKqbhR
	g0qp2bb6nja2sw5kQvqrR3wACC11mVXQ+AJRBZTK9MmdG1DxLdatm3xR7/X2flsRtTacA9jord5Tp
	s3Xl/mruW/mZiOgsCAUgZkFfjZiCNzb+NmiXYGFW0k6xibQMiLU8hd5PlRdAQkujFD7+WUpFfGR1x
	Ych2gvCsNY6xLjjfsMYo9bxFf0DbWnEpRWpqzbuUYY/N3T9VdA07mmomK4CNOceJW9YJR26V7x33k
	nb+UZrC9u/OEMMUEvIXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmfI-0001YG-9j; Fri, 13 Mar 2020 15:56:00 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmWl-0008V1-1H; Fri, 13 Mar 2020 15:47:19 +0000
Received: by mail-ot1-x344.google.com with SMTP id j16so10551173otl.1;
 Fri, 13 Mar 2020 08:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g2F6bNMNbjYMOmG6AT0+6XH/uYDDsMXrJ7rvJH7Wv54=;
 b=gAIDs6WqqY4C6m2b5QdZWRTmIT3xf9Ik6Np8m+/Z/J5ikCql9gM3IwFQvuOl178Nzr
 3IZ3HkdzXqzSrRImXqzs86OwH+pAqPX8nDIT3mW1Ilmq8XWcuyISAxCtav2E5OxoXkJd
 a2/19fycsXGRTcGjxcuP0a4HCJbtcxuT8E/3Qd61YjhSuJj8H7bt5BJQisMoSsu6OF3r
 8isHVQs3wlSr7wkc0M+N89U79Mnd2s08qw4ocvTBql6Eg+sDcwjF1Pu6TDMJAIo8zT6Y
 gfs62X7oCtBvDY2WKFVGT1I4sbyDSbi3FtifMvad/OCwI0ELcGXTZnGrLvH6ugFlEC4R
 c8YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g2F6bNMNbjYMOmG6AT0+6XH/uYDDsMXrJ7rvJH7Wv54=;
 b=o34bh3vZQnVROatS3y7gmFwFwBmoda1dY1KZLnlzlXPeE4wzsPt024Oaqig2PKeXRe
 BEr3LThnWMCIDIhYxN6uuZc5wI6uFKr/oUGR4591KtgxPK+p6OKLFBBafgxxROS61KqH
 qa+p3yPvvA+6AQnFdq7DWj+5VMJH5gmQ1f7S6HrIpycPCoBhn2W8ASGQlKlWcodUIh1l
 bNzleF8oF3S0E2UB6f5W5JO9n2cr5TaA8FRzFwEITcwuwh9VIM5m2cJukZMm7cnWNlGi
 sOJRhd/M+m8MNKgv2Ron+8zN71jXPGfxzlGr0nLydKyEt7XJTaX1Efft2188Bp25xxLc
 +jJQ==
X-Gm-Message-State: ANhLgQ26V6h09Ozad1rfplNWQSglyxc2ZrHeon8ir5H5mcnDGgCVDrgn
 4TBftGf0phqlpCMAqS6ZjCm7DxtdtzvP1x+5Q+U=
X-Google-Smtp-Source: ADFU+vu760GpCPmD7yZUXlIQeGa3R1i+fs+y1tbGVZM1WMb4f80I+07TGxLiEF8SFrU09Xrxz1LyHjcMcOFDGWeTS2I=
X-Received: by 2002:a05:6830:20c9:: with SMTP id
 z9mr11632227otq.44.1584114429233; 
 Fri, 13 Mar 2020 08:47:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Fri, 13 Mar 2020 15:46:42 +0000
Message-ID: <CA+V-a8vchrpa-1N1J+yVdo6-3zouOHX6=G4epWm68yirPirzag@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] Add support for PCIe controller to work in
 endpoint mode on R-Car SoCs
To: Bjorn Helgaas <bhelgaas@google.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_084711_091172_350E09E3 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Arnd Bergmann <arnd@arndb.de>, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn/Kishon,

On Fri, Feb 28, 2020 at 3:41 PM Lad Prabhakar
<prabhakar.csengg@gmail.com> wrote:
>
> This patch series adds support for PCIe controller on rcar to work in
> endpoint mode, this also extends the epf framework to handle base region
> for mapping PCI address locally.
>
> Note:
> The cadence/rockchip/designware endpoint drivers are build tested only.
>
> Changes for v5:
> 1] Rebased the patches on next branch of https://git.kernel.org/pub/scm/
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
> Lad Prabhakar (7):
>   PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
>   PCI: rcar: Move shareable code to a common file
>   PCI: rcar: Fix calculating mask for PCIEPAMR register
>   PCI: endpoint: Add support to handle multiple base for mapping
>     outbound memory
>   dt-bindings: PCI: rcar: Add bindings for R-Car PCIe endpoint
>     controller
>   PCI: rcar: Add support for rcar PCIe controller in endpoint mode
>   misc: pci_endpoint_test: Add Device ID for RZ/G2E PCIe controller
>
Gentle ping.

Cheers,
--Prabhakar Lad

>  .../devicetree/bindings/pci/rcar-pci-ep.yaml       |   76 ++
>  arch/arm64/configs/defconfig                       |    2 +-
>  drivers/misc/pci_endpoint_test.c                   |    3 +
>  drivers/pci/controller/Kconfig                     |   15 +-
>  drivers/pci/controller/Makefile                    |    3 +-
>  drivers/pci/controller/cadence/pcie-cadence-ep.c   |    7 +-
>  drivers/pci/controller/dwc/pcie-designware-ep.c    |   29 +-
>  drivers/pci/controller/pcie-rcar-ep.c              |  490 ++++++++
>  drivers/pci/controller/pcie-rcar-host.c            | 1053 +++++++++++++++++
>  drivers/pci/controller/pcie-rcar.c                 | 1229 +-------------------
>  drivers/pci/controller/pcie-rcar.h                 |  129 ++
>  drivers/pci/controller/pcie-rockchip-ep.c          |    7 +-
>  drivers/pci/endpoint/pci-epc-mem.c                 |  167 ++-
>  include/linux/pci-epc.h                            |   39 +-
>  14 files changed, 1985 insertions(+), 1264 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
>  create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
>  create mode 100644 drivers/pci/controller/pcie-rcar-host.c
>  create mode 100644 drivers/pci/controller/pcie-rcar.h
>
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
