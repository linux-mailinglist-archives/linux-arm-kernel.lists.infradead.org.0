Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAF21DDA10
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 00:17:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cg9fOUkTtxF1U3C8YRtdrW9i3C5Ma5AgrGzYoYw4YFA=; b=JB0bNKO3NS6co4
	OCkP3TGV29PMGVYqac+z6uJwhATTRm3ixzMWcaTj07V5DhO+FAC5ykZ86YBgG0XEjqnYVr7TKhDq9
	keY1cArDjkDBFLrxibkMJYokDrp6weGhfK1b/I3irtyHjIskAfg89JXpDugnPQ74z/i450RDYXxGW
	N51mBSX6PmdttT9B0mzdimmo44CwFkoJIvTaEolvQgwm5MfHzWnK68IwPzCwFvSuUVOOnXoG9JeM4
	qugxSzHgP06SQtO4RYb8I9WZsnWSzBpEOSWMRocoFudo8CQsUjtGi35kGUmzn93T8LK0HjU8t2XEv
	YQu7iIlaryqua2GbvUjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbtVQ-0005JB-Ua; Thu, 21 May 2020 22:17:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbtVD-0005Hz-O1
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 22:17:25 +0000
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D570320885
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 22:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590099441;
 bh=HzD57J0iAQbzn6CHyO+2aYIounPzkL1CgXVv4jovBaY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JhsEZkMSqBQ18GZ/4n/TqDTYuYTS3p/cueniQEMWwT2z/Jht5FCksTM+hflro/sPl
 TNS78nlDgCnqQxXwD2ZUkiYblsiMqjk3WgPE9a3stkz2yNhwSJi8CBQU0js4vbKZvr
 hdQjdlFYSqVz4t1B0jQk2ktTR/5jbN3EqF3I+c5A=
Received: by mail-ot1-f54.google.com with SMTP id b18so6806627oti.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 15:17:21 -0700 (PDT)
X-Gm-Message-State: AOAM533oUWpAX3Q2DEcguqjL216xQW63WS0mZi0ptPll6meXPa3brirH
 XO7EuLC6CxVKfV0Z8dYkED6KGtjEbRk0o0hicg==
X-Google-Smtp-Source: ABdhPJwboSlobxmdzmVU++jSPITa+kW6o704htikNXq7Hl+hxzjiWIb7wpWvMS/IRKzM3idvSZl4svX87j24gC6Dk9g=
X-Received: by 2002:a9d:1441:: with SMTP id h59mr8909986oth.192.1590099441037; 
 Thu, 21 May 2020 15:17:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200506151429.12255-1-kishon@ti.com>
 <20200506151429.12255-4-kishon@ti.com>
 <20200520220724.GA636352@bogus> <37d2d6c3-232d-adb8-4e0b-e0c699ec435a@ti.com>
