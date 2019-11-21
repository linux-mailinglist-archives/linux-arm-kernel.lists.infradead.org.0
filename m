Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6871105B9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 22:07:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=65b3qqtxpvpgo9HdDC87Wx1Ckq7tU8vvj7uUauV8zfs=; b=Yos+fg8gtxt0kX
	/pFPxF9hzPyLX9DDQHYtSBdks6PdoFBrhpXkgIccHBHp+N4eQTuDT5M3MZVnjMiDHPhffIjEalB8u
	DYQIcRSnmA2G5vPG3qj8ooUGLsgrwHTvqRVc/4zG8Q9fmzX+6kKKh0KK9TGqjDwDRRpi/t05kzaAv
	J0ANcU1AUN5sMn5/MV2GOkUrYDuALgCUP3zsoGCif24gho0K+0ky0cOvafinSSzmhQlWsqZGurJcP
	0iTguvPX0drCwOLokErw6yi8XS7tB35CsXpLkQeJwdOxRUk1Eh5emnPxaW3/37gBjogIu8md7PJyp
	QUYdUq12UkDJqxDSI8ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXtg1-0003a8-Q0; Thu, 21 Nov 2019 21:07:45 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXtfo-0003TE-SW; Thu, 21 Nov 2019 21:07:34 +0000
Received: by mail-lj1-x243.google.com with SMTP id k15so4862319lja.3;
 Thu, 21 Nov 2019 13:07:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IUXpjC49KEQJCzAEEvmy5mqN3iAhTQoOXVRArUIlNIk=;
 b=cJ3ypQjlm9KEg1GvcCTXeIgrnqWfHAqlxmfaizpmQ+EY4vTakqFsv09Ghl9+303Fl8
 D/VZvGusI+pYmRvTYqeqwdJmlu/Qc9837OHW4z+TR0M9u1UO57xWuiEp/L/HeSeLnjqk
 XEKAYB8JIIMJnWp1LZjYr6sMBUJWYfRtGtipdz0GKfHCo3WvQ9SpnsnzdfQT+k0yJUH3
 peFC1NHWg7CNYgnM10mLYE2thP1p2X3sA2N4fF6O0hgIXtt35odAQF4sJmZWxmOrguL2
 +yksKQ+CYDpfc9P3s361EL66ShX8XsOX17CZL4pQgIoCONB0/rrR7x1opA3+dbIgsCxQ
 RH/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IUXpjC49KEQJCzAEEvmy5mqN3iAhTQoOXVRArUIlNIk=;
 b=QpzdnSiNkxxFRupvPRMedFII2MMdq0S1ejK3EvxvXn/wz0zVRiSmOf+MJcGVnbXUVo
 9RrHKRsNqkEwK8tp0W2Y20iUlPPrDgyLXZWN8z9B1BZh9QO/k7n3dBGlrZLuIo71TvCx
 05Sdu3HvK8HqdmVb3oKAquKtirko8zfg4I5j6oHWVhRCZRzECLexJmrukl12YXy73kLE
 WGE/ohf+8G/DpmEQzpP+bARUTxFNyjdzxu5x4xgSSRgq3XjxRg6uOSg+lb1OUfWXR4+7
 6m0SamuhSDqKZYWNIp5vcSaKe+Z4eO5yzG1+XR2z/DS2OegC9yoHNmpDC3hXdhAHHxFv
 x1fQ==
X-Gm-Message-State: APjAAAUvtz/eQuHJVlfF3OewH0LCGPv9rTznO5UwCJx7LBzNmrRXLGg0
 4MJUWVB2p/9VRDFkHusojnNF6fVvvqa6ixyI4Yg=
X-Google-Smtp-Source: APXvYqzYZpQ7ubdab4N/uQhFs+5HchNGRhYsSCkC6BqvLwMIUwarlG0cxyJehUDaVg1/zDiRVjrD6m2WTsoLu8G3vwM=
X-Received: by 2002:a2e:91c7:: with SMTP id u7mr8700877ljg.249.1574370450479; 
 Thu, 21 Nov 2019 13:07:30 -0800 (PST)
MIME-Version: 1.0
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191112155926.16476-5-nsaenzjulienne@suse.de>
 <20191119162502.GS43905@e119886-lin.cambridge.arm.com>
 <7e1be0bdcf303224a3fe225654a3c2391207f9eb.camel@suse.de>
 <20191121120319.GW43905@e119886-lin.cambridge.arm.com>
 <276d4160bbe6a4e8225bbd836f43d40da41d25f1.camel@suse.de>
