Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 044EBE2C76
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 10:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1gaoNTQKL0d9BRvmbBdkxSOLLAKmGLCzgZsLoY+DgZM=; b=W1lDRClzBjAv8D
	Tq1bzbeJFtpbF1yNghZiiYpHXySmdK3/L3Xh9Qm0SzKstJ0aNKX8Sm03CAT5XqGxd6lrS/qvz7jlz
	qR463pxmi0xorEIzgUFMRpofX+TZ4KWL0qCzQsyXQjxbYhtkQwuMT/wKcGGJnHypeE23KhKWSGWv3
	RekUk3xvX9oKURx72xNT5PpGMbHD357NVO2mKg3eIWcHGrlxqdzvuPldwLN3fGVJX08Y4cCbC3WVQ
	eGFnSnTWQzH5AE0OEcuMtibmbBln9858YH15kQvK0cN3S3diAoK5kZwWohKeq4elivd6NbHR5OUOI
	6F07nPWCCba0UVgcxBLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNYnc-00062f-04; Thu, 24 Oct 2019 08:48:52 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNYnP-00060r-Sz
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 08:48:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 104DE31F;
 Thu, 24 Oct 2019 01:48:26 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E568C3F718;
 Thu, 24 Oct 2019 01:48:24 -0700 (PDT)
Date: Thu, 24 Oct 2019 09:48:18 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Abhishek Shah <abhishek.shah@broadcom.com>
Subject: Re: [PATCH 1/1] PCI: iproc: Invalidate PAXB address mapping before
 programming it
Message-ID: <20191024084818.GA22148@e121166-lin.cambridge.arm.com>
References: <20190906035813.24046-1-abhishek.shah@broadcom.com>
 <20191015164303.GC25674@e121166-lin.cambridge.arm.com>
 <CAKUFe6bQPMirQ01s-ezaQcUU85J+moFKMO8sLZgvtG2EPowrGA@mail.gmail.com>
 <20191021103808.GA29528@e121166-lin.cambridge.arm.com>
 <CAKUFe6Yg4ZiDfTZyAcerHa7q9TGqsUikGNOqv4eDOhkPjh5rJQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKUFe6Yg4ZiDfTZyAcerHa7q9TGqsUikGNOqv4eDOhkPjh5rJQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_014840_025005_6A89B517 
