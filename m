Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC721DB716
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 16:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aRBrvEmH5xt8nvF/V6ulAnr/dfDLzxLgPLpqlhD5D+A=; b=KD9D8TQTa8awZ+
	yoYkuSN9NI9U5v0uoPNPqCEd1V8mboVrsCgD5uaI+3LdiAH11G0zKhrGbujQ0z+dGuxg+Ytg8L6gs
	0SaTmGS2xdAfwr2u6gupoq0H3kIpSPZQR4xp2Y2X6L7s4QuRJzryOzfZImsIkD8Y3lJxJ0flmk1ql
	D0H6tgBNhLhwr6lWrrg9QjJp7pXUiNstcbJe3c3vGnnDEzhEmurmOjGRkV5jqoLPjc7VQDQVfZoe8
	N41zgd+1eEoNdloymH2+evzmdb8ajrRsVvvBhiNjz5tCPp6OwIaCl+w9IrOyqbZ0beC5tjmYqqUm1
	X2vjZylH+iwtiEfCaO+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbPkk-0006br-Ki; Wed, 20 May 2020 14:31:26 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbPka-0006a6-60
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 14:31:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id l18so3379758wrn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 07:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HP7BIyw2Y/C8hkvgzZRIvmSm/MyaptHmyY6CakMJdU0=;
 b=Tj9V6vdUREzHIKAIcpP3UNMkiwFZOfcPfxrRu9Xv38B5EuZqo0CIOpH5uP0XZ/JRTi
 dVeKogHLAYHhyKOiXt062o/+fbm82eFp7zEgKhKW64uh3b6SCTshnMRYrSS+lWlvUMT/
 fEtOzoXazBSk1EL3cd0pjluANGqfFdC4zEpaY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HP7BIyw2Y/C8hkvgzZRIvmSm/MyaptHmyY6CakMJdU0=;
 b=bHrHbHuozecq6TGEmkGaTlaGPQ+GQ3/CW+L0OcHr3s9rZ2jl8iJmAvvWuObDfD7TrK
 RCNo6AkPk2O1kpnQo4/RBxzNeo4d+bF9T8Y562+MQgAbdjFricr1ExRk7I/QMa2wNC9F
 gb1hsZfX2o30zCJZHtpvxVR44eJJEf1Ymf435KWkkPmeiXI9mibJAVBDHQi734cnw/oI
 dXNmDVisGZY6CnYTETB+vhXJL3e6Py1CYMamsdmtPeGOpIryRuvDMxXDHUFpGiXhx9pN
 QchwJoF5DsjcPr3yT/aWe57NOpPlQcNAJPhgPlmbumowQdCWlbti1QgXsTdoPkpyx0jl
 P5rQ==
X-Gm-Message-State: AOAM532tixYSvKAkXnfyT1VMM17n9cHA7U75uHCWu/z4ws3iOQNRMu1E
 /dEzsuvgp0SCHj0gWLHLrffRvdP5ouXtMOS6S/q5Sw==
X-Google-Smtp-Source: ABdhPJwVIXTx8ngi6DSuNnR19unkLPjwJTEgk1hS1LqfoqkdWGyUpA/+44SVaMxijYJ6PhLELxTsrpH9bpACjNB88j0=
X-Received: by 2002:adf:e688:: with SMTP id r8mr4324103wrm.274.1589985072196; 
 Wed, 20 May 2020 07:31:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200519203419.12369-1-james.quinlan@broadcom.com>
 <20200519203419.12369-5-james.quinlan@broadcom.com>
 <5a52e39ce99214877e83104b8ea9f95c0d5b4e90.camel@suse.de>