In-Reply-To: <37d2d6c3-232d-adb8-4e0b-e0c699ec435a@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 21 May 2020 16:17:09 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK8xRTxuJ39yPMzE1JMBrYccXB5QqsSvn7HosvrEQGdWQ@mail.gmail.com>
Message-ID: <CAL_JsqK8xRTxuJ39yPMzE1JMBrYccXB5QqsSvn7HosvrEQGdWQ@mail.gmail.com>
Subject: Re: [PATCH v4 03/14] PCI: cadence: Add support to use custom read and
 write accessors
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_151723_825427_3593B415 
X-CRM114-Status: GOOD (  27.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, PCI <linux-pci@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-omap <linux-omap@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 7:33 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Hi Rob,
>
> On 5/21/2020 3:37 AM, Rob Herring wrote:
> > On Wed, May 06, 2020 at 08:44:18PM +0530, Kishon Vijay Abraham I wrote:
> >> Add support to use custom read and write accessors. Platforms that
> >> don't support half word or byte access or any other constraint
> >> while accessing registers can use this feature to populate custom
> >> read and write accessors. These custom accessors are used for both
> >> standard register access and configuration space register access of
> >> the PCIe host bridge.
> >>
> >> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> >> ---
> >>  drivers/pci/controller/cadence/pcie-cadence.h | 107 +++++++++++++++---
> >>  1 file changed, 94 insertions(+), 13 deletions(-)
> >
> > Actually, take back my R-by...
> >
> >>
> >> diff --git a/drivers/pci/controller/cadence/pcie-cadence.h b/drivers/pci/controller/cadence/pcie-cadence.h
> >> index df14ad002fe9..70b6b25153e8 100644
> >> --- a/drivers/pci/controller/cadence/pcie-cadence.h
> >> +++ b/drivers/pci/controller/cadence/pcie-cadence.h
> >> @@ -223,6 +223,11 @@ enum cdns_pcie_msg_routing {
> >>      MSG_ROUTING_GATHER,
> >>  };
> >>
> >> +struct cdns_pcie_ops {
> >> +    u32     (*read)(void __iomem *addr, int size);
> >> +    void    (*write)(void __iomem *addr, int size, u32 value);
> >> +};
> >> +
> >>  /**
> >>   * struct cdns_pcie - private data for Cadence PCIe controller drivers
> >>   * @reg_base: IO mapped register base
> >> @@ -239,7 +244,7 @@ struct cdns_pcie {
> >>      int                     phy_count;
> >>      struct phy              **phy;
> >>      struct device_link      **link;
> >> -    const struct cdns_pcie_common_ops *ops;
> >> +    const struct cdns_pcie_ops *ops;
> >>  };
> >>
> >>  /**
> >> @@ -299,69 +304,145 @@ struct cdns_pcie_ep {
> >>  /* Register access */
> >>  static inline void cdns_pcie_writeb(struct cdns_pcie *pcie, u32 reg, u8 value)
> >>  {
> >> -    writeb(value, pcie->reg_base + reg);
> >> +    void __iomem *addr = pcie->reg_base + reg;
> >> +
> >> +    if (pcie->ops && pcie->ops->write) {
> >> +            pcie->ops->write(addr, 0x1, value);
> >> +            return;
> >> +    }
> >> +
> >> +    writeb(value, addr);
> >>  }
> >>
> >>  static inline void cdns_pcie_writew(struct cdns_pcie *pcie, u32 reg, u16 value)
> >>  {
> >> -    writew(value, pcie->reg_base + reg);
> >> +    void __iomem *addr = pcie->reg_base + reg;
> >> +
> >> +    if (pcie->ops && pcie->ops->write) {
> >> +            pcie->ops->write(addr, 0x2, value);
> >> +            return;
> >> +    }
> >> +
> >> +    writew(value, addr);
> >>  }
> >
> > cdns_pcie_writeb and cdns_pcie_writew are used, so remove them.
> >
> >>
> >>  static inline void cdns_pcie_writel(struct cdns_pcie *pcie, u32 reg, u32 value)
> >>  {
> >> -    writel(value, pcie->reg_base + reg);
> >> +    void __iomem *addr = pcie->reg_base + reg;
> >> +
> >> +    if (pcie->ops && pcie->ops->write) {
> >> +            pcie->ops->write(addr, 0x4, value);
> >> +            return;
> >> +    }
> >> +
> >> +    writel(value, addr);
> >
> > writel isn't broken for you, so you don't need this either.
> >
> >>  }
> >>
> >>  static inline u32 cdns_pcie_readl(struct cdns_pcie *pcie, u32 reg)
> >>  {
> >> -    return readl(pcie->reg_base + reg);
> >> +    void __iomem *addr = pcie->reg_base + reg;
> >> +
> >> +    if (pcie->ops && pcie->ops->read)
> >> +            return pcie->ops->read(addr, 0x4);
> >> +
> >> +    return readl(addr);
> >
> > And neither is readl.
>
> Sure, I'll remove all the unused functions and avoid using ops for readl and
> writel.
> >
> >>  }
> >>
> >>  /* Root Port register access */
> >>  static inline void cdns_pcie_rp_writeb(struct cdns_pcie *pcie,
> >>                                     u32 reg, u8 value)
> >>  {
> >> -    writeb(value, pcie->reg_base + CDNS_PCIE_RP_BASE + reg);
> >> +    void __iomem *addr = pcie->reg_base + CDNS_PCIE_RP_BASE + reg;
> >> +
> >> +    if (pcie->ops && pcie->ops->write) {
> >> +            pcie->ops->write(addr, 0x1, value);
> >> +            return;
> >> +    }
> >> +
> >> +    writeb(value, addr);
> >>  }
> >>
> >>  static inline void cdns_pcie_rp_writew(struct cdns_pcie *pcie,
> >>                                     u32 reg, u16 value)
> >>  {
> >> -    writew(value, pcie->reg_base + CDNS_PCIE_RP_BASE + reg);
> >> +    void __iomem *addr = pcie->reg_base + CDNS_PCIE_RP_BASE + reg;
> >> +
> >> +    if (pcie->ops && pcie->ops->write) {
> >> +            pcie->ops->write(addr, 0x2, value);
> >> +            return;
> >> +    }
> >> +
> >> +    writew(value, addr);
> >
> > You removed 2 out of 3 calls to this. I think I'd just make the root
> > port writes always be 32-bit. It is all just one time init stuff
> > anyways.
> >
> > Either rework the calls to assemble the data into 32-bits or keep these
> > functions and do the RMW here.
>
> The problem with assembling data into 32-bits is we have to read/write with
> different offsets. We'll give PCI_VENDOR_ID offset for modifying deviceID,
> PCI_INTERRUPT_LINE for modifying INTERRUPT_PIN which might get non-intuitive.
> Similarly in endpoint we read and write to MSI_FLAGS (which is at offset 2) we
> have to directly use MSI capability offset.
>
> And doing RMW in the accessors would mean the same RMW op is repeated. So if we
> just have cdns_pcie_rp_writeb() and cdns_pcie_rp_writew(), the same code will
> be repeated here twice.

Why repeated? Just copy what the config accessors do:

static inline void cdns_pcie_write_sz(u32 val, void __iomem *addr, int size)
{
  u32 tmp, mask, where = (unsigned long)addr & 0x3;

  addr -= where;

  mask = ~(((1 << (size * 8)) - 1) << (where * 8));
  tmp = readl(addr) & mask;
  tmp |= val << (where * 8);
  writel(tmp, addr);
}

/* Root Port register access */
static inline void cdns_pcie_rp_writeb(struct cdns_pcie *pcie,
       u32 reg, u8 value)
{
  cdns_pcie_write_sz(value, pcie->reg_base + CDNS_PCIE_RP_BASE + reg, 1);
}

static inline void cdns_pcie_rp_writew(struct cdns_pcie *pcie,
       u32 reg, u16 value)
{
  cdns_pcie_write_sz(value, pcie->reg_base + CDNS_PCIE_RP_BASE + reg, 2);
}

>
> IMHO using ops is a lot cleaner for these cases. IMHO except for removing
> unused functions and not changing readl/writel, others should use ops.

Trying to read the DW PCI driver I don't agree...

Again, unless doing RMW is fundamentally broken (like it is for config
space at runtime), then you only want to do it on broken h/w and ops
would be appropriate. It is all mostly one time setup, so doing a few
extra reads isn't a big deal. If you really care about speed on that,
probably should use the _relaxed accessor variants.

I'm being hopeful the Cadence IP doesn't become the mess that DW is.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
