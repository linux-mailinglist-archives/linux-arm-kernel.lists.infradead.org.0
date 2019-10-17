Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E89DB00F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULk0hBqI2itzfX3LdMntbP7gdw4gh5VhJ5yMi3cN/hc=; b=cLv+HWEze72afe
	/K6DbKilbDdXvftrA02+OXCmlWydnAcUclPkdqmeGeAPORGKA2j8uUwuoors1F040xlMThyZN+Urb
	APfAIpVTHmGPRwqbzdfH1aYkAcjYd+1v1amlCZwv+OQ8BeiF5K8bHmhKh9nPFoHVLn1O4bait27zG
	+8kkRvvTcpoFMLgrI7bxcf3Eb+9vj8xaDORQgZcjpyK3CWQ8WzHmT58sfqTscjge06IJz6oFe0Juk
	dX8CPNljeW9vsLmx63nqhlk6UpkEOc7D1RMHGHCDS6RSyMkmNQlvUwMbYxi8ucdVmTFybEYgDPOiL
	kO1AncXFCZyO4wP2ya7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6lK-0000oM-7T; Thu, 17 Oct 2019 14:28:22 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6l9-0000nT-As
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:28:12 +0000
Received: by mail-wm1-x343.google.com with SMTP id 5so2809139wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 07:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S2aBeWNRxDtTRHfUI9htMJzW/AtuitZvg8GIzAAl28Q=;
 b=dBe6YjaxoHZnJhbTRjkiiW25KskKFuyEEzNZwJ3xB0fHdrmMgZNiXJ0YOJz+a9Edna
 SxqTulViehkQ8MxhZ1JzcAs/0ag5fwwYrZZag4c9ffQFKCW1lCuRXqmzkWQwOGWg0d6V
 ISljxqOj7xejKJGlCLKqFiRnbm9LJcvM4v4nA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S2aBeWNRxDtTRHfUI9htMJzW/AtuitZvg8GIzAAl28Q=;
 b=BRhYUUD3mno3rxZbSLkB6O3dpqhozD+WrMbXTzKx3p88uC2gwKpz3yXmekGxjZdEuJ
 fsckpbo0uGa80jdpaupNqmDbhJiIZP82idK+njq3/PMhvEwlRq29QIzNl8/4TeZayFnP
 eIiDyXYk+BVXTwSHnvtlR5177Qim1YNzF8cSxQFDfRB0DOZ/W7MuuOu6FqaNUEPf74VB
 ixmVkEgIOtHfcIrrMIkALcaCH0IsO9E3CXTvIXVsfDVsTVelIUhLTHV81oLz2xlrPkpV
 r430Qe9yjkfS1yWOjaRmZKotppvgvJVp4AMzBH9h48RSMIJ6s4qjLEyvER9YpQ80gj+M
 KJtg==
X-Gm-Message-State: APjAAAU+A7t50PO5+37uQ4qJANe93EpO4gx2f90rN9tNkbeprOi01cNK
 nT5u6YKz5cDlqVkqGGhvDQRxKdkt41U83+IL+BdZ8Q==
X-Google-Smtp-Source: APXvYqw1AUbLjfiWzfHvCBnmIR1upVknDfmaHDyI/L5HIOSueUVlPr33+tGstbzFvY6ybaVHvFP6LjdMT4TIIKsBc+g=
X-Received: by 2002:a7b:ce12:: with SMTP id m18mr3107079wmc.108.1571322488120; 
 Thu, 17 Oct 2019 07:28:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190906035813.24046-1-abhishek.shah@broadcom.com>
 <20191015164303.GC25674@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191015164303.GC25674@e121166-lin.cambridge.arm.com>