X-CRM114-Status: GOOD (  37.62  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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

On Thu, Oct 24, 2019 at 08:52:41AM +0530, Abhishek Shah wrote:
> On Mon, Oct 21, 2019 at 4:08 PM Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > On Thu, Oct 17, 2019 at 07:57:56PM +0530, Abhishek Shah wrote:
> > > Hi Lorenzo,
> > >
> > > Please see my comments inline:
> > >
> > > On Tue, Oct 15, 2019 at 10:13 PM Lorenzo Pieralisi
> > > <lorenzo.pieralisi@arm.com> wrote:
> > > >
> > > > On Fri, Sep 06, 2019 at 09:28:13AM +0530, Abhishek Shah wrote:
> > > > > Invalidate PAXB inbound/outbound address mapping each time before
> > > > > programming it. This is helpful for the cases where we need to
> > > > > reprogram inbound/outbound address mapping without resetting PAXB.
> > > > > kexec kernel is one such example.
> > > >
> > > > This looks like a hack, explain to us please what it actually solves and
> > > > why a full reset is not necessary.
> > > >
> > > The PAXB IP performs address translation(PCI<->AXI address) for both inbound and
> > > outbound addresses (amongst other things) based on version of IP being used.
> > > It does so using the IMAP/IARR/OMAP/OARR registers.
> > >
> > > These registers get programmed as per mappings specified in device tree during
> > > PCI driver probe for each RC and do not get reset when kexec/kdump kernel boots.
> > > This results in driver assuming valid mappings in place for some mapping windows
> > > during kexec/kdump kernel boot, consequently it skips those windows and
> > > we run out of available mapping windows, leading to mapping failure.
> > >
> > > Normally, we take care of resetting PAXB block in firmware, but in
> > > primary kernel to kexec/kdump kernel handover, no firmware is executed
> > > in between.  So, we just, by default, invalidate the mapping registers
> > > each time before
> > > programming them to solve the issue described above..
> > > We do not need full reset for handling this.
> >
> > I see. A simple bitmap to detect which windows are *actually*
> > programmed by the current kernel (that can be used by
> >
> > iproc_pcie_ob_is_valid()
> >
> > to carry out a valid check) would do as well instead of having to
> > invalidate all the OB registers.
> >
> Okay, so you are suggesting to use variable/bitmap to hold status of
> ib/ob windows (mapped/unmapped) instead of using registers to check
> it. Please note that we would still be programming corresponding
> window register to mark it valid (HW requirement).

It is your choice.

> @Ray, could you please provide feedback on this? I think existing way
> is proper for given driver design.
> 
> Also, as internal review tags are irrelevant as suggested by Lorenzo
> earlier, could you please put sign again once reviewed?

Yes please, repost (with the solution you prefer) and Ray please
tag accordingly on ML.

Thanks,
Lorenzo

> Regards,
> Abhishek
> 
> > It is up to you, let me know and I will merge code accordingly.
> >
> > Lorenzo
> >
> > > > > Signed-off-by: Abhishek Shah <abhishek.shah@broadcom.com>
> > > > > Reviewed-by: Ray Jui <ray.jui@broadcom.com>
> > > > > Reviewed-by: Vikram Mysore Prakash <vikram.prakash@broadcom.com>
> > > >
> > > > Patches are reviewed on public mailing lists, remove tags given
> > > > on internal reviews - they are not relevant.
> > > >
> > > Ok, will remove.
> > >
> > > > > ---
> > > > >  drivers/pci/controller/pcie-iproc.c | 28 ++++++++++++++++++++++++++++
> > > > >  1 file changed, 28 insertions(+)
> > > > >
> > > > > diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
> > > > > index e3ca46497470..99a9521ba7ab 100644
> > > > > --- a/drivers/pci/controller/pcie-iproc.c
> > > > > +++ b/drivers/pci/controller/pcie-iproc.c
> > > > > @@ -1245,6 +1245,32 @@ static int iproc_pcie_map_dma_ranges(struct iproc_pcie *pcie)
> > > > >       return ret;
> > > > >  }
> > > > >
> > > > > +static void iproc_pcie_invalidate_mapping(struct iproc_pcie *pcie)
> > > > > +{
> > > > > +     struct iproc_pcie_ib *ib = &pcie->ib;
> > > > > +     struct iproc_pcie_ob *ob = &pcie->ob;
> > > > > +     int idx;
> > > > > +
> > > > > +     if (pcie->ep_is_internal)
> > > >
> > > > What's this check for and why leaving mappings in place is safe for
> > > > this category of IPs ?
> > > For this category of IP(PAXC), no mappings need to be programmed in
> > > the first place.
> > >
> > > >
> > > > > +             return;
> > > > > +
> > > > > +     if (pcie->need_ob_cfg) {
> > > > > +             /* iterate through all OARR mapping regions */
> > > > > +             for (idx = ob->nr_windows - 1; idx >= 0; idx--) {
> > > > > +                     iproc_pcie_write_reg(pcie,
> > > > > +                                          MAP_REG(IPROC_PCIE_OARR0, idx), 0);
> > > > > +             }
> > > > > +     }
> > > > > +
> > > > > +     if (pcie->need_ib_cfg) {
> > > > > +             /* iterate through all IARR mapping regions */
> > > > > +             for (idx = 0; idx < ib->nr_regions; idx++) {
> > > > > +                     iproc_pcie_write_reg(pcie,
> > > > > +                                          MAP_REG(IPROC_PCIE_IARR0, idx), 0);
> > > > > +             }
> > > > > +     }
> > > > > +}
> > > > > +
> > > > >  static int iproce_pcie_get_msi(struct iproc_pcie *pcie,
> > > > >                              struct device_node *msi_node,
> > > > >                              u64 *msi_addr)
> > > > > @@ -1517,6 +1543,8 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
> > > > >       iproc_pcie_perst_ctrl(pcie, true);
> > > > >       iproc_pcie_perst_ctrl(pcie, false);
> > > > >
> > > > > +     iproc_pcie_invalidate_mapping(pcie);
> > > >
> > > > It makes more sense to call this in the .shutdown() method if I
> > > > understand what it does.
> > > >
> > > It would work for kexec kernel, but not for kdump kernel as only for
> > > kexec'ed kernel,
> > > "device_shutdown" callback is present. We are here taking care of both the cases
> > > with this patch.
> > >
> > >
> > > Regards,
> > > Abhishek
> > >
> > > > Lorenzo
> > > >
> > > > >       if (pcie->need_ob_cfg) {
> > > > >               ret = iproc_pcie_map_ranges(pcie, res);
> > > > >               if (ret) {
> > > > > --
> > > > > 2.17.1
> > > > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
