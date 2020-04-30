Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09DF1C0909
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 23:17:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ux7CWiBXRMRbC+KB6XfKHfu78EpkeMVq36GBNaSKsq4=; b=dDDhqh7OMKCKxb
	Einsk3RwzkmVKWVStDAYvHqxX9fCr7FwyrRyn/xwKgUUh/l0pYESzGHp/6KQeGtBvJDvkCyUt2ZDf
	owfvqYpIyoaQR4yHWnHkgdvGopZ22PL6iAwyYLpCuFh5IROwZxq+EZINa9Er3/DzCzVgIz1Pq3tvr
	f9Vf6XGfd1/6ct6vSItSfqbMWrwNDZh0ubinKjaHPMA7txd61pOHC7DY5ioH0e0aGVZmZkU/7k4uq
	y4QMEvigI3qVOc+SvRr22nC3mR71kGJ9NxUcMlHrW6kH/1crLbgJ0QgmCKRTUVjPSZrNQMw7BjkGt
	2FBMJCVt4AASSpFb/uyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGYt-0002GR-J2; Thu, 30 Apr 2020 21:17:39 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGYf-0002Eq-9i
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 21:17:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id i10so9018321wrv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 14:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8WL5+R63j920S0bt22y/MPX2pfyBeTnA7YIOS7PRZKQ=;
 b=frQcDQ4WCQVLv5/aD12Lmk0nCBUbfuzzI+xShWJ0lmfghfmg7u5Nyib31+KLW4DWf6
 emuYWTL/tu7itw/WxmjNCM6SVWPFLDFvZQ7ZVwNJ8cWZ/IQGEw25HZT3j5HnFP/80pEI
 bXwkKq1SaFh6ohPsp1ttXqes/+ik4IqrL5Kdo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8WL5+R63j920S0bt22y/MPX2pfyBeTnA7YIOS7PRZKQ=;
 b=BufIdpAJgdHx90hht+gqmlMfTLVa6HVPhmcMuI6skYXxuztBTsj5pItitGwrmzLB9+
 Va81qmRfVJQkxP9Gyf2hn3GyI754N2doXUcikjR2dj24+PYtIdj1iN3Iof2oSNUJ8RfQ
 e3/PM4sYqJb42nq97/R7qreBHNFgi2BwWzLb/krLhUt9TjOnG1udmuy3YXj6DZ0gaA+A
 aU24g4piEB7/6qaKS9u77oXD7Eu8Vxks4/S/koxznqxpC4+Y04MbE1otveaJH1jVBZfS
 dOPEt0hzhzUs/PcAF33tTS055oUpzqqjvDCvMSucoWCfJ7cSPmsopRLqZis3tVp8L36b
 qgcw==
X-Gm-Message-State: AGi0PuZFBjVqgaoQEV2n5Sn9KIA4WlYr01Ir81OmdQSeWS9h7Z2gLtvE
 wSfNjXsWLfhdSpzWVNAPiMdlGfiLo31gqSXgwRskyw==
X-Google-Smtp-Source: APiQypIrbs9SeynjYCjcsyxd3tGq+jY5BQu3eRy4jVk1GxW92FiZ1RNN0wUrj73yIHP4rSrPXj6fVWi+Iva7Qb24Nhw=
X-Received: by 2002:adf:f74f:: with SMTP id z15mr491830wrp.297.1588281441827; 
 Thu, 30 Apr 2020 14:17:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200430185522.4116-5-james.quinlan@broadcom.com>
 <20200430204017.GA62947@bjorn-Precision-5520>
In-Reply-To: <20200430204017.GA62947@bjorn-Precision-5520>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Thu, 30 Apr 2020 17:17:10 -0400
Message-ID: <CA+-6iNzwxL0T130Bww-TkoVWhn_2--a1URu4JktGb6aD6qGjbA@mail.gmail.com>
Subject: Re: [PATCH 5/5] PCI: brcmstb: disable L0s component of ASPM by default
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_141725_359708_F3429DB8 
X-CRM114-Status: GOOD (  23.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 4:40 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Thu, Apr 30, 2020 at 02:55:22PM -0400, Jim Quinlan wrote:
> > From: Jim Quinlan <jquinlan@broadcom.com>
> >
> > Some informal internal experiments has shown that the BrcmSTB ASPM L0s
> > savings may introduce an undesirable noise signal on some customers'
> > boards.  In addition, L0s was found lacking in realized power savings,
> > especially relative to the L1 ASPM component.  This is BrcmSTB's
> > experience and may not hold for others.  At any rate, we disable L0s
> > savings by default unless the DT node has the 'brcm,aspm-en-l0s'
> > property.
>
> I assume this works by writing the PCIe Link Capabilities register,
> which is read-only via the config space path used by the generic ASPM
> code, so that code thinks the device doesn't support L0s at all.
Correct.
>
> Documentation/devicetree/bindings/pci/rockchip-pcie-host.txt includes
> an "aspm-no-l0s" property.  It'd be nice if this could use the same
> property.
I'd like to use the existing "aspm-no-l0s" but we'd really like to
have it disabled by default.  I'll probably switch but let me dwell on
it a little.
Thanks, Jim
>
> > Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> > ---
> >  drivers/pci/controller/pcie-brcmstb.c | 14 +++++++++++++-
> >  1 file changed, 13 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> > index 2bc913c0262c..bc1d514b19e4 100644
> > --- a/drivers/pci/controller/pcie-brcmstb.c
> > +++ b/drivers/pci/controller/pcie-brcmstb.c
> > @@ -44,6 +44,9 @@
> >  #define PCIE_RC_CFG_PRIV1_ID_VAL3                    0x043c
> >  #define  PCIE_RC_CFG_PRIV1_ID_VAL3_CLASS_CODE_MASK   0xffffff
> >
> > +#define PCIE_RC_CFG_PRIV1_LINK_CAPABILITY                    0x04dc
> > +#define  PCIE_RC_CFG_PRIV1_LINK_CAPABILITY_ASPM_SUPPORT_MASK 0xc00
> > +
> >  #define PCIE_RC_DL_MDIO_ADDR                         0x1100
> >  #define PCIE_RC_DL_MDIO_WR_DATA                              0x1104
> >  #define PCIE_RC_DL_MDIO_RD_DATA                              0x1108
> > @@ -696,7 +699,7 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
> >       int num_out_wins = 0;
> >       u16 nlw, cls, lnksta;
> >       int i, ret;
> > -     u32 tmp;
> > +     u32 tmp, aspm_support;
> >
> >       /* Reset the bridge */
> >       brcm_pcie_bridge_sw_init_set(pcie, 1);
> > @@ -806,6 +809,15 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
> >               num_out_wins++;
> >       }
> >
> > +     /* Only support ASPM L1 unless L0s is explicitly desired */
> > +     aspm_support = PCIE_LINK_STATE_L1;
> > +     if (of_property_read_bool(pcie->np, "brcm,aspm-en-l0s"))
> > +             aspm_support |= PCIE_LINK_STATE_L0S;
> > +     tmp = readl(base + PCIE_RC_CFG_PRIV1_LINK_CAPABILITY);
> > +     u32p_replace_bits(&tmp, aspm_support,
> > +             PCIE_RC_CFG_PRIV1_LINK_CAPABILITY_ASPM_SUPPORT_MASK);
> > +     writel(tmp, base + PCIE_RC_CFG_PRIV1_LINK_CAPABILITY);
> > +
> >       /*
> >        * For config space accesses on the RC, show the right class for
> >        * a PCIe-PCIe bridge (the default setting is to be EP mode).
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
