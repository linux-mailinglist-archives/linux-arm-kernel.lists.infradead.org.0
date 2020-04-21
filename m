Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A55C71B222A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAqAVRMDJMD1bhP3vR3TTb5CKNff1OohwzNLpROMV78=; b=X84YK99TiQAWhh
	N+zS3ub3yp04+HM8RToRsDLRTa05mus5O3v9wFZVkfRSeW3qo3FO1RUBCta9cVIGn3Xf/DfUPBjyU
	Pag7Qzxpj6inl3D+ilrTdP6a+NbBzvvc4ya2y24U2xPyP2YQHrWj8dUqjKJolRHh9cRL6XE0MNJia
	3RcoG76Qyn9mw2wJ4JhQQTWz62tB7jvI4cOz4TSxmQ2di5R3Yb6tAbAWxUozrEaauxC9GcYiO91ph
	YFhj2YKRw/RD3BsyJGAtb/ahcSdWnZ3obEYTGm5C1RQYQ0f+2tOsTzGaJ1GSTx7ZE+ZgGS6ZxVmCy
	nBdPmNrgE9mxyQrO5/vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQojv-0006BX-Ka; Tue, 21 Apr 2020 08:58:47 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQojk-000698-C0; Tue, 21 Apr 2020 08:58:37 +0000
Received: by mail-ot1-x342.google.com with SMTP id z17so10632501oto.4;
 Tue, 21 Apr 2020 01:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dUns/kjPu6u9tSXe7Z8gHTGMDO76ns/IgyXfimiO/PU=;
 b=FVLHAm8HaJhFpLMnFDibkZl8lVYjKyP9RfKPVv5QkQ+HIfcyk1jy3TtEr08bO6yyY1
 zOLA59m/g/X5ydWB8ha3Ydk5O9h1g1+tGiTMn8o+HBSKJJflYJeV3bjqSRQTiG7SdCwB
 q+32tDGMtH2rQ4I63c3aSL/+a5GNh9i7QlAxyXJm1rWNFHfl3eCq7pmkOjClW498lij6
 35rzXXdZHx5bwhm8LyoAC0hgj+1NWoN403i8d0KpIDbVRLQU7gAtpCdGrzoYJPTHDI/f
 gUurocG2xt4xP0EhfaMGsqqfB1LYdMKvgGq2GMeUYW5eAjaa9Oo0VGHBHgLrNktv5RCd
 ZC/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dUns/kjPu6u9tSXe7Z8gHTGMDO76ns/IgyXfimiO/PU=;
 b=oPBPK31Xf2OcBXCxBvx9Fm70vqIcDz8YQgTfWj7pLaEQJhkzF4XYdqTQXAzw1chotn
 Ib5B+jpiAMVaQNNHTNw4V0GZZf3ne55j+TluM37qgei0bhBPi5y4632+QRlG6ZaU0lTA
 Nm5gqkWya5MTZV8pWLCfluWlYf7Jla71Fsv7aVHkQoDbil66VjgYMuky2/1d+6IW198I
 C2J3BJ1hSFgjeCT/oZKTdT0cfVrOpdFnHpNC5qvYKQXcXE7mqhdcZtcgYGxsNEPB7Heg
 kF1Fn6ogndVNfYr9xjVPSTp60ozIVCtzfCii/F7o/+BIedNZy5kVFh1+BXUD1acRA9G7
 NmvQ==
X-Gm-Message-State: AGi0PuYSJaz+ZOd5bxt0As4WHZBhMgubVFZ7Fz7joxE7W1/ezADFYjXg
 eD3G0odPRf00us91Iz6dpXSsPhAFQEQ23xGNeCw=
X-Google-Smtp-Source: APiQypI8xj3IMjACE9QOAf2a0RsB6nIO3wKgy0JpQgDppV6khnJ3NaCV2mAllXXjBYSbqW/spQXkXeOjPHw63y+tTFE=
X-Received: by 2002:a9d:895:: with SMTP id 21mr12415957otf.365.1587459514238; 
 Tue, 21 Apr 2020 01:58:34 -0700 (PDT)