In-Reply-To: <276d4160bbe6a4e8225bbd836f43d40da41d25f1.camel@suse.de>
From: Jim Quinlan <jim2101024@gmail.com>
Date: Thu, 21 Nov 2019 16:07:19 -0500
Message-ID: <CANCKTBuoSkmAiY4yUuNpT-GwhS7LJv79L910UvcrPgPpMz=YGg@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] PCI: brcmstb: add Broadcom STB PCIe host
 controller driver
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_130732_933176_FE9A46E6 
X-CRM114-Status: GOOD (  42.97  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jim2101024[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jim2101024[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, maz@kernel.org,
 Phil Elwell <phil@raspberrypi.org>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Eric Anholt <eric@anholt.net>,
 mbrugger@suse.com,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>, Jim Quinlan <james.quinlan@broadcom.com>,
 linux-pci <linux-pci@vger.kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 8:02 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Hi Andrew,
>
> On Thu, 2019-11-21 at 12:03 +0000, Andrew Murray wrote:
> > > > > +static void brcm_pcie_set_outbound_win(struct brcm_pcie *pcie,
> > > > > +                                      unsigned int win, phys_addr_t
> > > > > cpu_addr,
> > > > > +                                      dma_addr_t  pcie_addr, dma_addr_t
> > > > > size)
> > > > > +{
> > > > > +       phys_addr_t cpu_addr_mb, limit_addr_mb;
> > > > > +       void __iomem *base = pcie->base;
> > > > > +       u32 tmp;
> > > > > +
> > > > > +       /* Set the base of the pcie_addr window */
> > > > > +       bcm_writel(lower_32_bits(pcie_addr) + MMIO_ENDIAN,
> > > > > +                  base + PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO + (win * 8));
> > > > > +       bcm_writel(upper_32_bits(pcie_addr),
> > > > > +                  base + PCIE_MISC_CPU_2_PCIE_MEM_WIN0_HI + (win * 8));
> > > > > +
> > > > > +       cpu_addr_mb = cpu_addr >> 20;
> > > > > +       limit_addr_mb = (cpu_addr + size - 1) >> 20;
> > > > > +
> > > > > +       /* Write the addr base low register */
> > > > > +       WR_FLD_WITH_OFFSET(base, (win * 4),
> > > > > +                          PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT,
> > > > > +                          BASE, cpu_addr_mb);
> > > > > +       /* Write the addr limit low register */
> > > > > +       WR_FLD_WITH_OFFSET(base, (win * 4),
> > > > > +                          PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT,
> > > > > +                          LIMIT, limit_addr_mb);
> > > > > +
> > > > > +       /* Write the cpu addr high register */
> > > > > +       tmp = (u32)(cpu_addr_mb >>
> > > > > +               PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_NUM_MASK_BITS);
> > > >
> > > > Despite the name _MASK_BITS, this isn't being used as a mask. Is this
> > > > making
> > > > some assumption about the value of cpu_addr from the DT?
> > >
> > > It should be read _NUM_MASK_BITS. It contains the number of set bits on that
> > > specific mask. I agree it's not ideal. I think I'll be able to do away with
> > > it
> > > using the bitfield.h macros.
> >
> > Also why do you have a define for
> > PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_NUM_MASK_BITS but not the '20' shift
> > used for the low registers?
>
> Good point, I'm changing it to something more explicit:
>
>         cpu_addr_mb = cpu_addr / SZ_1M;
>
> As for [...]_NUM_MASK_BITS I'm looking for a smart/generic way to calculate it
> from the actual mask. No luck so far. If not, I think I'll simply leave it as
> is for now.
>
> > > FYI, What's happening here is that we have to save the CPU address range
> > > (which
> > > is already shifted right 20 positions) in two parts, the lower 12 bits go
> > > into
> > > PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT while the higher 8 bits go into
> > > PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_HI or
> > > PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LIMIT_HI.
> >
> > The hardware spec require bits 31:20 of the address, and the high registers
> > require 39:32 right?
>
> Yes, that's it.
>
> > (Apologies, the indirection by the WR_FLD_** macros easily confuses me. These
> > type of macros are helpful, or rather would be if the whole kernel used them.
> > I think they can add confusion when each driver has its own set of similar
> > macros. This is why its *really* helpful to use any existing macros in the
> > kernel - and only invent new ones if needed).
>
> I agree it's pretty confusing, I think v3, using bitfield.h as much as
> possible, looks substantially more welcoming.

The reason we use custom macros is because we'd like to keep the
register names the same as the HW declares and our internal tools
support.  As you may have noticed, our register names are unusually
long and it is hard to fit a simple read or write field assignment
within 80 columns w/o using custom macros tailored to our register
names' format.

Perhaps Nicolas can pull a rabbit out of a hat and use Linux macros
while keeping our long register names, but if he has to use his own
shorter register names it will become harder for Broadcom developers
to debug this driver.

Thanks,
Jim

>
> > > [...]
> > >
> > > > > +static inline int brcm_pcie_get_rc_bar2_size_and_offset(struct
> > > > > brcm_pcie
> > > > > *pcie,
> > > > > +                                                       u64
> > > > > *rc_bar2_size,
> > > > > +                                                       u64
> > > > > *rc_bar2_offset)
> > > > > +{
> > > > > +       struct pci_host_bridge *bridge =
> > > > > pci_host_bridge_from_priv(pcie);
> > > > > +       struct device *dev = pcie->dev;
> > > > > +       struct resource_entry *entry;
> > > > > +       u64 total_mem_size = 0;
> > > > > +
> > > > > +       *rc_bar2_offset = -1;
> > > > > +
> > > > > +       resource_list_for_each_entry(entry, &bridge->dma_ranges) {
> > > > > +               /*
> > > > > +                * We're promised the RC will provide a contiguous view
> > > > > of
> > > > > +                * memory to downstream devices. We can then infer the
> > > > > +                * rc_bar2_offset from the lower available dma-range
> > > > > offset.
> > > > > +                */
> > > > > +               if (entry->offset < *rc_bar2_offset)
> > > > > +                       *rc_bar2_offset = entry->offset;
> > > > > +
> > > > > +               total_mem_size += entry->res->end - entry->res->start +
> > > > > 1;
> > > >
> > > > This requires that if there are multiple dma-ranges, then there are no
> > > > gaps
> > > > between them right?
> > >
> > > Yes, the PCI view of inbound memory will always be gapless. See an example
> > > here: https://patchwork.kernel.org/patch/10605957/
> >
> > Thanks for the reference.
> >
> >
> > > That said, iterating over the dma-ranges is not strictly necessary for now
> > > as
> > > RPi4 is assured to only need one. If that's bothering you I can always
> > > remove
> > > it for now.
> >
> > One purpose of this function is to validate that the information given in the
> > device tree is valid - I've seen other feedback on these lists where the view
> > is taken that 'it's not the job of the kernel to validate the DT'. Subscribing
> > to this view would be a justification for removing this validation -
> > especially
> > given that the bindings you include have only one dma-range (in any case if
> > there are constraints you ought to include them in the binding document).
> >
> > Though the problem with this point of view is that if the DT is wrong, it may
> > be possible for the driver to work well enough to do some function but with
> > some horrible side effects that are difficult to track down to a bad DT.
> >
> > If you assume the DT will only have one range (at least for the Pi) then this
> > code will never be used and so can probably be removed.
>
> Ok, less is more, I'll simplify it.
>
> [...]
>
> > > > > +                       continue;
> > > > > +
> > > > > +               if (num_out_wins >= BRCM_NUM_PCIE_OUT_WINS) {
> > > > > +                       dev_err(pcie->dev, "too many outbound wins\n");
> > > > > +                       return -EINVAL;
> > > > > +               }
> > > > > +
> > > > > +               brcm_pcie_set_outbound_win(pcie, num_out_wins, res-
> > > > > >start,
> > > > > +                                          res->start - entry->offset,
> > > > > +                                          res->end - res->start + 1);
> > > > > +               num_out_wins++;
> > > > > +       }
> > > > > +
> > > > > +       /*
> > > > > +        * For config space accesses on the RC, show the right class for
> > > > > +        * a PCIe-PCIe bridge (the default setting is to be EP mode).
> > > > > +        */
> > > > > +       WR_FLD_RB(base, PCIE_RC_CFG_PRIV1_ID_VAL3, CLASS_CODE,
> > > > > 0x060400);
> > > >
> > > > Why does this need to be _RB ? I haven't looked at all of the uses of _RB
> > > > though I think there are others that may not be necessary.
> > >
> > > We're reviewing the _RB usage with Jim, I'll come back to you on that topic
> > > later.
> >
> > Thanks.
>
> Jim and Florian went over all the _RB usages and found out none of them applied
> to the Pi. Apparently they where introduced as a form of barrier needed on some
> MIPS SoCs. Sorry for that, I'll remove them.
>
> > > [...]
> > >
> > > > > +       __brcm_pcie_remove(pcie);
> > > > > +
> > > > > +       return 0;
> > > > > +}
> > > > > +
> > > > > +static const struct of_device_id brcm_pcie_match[] = {
> > > > > +       { .compatible = "brcm,bcm2711-pcie", .data = &bcm2711_cfg },
> > > >
> > > > I'd rather see use of the pcie_cfg_data structure removed from this
> > > > series.
> > > >
> > > > I've seen the comments in the previous thread [1], and I understand that
> > > > the intention is that this driver will eventually be used for other SOCs.
> > > >
> > > > However this indirection isn't needed *now* and it makes reviewing this
> > > > patch more difficult. If and when a later series is made to cover other
> > > > SOCs - then I'd expect that series to find a way to apply this
> > > > indirection.
> > > >
> > > > And if that later series is more difficult to review because of the newly
> > > > added indirection, then I'd expect an early patch of that series to apply
> > > > the indirection in a single patch - which would be easy to review.
> > > >
> > > > The other risk of such premature changes like this is that when you come
> > > > to adding other SOCs, you may then discover that there were shortcomings
> > > > in the way you've approached it here.
> > > >
> > >
> > > I was about to make a point similar to Florian's. I'll wait for your reply
> > > and
> > > change this accordingly.
> >
> > No problem.
>
> Following your reply, I'll remove it.
>
> Regards,
> Nicolas
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
