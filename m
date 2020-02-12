Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 801F815A23D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 08:39:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MKwjCGwRWUKIC/B04z9Ug4bu2I2LD1uIkPZ7hwtlKA=; b=C5N2tarp0+llvP
	cMQhYJPCkC0e/RVEoYW7yj/D+pG9k6yLkmhSFfnEr4phPP1FMRJfA5K4AKJyafs+NEh1FLK31G4/q
	IqnFNymZ8pHK58FUgMAUhrxxnYSUdAbn3hYmR4LMcP7m2AHl9gLgoshOyluWSaYaB67oyUV9SvDlq
	yqSSIbFBiM4mpVsyHDF/5oB3xMUBbKTBFLSA+HxQmOrm5ZPUHB11iRjqtjZOMYJ75Fupb3uI7CJa6
	Y2RwvjJtsyMWyvVxg7Uc2araMp6q5ZnRim5OjMxfcrSv8U7qtpr8IHaAILl1RpSASDzjdGSEAfpl4
	/4bO+JaLEb0kcrGVLO8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1mc7-0006Nm-JW; Wed, 12 Feb 2020 07:39:15 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1mbt-0006MS-L6; Wed, 12 Feb 2020 07:39:06 +0000
Received: by mail-oi1-x243.google.com with SMTP id c16so1157882oic.3;
 Tue, 11 Feb 2020 23:38:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XWghytwp0n8q64ohIAtcpx40VHgmilMQUtH3KTGYx7s=;
 b=TC9l1keL4Hd58ZG6CwkLWbCSXi5tO6plnzWPUvdQr3NN3ngxbK8wuGWtKxo3V2o0IF
 35uTR//ax4ujBc5PoSxF448KRz+e2JRA/9tboijhEqO4xvGUdJ3w3qu0cgB7JLy3KCvN
 ZV9RPjikYG5lPOx/BpbwfcbWOa4ta+57T3E/8GZT72GEbeDiyk4YbifmxU2gA7bX7stq
 Yyay/i9ESUd6i51aqEw9scXiXaPLZR7cl2dA/XS4X1b1DvLceTqs36YW0fBJe0TNWdQN
 dR8NlBMscQr7A7gjx+20IohWRh97Il+wzZJKrowF0vOxTG4AORg/XckkIfwTFN+Hrxlw
 xKow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XWghytwp0n8q64ohIAtcpx40VHgmilMQUtH3KTGYx7s=;
 b=HuBkXon5aXeaRIY/LnC/LYgKigU+zKECIHgijml+mwVOjr1RcvSj+BtESBxN5a+oFP
 RwVD7E9kWlu+VHT4Bmxlt8dkHsSMKz88TAMokSqi4SQd142gDDUl2Wk0wYewaBH21asm
 LXT2yrwWvfqBz3xJHd7DgPQ07cGCzOXOB9r5f+Bls/C6tRjxa8oGidUUNRqM8IJPEs3B
 NXZrCMwk0Xvs4aMepaqMjrYSUf1AXVuZ7FFmqJqyi6BDj044J/TO+UxukMiM5aY1Wrbe
 4AF86AR0OXOh+cQWv6+G0CTnmCrcE/m9IlH8VnPbmXPhSdco+sCUoPTJmwXC43+Y/2H5
 qE7A==
X-Gm-Message-State: APjAAAWztYJF79ecDxmtOc+3Jzfumwz/T3Hh88vLKlnRtXQ0QJ89WUtm
 uU8k5ou4yXcREZUEWyKu7nnSJ3YNmimrjC+vjD0=
X-Google-Smtp-Source: APXvYqy+D0WYnWREpjT/u0UNR1D7So/F/RtHMLjlI1VSXbpeR4V4jqXmLbxEl/+iyD6g9WR4zGz6r2ARl+qBlG1GTW0=
X-Received: by 2002:aca:5a04:: with SMTP id o4mr5370457oib.71.1581493138499;
 Tue, 11 Feb 2020 23:38:58 -0800 (PST)
MIME-Version: 1.0
References: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200208183641.6674-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200212034239.GA38314@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200212034239.GA38314@ubuntu-m2-xlarge-x86>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 12 Feb 2020 07:38:32 +0000
Message-ID: <CA+V-a8vMcRvsh7+pcgD4jk50X0DtZ9uXFegZVXM5M1k-R6jOVA@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] PCI: rcar: Add support for rcar PCIe controller in
 endpoint mode
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_233904_637518_746FDD45 
X-CRM114-Status: GOOD (  22.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 clang-built-linux@googlegroups.com, Kishon Vijay Abraham I <kishon@ti.com>,
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

Hi Nathan,

On Wed, Feb 12, 2020 at 3:42 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hi Lad,
>
> On Sat, Feb 08, 2020 at 06:36:40PM +0000, Lad Prabhakar wrote:
> > This patch adds support for rcar PCIe controller to work in endpoint mode.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  drivers/pci/controller/Kconfig        |   7 +
> >  drivers/pci/controller/Makefile       |   1 +
> >  drivers/pci/controller/pcie-rcar-ep.c | 492 ++++++++++++++++++++++++++++++++++
> >  drivers/pci/controller/pcie-rcar.h    |   6 +
> >  4 files changed, 506 insertions(+)
> >  create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
> >
>
> <snip>
>
> > diff --git a/drivers/pci/controller/pcie-rcar-ep.c b/drivers/pci/controller/pcie-rcar-ep.c
> > new file mode 100644
> > index 0000000..32a7fca
> > --- /dev/null
> > +++ b/drivers/pci/controller/pcie-rcar-ep.c
>
> <snip>
>
> > +static int rcar_pcie_ep_set_bar(struct pci_epc *epc, u8 func_no,
> > +                             struct pci_epf_bar *epf_bar)
> > +{
> > +     struct rcar_pcie *ep = epc_get_drvdata(epc);
> > +     dma_addr_t cpu_addr = epf_bar->phys_addr;
> > +     int flags = epf_bar->flags | LAR_ENABLE | LAM_64BIT;
> > +     enum pci_barno bar = epf_bar->barno;
> > +     u64 size = 1ULL << fls64(epf_bar->size - 1);
> > +     u32 mask;
> > +     int idx;
> > +     int err;
> > +
> > +     idx = find_first_zero_bit(ep->ib_window_map, ep->num_ib_windows);
> > +     if (idx >= ep->num_ib_windows) {
> > +             dev_err(ep->dev, "no free inbound window\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     if ((flags & PCI_BASE_ADDRESS_SPACE) == PCI_BASE_ADDRESS_SPACE_IO)
> > +             flags |= IO_SPACE;
> > +
> > +     ep->bar_to_atu[bar] = idx;
> > +     /* use 64 bit bars */
> > +     set_bit(idx, ep->ib_window_map);
> > +     set_bit(idx + 1, ep->ib_window_map);
> > +
> > +     if (cpu_addr > 0) {
> > +             unsigned long nr_zeros = __ffs64(cpu_addr);
> > +             u64 alignment = 1ULL << nr_zeros;
> > +
> > +             size = min(size, alignment);
> > +     } else {
> > +             size = size;
> > +     }
>
> We received a report from the 0day bot that clang warns that this is
> unnecessary. Would you mind removing it if you have to spin up a new
> version?
>
Sure ill fix that.

Cheers,
--Prabhakar Lad

> You can view the full report here:
>
> https://groups.google.com/d/msg/clang-built-linux/KHUKw5L8yxw/Mb7KRMG7BQAJ
>
> Cheers,
> Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
