Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 688891DB6D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 16:27:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j9WYUYoGsl2axdfxVQVklwP7xH2eebtlaTAush4jUuQ=; b=ah4m7bKQ4+ZdJQ
	sWLWpVzg0lE1BA78PYyrDefr3Z0T02DIMUzgONUQiCi3K7XjHdVRuzsLfIUgbXdaUu9qvXuVn5f5q
	Ay/DOlD26RsnfxfQSgtVKF6R5H5IGcA7WzONwzWGXGpyLuYF8ip79ZiSm2GfV2rrDLHXihTrcupZd
	Pjs8FIOvK+FrljiR0Ws0+XkfmCXa3kYIHsLp49UT6FeJTEBZV0ZBhbHFb7IR2Ja6Y/dK8CjuMTARD
	xn7A30n2mVW4e5eRIMguQ3xwyE7qE/Xo55ph4XJPG59xUAg+DmBMY7HMCmCnjKojR+OaSDer67vJ+
	CB8Diy6ipVlixRRX9U7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbPh9-0003N2-Ti; Wed, 20 May 2020 14:27:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbPh0-0003Le-0G
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 14:27:35 +0000
Received: by mail-wm1-x341.google.com with SMTP id t8so182356wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 07:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ptEFNOIgk4B9+DYPafEJRUQDpVN+/z6CM7j9644NXs0=;
 b=N6+F8AHyBsGr0JrchNCjPmACddbP02WM42JVatgqpfz453fPvPxNSwETDM9nnCuNdx
 lmwiFvLsbcA8X8p1dCkos0MC1aP9vojACfnbjOWQMj89Vrd6li3tz3eZNJvm6Cey3kdh
 ibmCBGe++ATvMcSFUTOTMoFa+1gS6rUIgVBiM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ptEFNOIgk4B9+DYPafEJRUQDpVN+/z6CM7j9644NXs0=;
 b=Xvfw6lVxuzs9pd9DjUBEADWAyqxPGNG+dU+T4bb9WBqf4XgZVWMQhfIbHW9EKXEuvo
 KzOJkw0vg3pYqclyBQ6kmaXvJw0OZho5PcHylVCUGybSAdr4QG+aux/CaXJ11sJuxirR
 a7BdysDV2gQUo5IuYUbgxECnvDzH4d8/9Mo/VIhrp9KxGINXQP3YzwedfV4ZGhUQH2BZ
 FfG9LPgspGfGsGHnCSA7uLxH4P1pplXlVbps3gkXd0FzWd/oCslxLWGd2iVh17kx4PAB
 Ez+7LE13CF4yH9f4R3XgK7JAd9936QHwQpLjB3bMoE69KpZMrB80WCvACTVWeQXL3OmB
 9ekA==
X-Gm-Message-State: AOAM531nMxbLDEpe24eopGJw2UoLIRtTahOnnX+4QHfHQd5oguqqzy3I
 BpGoaN86FNMhRL7WYmJKkZ92n6L/OyezJ+7ValLTdw==
X-Google-Smtp-Source: ABdhPJySvQfAlpumPlaeBx0gloIM87hF3NnQtQHYZAsxKgeWGRoXo9/4rd6GvjpLG1hbdorf7f1PdTxBLXECGZ/RMao=
X-Received: by 2002:a1c:7d02:: with SMTP id y2mr3542879wmc.92.1589984850314;
 Wed, 20 May 2020 07:27:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200519203419.12369-1-james.quinlan@broadcom.com>
 <20200519203419.12369-15-james.quinlan@broadcom.com>
 <4a49e7724e9a12e4f128a5e9ff4181da7af40bd3.camel@suse.de>
