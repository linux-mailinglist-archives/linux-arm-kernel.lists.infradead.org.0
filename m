Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF541D9D9B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 19:12:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FyOvWIafQFBe/d1Zd5We1XT7z64N8r5wzUl8Q65FPCc=; b=PSC1fvhwFeMWwd
	hh8XQf4kxeG5Vu8DPGKqjBOzYzxnp/4stXcGfsBKSnCWcdBDZ5eldHsrwG9DSqlZ3e/8Y+UEGmfpr
	b+AMLkjXXlfg86sjerQZYxityThFMUgL9Fun8wnBvSX9NaWdGS8SgifSv/3pmVdHlx8XhqquolTZi
	SzQKRyAD8K7rKqxifpqStL7VJ9rWRcwKkzpkoQx/EKek3Rh4ffY0vYOqOJ8munJ7nI15nV3ZSUYr0
	QBP5wXz7u6vbfr8B5uSOPmNgxA6y52RgifqNay3e1lByJYEz5YSutJK/2EVuWU3VzLWulRjJ+N+Gy
	mxW0HsVuXRMunaAqW6/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb5mg-0002bc-Rt; Tue, 19 May 2020 17:12:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb5mW-0002aW-84
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 17:11:57 +0000
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
 [209.85.167.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78828207D3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 17:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589908315;
 bh=J1Y30cmsXnTK+NpTbd/xD2zpvVMzNGnZNpopIBUAdOI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=TLbCPhb4n0z4OOZth5bBxZ6VeNK677WoS6fBfxN7NTf8lXpCGiYv5YiDEsXfmiT0t
 XrwIh0sAqkggc1hAxQbSeB6Zi6l+JIgCmwyPx0GHCi9VI9aDsjf/KyS7UgG0Ip79XR
 lQUV4pbrxKCykGqXmxuD72w2Bid7Uv7Ret2WcZj4=
Received: by mail-oi1-f169.google.com with SMTP id b3so350787oib.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 10:11:55 -0700 (PDT)
X-Gm-Message-State: AOAM533b1tk7N7j5bfnR46nYSTofpsas+fo+Ui5S/gW23qlVNdEI4fgg
 OdGIjotNl6pafr1WA3N0Zq3H8XniPRAOGiaoOw==
X-Google-Smtp-Source: ABdhPJyaeG/VOd9sCaHIqKFgnKTdazwA1yv63I0/uCkGphrfwVHO31fj1lCt2eCihWn6JIce5iLdBPaPVV9gZstFRsM=
X-Received: by 2002:a05:6808:24f:: with SMTP id
 m15mr347220oie.152.1589908314771; 
 Tue, 19 May 2020 10:11:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200508130646.23939-1-kishon@ti.com>
 <20200508130646.23939-5-kishon@ti.com>
In-Reply-To: <20200508130646.23939-5-kishon@ti.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 19 May 2020 11:11:43 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ1Om2CX5e1y32bzeiuv4fAdyFpZ88a346g4Q+jq_Ldcg@mail.gmail.com>
Message-ID: <CAL_JsqJ1Om2CX5e1y32bzeiuv4fAdyFpZ88a346g4Q+jq_Ldcg@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] PCI: cadence: Use "dma-ranges" instead of
 "cdns,no-bar-match-nbits" property
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_101156_322722_EE00F71B 
X-CRM114-Status: GOOD (  25.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 PCI <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 8, 2020 at 7:07 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Cadence PCIe core driver (host mode) uses "cdns,no-bar-match-nbits"
> property to configure the number of bits passed through from PCIe
> address to internal address in Inbound Address Translation register.
> This only used the NO MATCH BAR.
>
> However standard PCI dt-binding already defines "dma-ranges" to
> describe the address ranges accessible by PCIe controller. Add support
> in Cadence PCIe host driver to parse dma-ranges and configure the
> inbound regions for BAR0, BAR1 and NO MATCH BAR. Cadence IP specifies
> maximum size for BAR0 as 256GB, maximum size for BAR1 as 2 GB, so if
> the dma-ranges specifies a size larger than the maximum allowed, the
> driver will split and configure the BARs.

Would be useful to know what your dma-ranges contains now.


> Legacy device tree binding compatibility is maintained by retaining
> support for "cdns,no-bar-match-nbits".
>
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../controller/cadence/pcie-cadence-host.c    | 141 ++++++++++++++++--
>  drivers/pci/controller/cadence/pcie-cadence.h |  17 ++-
>  2 files changed, 141 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/pci/controller/cadence/pcie-cadence-host.c b/drivers/pci/controller/cadence/pcie-cadence-host.c
> index 6ecebb79057a..2485ecd8434d 100644
> --- a/drivers/pci/controller/cadence/pcie-cadence-host.c
> +++ b/drivers/pci/controller/cadence/pcie-cadence-host.c
> @@ -11,6 +11,12 @@
>
>  #include "pcie-cadence.h"
>
> +static u64 cdns_rp_bar_max_size[] = {
> +       [RP_BAR0] = _ULL(128 * SZ_2G),
> +       [RP_BAR1] = SZ_2G,
> +       [RP_NO_BAR] = SZ_64T,
> +};
> +
>  void __iomem *cdns_pci_map_bus(struct pci_bus *bus, unsigned int devfn,
>                                int where)
>  {
> @@ -106,6 +112,117 @@ static int cdns_pcie_host_init_root_port(struct cdns_pcie_rc *rc)
>         return 0;
>  }
>
> +static void cdns_pcie_host_bar_ib_config(struct cdns_pcie_rc *rc,
> +                                        enum cdns_pcie_rp_bar bar,
> +                                        u64 cpu_addr, u32 aperture)
> +{
> +       struct cdns_pcie *pcie = &rc->pcie;
> +       u32 addr0, addr1;
> +
> +       addr0 = CDNS_PCIE_AT_IB_RP_BAR_ADDR0_NBITS(aperture) |
> +               (lower_32_bits(cpu_addr) & GENMASK(31, 8));
> +       addr1 = upper_32_bits(cpu_addr);
> +       cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_RP_BAR_ADDR0(bar), addr0);
> +       cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_RP_BAR_ADDR1(bar), addr1);
> +}
> +
> +static int cdns_pcie_host_bar_config(struct cdns_pcie_rc *rc,
> +                                    struct resource_entry *entry,
> +                                    enum cdns_pcie_rp_bar *index)
> +{
> +       u64 cpu_addr, pci_addr, size, winsize;
> +       struct cdns_pcie *pcie = &rc->pcie;
> +       struct device *dev = pcie->dev;
> +       enum cdns_pcie_rp_bar bar;
> +       unsigned long flags;
> +       u32 aperture;
> +       u32 value;
> +
> +       cpu_addr = entry->res->start;
> +       flags = entry->res->flags;
> +       pci_addr = entry->res->start - entry->offset;
> +       size = resource_size(entry->res);
> +       bar = *index;
> +
> +       if (entry->offset) {
> +               dev_err(dev, "Cannot map PCI addr: %llx to CPU addr: %llx\n",
> +                       pci_addr, cpu_addr);

Would be a bit more clear to say PCI addr must equal CPU addr.

> +               return -EINVAL;
> +       }
> +
> +       value = cdns_pcie_readl(pcie, CDNS_PCIE_LM_RC_BAR_CFG);
> +       while (size > 0) {
> +               if (bar > RP_NO_BAR) {
> +                       dev_err(dev, "Failed to map inbound regions!\n");
> +                       return -EINVAL;
> +               }
> +
> +               winsize = size;
> +               if (size > cdns_rp_bar_max_size[bar])
> +                       winsize = cdns_rp_bar_max_size[bar];
> +
> +               aperture = ilog2(winsize);
> +
> +               cdns_pcie_host_bar_ib_config(rc, bar, cpu_addr, aperture);
> +
> +               if (bar == RP_NO_BAR)
> +                       break;
> +
> +               if (winsize + cpu_addr >= SZ_4G) {
> +                       if (!(flags & IORESOURCE_PREFETCH))
> +                               value |= LM_RC_BAR_CFG_CTRL_MEM_64BITS(bar);
> +                       value |= LM_RC_BAR_CFG_CTRL_PREF_MEM_64BITS(bar);
> +               } else {
> +                       if (!(flags & IORESOURCE_PREFETCH))
> +                               value |= LM_RC_BAR_CFG_CTRL_MEM_32BITS(bar);
> +                       value |= LM_RC_BAR_CFG_CTRL_PREF_MEM_32BITS(bar);
> +               }
> +
> +               value |= LM_RC_BAR_CFG_APERTURE(bar, aperture);
> +
> +               size -= winsize;
> +               cpu_addr += winsize;
> +               bar++;
> +       }
> +       cdns_pcie_writel(pcie, CDNS_PCIE_LM_RC_BAR_CFG, value);
> +       *index = bar;
> +
> +       return 0;
> +}
> +
> +static int cdns_pcie_host_map_dma_ranges(struct cdns_pcie_rc *rc)
> +{
> +       enum cdns_pcie_rp_bar bar = RP_BAR0;
> +       struct cdns_pcie *pcie = &rc->pcie;
> +       struct device *dev = pcie->dev;
> +       struct device_node *np = dev->of_node;
> +       struct pci_host_bridge *bridge;
> +       struct resource_entry *entry;
> +       u32 no_bar_nbits = 32;
> +       int err;
> +
> +       bridge = pci_host_bridge_from_priv(rc);
> +       if (!bridge)
> +               return -ENOMEM;
> +
> +       if (list_empty(&bridge->dma_ranges)) {
> +               of_property_read_u32(np, "cdns,no-bar-match-nbits",
> +                                    &no_bar_nbits);
> +               cdns_pcie_host_bar_ib_config(rc, RP_NO_BAR, 0x0, no_bar_nbits);
> +               return 0;
> +       }
> +
> +       resource_list_for_each_entry(entry, &bridge->dma_ranges) {
> +               err = cdns_pcie_host_bar_config(rc, entry, &bar);

Seems like this should have some better logic to pick which BAR to
use. Something like find the biggest region and then find the smallest
BAR that it fits in. Then get the next biggest...

> +               if (err) {
> +                       dev_err(dev, "Fail to configure IB using dma-ranges\n");
> +                       return err;
> +               }
> +       }
> +
> +       return 0;
> +}
> +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
