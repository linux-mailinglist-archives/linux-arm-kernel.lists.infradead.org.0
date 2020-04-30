Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A277A1C08AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 23:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qAyz7p8npvdw9BJjVrf07fIpnu3nu0yY57cgNIVscYI=; b=OI8CxfBTpl47tf
	BceSapNj+vK1TH98CqXuglB3D/7O4mgXECcq7Y3xC/5a4FlODk8xfnBqLjd8Ef41s9Cg1BatKO9uL
	JiLlY1GK2TOjM+KwItnGBPusP59uGk0yCoplOwzsAIX0+yOc1lhcgGf2eXbdhSOt1dgUqa3Db96Ei
	d4JwDkiqqU9LezrMSc1AQz6fpY6+vmPc8WPRqRsscwyoYkmPOy3rz/RKp56O2s9DrGPBPrVE/735Q
	3cW3aDPNDpXMRqcaNnzGD1eT0m9GbuJsRpnqPZmb32RTzwSsR/V5oh434j8prUpGKPjYOxUKmWBuX
	ArEIneh1AnU+2grsxKVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGIx-0004Mr-R1; Thu, 30 Apr 2020 21:01:11 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGIc-0004C6-Fq
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 21:00:52 +0000
Received: by mail-wr1-x442.google.com with SMTP id k1so8989708wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 14:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tUATwzpZxjtae1A7cwapMNJ5haJlC5HtdIYeEo2bhyI=;
 b=HdcxtBBTqr/xUzKOPsewGq+KhFdgf5wvseNGI2ZEIOXDWE46bkbjUocRTAcZ2uNLHp
 nForatMzsdPs8+L0IrFQikDJm2msJs+d9Tzz4+5/fMT652hPt+HIxLSJ02HdCHigVrN/
 9SAhr5CAesG8XtrGURdnaEgujEBNdBceBnfew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tUATwzpZxjtae1A7cwapMNJ5haJlC5HtdIYeEo2bhyI=;
 b=Ukx7aQBtShxX56XURUS3WSA2QbIlxb+iSqq90y9m9Gmesl2J6VdOQ2Vjtc634cApWQ
 uLextrxzhgNjm/aHMb/VptOG2VbSXGnOfVy2pzmVjH07XxJPfuFw3/NdQbt6HQtP20/h
 WFlH0rrN6Wv/xzCM6nYx2jSVLY2vLg7GM1KOvvvgoOjf6K8vDM0id1SgbMCBIMrswymo
 gQ+rrThLENUbbm6dnOK/lsPuLnuZVO3RjKPyOpHfucRr08Bz+oTr/pLV5P2Kks0Koi8I
 GmBxp3rJTBxrizTMXyAjEu68aVAtQ42wrcwos9SZuMWyHbMTY68+foWPV02o8ugaimYI
 Axsw==
X-Gm-Message-State: AGi0PubM/BAZAbE5jS40pHIULmxQXhRBGJUdgZ+xiLjzgVH3PcIVSuWQ
 s9p+y2YOk338HhsOrJ79Bfei2dETqqMQOA4Wy1HHSg==
X-Google-Smtp-Source: APiQypKv2reBsz0zsRnGDK76QZ4WHS1pIYRkKF7BUdppHJAInOIMuK9/LUue0hxUkkq3QrQxmOz7Y/HtoRhuAgd7rtY=
X-Received: by 2002:adf:f1c5:: with SMTP id z5mr504368wro.100.1588280448870;
 Thu, 30 Apr 2020 14:00:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200430185522.4116-3-james.quinlan@broadcom.com>
 <20200430203252.GA62266@bjorn-Precision-5520>
In-Reply-To: <20200430203252.GA62266@bjorn-Precision-5520>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Thu, 30 Apr 2020 17:00:36 -0400
Message-ID: <CA+-6iNwnMjAYZzYedBqooeJAbot_5A=9C8iFNMc=vdpnzmzVrw@mail.gmail.com>
Subject: Re: [PATCH 3/5] PCI: brcmstb: enable CRS
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_140050_541924_AC53D5DB 
X-CRM114-Status: GOOD (  22.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

On Thu, Apr 30, 2020 at 4:32 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Thu, Apr 30, 2020 at 02:55:20PM -0400, Jim Quinlan wrote:
> > From: Jim Quinlan <jquinlan@broadcom.com>
> >
> > Configuration Retry Request Status is off by default on this
> > PCIe controller.  Turn it on.
>
> Are you talking about CRS itself, i.e., the ability of a Root Port to
> deal with Completions with Configuration Retry Request Status?  That
> really shouldn't be switchable in the hardware since it's a required
> feature for all PCIe devices.
>
> Or are you talking about CRS Software Visibility, which is controlled
> by a bit in the PCIe Root Control register?  That *should* be managed
> by the PCI core in pci_enable_crs().  Does that generic method of
> controlling it not work for this device?
>
My mistake; the commit will be dropped.

Thanks,
Jim
> It looks like maybe the latter, since the generic:
>
>   #define  PCI_EXP_RTCTL_CRSSVE   0x0010
>
> matches your new PCIE_RC_CFG_PCIE_ROOT_CAP_CONTROL_RC_CRS_EN_MASK.
>
> If pci_enable_crs() doesn't work on this device, it sounds like a
> hardware defect that we need to work around, but I'm not sure that
> just enabling it unconditionally here is the right thing.
>
> > Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> > ---
> >  drivers/pci/controller/pcie-brcmstb.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >
> > diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> > index 5b0dec5971b8..2bc913c0262c 100644
> > --- a/drivers/pci/controller/pcie-brcmstb.c
> > +++ b/drivers/pci/controller/pcie-brcmstb.c
> > @@ -34,6 +34,9 @@
> >  #define BRCM_PCIE_CAP_REGS                           0x00ac
> >
> >  /* Broadcom STB PCIe Register Offsets */
> > +#define PCIE_RC_CFG_PCIE_ROOT_CAP_CONTROL                    0x00c8
> > +#define  PCIE_RC_CFG_PCIE_ROOT_CAP_CONTROL_RC_CRS_EN_MASK    0x10
> > +
> >  #define PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1                              0x0188
> >  #define  PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1_ENDIAN_MODE_BAR2_MASK       0xc
> >  #define  PCIE_RC_CFG_VENDOR_SPCIFIC_REG1_LITTLE_ENDIAN                       0x0
> > @@ -827,6 +830,12 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
> >                pci_speed_string(pcie_link_speed[cls]), nlw,
> >                ssc_good ? "(SSC)" : "(!SSC)");
> >
> > +     /* Enable configuration request retry (CRS) */
> > +     tmp = readl(base + PCIE_RC_CFG_PCIE_ROOT_CAP_CONTROL);
> > +     u32p_replace_bits(&tmp, 1,
> > +                       PCIE_RC_CFG_PCIE_ROOT_CAP_CONTROL_RC_CRS_EN_MASK);
> > +     writel(tmp, base + PCIE_RC_CFG_PCIE_ROOT_CAP_CONTROL);
> > +
> >       /* PCIe->SCB endian mode for BAR */
> >       tmp = readl(base + PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1);
> >       u32p_replace_bits(&tmp, PCIE_RC_CFG_VENDOR_SPCIFIC_REG1_LITTLE_ENDIAN,
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