In-Reply-To: <4a49e7724e9a12e4f128a5e9ff4181da7af40bd3.camel@suse.de>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Wed, 20 May 2020 10:27:17 -0400
Message-ID: <CA+-6iNxB6CS4OJSfCpUfJrd9=7EjFrKwugBT1WycKv-C_j3zAQ@mail.gmail.com>
Subject: Re: [PATCH 14/15] PCI: brcmstb: Set bus max burst side by chip type
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_072734_057836_022792CE 
X-CRM114-Status: GOOD (  19.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

On Wed, May 20, 2020 at 9:44 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> On Tue, 2020-05-19 at 16:34 -0400, Jim Quinlan wrote:
> > From: Jim Quinlan <jquinlan@broadcom.com>
> >
> > The proper value of the parameter SCB_MAX_BURST_SIZE varies
> > per chip.  The 2711 family requires 128B whereas other devices
> > can employ 512.  The assignment is complicated by the fact
> > that the values for this two-bit field have different meanings;
> >
> >   Value   Type_Generic    Type_7278
> >
> >      00       Reserved         128B
> >      01           128B         256B
> >      10           256B         512B
> >      11           512B     Reserved
> >
> > Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> > ---
> >  drivers/pci/controller/pcie-brcmstb.c | 18 +++++++++++++++---
> >  1 file changed, 15 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/pci/controller/pcie-brcmstb.c
> > b/drivers/pci/controller/pcie-brcmstb.c
> > index 7bf945efd71b..0dfa1bbd9764 100644
> > --- a/drivers/pci/controller/pcie-brcmstb.c
> > +++ b/drivers/pci/controller/pcie-brcmstb.c
> > @@ -53,7 +53,7 @@
> >  #define  PCIE_MISC_MISC_CTRL_SCB_ACCESS_EN_MASK              0x1000
> >  #define  PCIE_MISC_MISC_CTRL_CFG_READ_UR_MODE_MASK   0x2000
> >  #define  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_MASK     0x300000
> > -#define  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_128              0x0
> > +
> >  #define  PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK          0xf8000000
> >  #define  PCIE_MISC_MISC_CTRL_SCB1_SIZE_MASK          0x07c00000
> >  #define  PCIE_MISC_MISC_CTRL_SCB2_SIZE_MASK          0x0000001f
> > @@ -276,6 +276,7 @@ struct brcm_pcie {
> >       int                     num_memc;
> >       u64                     memc_size[PCIE_BRCM_MAX_MEMC];
> >       u32                     hw_rev;
> > +     const struct of_device_id *of_id;
> >  };
> >
> >  /*
> > @@ -841,7 +842,7 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
> >       int num_out_wins = 0;
> >       u16 nlw, cls, lnksta;
> >       int i, ret, memc;
> > -     u32 tmp, aspm_support;
> > +     u32 tmp, burst, aspm_support;
> >
> >       /* Reset the bridge */
> >       brcm_pcie_bridge_sw_init_set(pcie, 1);
> > @@ -857,10 +858,20 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
> >       /* Wait for SerDes to be stable */
> >       usleep_range(100, 200);
> >
> > +     /*
> > +      * SCB_MAX_BURST_SIZE is a two bit field.  For GENERIC chips it
> > +      * is encoded as 0=128, 1=256, 2=512, 3=Rsvd, for BCM7278 it
> > +      * is encoded as 0=Rsvd, 1=128, 2=256, 3=512.
> > +      */
> > +     if (strcmp(pcie->of_id->compatible, "brcm,bcm2711-pcie") == 0)
>
> Would it make sense to use pcie->type here? I know GENERIC != BCM2711, but we
> could define it and avoid adding redundant info in struct brcm_pcie.
Yes, that would get rid of the need for keeping of_id around.

Thanks,
Jim
>
> Regards,
> Nicolas
>
> > +             burst = 0x0; /* 128B */
> > +     else
> > +             burst = (pcie->type == BCM7278) ? 0x3 : 0x2; /* 512 bytes */
> > +
> >       /* Set SCB_MAX_BURST_SIZE, CFG_READ_UR_MODE, SCB_ACCESS_EN */
> >       u32p_replace_bits(&tmp, 1, PCIE_MISC_MISC_CTRL_SCB_ACCESS_EN_MASK);
> >       u32p_replace_bits(&tmp, 1, PCIE_MISC_MISC_CTRL_CFG_READ_UR_MODE_MASK);
> > -     u32p_replace_bits(&tmp, PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_128,
> > +     u32p_replace_bits(&tmp, burst,
> >                         PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_MASK);
> >       writel(tmp, base + PCIE_MISC_MISC_CTRL);
> >
> > @@ -1200,6 +1211,7 @@ static int brcm_pcie_probe(struct platform_device *pdev)
> >       pcie->reg_offsets = data->offsets;
> >       pcie->reg_field_info = data->reg_field_info;
> >       pcie->type = data->type;
> > +     pcie->of_id = of_id;
> >
> >       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >       pcie->base = devm_ioremap_resource(&pdev->dev, res);
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