From: Abhishek Shah <abhishek.shah@broadcom.com>
Date: Thu, 17 Oct 2019 19:57:56 +0530
Message-ID: <CAKUFe6bQPMirQ01s-ezaQcUU85J+moFKMO8sLZgvtG2EPowrGA@mail.gmail.com>
Subject: Re: [PATCH 1/1] PCI: iproc: Invalidate PAXB address mapping before
 programming it
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_072811_388072_E0CF55D2 
X-CRM114-Status: GOOD (  25.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lorenzo,

Please see my comments inline:

On Tue, Oct 15, 2019 at 10:13 PM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Fri, Sep 06, 2019 at 09:28:13AM +0530, Abhishek Shah wrote:
> > Invalidate PAXB inbound/outbound address mapping each time before
> > programming it. This is helpful for the cases where we need to
> > reprogram inbound/outbound address mapping without resetting PAXB.
> > kexec kernel is one such example.
>
> This looks like a hack, explain to us please what it actually solves and
> why a full reset is not necessary.
>
The PAXB IP performs address translation(PCI<->AXI address) for both inbound and
outbound addresses (amongst other things) based on version of IP being used.
It does so using the IMAP/IARR/OMAP/OARR registers.

These registers get programmed as per mappings specified in device tree during
PCI driver probe for each RC and do not get reset when kexec/kdump kernel boots.
This results in driver assuming valid mappings in place for some mapping windows
during kexec/kdump kernel boot, consequently it skips those windows and
we run out of available mapping windows, leading to mapping failure.

Normally, we take care of resetting PAXB block in firmware, but in
primary kernel
to kexec/kdump kernel handover, no firmware is executed in between.
So, we just, by default, invalidate the mapping registers each time before
programming them to solve the issue described above..
We do not need full reset for handling this.

> > Signed-off-by: Abhishek Shah <abhishek.shah@broadcom.com>
> > Reviewed-by: Ray Jui <ray.jui@broadcom.com>
> > Reviewed-by: Vikram Mysore Prakash <vikram.prakash@broadcom.com>
>
> Patches are reviewed on public mailing lists, remove tags given
> on internal reviews - they are not relevant.
>
Ok, will remove.

> > ---
> >  drivers/pci/controller/pcie-iproc.c | 28 ++++++++++++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> >
> > diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
> > index e3ca46497470..99a9521ba7ab 100644
> > --- a/drivers/pci/controller/pcie-iproc.c
> > +++ b/drivers/pci/controller/pcie-iproc.c
> > @@ -1245,6 +1245,32 @@ static int iproc_pcie_map_dma_ranges(struct iproc_pcie *pcie)
> >       return ret;
> >  }
> >
> > +static void iproc_pcie_invalidate_mapping(struct iproc_pcie *pcie)
> > +{
> > +     struct iproc_pcie_ib *ib = &pcie->ib;
> > +     struct iproc_pcie_ob *ob = &pcie->ob;
> > +     int idx;
> > +
> > +     if (pcie->ep_is_internal)
>
> What's this check for and why leaving mappings in place is safe for
> this category of IPs ?
For this category of IP(PAXC), no mappings need to be programmed in
the first place.

>
> > +             return;
> > +
> > +     if (pcie->need_ob_cfg) {
> > +             /* iterate through all OARR mapping regions */
> > +             for (idx = ob->nr_windows - 1; idx >= 0; idx--) {
> > +                     iproc_pcie_write_reg(pcie,
> > +                                          MAP_REG(IPROC_PCIE_OARR0, idx), 0);
> > +             }
> > +     }
> > +
> > +     if (pcie->need_ib_cfg) {
> > +             /* iterate through all IARR mapping regions */
> > +             for (idx = 0; idx < ib->nr_regions; idx++) {
> > +                     iproc_pcie_write_reg(pcie,
> > +                                          MAP_REG(IPROC_PCIE_IARR0, idx), 0);
> > +             }
> > +     }
> > +}
> > +
> >  static int iproce_pcie_get_msi(struct iproc_pcie *pcie,
> >                              struct device_node *msi_node,
> >                              u64 *msi_addr)
> > @@ -1517,6 +1543,8 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
> >       iproc_pcie_perst_ctrl(pcie, true);
> >       iproc_pcie_perst_ctrl(pcie, false);
> >
> > +     iproc_pcie_invalidate_mapping(pcie);
>
> It makes more sense to call this in the .shutdown() method if I
> understand what it does.
>
It would work for kexec kernel, but not for kdump kernel as only for
kexec'ed kernel,
"device_shutdown" callback is present. We are here taking care of both the cases
with this patch.


Regards,
Abhishek

> Lorenzo
>
> >       if (pcie->need_ob_cfg) {
> >               ret = iproc_pcie_map_ranges(pcie, res);
> >               if (ret) {
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
