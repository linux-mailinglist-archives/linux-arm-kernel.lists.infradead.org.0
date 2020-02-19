Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3808F163FF9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 10:07:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6uzxCYImNX9BdmHvgYp7//7euE2ASVob+X6S9THYHo=; b=cfB+5s4pGg4uG9
	2S3Y00kNNOyJ6DKmcGwiWh8OqF4+iybtvbGCIIlsPTbmUKqagwmpSBMybojtJGFUbl4wlHwf6U1/N
	FARdd5JxxnxaqR9yrKK4nF68Ac9qoPFAllybsy2ymQfsFpolHxw5bB4S8Qhc3oaRsigQQPQlB6t+v
	xlR9y3sa4HjX7UAyz7R9LCmmKrOvvRhMxEPLwQz420RfsFHxIoRRpl5JnCRYXDPQnWi3psWjq34cX
	kpalEaKwnwe4Ncu3Frz8UzlKm7sh3LaVVepgSCdNXJ4CK9LlzGWTZTiY6zQS+vCCvVhGyzTfYHktb
	ei/SWnX9tuU60Pmmb7Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4LKP-0003Go-DU; Wed, 19 Feb 2020 09:07:33 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4LK4-0003GI-Pj; Wed, 19 Feb 2020 09:07:14 +0000
Received: by mail-ot1-x342.google.com with SMTP id r16so22461357otd.2;
 Wed, 19 Feb 2020 01:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hl9R42S7bTmTIImSyFBNArkLnawsxqytbv3I5jer4iE=;
 b=XwnW4WNhvn8JGvbdWoY7h4s3J9zIhVUWIk9heioPvbq/FxrffWd1t6dLCIQSjYfwps
 SBSwawhTSiUw5UEU0m4jchppkrSpXXRgSDXT84Brg5JQg0XZbUWhvnLkAidZSr+beN7D
 Dv1TjI6UmRs1GjZE2LaBCmoWAZVdPHTrEwoKM0k9vyRI1Avn+zIO+EF3ulIvlpqHw479
 F2m/agZ1clfz1bpokaCGjmvVI+Tih4XM+li1o/gG0o/WiDoMBarpoP9Vm7EICL9mVaGg
 +fmatW0lJPsQPnyHwIwyoGswfjj3TxNOV4c1OPY1PC36OyMuSDDGzdhoJt1n+ije6i7h
 ilew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hl9R42S7bTmTIImSyFBNArkLnawsxqytbv3I5jer4iE=;
 b=m132KFhpUzmeufRZ2lkrBY+GgpndjKTvsRW9b8/2adYJmAlXn1P4WJdJJLWU2T1aHX
 vdxgzVQqXJ8uS4SC23u7x2kseKNYBxCl3o+CYf3B8zpoxsNvdgAf+Cx2qYze1ei+KH7g
 ZbAmWpCGHurrCzxpo66tDqS69V7PeSjAK5iIW5OH8fa2H4/+6/NvJ0+lmZ3Q5nneW7yA
 yD5emsER3Uv83tEcnD4MQthSH1LNIiGgQveQqHJuel6znY9NSo5pPb1faiT+E9jDhDHK
 nJmGNwuuPfLt9IiNQeRR6W2LBnWWrGTvQKZXhUj5pb98/7YxUNZ5p6Aw+HZ97SZv5pEr
 82OA==
X-Gm-Message-State: APjAAAUZwuT7YtHxbPTRaI1S4XaPf+4CnKFAq7jlF0TYnR/MYrrysaMi
 FGwVZRpX6UuNY9Wvckj/TmSK6eHy1iTQC+WFzWuTPkvF+ExSTQ==
X-Google-Smtp-Source: APXvYqxHKoYOKLSVj2I0oZVyHx/701r0aK9W1LUqkpwYs0YWVF09ezzLoeZkXL7bRk/YGzWf/TnmQEwIspJzwjO/ZWo=
X-Received: by 2002:a9d:d06:: with SMTP id 6mr19535224oti.176.1582103232048;
 Wed, 19 Feb 2020 01:07:12 -0800 (PST)
