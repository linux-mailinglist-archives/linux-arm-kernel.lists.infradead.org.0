Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFED1F0A83
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 10:31:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRJXpTXsx7k+vFXdmLAwefwOtMlYIgADwrFzrfGsGQU=; b=dnEi6+YbRIw7zv
	Lbb72B1KzJCrEIr6zLt1Iy87jYXblUQQslMKGoZ39cAJL2fIIljl9h1js3TwhF+XPU9pgsZ9FjFjv
	mklaRYqZxjJ1D1q9wNY7ythdO5+8xu4os3wVDcEmTQgOcbUmUE9n2RwQkG0jAcsjtDqOQLeq8bXxE
	NYVAEiZkOubsH/hGb0776HShemraGXywjQqTMUZxu10UeBfA+QcW+HGmTFDUKFIznp00jLX37+zWq
	FDU8IMeiVgaVzoauFBq8qNEWaPmE0nEWrFP3RXGhmPX3jV4v9S8SW0ZHwji4/j0EY4w2L4dqvm9Hd
	7NLHejDeACzckIhbrABg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhqiF-00052n-MN; Sun, 07 Jun 2020 08:31:27 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhqi9-00051h-5w; Sun, 07 Jun 2020 08:31:23 +0000
Received: by mail-wr1-x442.google.com with SMTP id r7so14149625wro.1;
 Sun, 07 Jun 2020 01:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NcQInjX379yPN2NNKpCGE7xltAZE5T6OcAn7HsTnWe8=;
 b=bwIKoagm/JX7q3N69a9o7zEhfsI31SPh9DvabpZp4izCvTgZ0AitxrBLAOR1sg24xr
 OMgvDK2NAUSZMiM156rCtDp5TNNLYYQV8vMOJUS9xkyJ4u0rxs2T0MTaHvTVk5vPCLLO
 T85p9Ctu/n7YfoDv+fjLa0zNsaj2yE+OXXetJKwUu/Qo9S4uasf3VLOxrJnfTW3b8E0e
 sPiGfSRbZrX9+vST8ufDR2z3bPMrCJfGcB5MO5/ldITkmsdOUUFu6fNFyKV+nwa8rxq1
 h9YvTDwtPtOMe+tR7ZVvr+QJ3EzoDtFSnPGvZSR1zXYrh71IVjuJi4+LjhT/0uWbqY/Y
 OE9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NcQInjX379yPN2NNKpCGE7xltAZE5T6OcAn7HsTnWe8=;
 b=GR9YRwjXXoj97EskfHrrbUG7kTUY/f17Ol0TR0RKLzZK+9j5CxCgsTXoejGLTJC43q
 GfzneDTq8uJchITrdss6d8/1pa8lGBEObH7MxtBjoWo9RO9B7qPNkTwh9ax2CAkriQlF
 xbLX63rl5py6/oXIzGzyxpKC3EjadOquFo7rk3RlzQkS1VMKCE0rW3cYMWMe0bq2ah63
 7ETBXeteh7O6eJZ3lnPeSiOrWXShLWRZx5Z9RvWfPqqdYrtN3Mcbun3KOz8BW4l/PxMy
 NjHf9ogtGYf7RYHyK1DkbDrpfTpy36gkNnFKTCV87DZOkHymWGD06aM99NSBcJWrd0TQ
 WGSA==
X-Gm-Message-State: AOAM533Z0NoRbjVrc2pl9seUqsWWSMuxeH+bAesC925+CcT4YzutK+Ii
 TYQ8wLzrDVCwH3xsTfLjEvu78zZwrnThJ9hAka0=
X-Google-Smtp-Source: ABdhPJyfuiB0HdqteJjP3gu2AmtliLrb1Lgp3Hf2Nouq1WA2q4FKEVY0TVIX3u7QBYO020sZhoz4OZfLCJwe0Z9r5Yc=
X-Received: by 2002:a5d:44cf:: with SMTP id z15mr19011567wrr.164.1591518672147; 
 Sun, 07 Jun 2020 01:31:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ2QiJ+fhPWAxZXzHhNFLkHr47e+wTqqz+s5r+utgCP=C6qsjw@mail.gmail.com>
 <20200604000232.GA956503@bjorn-Precision-5520>