In-Reply-To: <5a52e39ce99214877e83104b8ea9f95c0d5b4e90.camel@suse.de>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Wed, 20 May 2020 10:30:59 -0400
Message-ID: <CA+-6iNwE7CkD0r7Z0cKGXxE14Unf7ZGsr4q7Z8dPhgYYXHXHEg@mail.gmail.com>
Subject: Re: [PATCH 04/15] PCI: brcmstb: Add compatibily of other chips
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_073116_227510_E98AC166 
X-CRM114-Status: GOOD (  24.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 7:51 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Hi Jim,
>
> On Tue, 2020-05-19 at 16:34 -0400, Jim Quinlan wrote:
> > From: Jim Quinlan <jquinlan@broadcom.com>
> >
> > Add in compatibility strings and code for three Broadcom STB chips.
> > Some of the register locations, shifts, and masks are different
> > for certain chips, requiring the use of different constants based
> > on of_id.
> >
> > We would like to add the following at this time to the match list
> > but we need to wait until the end of this patchset so that
> > everything works.
> >
> >     { .compatible = "brcm,bcm7211-pcie", .data = &generic_cfg },
> >     { .compatible = "brcm,bcm7278-pcie", .data = &bcm7278_cfg },
> >     { .compatible = "brcm,bcm7216-pcie", .data = &bcm7278_cfg },
> >     { .compatible = "brcm,bcm7445-pcie", .data = &generic_cfg },
> >
> > Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> > ---
> >  drivers/pci/controller/pcie-brcmstb.c | 103 +++++++++++++++++++++++---
> >  1 file changed, 91 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/pci/controller/pcie-brcmstb.c
> > b/drivers/pci/controller/pcie-brcmstb.c
> > index 73020b4ff090..c1cf4ea7d3d9 100644
> > --- a/drivers/pci/controller/pcie-brcmstb.c
> > +++ b/drivers/pci/controller/pcie-brcmstb.c
> > @@ -120,9 +120,8 @@
> >  #define  PCIE_EXT_SLOT_SHIFT                         15
> >  #define  PCIE_EXT_FUNC_SHIFT                         12
> >
> > -#define PCIE_RGR1_SW_INIT_1                          0x9210
> >  #define  PCIE_RGR1_SW_INIT_1_PERST_MASK                      0x1
> > -#define  PCIE_RGR1_SW_INIT_1_INIT_MASK                       0x2
> > +#define  PCIE_RGR1_SW_INIT_1_PERST_SHIFT             0x0
> >
> >  /* PCIe parameters */
> >  #define BRCM_NUM_PCIE_OUT_WINS               0x4
> > @@ -152,6 +151,69 @@
> >  #define SSC_STATUS_SSC_MASK          0x400
> >  #define SSC_STATUS_PLL_LOCK_MASK     0x800
> >
> > +#define IDX_ADDR(pcie)       \
> > +     (pcie->reg_offsets[EXT_CFG_INDEX])
> > +#define DATA_ADDR(pcie)      \
> > +     (pcie->reg_offsets[EXT_CFG_DATA])
> > +#define PCIE_RGR1_SW_INIT_1(pcie) \
> > +     (pcie->reg_offsets[RGR1_SW_INIT_1])
> > +
> > +enum {
> > +     RGR1_SW_INIT_1,
> > +     EXT_CFG_INDEX,
> > +     EXT_CFG_DATA,
> > +};
> > +
> > +enum {
> > +     RGR1_SW_INIT_1_INIT_MASK,
> > +     RGR1_SW_INIT_1_INIT_SHIFT,
> > +};
> > +
> > +enum pcie_type {
> > +     GENERIC,
> > +     BCM7278,
> > +};
> > +
> > +struct pcie_cfg_data {
> > +     const int *reg_field_info;
> > +     const int *offsets;
> > +     const enum pcie_type type;
> > +};
> > +
> > +static const int pcie_reg_field_info[] = {
> > +     [RGR1_SW_INIT_1_INIT_MASK] = 0x2,
> > +     [RGR1_SW_INIT_1_INIT_SHIFT] = 0x1,
> > +};
> > +
> > +static const int pcie_reg_field_info_bcm7278[] = {
> > +     [RGR1_SW_INIT_1_INIT_MASK] = 0x1,
> > +     [RGR1_SW_INIT_1_INIT_SHIFT] = 0x0,
> > +};
> > +
> > +static const int pcie_offsets[] = {
> > +     [RGR1_SW_INIT_1] = 0x9210,
> > +     [EXT_CFG_INDEX]  = 0x9000,
> > +     [EXT_CFG_DATA]   = 0x9004,
> > +};
> > +
> > +static const struct pcie_cfg_data generic_cfg = {
> > +     .reg_field_info = pcie_reg_field_info,
> > +     .offsets        = pcie_offsets,
> > +     .type           = GENERIC,
> > +};
> > +
> > +static const int pcie_offset_bcm7278[] = {
> > +     [RGR1_SW_INIT_1] = 0xc010,
> > +     [EXT_CFG_INDEX] = 0x9000,
> > +     [EXT_CFG_DATA] = 0x9004,
> > +};
> > +
> > +static const struct pcie_cfg_data bcm7278_cfg = {
> > +     .reg_field_info = pcie_reg_field_info_bcm7278,
> > +     .offsets        = pcie_offset_bcm7278,
> > +     .type           = BCM7278,
> > +};
>
> It's not essential, but if v2 is due I'd suggest factoring out the bcm2728
> specific structures above, and moving them to patch #15. This will keep a
> clearer division between the patch introducing the infrastructure and the one
> adding the support for a new device.
The problem is that one of the commits needs the 7278 type so it has
to be declared earlier.
>
> > +
> >  struct brcm_msi {
> >       struct device           *dev;
> >       void __iomem            *base;
> > @@ -176,6 +238,9 @@ struct brcm_pcie {
> >       int                     gen;
> >       u64                     msi_target_addr;
> >       struct brcm_msi         *msi;
> > +     const int               *reg_offsets;
> > +     const int               *reg_field_info;
> > +     enum pcie_type          type;
> >  };
> >
> >  /*
> > @@ -602,20 +667,21 @@ static struct pci_ops brcm_pcie_ops = {
> >
> >  static inline void brcm_pcie_bridge_sw_init_set(struct brcm_pcie *pcie, u32
> > val)
> >  {
> > -     u32 tmp;
> > +     u32 tmp, mask =  pcie->reg_field_info[RGR1_SW_INIT_1_INIT_MASK];
> > +     u32 shift = pcie->reg_field_info[RGR1_SW_INIT_1_INIT_SHIFT];
>
> I don't think you need shift here, IIUC u32p_replace_bits() will take care of
> all the masking and shifting internally, moreover, you'd be able to drop the
> shift entry from reg_field_info.
Got it.
>
> > -     tmp = readl(pcie->base + PCIE_RGR1_SW_INIT_1);
> > -     u32p_replace_bits(&tmp, val, PCIE_RGR1_SW_INIT_1_INIT_MASK);
> > -     writel(tmp, pcie->base + PCIE_RGR1_SW_INIT_1);
> > +     tmp = readl(pcie->base + PCIE_RGR1_SW_INIT_1(pcie));
> > +     tmp = (tmp & ~mask) | ((val << shift) & mask);
> > +     writel(tmp, pcie->base + PCIE_RGR1_SW_INIT_1(pcie));
> >  }
>
> Regards,
> Nicolas
>
Thanks!
Jim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
