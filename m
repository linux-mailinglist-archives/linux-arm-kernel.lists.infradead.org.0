Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD54EE28C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 05:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ZdJ2mZKuRgJVYGGNI8U615+A3UJSuPYk2MOmqeVoVw=; b=XgGCRFuEU7CKe6
	AB5DhWxCPMWQwrlh9NM+73VBKljv/Qc7Rlc/+IQDQdduXFe/auN3RbHt1yCwFi70dkABGyilwX6yI
	ZEk+0wLA4diAT09NOh5b4s8L3h1cJZ7Alo4Rt/jGB1m7nRfOcQWkAg8FAnK3e0+a9OPMkmpViv+yP
	oNhZK2gZCGbpXK88bL7coiZypefMnkMZaWOd2fsADqJOiQFVt6Lhjo0HUpbLD5mn2V+y6dSWxpgMd
	8WJxVI5Dm4qP0LFZ4eNunHAKY4oc0Kch1wQ1B64N+fr/jyZ9gmIIkyYDvSYFJ5H/0XoX1qSE3Y6tD
	JiXlY/CCy1sgjnLpdnRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNTiO-0002iV-F6; Thu, 24 Oct 2019 03:23:08 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNTiA-0002i9-Th
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 03:22:57 +0000
Received: by mail-wr1-x444.google.com with SMTP id e11so15544025wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 20:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LxgWmQM7qtnhNLoqpfev4EbCbpYsYSC4gKmtA8VlS7s=;
 b=f3+EkB1SkTxtFa2qO8z9TpGkjdUu2bpOoeZixAvg5AvMLs1euNJB2LCIjuIU+VuWSY
 /eQ6HtO6E5bSED1EJovtj6M35hInbZqufaXyst1OMfjXE30u7L8vENRqCXPVt3M8l3jY
 lizvm2R12l/SJ2GFoXx5LeXNv4+9XrfxW7qoU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LxgWmQM7qtnhNLoqpfev4EbCbpYsYSC4gKmtA8VlS7s=;
 b=EVHM+GPmJAUZq78+it2RiRKUvFcUv79bAhi5yimnYUcposj9Jq+CaXrFoL1Odsy2K6
 fFx7HbND5AKTJOV/zqwzC/df8b/Ab9hMV/vbX52tCfjIwzmm4QB0jSso8+/6cs//8z5C
 oej83IWqlWb4Amyzcq3UljSNiTQv6+h67auZL+Zv1wfY+vbpg5BjFLo6l6dv7bVmMjD3
 4el4Tf6zNVUNHAljX9cW9qDjKL2imbeFvpQI8aIwGsEKYnWf+IElEwCIrWH3X4UPAI/W
 650EXpU0H59+P4esDgJGtfutFdGdsWdTbQNZTKT6wj7xF/1rJuY3Mbl+n2FtIR7iTQbD
 poKA==
X-Gm-Message-State: APjAAAVb59QjH2nqt+UoGx13CfFnWcfeeryx/f5oZRifR4vsygit52kT
 sYs+lp9bDNg8U+W3+HQsTkSLQT3FjBFX/0zCEpL2lA==
X-Google-Smtp-Source: APXvYqyG9MzlQubrRgYExs+l/UMdE69TF938LH25z81UsvSyDHsfm4yK4JD+INrJnrkrCy1n5uL+O2aESo4czMbI4u4=
X-Received: by 2002:adf:e9c7:: with SMTP id l7mr1603850wrn.57.1571887372518;
 Wed, 23 Oct 2019 20:22:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190906035813.24046-1-abhishek.shah@broadcom.com>
 <20191015164303.GC25674@e121166-lin.cambridge.arm.com>
 <CAKUFe6bQPMirQ01s-ezaQcUU85J+moFKMO8sLZgvtG2EPowrGA@mail.gmail.com>
 <20191021103808.GA29528@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191021103808.GA29528@e121166-lin.cambridge.arm.com>
