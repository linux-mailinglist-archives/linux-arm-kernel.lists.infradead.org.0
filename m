Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7461F70AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 01:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=v5LP8lyYezTJ20y8xc6V3wbdYNC54oZ2SzjPDZXyBtA=; b=rIbmitqsrDaAul
	cgvdqzfGx0drRixPNFKNdyQqy4Z7bl7bz7bqf2+0DPmZP1GWt/MK4VTPhx7PkOQw9iXFYxh1hJEoU
	1tpOxWsYQbDsINDA6tYw6fe7mRbd5vuAwshvbNhbSjkkVzvicGDPZCiac0zmUE9IQh7tftX+kMVHj
	FYEG3vyMzrJnSaHgoGhq9D3UbJXCaHfnW81yhS3Rot9pKWBruyWD4Ery1svwWjD8okX1JeFGZBNPf
	QiKc08wNp+s4EshN/jKMsgoimgTAEfCZ+PeTGI9QLqrQYYZnNRKlbwkEVRsPHy+Hzat9aMUkfNRLw
	PBmTIhomc9vJ2g+kCkRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjWER-0000GV-VR; Thu, 11 Jun 2020 23:03:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjWEI-0000F0-1X; Thu, 11 Jun 2020 23:03:27 +0000
Received: from localhost (mobile-166-170-222-206.mycingular.net
 [166.170.222.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6CDF2075F;
 Thu, 11 Jun 2020 23:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591916605;
 bh=yM5pBJUy0BXOdjz4XMcr+tOSmSsPnlkkobonfqdzjSg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=D+qrXcCqbOyBxciiOWZgechHGVDuhy7PA3H6Zw/VkcKP/QvMh0ftEP2yKGml3S9kd
 09w1IeQULkDKinvROeRZPCVif1IFyJzDcFU8+jAJ4nKByZ1oX5ZQ1L9UVV+FlFvh4O
 kHK8XgBPGMoyp63Owk4z/DP0E1b4PenykufRuFt8=
Date: Thu, 11 Jun 2020 18:03:23 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Subject: Re: [PATCH][v2] iommu: arm-smmu-v3: Copy SMMU table for kdump kernel
Message-ID: <20200611230323.GA1616315@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ2QiJJ58nWe_vpjLWoFuM7s-7f7H-40q-4r-aGqorKPy9EPQw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_160326_121183_ACC35A84 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Myron Stowe <myron.stowe@redhat.com>,
 Vijay Mohan Pandarathil <vijaymohan.pandarathil@hp.com>,
 Marc Zyngier <maz@kernel.org>, Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-pci@vger.kernel.org,
 Prabhakar Kushwaha <pkushwaha@marvell.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 07, 2020 at 02:00:35PM +0530, Prabhakar Kushwaha wrote:
> On Thu, Jun 4, 2020 at 5:32 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > On Wed, Jun 03, 2020 at 11:12:48PM +0530, Prabhakar Kushwaha wrote:
> > > On Sat, May 30, 2020 at 1:03 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > > > On Fri, May 29, 2020 at 07:48:10PM +0530, Prabhakar Kushwaha wrote:
<snip>

> > > > > diff --git a/drivers/pci/pcie/err.c b/drivers/pci/pcie/err.c
> > > > > index 117c0a2b2ba4..26b908f55aef 100644
> > > > > --- a/drivers/pci/pcie/err.c
> > > > > +++ b/drivers/pci/pcie/err.c
> > > > > @@ -66,6 +66,20 @@ static int report_error_detected(struct pci_dev *dev,
> > > > >                 if (dev->hdr_type != PCI_HEADER_TYPE_BRIDGE) {
> > > > >                         vote = PCI_ERS_RESULT_NO_AER_DRIVER;
> > > > >                         pci_info(dev, "can't recover (no
> > > > > error_detected callback)\n");
> > > > > +
> > > > > +                       pci_save_state(dev);
> > > > > +                       pci_cfg_access_lock(dev);
> > > > > +
> > > > > +                       /* Quiesce the device completely */
> > > > > +                       pci_write_config_word(dev, PCI_COMMAND,
> > > > > +                             PCI_COMMAND_INTX_DISABLE);
> > > > > +                       if (!__pci_reset_function_locked(dev)) {
> > > > > +                               vote = PCI_ERS_RESULT_RECOVERED;
> > > > > +                               pci_info(dev, "recovered via pci level
> > > > > reset\n");
> > > > > +                       }
> >
> > So I guess we *do* need to save the state before the reset and restore
> > it (either that or enumerate the device from scratch just like we
> > would if it had been hot-added).  I'm not really thrilled with trying
> > to save the state after the device has already reported an error.  I'd
> > rather do it earlier, maybe during enumeration, like in
> > pci_init_capabilities().  But I don't understand all the subtleties of
> > dev->state_saved, so that requires some legwork.
> 
> I tried moving pci_save_state earlier. All observations are the same
> as mentioned in earlier discussions.

By "legwork", I didn't mean just trying things to see whether they
seem to work.  I meant researching the history to find out *why* it's
designed the way it is so that when we change it, we don't break
things.

For example, these commits are obviously important to understand:

  aa8c6c93747f ("PCI PM: Restore standard config registers of all devices early")
  c82f63e411f1 ("PCI: check saved state before restore")
  4b77b0a2ba27 ("PCI: Clear saved_state after the state has been restored")

I think we need to step back and separate this AER issue from the
whole SMMU table copying thing.  Then do the research and start a
new thread with a patch to fix just the AER issue.

The ARM guys would probably be grateful to be dropped from the AER
thread because it really has nothing to do with ARM.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