In-Reply-To: <20200604000232.GA956503@bjorn-Precision-5520>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Sun, 7 Jun 2020 14:00:35 +0530
Message-ID: <CAJ2QiJJ58nWe_vpjLWoFuM7s-7f7H-40q-4r-aGqorKPy9EPQw@mail.gmail.com>
Subject: Re: [PATCH][v2] iommu: arm-smmu-v3: Copy SMMU table for kdump kernel
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_013121_224256_E8176FCB 
X-CRM114-Status: GOOD (  49.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.pkin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Bjorn,

On Thu, Jun 4, 2020 at 5:32 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Wed, Jun 03, 2020 at 11:12:48PM +0530, Prabhakar Kushwaha wrote:
> > On Sat, May 30, 2020 at 1:03 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > > On Fri, May 29, 2020 at 07:48:10PM +0530, Prabhakar Kushwaha wrote:
> > > > On Thu, May 28, 2020 at 1:48 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > > > >
> > > > > On Wed, May 27, 2020 at 05:14:39PM +0530, Prabhakar Kushwaha wrote:
> > > > > > On Fri, May 22, 2020 at 4:19 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > > > > > > On Thu, May 21, 2020 at 09:28:20AM +0530, Prabhakar Kushwaha wrote:
> > > > > > > > On Wed, May 20, 2020 at 4:52 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > > > > > > > > On Thu, May 14, 2020 at 12:47:02PM +0530, Prabhakar Kushwaha wrote:
> > > > > > > > > > On Wed, May 13, 2020 at 3:33 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > > > > > > > > > > On Mon, May 11, 2020 at 07:46:06PM -0700, Prabhakar Kushwaha wrote:
> > > > > > > > > > > > An SMMU Stream table is created by the primary kernel. This table is
> > > > > > > > > > > > used by the SMMU to perform address translations for device-originated
> > > > > > > > > > > > transactions. Any crash (if happened) launches the kdump kernel which
> > > > > > > > > > > > re-creates the SMMU Stream table. New transactions will be translated
> > > > > > > > > > > > via this new table..
> > > > > > > > > > > >
> > > > > > > > > > > > There are scenarios, where devices are still having old pending
> > > > > > > > > > > > transactions (configured in the primary kernel). These transactions
> > > > > > > > > > > > come in-between Stream table creation and device-driver probe.
> > > > > > > > > > > > As new stream table does not have entry for older transactions,
> > > > > > > > > > > > it will be aborted by SMMU.
> > > > > > > > > > > >
> > > > > > > > > > > > Similar observations were found with PCIe-Intel 82576 Gigabit
> > > > > > > > > > > > Network card. It sends old Memory Read transaction in kdump kernel.
> > > > > > > > > > > > Transactions configured for older Stream table entries, that do not
> > > > > > > > > > > > exist any longer in the new table, will cause a PCIe Completion Abort.
> > > > > > > > > > >
> > > > > > > > > > > That sounds like exactly what we want, doesn't it?
> > > > > > > > > > >
> > > > > > > > > > > Or do you *want* DMA from the previous kernel to complete?  That will
> > > > > > > > > > > read or scribble on something, but maybe that's not terrible as long
> > > > > > > > > > > as it's not memory used by the kdump kernel.
> > > > > > > > > >
> > > > > > > > > > Yes, Abort should happen. But it should happen in context of driver.
> > > > > > > > > > But current abort is happening because of SMMU and no driver/pcie
> > > > > > > > > > setup present at this moment.
> > > > > > > > >
> > > > > > > > > I don't understand what you mean by "in context of driver."  The whole
> > > > > > > > > problem is that we can't control *when* the abort happens, so it may
> > > > > > > > > happen in *any* context.  It may happen when a NIC receives a packet
> > > > > > > > > or at some other unpredictable time.
> > > > > > > > >
> > > > > > > > > > Solution of this issue should be at 2 place
> > > > > > > > > > a) SMMU level: I still believe, this patch has potential to overcome
> > > > > > > > > > issue till finally driver's probe takeover.
> > > > > > > > > > b) Device level: Even if something goes wrong. Driver/device should
> > > > > > > > > > able to recover.
> > > > > > > > > >
> > > > > > > > > > > > Returned PCIe completion abort further leads to AER Errors from APEI
> > > > > > > > > > > > Generic Hardware Error Source (GHES) with completion timeout.
> > > > > > > > > > > > A network device hang is observed even after continuous
> > > > > > > > > > > > reset/recovery from driver, Hence device is no more usable.
> > > > > > > > > > >
> > > > > > > > > > > The fact that the device is no longer usable is definitely a problem.
> > > > > > > > > > > But in principle we *should* be able to recover from these errors.  If
> > > > > > > > > > > we could recover and reliably use the device after the error, that
> > > > > > > > > > > seems like it would be a more robust solution that having to add
> > > > > > > > > > > special cases in every IOMMU driver.
> > > > > > > > > > >
> > > > > > > > > > > If you have details about this sort of error, I'd like to try to fix
> > > > > > > > > > > it because we want to recover from that sort of error in normal
> > > > > > > > > > > (non-crash) situations as well.
> > > > > > > > > > >
> > > > > > > > > > Completion abort case should be gracefully handled.  And device should
> > > > > > > > > > always remain usable.
> > > > > > > > > >
> > > > > > > > > > There are 2 scenario which I am testing with Ethernet card PCIe-Intel
> > > > > > > > > > 82576 Gigabit Network card.
> > > > > > > > > >
> > > > > > > > > > I)  Crash testing using kdump root file system: De-facto scenario
> > > > > > > > > >     -  kdump file system does not have Ethernet driver
> > > > > > > > > >     -  A lot of AER prints [1], making it impossible to work on shell
> > > > > > > > > > of kdump root file system.
> > > > > > > > >
> > > > > > > > > In this case, I think report_error_detected() is deciding that because
> > > > > > > > > the device has no driver, we can't do anything.  The flow is like
> > > > > > > > > this:
> > > > > > > > >
> > > > > > > > >   aer_recover_work_func               # aer_recover_work
> > > > > > > > >     kfifo_get(aer_recover_ring, entry)
> > > > > > > > >     dev = pci_get_domain_bus_and_slot
> > > > > > > > >     cper_print_aer(dev, ...)
> > > > > > > > >       pci_err("AER: aer_status:")
> > > > > > > > >       pci_err("AER:   [14] CmpltTO")
> > > > > > > > >       pci_err("AER: aer_layer=")
> > > > > > > > >     if (AER_NONFATAL)
> > > > > > > > >       pcie_do_recovery(dev, pci_channel_io_normal)
> > > > > > > > >         status = CAN_RECOVER
> > > > > > > > >         pci_walk_bus(report_normal_detected)
> > > > > > > > >           report_error_detected
> > > > > > > > >             if (!dev->driver)
> > > > > > > > >               vote = NO_AER_DRIVER
> > > > > > > > >               pci_info("can't recover (no error_detected callback)")
> > > > > > > > >             *result = merge_result(*, NO_AER_DRIVER)
> > > > > > > > >             # always NO_AER_DRIVER
> > > > > > > > >         status is now NO_AER_DRIVER
> > > > > > > > >
> > > > > > > > > So pcie_do_recovery() does not call .report_mmio_enabled() or .slot_reset(),
> > > > > > > > > and status is not RECOVERED, so it skips .resume().
> > > > > > > > >
> > > > > > > > > I don't remember the history there, but if a device has no driver and
> > > > > > > > > the device generates errors, it seems like we ought to be able to
> > > > > > > > > reset it.
> > > > > > > >
> > > > > > > > But how to reset the device considering there is no driver.
> > > > > > > > Hypothetically, this case should be taken care by PCIe subsystem to
> > > > > > > > perform reset at PCIe level.
> > > > > > >
> > > > > > > I don't understand your question.  The PCI core (not the device
> > > > > > > driver) already does the reset.  When pcie_do_recovery() calls
> > > > > > > reset_link(), all devices on the other side of the link are reset.
> > > > > > >
> > > > > > > > > We should be able to field one (or a few) AER errors, reset the
> > > > > > > > > device, and you should be able to use the shell in the kdump kernel.
> > > > > > > > >
> > > > > > > > here kdump shell is usable only problem is a "lot of AER Errors". One
> > > > > > > > cannot see what they are typing.
> > > > > > >
> > > > > > > Right, that's what I expect.  If the PCI core resets the device, you
> > > > > > > should get just a few AER errors, and they should stop after the
> > > > > > > device is reset.
> > > > > > >
> > > > > > > > > >     -  Note kdump shell allows to use makedumpfile, vmcore-dmesg applications.
> > > > > > > > > >
> > > > > > > > > > II) Crash testing using default root file system: Specific case to
> > > > > > > > > > test Ethernet driver in second kernel
> > > > > > > > > >    -  Default root file system have Ethernet driver
> > > > > > > > > >    -  AER error comes even before the driver probe starts.
> > > > > > > > > >    -  Driver does reset Ethernet card as part of probe but no success.
> > > > > > > > > >    -  AER also tries to recover. but no success.  [2]
> > > > > > > > > >    -  I also tries to remove AER errors by using "pci=noaer" bootargs
> > > > > > > > > > and commenting ghes_handle_aer() from GHES driver..
> > > > > > > > > >           than different set of errors come which also never able to recover [3]
> > > > > > > > > >
> > > > > > > >
> > > > > > > > Please suggest your view on this case. Here driver is preset.
> > > > > > > > (driver/net/ethernet/intel/igb/igb_main.c)
> > > > > > > > In this case AER errors starts even before driver probe starts.
> > > > > > > > After probe, driver does the device reset with no success and even AER
> > > > > > > > recovery does not work.
> > > > > > >
> > > > > > > This case should be the same as the one above.  If we can change the
> > > > > > > PCI core so it can reset the device when there's no driver,  that would
> > > > > > > apply to case I (where there will never be a driver) and to case II
> > > > > > > (where there is no driver now, but a driver will probe the device
> > > > > > > later).
> > > > > >
> > > > > > Does this means change are required in PCI core.
> > > > >
> > > > > Yes, I am suggesting that the PCI core does not do the right thing
> > > > > here.
> > > > >
> > > > > > I tried following changes in pcie_do_recovery() but it did not help.
> > > > > > Same error as before.
> > > > > >
> > > > > > -- a/drivers/pci/pcie/err.c
> > > > > > +++ b/drivers/pci/pcie/err.c
> > > > > >         pci_info(dev, "broadcast resume message\n");
> > > > > >         pci_walk_bus(bus, report_resume, &status);
> > > > > > @@ -203,7 +207,12 @@ pci_ers_result_t pcie_do_recovery(struct pci_dev *dev,
> > > > > >         return status;
> > > > > >
> > > > > >  failed:
> > > > > >         pci_uevent_ers(dev, PCI_ERS_RESULT_DISCONNECT);
> > > > > > +       pci_reset_function(dev);
> > > > > > +       pci_aer_clear_device_status(dev);
> > > > > > +       pci_aer_clear_nonfatal_status(dev);
> > > > >
> > > > > Did you confirm that this resets the devices in question (0000:09:00.0
> > > > > and 0000:09:00.1, I think), and what reset mechanism this uses (FLR,
> > > > > PM, etc)?
> > > >
> > > > Earlier reset  was happening with P2P bridge(0000:00:09.0) this the
> > > > reason no effect. After making following changes,  both devices are
> > > > now getting reset.
> > > > Both devices are using FLR.
> > > >
> > > > diff --git a/drivers/pci/pcie/err.c b/drivers/pci/pcie/err.c
> > > > index 117c0a2b2ba4..26b908f55aef 100644
> > > > --- a/drivers/pci/pcie/err.c
> > > > +++ b/drivers/pci/pcie/err.c
> > > > @@ -66,6 +66,20 @@ static int report_error_detected(struct pci_dev *dev,
> > > >                 if (dev->hdr_type != PCI_HEADER_TYPE_BRIDGE) {
> > > >                         vote = PCI_ERS_RESULT_NO_AER_DRIVER;
> > > >                         pci_info(dev, "can't recover (no
> > > > error_detected callback)\n");
> > > > +
> > > > +                       pci_save_state(dev);
> > > > +                       pci_cfg_access_lock(dev);
> > > > +
> > > > +                       /* Quiesce the device completely */
> > > > +                       pci_write_config_word(dev, PCI_COMMAND,
> > > > +                             PCI_COMMAND_INTX_DISABLE);
> > > > +                       if (!__pci_reset_function_locked(dev)) {
> > > > +                               vote = PCI_ERS_RESULT_RECOVERED;
> > > > +                               pci_info(dev, "recovered via pci level
> > > > reset\n");
> > > > +                       }
> > >
> > > Why do we need to save the state and quiesce the device?  The reset
> > > should disable interrupts anyway.  In this particular case where
> > > there's no driver, I don't think we should have to restore the state.
> > > We maybe should *remove* the device and re-enumerate it after the
> > > reset, but the state from before the reset should be irrelevant.
> >
> > I tried pci_reset_function_locked without save/restore then I got the
> > synchronous abort during igb_probe (case 2 i.e. with driver). This is
> > 100% reproducible.
> > looks like pci_reset_function_locked is causing PCI configuration
> > space random. Same is mentioned here
> > https://www.kernel.org/doc/html/latest/driver-api/pci/pci.html
>
> That documentation is poorly worded.  A reset doesn't make the
> contents of config space "random," but of course it sets config space
> registers to their initialization values, including things like the
> device BARs.  After a reset, the device BARs are zero, so it won't
> respond at the address we expect, and I'm sure that's what's causing
> the external abort.
>
> So I guess we *do* need to save the state before the reset and restore
> it (either that or enumerate the device from scratch just like we
> would if it had been hot-added).  I'm not really thrilled with trying
> to save the state after the device has already reported an error.  I'd
> rather do it earlier, maybe during enumeration, like in
> pci_init_capabilities().  But I don't understand all the subtleties of
> dev->state_saved, so that requires some legwork.
>

I tried moving pci_save_state earlier. All observations are the same
as mentioned in earlier discussions.

Some modifications are required in pci_restore_state() as by default
it makes dev->state_saved = false after restore. .
So the next AER causes the earlier mentioned
crash(igb_get_invariants_82575 --> igb_rd32).  It is because
pci_restore_state() returns without restoring any state.

Code changes are below [1]

> I don't think we should set INTX_DISABLE; the reset will make whatever
> we do with it irrelevant anyway.
>
Yes.. It is not required.

> Remind me why the pci_cfg_access_lock()?

I thought of the race conditions between AER (save/restore) and
igb_probe. So I added this.
It is not required as lock is inherently "taken care" in both AER (bus
walk) and igb_probe by the framework.

[1]
root@localhost$ git diff
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 595fcf59843f..35396eb4fd9e 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -1537,11 +1537,7 @@ static void pci_restore_rebar_state(struct pci_dev *pdev)
        }
 }

-/**
- * pci_restore_state - Restore the saved state of a PCI device
- * @dev: PCI device that we're dealing with
- */
-void pci_restore_state(struct pci_dev *dev)
+void __pci_restore_state(struct pci_dev *dev, int retain_state)
 {
        if (!dev->state_saved)
                return;
@@ -1572,10 +1568,26 @@ void pci_restore_state(struct pci_dev *dev)
        pci_enable_acs(dev);
        pci_restore_iov_state(dev);

-       dev->state_saved = false;
+       if (!retain_state)
+               dev->state_saved = false;
+}
+
+/**
+ * pci_restore_state - Restore the saved state of a PCI device
+ * @dev: PCI device that we're dealing with
+ */
+void pci_restore_state(struct pci_dev *dev)
+{
+       __pci_restore_state(dev, 0);
 }
 EXPORT_SYMBOL(pci_restore_state);

+void pci_restore_retain_state(struct pci_dev *dev)
+{
+       __pci_restore_state(dev, 1);
+}
+EXPORT_SYMBOL(pci_restore_retain_state);
+
 struct pci_saved_state {
        u32 config_space[16];
        struct pci_cap_saved_data cap[0];
diff --git a/drivers/pci/pcie/err.c b/drivers/pci/pcie/err.c
index 14bb8f54723e..621eaa34bf9f 100644
--- a/drivers/pci/pcie/err.c
+++ b/drivers/pci/pcie/err.c
@@ -66,6 +66,13 @@ static int report_error_detected(struct pci_dev *dev,
                if (dev->hdr_type != PCI_HEADER_TYPE_BRIDGE) {
                        vote = PCI_ERS_RESULT_NO_AER_DRIVER;
                        pci_info(dev, "can't recover (no
error_detected callback)\n");
+
+                       if (!__pci_reset_function_locked(dev)) {
+                               vote = PCI_ERS_RESULT_RECOVERED;
+                               pci_info(dev, "Recovered via pci level
reset\n");
+                       }
+
+                       pci_restore_retain_state(dev);
                } else {
                        vote = PCI_ERS_RESULT_NONE;
                }
diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
index 77b8a145c39b..af4e27c95421 100644
--- a/drivers/pci/probe.c
+++ b/drivers/pci/probe.c
@@ -2448,6 +2448,8 @@ void pci_device_add(struct pci_dev *dev, struct
pci_bus *bus)

        pci_init_capabilities(dev);

+       pci_save_state(dev);
+
        /*
         * Add the device to our list of discovered devices
         * and the bus list for fixup functions, etc.
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 83ce1cdf5676..42ab7ef850b7 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1234,6 +1234,7 @@ void pci_unmap_rom(struct pci_dev *pdev, void
__iomem *rom);

 /* Power management related routines */
 int pci_save_state(struct pci_dev *dev);
+void pci_restore_retain_state(struct pci_dev *dev);
 void pci_restore_state(struct pci_dev *dev);
 struct pci_saved_state *pci_store_saved_state(struct pci_dev *dev);
 int pci_load_saved_state(struct pci_dev *dev,

--pk

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