MIME-Version: 1.0
References: <1587302823-4435-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587302823-4435-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB45443972F88BDA1134628342D8D50@TYAPR01MB4544.jpnprd01.prod.outlook.com>
In-Reply-To: <TYAPR01MB45443972F88BDA1134628342D8D50@TYAPR01MB4544.jpnprd01.prod.outlook.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 21 Apr 2020 09:58:07 +0100
Message-ID: <CA+V-a8tBEwMz4LDfcg2ReLsCkZH7Q_aN1b_Yc1qhp1H_g_HsTw@mail.gmail.com>
Subject: Re: [PATCH v8 7/8] PCI: rcar: Add endpoint mode support
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_015836_411131_05E1EB27 
X-CRM114-Status: GOOD (  23.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh+dt@kernel.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shimoda-san,

Thank you for the review.

On Tue, Apr 21, 2020 at 5:08 AM Yoshihiro Shimoda
<yoshihiro.shimoda.uh@renesas.com> wrote:
>
> Hi Prabhakar-san,
>
> Thank you for the patch!
> I'm sorry I should have mentioned on previous email. But, I have some comments.
>
> > From: Lad Prabhakar, Sent: Sunday, April 19, 2020 10:27 PM
> >
> > Add support for R-Car PCIe controller to work in endpoint mode.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> <snip>
> > +static int rcar_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 interrupts)
> > +{
> > +     struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> > +     struct rcar_pcie *pcie = &ep->pcie;
> > +     u32 flags;
> > +
> > +     flags = rcar_pci_read_reg(pcie, MSICAP(fn));
>
> The argument of MSICAP() should be 0. Otherwise, if the fn is 1 or more,
> the code reads a wrong register.
>
Agreed, but fn (func_no = find_first_zero_bit(&epc->function_num_map,
BITS_PER_LONG); in pci_epc_add_epf()) in any callback is compared
against to max_functions in the core and  is configurable and by
default its set to 1 in rcar_pcie_ep_get_pdata(). So this will make
sure that fn in any callback will always be 0. Said that the binding
needs to be fixed to:

  max-functions:
    minimum: 1
    maximum: 1

> > +     flags |= interrupts << MSICAP0_MMESCAP_OFFSET;
> > +     rcar_pci_write_reg(pcie, flags, MSICAP(fn));
>
> Same here about MSICAP().
>
> > +
> > +     return 0;
> > +}
> > +
> > +static int rcar_pcie_ep_get_msi(struct pci_epc *epc, u8 fn)
> > +{
> > +     struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> > +     struct rcar_pcie *pcie = &ep->pcie;
> > +     u32 flags;
> > +
> > +     flags = rcar_pci_read_reg(pcie, MSICAP(fn));
>
> Same here about MSICAP().
>
> > +     if (!(flags & MSICAP0_MSIE))
> > +             return -EINVAL;
> > +
> > +     return ((flags & MSICAP0_MMENUM_MASK) >> MSICAP0_MMENUM_OFFSET);
> > +}
> > +
> > +static int rcar_pcie_ep_map_addr(struct pci_epc *epc, u8 fn,
> > +                              phys_addr_t addr, u64 pci_addr, size_t size)
> > +{
> > +     struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> > +     struct rcar_pcie *pcie = &ep->pcie;
> > +     struct resource res;
> > +     int window;
> > +     int err;
> > +
> > +     /* check if we have a link. */
> > +     err = rcar_pcie_wait_for_dl(pcie);
> > +     if (err) {
> > +             dev_err(pcie->dev, "link not up\n");
> > +             return err;
> > +     }
> > +
> > +     window = rcar_pcie_ep_get_window(ep, addr);
> > +     if (window < 0) {
> > +             dev_err(pcie->dev, "failed to get corresponding window\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     memset(&res, 0x0, sizeof(res));
> > +     res.start = pci_addr;
> > +     res.end = pci_addr + size - 1;
> > +     res.flags = IORESOURCE_MEM;
> > +
> > +     rcar_pcie_set_outbound(pcie, window, &res);
> > +
> > +     ep->ob_mapped_addr[window] = addr;
> > +
> > +     return 0;
> > +}
> > +
> > +static void rcar_pcie_ep_unmap_addr(struct pci_epc *epc, u8 fn,
> > +                                 phys_addr_t addr)
> > +{
> > +     struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> > +     struct resource res;
> > +     int idx;
> > +
> > +     for (idx = 0; idx < ep->num_ob_windows; idx++)
> > +             if (ep->ob_mapped_addr[idx] == addr)
> > +                     break;
> > +
> > +     if (idx >= ep->num_ob_windows)
> > +             return;
> > +
> > +     memset(&res, 0x0, sizeof(res));
> > +     rcar_pcie_set_outbound(&ep->pcie, idx, &res);
> > +
> > +     ep->ob_mapped_addr[idx] = 0;
> > +}
> > +
> > +static int rcar_pcie_ep_assert_intx(struct rcar_pcie_endpoint *ep,
> > +                                 u8 fn, u8 intx)
> > +{
> > +     struct rcar_pcie *pcie = &ep->pcie;
> > +     u32 val;
> > +
> > +     val = rcar_pci_read_reg(pcie, PCIEMSITXR);
> > +     if ((val & PCI_MSI_FLAGS_ENABLE)) {
> > +             dev_err(pcie->dev, "MSI is enabled, cannot assert INTx\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     val = rcar_pci_read_reg(pcie, PCICONF(1));
> > +     if ((val & INTDIS)) {
> > +             dev_err(pcie->dev, "INTx message transmission is disabled\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     val = rcar_pci_read_reg(pcie, PCIEINTXR);
> > +     if ((val & ASTINTX)) {
> > +             dev_err(pcie->dev, "INTx is already asserted\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     val |= ASTINTX;
> > +     rcar_pci_write_reg(pcie, val, PCIEINTXR);
> > +     mdelay(1);
>
> Since pci_epc_raise_irq() calls mutex_lock() and then this function,
> we can assume this function also can sleep. And, according to
> Documentation/timers/timers-howto.rst, we should use
> usleep_range(1000, 1000) instead of mdelay(1).
>
Sure will replace that.

> > +     val = rcar_pci_read_reg(pcie, PCIEINTXR);
> > +     val &= ~ASTINTX;
> > +     rcar_pci_write_reg(pcie, val, PCIEINTXR);
> > +
> > +     return 0;
> > +}
> > +
> > +static int rcar_pcie_ep_assert_msi(struct rcar_pcie *pcie,
> > +                                u8 fn, u8 interrupt_num)
> > +{
> > +     u16 msi_count;
> > +     u32 val;
> > +
> > +     /* Check MSI enable bit */
> > +     val = rcar_pci_read_reg(pcie, MSICAP(fn));
>
> Same here about MSICAP().
>
> > +     if (!(val & MSICAP0_MSIE))
> > +             return -EINVAL;
> > +
> > +     /* Get MSI numbers from MME */
> > +     msi_count = ((val & MSICAP0_MMENUM_MASK) >> MSICAP0_MMENUM_OFFSET);
> > +     msi_count = 1 << msi_count;
> > +
> > +     if (!interrupt_num || interrupt_num > msi_count)
> > +             return -EINVAL;
> > +
> > +     val = rcar_pci_read_reg(pcie, PCIEMSITXR);
> > +     rcar_pci_write_reg(pcie, val | (interrupt_num - 1), PCIEMSITXR);
> > +
> > +     return 0;
> > +}
> <snip>
> > diff --git a/drivers/pci/controller/pcie-rcar.h b/drivers/pci/controller/pcie-rcar.h
> > index cec7768b4725..0fbeff3d7b78 100644
> > --- a/drivers/pci/controller/pcie-rcar.h
> > +++ b/drivers/pci/controller/pcie-rcar.h
> > @@ -17,6 +17,7 @@
> >  #define PCIECDR                      0x000020
> >  #define PCIEMSR                      0x000028
> >  #define PCIEINTXR            0x000400
> > +#define  ASTINTX             BIT(16)
> >  #define PCIEPHYSR            0x0007f0
> >  #define  PHYRDY                      BIT(0)
> >  #define PCIEMSITXR           0x000840
> > @@ -55,12 +56,20 @@
> >
> >  /* Configuration */
> >  #define PCICONF(x)           (0x010000 + ((x) * 0x4))
> > +#define  INTDIS                      BIT(10)
> >  #define PMCAP(x)             (0x010040 + ((x) * 0x4))
> > +#define MSICAP(x)            (0x010050 + ((x) * 0x4))
> > +#define  MSICAP0_MSIE                BIT(16)
> > +#define  MSICAP0_MMESCAP_OFFSET      17
> > +#define  MSICAP0_MMENUM_OFFSET       20
> > +#define  MSICAP0_MMENUM_MASK GENMASK(22, 20)
>
> s/MSICAP0_MMENUM/MSICAP0_MMESE/ ?
>
Sure will replace that.

Cheers,
--Prabhakar

> Best regards,
> Yoshihiro Shimoda
>
> >  #define EXPCAP(x)            (0x010070 + ((x) * 0x4))
> >  #define VCCAP(x)             (0x010100 + ((x) * 0x4))
> >
> >  /* link layer */
> > +#define IDSETR0                      0x011000
> >  #define IDSETR1                      0x011004
> > +#define SUBIDSETR            0x011024
> >  #define TLCTLR                       0x011048
> >  #define MACSR                        0x011054
> >  #define  SPCHGFIN            BIT(4)
> > --
> > 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