From: Abhishek Shah <abhishek.shah@broadcom.com>
Date: Thu, 24 Oct 2019 08:52:41 +0530
Message-ID: <CAKUFe6Yg4ZiDfTZyAcerHa7q9TGqsUikGNOqv4eDOhkPjh5rJQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] PCI: iproc: Invalidate PAXB address mapping before
 programming it
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_202254_963574_779F2A0C 
X-CRM114-Status: GOOD (  34.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 4:08 PM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Thu, Oct 17, 2019 at 07:57:56PM +0530, Abhishek Shah wrote:
> > Hi Lorenzo,
> >
> > Please see my comments inline:
> >
> > On Tue, Oct 15, 2019 at 10:13 PM Lorenzo Pieralisi
> > <lorenzo.pieralisi@arm.com> wrote:
> > >
> > > On Fri, Sep 06, 2019 at 09:28:13AM +0530, Abhishek Shah wrote:
> > > > Invalidate PAXB inbound/outbound address mapping each time before
> > > > programming it. This is helpful for the cases where we need to
> > > > reprogram inbound/outbound address mapping without resetting PAXB.
> > > > kexec kernel is one such example.
> > >
> > > This looks like a hack, explain to us please what it actually solves and
> > > why a full reset is not necessary.
> > >
> > The PAXB IP performs address translation(PCI<->AXI address) for both inbound and
> > outbound addresses (amongst other things) based on version of IP being used.
> > It does so using the IMAP/IARR/OMAP/OARR registers.
> >
> > These registers get programmed as per mappings specified in device tree during
> > PCI driver probe for each RC and do not get reset when kexec/kdump kernel boots.
> > This results in driver assuming valid mappings in place for some mapping windows
> > during kexec/kdump kernel boot, consequently it skips those windows and
> > we run out of available mapping windows, leading to mapping failure.
> >
> > Normally, we take care of resetting PAXB block in firmware, but in
> > primary kernel to kexec/kdump kernel handover, no firmware is executed
> > in between.  So, we just, by default, invalidate the mapping registers
> > each time before
> > programming them to solve the issue described above..
> > We do not need full reset for handling this.
>
> I see. A simple bitmap to detect which windows are *actually*
> programmed by the current kernel (that can be used by
>
> iproc_pcie_ob_is_valid()
>
> to carry out a valid check) would do as well instead of having to
> invalidate all the OB registers.
>
Okay, so you are suggesting to use variable/bitmap to hold status of
ib/ob windows (mapped/unmapped)
instead of using registers to check it. Please note that we would
still be programming corresponding
window register to mark it valid (HW requirement).

@Ray, could you please provide feedback on this? I think existing way
is proper for given driver design.

Also, as internal review tags are irrelevant as suggested by Lorenzo earlier,
could you please put sign again once reviewed?


Regards,
Abhishek

> It is up to you, let me know and I will merge code accordingly.
>
> Lorenzo
>
> > > > Signed-off-by: Abhishek Shah <abhishek.shah@broadcom.com>
> > > > Reviewed-by: Ray Jui <ray.jui@broadcom.com>
> > > > Reviewed-by: Vikram Mysore Prakash <vikram.prakash@broadcom.com>
> > >
> > > Patches are reviewed on public mailing lists, remove tags given
> > > on internal reviews - they are not relevant.
> > >
> > Ok, will remove.
> >
> > > > ---
> > > >  drivers/pci/controller/pcie-iproc.c | 28 ++++++++++++++++++++++++++++
> > > >  1 file changed, 28 insertions(+)
> > > >
> > > > diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
> > > > index e3ca46497470..99a9521ba7ab 100644
> > > > --- a/drivers/pci/controller/pcie-iproc.c
> > > > +++ b/drivers/pci/controller/pcie-iproc.c
> > > > @@ -1245,6 +1245,32 @@ static int iproc_pcie_map_dma_ranges(struct iproc_pcie *pcie)
> > > >       return ret;
> > > >  }
> > > >
> > > > +static void iproc_pcie_invalidate_mapping(struct iproc_pcie *pcie)
> > > > +{
> > > > +     struct iproc_pcie_ib *ib = &pcie->ib;
> > > > +     struct iproc_pcie_ob *ob = &pcie->ob;
> > > > +     int idx;
> > > > +
> > > > +     if (pcie->ep_is_internal)
> > >
> > > What's this check for and why leaving mappings in place is safe for
> > > this category of IPs ?
> > For this category of IP(PAXC), no mappings need to be programmed in
> > the first place.
> >
> > >
> > > > +             return;
> > > > +
> > > > +     if (pcie->need_ob_cfg) {
> > > > +             /* iterate through all OARR mapping regions */
> > > > +             for (idx = ob->nr_windows - 1; idx >= 0; idx--) {
> > > > +                     iproc_pcie_write_reg(pcie,
> > > > +                                          MAP_REG(IPROC_PCIE_OARR0, idx), 0);
> > > > +             }
> > > > +     }
> > > > +
> > > > +     if (pcie->need_ib_cfg) {
> > > > +             /* iterate through all IARR mapping regions */
> > > > +             for (idx = 0; idx < ib->nr_regions; idx++) {
> > > > +                     iproc_pcie_write_reg(pcie,
> > > > +                                          MAP_REG(IPROC_PCIE_IARR0, idx), 0);
> > > > +             }
> > > > +     }
> > > > +}
> > > > +
> > > >  static int iproce_pcie_get_msi(struct iproc_pcie *pcie,
> > > >                              struct device_node *msi_node,
> > > >                              u64 *msi_addr)
> > > > @@ -1517,6 +1543,8 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
> > > >       iproc_pcie_perst_ctrl(pcie, true);
> > > >       iproc_pcie_perst_ctrl(pcie, false);
> > > >
> > > > +     iproc_pcie_invalidate_mapping(pcie);
> > >
> > > It makes more sense to call this in the .shutdown() method if I
> > > understand what it does.
> > >
> > It would work for kexec kernel, but not for kdump kernel as only for
> > kexec'ed kernel,
> > "device_shutdown" callback is present. We are here taking care of both the cases
> > with this patch.
> >
> >
> > Regards,
> > Abhishek
> >
> > > Lorenzo
> > >
> > > >       if (pcie->need_ob_cfg) {
> > > >               ret = iproc_pcie_map_ranges(pcie, res);
> > > >               if (ret) {
> > > > --
> > > > 2.17.1
> > > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