MIME-Version: 1.0
References: <20200208183641.6674-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200212140127.GA127398@google.com>
In-Reply-To: <20200212140127.GA127398@google.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 19 Feb 2020 09:06:45 +0000
Message-ID: <CA+V-a8sBPT-RLvzRFFFwbNghD9X26P5qPntoUvgNHQ6_eUzQBg@mail.gmail.com>
Subject: Re: [PATCH v4 1/6] PCI: rcar: Preparation for adding endpoint support
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_010712_838983_9568190E 
X-CRM114-Status: GOOD (  28.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>,
 Jingoo Han <jingoohan1@gmail.com>,
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

Hi Bjorn,

Thank you for the review.

On Wed, Feb 12, 2020 at 2:01 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> To make the changelog from "git log --oneline" read nicely, the
> subject should begin with a verb, e.g.,
>
>   PCI: rcar: Move shareable code to a common file
>
> On Sat, Feb 08, 2020 at 06:36:36PM +0000, Lad Prabhakar wrote:
> > Prepare for adding endpoint support to rcar controller, there are no
> > functional changes with this patch, a common file is created so that
> > it can be shared with endpoint driver.
>
> This commit log doesn't tell us what this patch does.  "Prepare"
> conveys no real information.  It's a giant patch and it's difficult
> to verify that there's no functional change.
>
> I *think* what you did was move most of the #defines from pcie-rcar.c
> to pcie-rcar.h and most of the code from pcie-rcar.c to
> pcie-rcar-host.c.  And in both case, these were strict *moves* without
> any changes.  If that's the case, please say that explicitly in the
> commit log.
>
> That's good; thanks for making this a separate patch so it's not
> mingled with real changes.
>
Agreed I shall split this patch further more, first patch just
renaming the file from
pcie-rcar.c to pcie-rcar-host.c along with Makefile/Kconfig/defconfig
changes and
the second patch pulling out common code that shall be share between
two drivers.
This shall make it more easier to review.

> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  arch/arm64/configs/defconfig            |    2 +-
> >  drivers/pci/controller/Kconfig          |    4 +-
> >  drivers/pci/controller/Makefile         |    2 +-
> >  drivers/pci/controller/pcie-rcar-host.c | 1044 ++++++++++++++++++++++++++
> >  drivers/pci/controller/pcie-rcar.c      | 1229 ++-----------------------------
> >  drivers/pci/controller/pcie-rcar.h      |  126 ++++
> >  6 files changed, 1227 insertions(+), 1180 deletions(-)
> >  create mode 100644 drivers/pci/controller/pcie-rcar-host.c
> >  create mode 100644 drivers/pci/controller/pcie-rcar.h
> >
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index b2f6673..8a1f51d 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -182,7 +182,7 @@ CONFIG_HOTPLUG_PCI=y
> >  CONFIG_HOTPLUG_PCI_ACPI=y
> >  CONFIG_PCI_AARDVARK=y
> >  CONFIG_PCI_TEGRA=y
> > -CONFIG_PCIE_RCAR=y
> > +CONFIG_PCIE_RCAR_HOST=y
> >  CONFIG_PCI_HOST_GENERIC=y
> >  CONFIG_PCI_XGENE=y
> >  CONFIG_PCIE_ALTERA=y
> > diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
> > index f84e5ff..94bb5e9 100644
> > --- a/drivers/pci/controller/Kconfig
> > +++ b/drivers/pci/controller/Kconfig
> > @@ -54,12 +54,12 @@ config PCI_RCAR_GEN2
> >         There are 3 internal PCI controllers available with a single
> >         built-in EHCI/OHCI host controller present on each one.
> >
> > -config PCIE_RCAR
> > +config PCIE_RCAR_HOST
>
> The config symbol change should be mentioned in the commit log.  In
> general we try to avoid changing config symbols because it's likely to
> confuse people who keep their .config and update their kernel.  But I
> guess your audience is probably pretty small.
>
I shall mention it in my commit message.

> >       bool "Renesas R-Car PCIe controller"
>
> The description needs to be updated, too.  This is what people will
> see in menuconfig.
>
I shall update it accordingly.

> >       depends on ARCH_RENESAS || COMPILE_TEST
> >       depends on PCI_MSI_IRQ_DOMAIN
> >       help
> > -       Say Y here if you want PCIe controller support on R-Car SoCs.
> > +       Say Y here if you want PCIe controller support on R-Car SoCs in host mode.
>
> Wrap this so it fits in 80 columns like the rest of the file.
>
Will fix that.

Cheers,
--Prabhakar Lad

> Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
