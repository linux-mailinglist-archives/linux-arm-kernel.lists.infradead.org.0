Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3ACD1E87EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 21:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=xhxpnjUTK6SFhebZdKJ+bwdHZSzEivvKhtxH4amzksA=; b=Iw/r76aqRjYGV5
	tUBybLzUn/3bSu64sGuUai4JGcBJb64mGMiiuWhSb2p1UX+ae16WoK37j7tjmw0ySPY2OH1hDVqJ2
	mJgtWCWqHQiJ3sFeow+nNm9X53iotngGPRP8GUx5lyjRRV/M9oOa0HUkw+XwXbqBqrdjAvHnMvatA
	ujvHrbiYgu/OORdim8kc4xWsJS2qBZI2ExpirZI+thNrLDJ8jhXDs7tNCgiyWNwMGunLjkv6/3jIF
	WEwqIrb72A4W8xsE7pJ09aYTSITp3qcuQWwfiDaoAmaHBHEcyEo/ULylxHIwUvHlQs863kKZKm2Wz
	cDV0g7EEt5+Yb7AAXCDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeklf-0006I5-3e; Fri, 29 May 2020 19:34:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekl8-0006CK-PH; Fri, 29 May 2020 19:33:45 +0000
Received: from localhost (mobile-166-175-190-200.mycingular.net
 [166.175.190.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF955207D4;
 Fri, 29 May 2020 19:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590780817;
 bh=ZKWI9AfiNFUqpz6OTu7hPXKXNlgmoYXyc+B8zpDzyng=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=l7U7o/RBOfW+U+AK3HXxsthi6tuJQvWGTFTevtei9lRfH8mlj2Gjh5hNuxG2uduqp
 IbQ4Jj9zPPD7OvftDmnpfCdInUoMR7qpWnOo3uIzNYVVwAwXHieI7ur1hQ+CcBNye5
 mrI1XVl2AgX9zcE7fXLkwfqb2k1wku4AcIUnjwEU=
Date: Fri, 29 May 2020 14:33:34 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Subject: Re: [PATCH][v2] iommu: arm-smmu-v3: Copy SMMU table for kdump kernel
Message-ID: <20200529193334.GA451372@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ2QiJKKSy20Z5oZ-yMb3AaioowBWC9ooQeQ+n+vXGLdiYKhgg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_123338_944491_A577238A 
X-CRM114-Status: GOOD (  53.55  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, May 29, 2020 at 07:48:10PM +0530, Prabhakar Kushwaha wrote:
> On Thu, May 28, 2020 at 1:48 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
> >
> > On Wed, May 27, 2020 at 05:14:39PM +0530, Prabhakar Kushwaha wrote:
> > > On Fri, May 22, 2020 at 4:19 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > > > On Thu, May 21, 2020 at 09:28:20AM +0530, Prabhakar Kushwaha wrote:
> > > > > On Wed, May 20, 2020 at 4:52 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > > > > > On Thu, May 14, 2020 at 12:47:02PM +0530, Prabhakar Kushwaha wrote:
> > > > > > > On Wed, May 13, 2020 at 3:33 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > > > > > > > On Mon, May 11, 2020 at 07:46:06PM -0700, Prabhakar Kushwaha wrote:
> > > > > > > > > An SMMU Stream table is created by the primary kernel. This table is
> > > > > > > > > used by the SMMU to perform address translations for device-originated
> > > > > > > > > transactions. Any crash (if happened) launches the kdump kernel which
> > > > > > > > > re-creates the SMMU Stream table. New transactions will be translated
> > > > > > > > > via this new table..
> > > > > > > > >
> > > > > > > > > There are scenarios, where devices are still having old pending
> > > > > > > > > transactions (configured in the primary kernel). These transactions
> > > > > > > > > come in-between Stream table creation and device-driver probe.
> > > > > > > > > As new stream table does not have entry for older transactions,
> > > > > > > > > it will be aborted by SMMU.
> > > > > > > > >
> > > > > > > > > Similar observations were found with PCIe-Intel 82576 Gigabit
> > > > > > > > > Network card. It sends old Memory Read transaction in kdump kernel.
> > > > > > > > > Transactions configured for older Stream table entries, that do not
> > > > > > > > > exist any longer in the new table, will cause a PCIe Completion Abort.
> > > > > > > >
> > > > > > > > That sounds like exactly what we want, doesn't it?
> > > > > > > >
> > > > > > > > Or do you *want* DMA from the previous kernel to complete?  That will
> > > > > > > > read or scribble on something, but maybe that's not terrible as long
> > > > > > > > as it's not memory used by the kdump kernel.
> > > > > > >
> > > > > > > Yes, Abort should happen. But it should happen in context of driver.
> > > > > > > But current abort is happening because of SMMU and no driver/pcie
> > > > > > > setup present at this moment.
> > > > > >
> > > > > > I don't understand what you mean by "in context of driver."  The whole
> > > > > > problem is that we can't control *when* the abort happens, so it may
> > > > > > happen in *any* context.  It may happen when a NIC receives a packet
> > > > > > or at some other unpredictable time.
> > > > > >
> > > > > > > Solution of this issue should be at 2 place
> > > > > > > a) SMMU level: I still believe, this patch has potential to overcome
> > > > > > > issue till finally driver's probe takeover.
> > > > > > > b) Device level: Even if something goes wrong. Driver/device should
> > > > > > > able to recover.
> > > > > > >
> > > > > > > > > Returned PCIe completion abort further leads to AER Errors from APEI
> > > > > > > > > Generic Hardware Error Source (GHES) with completion timeout.
> > > > > > > > > A network device hang is observed even after continuous
> > > > > > > > > reset/recovery from driver, Hence device is no more usable.
> > > > > > > >
> > > > > > > > The fact that the device is no longer usable is definitely a problem.
> > > > > > > > But in principle we *should* be able to recover from these errors.  If
> > > > > > > > we could recover and reliably use the device after the error, that
> > > > > > > > seems like it would be a more robust solution that having to add
> > > > > > > > special cases in every IOMMU driver.
> > > > > > > >
> > > > > > > > If you have details about this sort of error, I'd like to try to fix
> > > > > > > > it because we want to recover from that sort of error in normal
> > > > > > > > (non-crash) situations as well.
> > > > > > > >
> > > > > > > Completion abort case should be gracefully handled.  And device should
> > > > > > > always remain usable.
> > > > > > >
> > > > > > > There are 2 scenario which I am testing with Ethernet card PCIe-Intel
> > > > > > > 82576 Gigabit Network card.
> > > > > > >
> > > > > > > I)  Crash testing using kdump root file system: De-facto scenario
> > > > > > >     -  kdump file system does not have Ethernet driver
> > > > > > >     -  A lot of AER prints [1], making it impossible to work on shell
> > > > > > > of kdump root file system.
> > > > > >
> > > > > > In this case, I think report_error_detected() is deciding that because
> > > > > > the device has no driver, we can't do anything.  The flow is like
> > > > > > this:
> > > > > >
> > > > > >   aer_recover_work_func               # aer_recover_work
> > > > > >     kfifo_get(aer_recover_ring, entry)
> > > > > >     dev = pci_get_domain_bus_and_slot
> > > > > >     cper_print_aer(dev, ...)
> > > > > >       pci_err("AER: aer_status:")
> > > > > >       pci_err("AER:   [14] CmpltTO")
> > > > > >       pci_err("AER: aer_layer=")
> > > > > >     if (AER_NONFATAL)
> > > > > >       pcie_do_recovery(dev, pci_channel_io_normal)
> > > > > >         status = CAN_RECOVER
> > > > > >         pci_walk_bus(report_normal_detected)
> > > > > >           report_error_detected
> > > > > >             if (!dev->driver)
> > > > > >               vote = NO_AER_DRIVER
> > > > > >               pci_info("can't recover (no error_detected callback)")
> > > > > >             *result = merge_result(*, NO_AER_DRIVER)
> > > > > >             # always NO_AER_DRIVER
> > > > > >         status is now NO_AER_DRIVER
> > > > > >
> > > > > > So pcie_do_recovery() does not call .report_mmio_enabled() or .slot_reset(),
> > > > > > and status is not RECOVERED, so it skips .resume().
> > > > > >
> > > > > > I don't remember the history there, but if a device has no driver and
> > > > > > the device generates errors, it seems like we ought to be able to
> > > > > > reset it.
> > > > >
> > > > > But how to reset the device considering there is no driver.
> > > > > Hypothetically, this case should be taken care by PCIe subsystem to
> > > > > perform reset at PCIe level.
> > > >
> > > > I don't understand your question.  The PCI core (not the device
> > > > driver) already does the reset.  When pcie_do_recovery() calls
> > > > reset_link(), all devices on the other side of the link are reset.
> > > >
> > > > > > We should be able to field one (or a few) AER errors, reset the
> > > > > > device, and you should be able to use the shell in the kdump kernel.
> > > > > >
> > > > > here kdump shell is usable only problem is a "lot of AER Errors". One
> > > > > cannot see what they are typing.
> > > >
> > > > Right, that's what I expect.  If the PCI core resets the device, you
> > > > should get just a few AER errors, and they should stop after the
> > > > device is reset.
> > > >
> > > > > > >     -  Note kdump shell allows to use makedumpfile, vmcore-dmesg applications.
> > > > > > >
> > > > > > > II) Crash testing using default root file system: Specific case to
> > > > > > > test Ethernet driver in second kernel
> > > > > > >    -  Default root file system have Ethernet driver
> > > > > > >    -  AER error comes even before the driver probe starts.
> > > > > > >    -  Driver does reset Ethernet card as part of probe but no success.
> > > > > > >    -  AER also tries to recover. but no success.  [2]
> > > > > > >    -  I also tries to remove AER errors by using "pci=noaer" bootargs
> > > > > > > and commenting ghes_handle_aer() from GHES driver..
> > > > > > >           than different set of errors come which also never able to recover [3]
> > > > > > >
> > > > >
> > > > > Please suggest your view on this case. Here driver is preset.
> > > > > (driver/net/ethernet/intel/igb/igb_main.c)
> > > > > In this case AER errors starts even before driver probe starts.
> > > > > After probe, driver does the device reset with no success and even AER
> > > > > recovery does not work.
> > > >
> > > > This case should be the same as the one above.  If we can change the
> > > > PCI core so it can reset the device when there's no driver,  that would
> > > > apply to case I (where there will never be a driver) and to case II
> > > > (where there is no driver now, but a driver will probe the device
> > > > later).
> > >
> > > Does this means change are required in PCI core.
> >
> > Yes, I am suggesting that the PCI core does not do the right thing
> > here.
> >
> > > I tried following changes in pcie_do_recovery() but it did not help.
> > > Same error as before.
> > >
> > > -- a/drivers/pci/pcie/err.c
> > > +++ b/drivers/pci/pcie/err.c
> > >         pci_info(dev, "broadcast resume message\n");
> > >         pci_walk_bus(bus, report_resume, &status);
> > > @@ -203,7 +207,12 @@ pci_ers_result_t pcie_do_recovery(struct pci_dev *dev,
> > >         return status;
> > >
> > >  failed:
> > >         pci_uevent_ers(dev, PCI_ERS_RESULT_DISCONNECT);
> > > +       pci_reset_function(dev);
> > > +       pci_aer_clear_device_status(dev);
> > > +       pci_aer_clear_nonfatal_status(dev);
> >
> > Did you confirm that this resets the devices in question (0000:09:00.0
> > and 0000:09:00.1, I think), and what reset mechanism this uses (FLR,
> > PM, etc)?
> 
> Earlier reset  was happening with P2P bridge(0000:00:09.0) this the
> reason no effect. After making following changes,  both devices are
> now getting reset.
> Both devices are using FLR.
> 
> diff --git a/drivers/pci/pcie/err.c b/drivers/pci/pcie/err.c
> index 117c0a2b2ba4..26b908f55aef 100644
> --- a/drivers/pci/pcie/err.c
> +++ b/drivers/pci/pcie/err.c
> @@ -66,6 +66,20 @@ static int report_error_detected(struct pci_dev *dev,
>                 if (dev->hdr_type != PCI_HEADER_TYPE_BRIDGE) {
>                         vote = PCI_ERS_RESULT_NO_AER_DRIVER;
>                         pci_info(dev, "can't recover (no
> error_detected callback)\n");
> +
> +                       pci_save_state(dev);
> +                       pci_cfg_access_lock(dev);
> +
> +                       /* Quiesce the device completely */
> +                       pci_write_config_word(dev, PCI_COMMAND,
> +                             PCI_COMMAND_INTX_DISABLE);
> +                       if (!__pci_reset_function_locked(dev)) {
> +                               vote = PCI_ERS_RESULT_RECOVERED;
> +                               pci_info(dev, "recovered via pci level
> reset\n");
> +                       }

Why do we need to save the state and quiesce the device?  The reset
should disable interrupts anyway.  In this particular case where
there's no driver, I don't think we should have to restore the state.
We maybe should *remove* the device and re-enumerate it after the
reset, but the state from before the reset should be irrelevant.

> +                       pci_cfg_access_unlock(dev);
> +                       pci_restore_state(dev);
>                 } else {
>                         vote = PCI_ERS_RESULT_NONE;
>                 }
> 
> in order to take care of case 2 (driver comes after sometime) ==>
> following code needs to be added to avoid crash during igb_probe.  It
> looks to be a race condition between AER and igb_probe().
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> b/drivers/net/ethernet/intel/igb/igb_main.c
> index b46bff8fe056..c48f0a54bb95 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -3012,6 +3012,11 @@ static int igb_probe(struct pci_dev *pdev,
> const struct pci_device_id *ent)
>         /* Catch broken hardware that put the wrong VF device ID in
>          * the PCIe SR-IOV capability.
>          */
> +       if (pci_dev_trylock(pdev)) {
> +               mdelay(1000);
> +               pci_info(pdev,"device is locked, try waiting 1 sec\n");
> +       }

This is interesting to learn about the AER/driver interaction, but of
course, we wouldn't want to add code like this permanently.

> Here are the observation with all above changes
> A) AER errors are less but they are still there for both case 1 (No
> driver at all) and case 2 (driver comes after some time)

We'll certainly get *some* AER errors.  We have to get one before we
know to reset the device.

> B) Each AER error(NON_FATAL) causes both devices to reset. It happens many times

I'm not sure why we reset both devices.  Are we seeing errors from
both, or could we be more selective in the code?

> C) After that AER errors [1] comes is only for device 0000:09:00.0.
> This is strange as this pci device is not being used during test.
> Ping/ssh are happening with 0000:09:01.0
> D) If wait for some more time. No more AER errors from any device
> E) Ping is working fine in case 2.
> 
> 09:00.0 Ethernet controller: Intel Corporation 82576 Gigabit Network
> Connection (rev 01)
> 09:00.1 Ethernet controller: Intel Corporation 82576 Gigabit Network
> Connection (rev 01)
> 
> # lspci -t -v
> 
>  \-[0000:00]-+-00.0  Cavium, Inc. CN99xx [ThunderX2] Integrated PCI Host bridge
>              +-01.0-[01]--
>              +-02.0-[02]--
>              +-03.0-[03]--
>              +-04.0-[04]--
>              +-05.0-[05]--+-00.0  Broadcom Inc. and subsidiaries
> BCM57840 NetXtreme II 10 Gigabit Ethernet
>              |            \-00.1  Broadcom Inc. and subsidiaries
> BCM57840 NetXtreme II 10 Gigabit Ethernet
>              +-06.0-[06]--
>              +-07.0-[07]--
>              +-08.0-[08]--
>              +-09.0-[09-0a]--+-00.0  Intel Corporation 82576 Gigabit
> Network Connection
>              |               \-00.1  Intel Corporation 82576 Gigabit
> Network Connection
> 
> 
> [1] AER error which comes for 09:00.0:
> 
> [   81.659825] {7}[Hardware Error]: Hardware error from APEI Generic
> Hardware Error Source: 0
> [   81.668080] {7}[Hardware Error]: It has been corrected by h/w and
> requires no further action
> [   81.676503] {7}[Hardware Error]: event severity: corrected
> [   81.681975] {7}[Hardware Error]:  Error 0, type: corrected
> [   81.687447] {7}[Hardware Error]:   section_type: PCIe error
> [   81.693004] {7}[Hardware Error]:   port_type: 0, PCIe end point
> [   81.698908] {7}[Hardware Error]:   version: 3.0
> [   81.703424] {7}[Hardware Error]:   command: 0x0507, status: 0x0010
> [   81.709589] {7}[Hardware Error]:   device_id: 0000:09:00.0
> [   81.715059] {7}[Hardware Error]:   slot: 0
> [   81.719141] {7}[Hardware Error]:   secondary_bus: 0x00
> [   81.724265] {7}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x10c9
> [   81.730864] {7}[Hardware Error]:   class_code: 000002
> [   81.735901] {7}[Hardware Error]:   serial number: 0xff1b4580, 0x90e2baff
> [   81.742587] {7}[Hardware Error]:  Error 1, type: corrected
> [   81.748058] {7}[Hardware Error]:   section_type: PCIe error
> [   81.753615] {7}[Hardware Error]:   port_type: 4, root port
> [   81.759086] {7}[Hardware Error]:   version: 3.0
> [   81.763602] {7}[Hardware Error]:   command: 0x0106, status: 0x4010
> [   81.769767] {7}[Hardware Error]:   device_id: 0000:00:09.0
> [   81.775237] {7}[Hardware Error]:   slot: 0
> [   81.779319] {7}[Hardware Error]:   secondary_bus: 0x09
> [   81.784442] {7}[Hardware Error]:   vendor_id: 0x177d, device_id: 0xaf84
> [   81.791041] {7}[Hardware Error]:   class_code: 000406
> [   81.796078] {7}[Hardware Error]:   bridge: secondary_status:
> 0x6000, control: 0x0002
> [   81.803806] {7}[Hardware Error]:  Error 2, type: corrected
> [   81.809276] {7}[Hardware Error]:   section_type: PCIe error
> [   81.814834] {7}[Hardware Error]:   port_type: 0, PCIe end point
> [   81.820738] {7}[Hardware Error]:   version: 3.0
> [   81.825254] {7}[Hardware Error]:   command: 0x0507, status: 0x0010
> [   81.831419] {7}[Hardware Error]:   device_id: 0000:09:00.0
> [   81.836889] {7}[Hardware Error]:   slot: 0
> [   81.840971] {7}[Hardware Error]:   secondary_bus: 0x00
> [   81.846094] {7}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x10c9
> [   81.852693] {7}[Hardware Error]:   class_code: 000002
> [   81.857730] {7}[Hardware Error]:   serial number: 0xff1b4580, 0x90e2baff
> [   81.864416] {7}[Hardware Error]:  Error 3, type: corrected
> [   81.869886] {7}[Hardware Error]:   section_type: PCIe error
> [   81.875444] {7}[Hardware Error]:   port_type: 4, root port
> [   81.880914] {7}[Hardware Error]:   version: 3.0
> [   81.885430] {7}[Hardware Error]:   command: 0x0106, status: 0x4010
> [   81.891595] {7}[Hardware Error]:   device_id: 0000:00:09.0
> [   81.897066] {7}[Hardware Error]:   slot: 0
> [   81.901147] {7}[Hardware Error]:   secondary_bus: 0x09
> [   81.906271] {7}[Hardware Error]:   vendor_id: 0x177d, device_id: 0xaf84
> [   81.912870] {7}[Hardware Error]:   class_code: 000406
> [   81.917906] {7}[Hardware Error]:   bridge: secondary_status:
> 0x6000, control: 0x0002
> [   81.925634] {7}[Hardware Error]:  Error 4, type: corrected
> [   81.931104] {7}[Hardware Error]:   section_type: PCIe error
> [   81.936662] {7}[Hardware Error]:   port_type: 0, PCIe end point
> [   81.942566] {7}[Hardware Error]:   version: 3.0
> [   81.947082] {7}[Hardware Error]:   command: 0x0507, status: 0x0010
> [   81.953247] {7}[Hardware Error]:   device_id: 0000:09:00.0
> [   81.958717] {7}[Hardware Error]:   slot: 0
> [   81.962799] {7}[Hardware Error]:   secondary_bus: 0x00
> [   81.967923] {7}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x10c9
> [   81.974522] {7}[Hardware Error]:   class_code: 000002
> [   81.979558] {7}[Hardware Error]:   serial number: 0xff1b4580, 0x90e2baff
> [   81.986244] {7}[Hardware Error]:  Error 5, type: corrected
> [   81.991715] {7}[Hardware Error]:   section_type: PCIe error
> [   81.997272] {7}[Hardware Error]:   port_type: 4, root port
> [   82.002743] {7}[Hardware Error]:   version: 3.0
> [   82.007259] {7}[Hardware Error]:   command: 0x0106, status: 0x4010
> [   82.013424] {7}[Hardware Error]:   device_id: 0000:00:09.0
> [   82.018894] {7}[Hardware Error]:   slot: 0
> [   82.022976] {7}[Hardware Error]:   secondary_bus: 0x09
> [   82.028099] {7}[Hardware Error]:   vendor_id: 0x177d, device_id: 0xaf84
> [   82.034698] {7}[Hardware Error]:   class_code: 000406
> [   82.039735] {7}[Hardware Error]:   bridge: secondary_status:
> 0x6000, control: 0x0002
> [   82.047463] {7}[Hardware Error]:  Error 6, type: corrected
> [   82.052933] {7}[Hardware Error]:   section_type: PCIe error
> [   82.058491] {7}[Hardware Error]:   port_type: 0, PCIe end point
> [   82.064395] {7}[Hardware Error]:   version: 3.0
> [   82.068911] {7}[Hardware Error]:   command: 0x0507, status: 0x0010
> [   82.075076] {7}[Hardware Error]:   device_id: 0000:09:00.0
> [   82.080547] {7}[Hardware Error]:   slot: 0
> [   82.084628] {7}[Hardware Error]:   secondary_bus: 0x00
> [   82.089752] {7}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x10c9
> [   82.096351] {7}[Hardware Error]:   class_code: 000002
> [   82.101387] {7}[Hardware Error]:   serial number: 0xff1b4580, 0x90e2baff
> [   82.108073] {7}[Hardware Error]:  Error 7, type: corrected
> [   82.113544] {7}[Hardware Error]:   section_type: PCIe error
> [   82.119101] {7}[Hardware Error]:   port_type: 4, root port
> [   82.124572] {7}[Hardware Error]:   version: 3.0
> [   82.129087] {7}[Hardware Error]:   command: 0x0106, status: 0x4010
> [   82.135252] {7}[Hardware Error]:   device_id: 0000:00:09.0
> [   82.140723] {7}[Hardware Error]:   slot: 0
> [   82.144805] {7}[Hardware Error]:   secondary_bus: 0x09
> [   82.149928] {7}[Hardware Error]:   vendor_id: 0x177d, device_id: 0xaf84
> [   82.156527] {7}[Hardware Error]:   class_code: 000406
> [   82.161564] {7}[Hardware Error]:   bridge: secondary_status:
> 0x6000, control: 0x0002
> [   82.169291] {7}[Hardware Error]:  Error 8, type: corrected
> [   82.174762] {7}[Hardware Error]:   section_type: PCIe error
> [   82.180319] {7}[Hardware Error]:   port_type: 0, PCIe end point
> [   82.186224] {7}[Hardware Error]:   version: 3.0
> [   82.190739] {7}[Hardware Error]:   command: 0x0507, status: 0x0010
> [   82.196904] {7}[Hardware Error]:   device_id: 0000:09:00.0
> [   82.202375] {7}[Hardware Error]:   slot: 0
> [   82.206456] {7}[Hardware Error]:   secondary_bus: 0x00
> [   82.211580] {7}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x10c9
> [   82.218179] {7}[Hardware Error]:   class_code: 000002
> [   82.223216] {7}[Hardware Error]:   serial number: 0xff1b4580, 0x90e2baff
> [   82.229901] {7}[Hardware Error]:  Error 9, type: corrected
> [   82.235372] {7}[Hardware Error]:   section_type: PCIe error
> [   82.240929] {7}[Hardware Error]:   port_type: 4, root port
> [   82.246400] {7}[Hardware Error]:   version: 3.0
> [   82.250916] {7}[Hardware Error]:   command: 0x0106, status: 0x4010
> [   82.257081] {7}[Hardware Error]:   device_id: 0000:00:09.0
> [   82.262551] {7}[Hardware Error]:   slot: 0
> [   82.266633] {7}[Hardware Error]:   secondary_bus: 0x09
> [   82.271756] {7}[Hardware Error]:   vendor_id: 0x177d, device_id: 0xaf84
> [   82.278355] {7}[Hardware Error]:   class_code: 000406
> [   82.283392] {7}[Hardware Error]:   bridge: secondary_status:
> 0x6000, control: 0x0002
> [   82.291119] {7}[Hardware Error]:  Error 10, type: corrected
> [   82.296676] {7}[Hardware Error]:   section_type: PCIe error
> [   82.302234] {7}[Hardware Error]:   port_type: 0, PCIe end point
> [   82.308138] {7}[Hardware Error]:   version: 3.0
> [   82.312654] {7}[Hardware Error]:   command: 0x0507, status: 0x0010
> [   82.318819] {7}[Hardware Error]:   device_id: 0000:09:00.0
> [   82.324290] {7}[Hardware Error]:   slot: 0
> [   82.328371] {7}[Hardware Error]:   secondary_bus: 0x00
> [   82.333495] {7}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x10c9
> [   82.340094] {7}[Hardware Error]:   class_code: 000002
> [   82.345131] {7}[Hardware Error]:   serial number: 0xff1b4580, 0x90e2baff
> [   82.351816] {7}[Hardware Error]:  Error 11, type: corrected
> [   82.357374] {7}[Hardware Error]:   section_type: PCIe error
> [   82.362931] {7}[Hardware Error]:   port_type: 4, root port
> [   82.368402] {7}[Hardware Error]:   version: 3.0
> [   82.372917] {7}[Hardware Error]:   command: 0x0106, status: 0x4010
> [   82.379082] {7}[Hardware Error]:   device_id: 0000:00:09.0
> [   82.384553] {7}[Hardware Error]:   slot: 0
> [   82.388635] {7}[Hardware Error]:   secondary_bus: 0x09
> [   82.393758] {7}[Hardware Error]:   vendor_id: 0x177d, device_id: 0xaf84
> [   82.400357] {7}[Hardware Error]:   class_code: 000406
> [   82.405394] {7}[Hardware Error]:   bridge: secondary_status:
> 0x6000, control: 0x0002
> [   82.413121] {7}[Hardware Error]:  Error 12, type: corrected
> [   82.418678] {7}[Hardware Error]:   section_type: PCIe error
> [   82.424236] {7}[Hardware Error]:   port_type: 0, PCIe end point
> [   82.430140] {7}[Hardware Error]:   version: 3.0
> [   82.434656] {7}[Hardware Error]:   command: 0x0507, status: 0x0010
> [   82.440821] {7}[Hardware Error]:   device_id: 0000:09:00.0
> [   82.446291] {7}[Hardware Error]:   slot: 0
> [   82.450373] {7}[Hardware Error]:   secondary_bus: 0x00
> [   82.455497] {7}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x10c9
> [   82.462096] {7}[Hardware Error]:   class_code: 000002
> [   82.467132] {7}[Hardware Error]:   serial number: 0xff1b4580, 0x90e2baff
> [   82.473818] {7}[Hardware Error]:  Error 13, type: corrected
> [   82.479375] {7}[Hardware Error]:   section_type: PCIe error
> [   82.484933] {7}[Hardware Error]:   port_type: 4, root port
> [   82.490403] {7}[Hardware Error]:   version: 3.0
> [   82.494919] {7}[Hardware Error]:   command: 0x0106, status: 0x4010
> [   82.501084] {7}[Hardware Error]:   device_id: 0000:00:09.0
> [   82.506555] {7}[Hardware Error]:   slot: 0
> [   82.510636] {7}[Hardware Error]:   secondary_bus: 0x09
> [   82.515760] {7}[Hardware Error]:   vendor_id: 0x177d, device_id: 0xaf84
> [   82.522359] {7}[Hardware Error]:   class_code: 000406
> [   82.527395] {7}[Hardware Error]:   bridge: secondary_status:
> 0x6000, control: 0x0002
> [   82.535171] igb 0000:09:00.0: AER: aer_status: 0x00002000,
> aer_mask: 0x00002000
> [   82.542476] igb 0000:09:00.0: AER: aer_layer=Transaction Layer,
> aer_agent=Receiver ID
> [   82.550301] pcieport 0000:00:09.0: AER: aer_status: 0x00000000,
> aer_mask: 0x00002000
> [   82.558032] pcieport 0000:00:09.0: AER: aer_layer=Transaction
> Layer, aer_agent=Receiver ID
> [   82.566296] igb 0000:09:00.0: AER: aer_status: 0x00002000,
> aer_mask: 0x00002000
> [   82.573597] igb 0000:09:00.0: AER: aer_layer=Transaction Layer,
> aer_agent=Receiver ID
> [   82.581421] pcieport 0000:00:09.0: AER: aer_status: 0x00000000,
> aer_mask: 0x00002000
> [   82.589151] pcieport 0000:00:09.0: AER: aer_layer=Transaction
> Layer, aer_agent=Receiver ID
> [   82.597411] igb 0000:09:00.0: AER: aer_status: 0x00002000,
> aer_mask: 0x00002000
> [   82.604711] igb 0000:09:00.0: AER: aer_layer=Transaction Layer,
> aer_agent=Receiver ID
> [   82.612535] pcieport 0000:00:09.0: AER: aer_status: 0x00000000,
> aer_mask: 0x00002000
> [   82.620271] pcieport 0000:00:09.0: AER: aer_layer=Transaction
> Layer, aer_agent=Receiver ID
> [   82.628525] igb 0000:09:00.0: AER: aer_status: 0x00002000,
> aer_mask: 0x00002000
> [   82.635826] igb 0000:09:00.0: AER: aer_layer=Transaction Layer,
> aer_agent=Receiver ID
> [   82.643649] pcieport 0000:00:09.0: AER: aer_status: 0x00000000,
> aer_mask: 0x00002000
> [   82.651385] pcieport 0000:00:09.0: AER: aer_layer=Transaction
> Layer, aer_agent=Receiver ID
> [   82.659645] igb 0000:09:00.0: AER: aer_status: 0x00002000,
> aer_mask: 0x00002000
> [   82.666940] igb 0000:09:00.0: AER: aer_layer=Transaction Layer,
> aer_agent=Receiver ID
> [   82.674763] pcieport 0000:00:09.0: AER: aer_status: 0x00000000,
> aer_mask: 0x00002000
> [   82.682498] pcieport 0000:00:09.0: AER: aer_layer=Transaction
> Layer, aer_agent=Receiver ID
> [   82.690759] igb 0000:09:00.0: AER: aer_status: 0x00002000,
> aer_mask: 0x00002000
> [   82.698053] igb 0000:09:00.0: AER: aer_layer=Transaction Layer,
> aer_agent=Receiver ID
> [   82.705876] pcieport 0000:00:09.0: AER: aer_status: 0x00000000,
> aer_mask: 0x00002000
> [   82.713612] pcieport 0000:00:09.0: AER: aer_layer=Transaction
> Layer, aer_agent=Receiver ID
> [   82.721872] igb 0000:09:00.0: AER: aer_status: 0x00002000,
> aer_mask: 0x00002000
> [   82.729167] igb 0000:09:00.0: AER: aer_layer=Transaction Layer,
> aer_agent=Receiver ID
> [   82.736990] pcieport 0000:00:09.0: AER: aer_status: 0x00000000,
> aer_mask: 0x00002000
> [   82.744725] pcieport 0000:00:09.0: AER: aer_layer=Transaction
> Layer, aer_agent=Receiver ID
> [   88.059225] {8}[Hardware Error]: Hardware error from APEI Generic
> Hardware Error Source: 0
> [   88.067478] {8}[Hardware Error]: It has been corrected by h/w and
> requires no further action
> [   88.075899] {8}[Hardware Error]: event severity: corrected
> [   88.081370] {8}[Hardware Error]:  Error 0, type: corrected
> [   88.086841] {8}[Hardware Error]:   section_type: PCIe error
> [   88.092399] {8}[Hardware Error]:   port_type: 0, PCIe end point
> [   88.098303] {8}[Hardware Error]:   version: 3.0
> [   88.102819] {8}[Hardware Error]:   command: 0x0507, status: 0x0010
> [   88.108984] {8}[Hardware Error]:   device_id: 0000:09:00.0
> [   88.114455] {8}[Hardware Error]:   slot: 0
> [   88.118536] {8}[Hardware Error]:   secondary_bus: 0x00
> [   88.123660] {8}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x10c9
> [   88.130259] {8}[Hardware Error]:   class_code: 000002
> [   88.135296] {8}[Hardware Error]:   serial number: 0xff1b4580, 0x90e2baff
> [   88.141981] {8}[Hardware Error]:  Error 1, type: corrected
> [   88.147452] {8}[Hardware Error]:   section_type: PCIe error
> [   88.153009] {8}[Hardware Error]:   port_type: 4, root port
> [   88.158480] {8}[Hardware Error]:   version: 3.0
> [   88.162995] {8}[Hardware Error]:   command: 0x0106, status: 0x4010
> [   88.169161] {8}[Hardware Error]:   device_id: 0000:00:09.0
> [   88.174633] {8}[Hardware Error]:   slot: 0
> [   88.180018] {8}[Hardware Error]:   secondary_bus: 0x09
> [   88.185142] {8}[Hardware Error]:   vendor_id: 0x177d, device_id: 0xaf84
> [   88.191914] {8}[Hardware Error]:   class_code: 000406
> [   88.196951] {8}[Hardware Error]:   bridge: secondary_status:
> 0x6000, control: 0x0002
> [   88.204852] {8}[Hardware Error]:  Error 2, type: corrected
> [   88.210323] {8}[Hardware Error]:   section_type: PCIe error
> [   88.215881] {8}[Hardware Error]:   port_type: 0, PCIe end point
> [   88.221786] {8}[Hardware Error]:   version: 3.0
> [   88.226301] {8}[Hardware Error]:   command: 0x0507, status: 0x0010
> [   88.232466] {8}[Hardware Error]:   device_id: 0000:09:00.0
> [   88.237937] {8}[Hardware Error]:   slot: 0
> [   88.242019] {8}[Hardware Error]:   secondary_bus: 0x00
> [   88.247142] {8}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x10c9
> [   88.253741] {8}[Hardware Error]:   class_code: 000002
> [   88.258778] {8}[Hardware Error]:   serial number: 0xff1b4580, 0x90e2baff
> [   88.265509] igb 0000:09:00.0: AER: aer_status: 0x00002000,
> aer_mask: 0x00002000
> [   88.272812] igb 0000:09:00.0: AER: aer_layer=Transaction Layer,
> aer_agent=Receiver ID
> [   88.280635] pcieport 0000:00:09.0: AER: aer_status: 0x00000000,
> aer_mask: 0x00002000
> [   88.288363] pcieport 0000:00:09.0: AER: aer_layer=Transaction
> Layer, aer_agent=Receiver ID
> [   88.296622] igb 0000:09:00.0: AER: aer_status: 0x00002000,
> aer_mask: 0x00002000
> [   88.305391] igb 0000:09:00.0: AER: aer_layer=Transaction Layer,
> aer_agent=Receiver ID
> 
> > Case I is using APEI, and it looks like that can queue up 16 errors
> > (AER_RECOVER_RING_SIZE), so that queue could be completely full before
> > we even get a chance to reset the device.  But I would think that the
> > reset should *eventually* stop the errors, even though we might log
> > 30+ of them first.
> >
> > As an experiment, you could reduce AER_RECOVER_RING_SIZE to 1 or 2 and
> > see if it reduces the logging.
> 
> Did not tried this experiment. I believe it is not required now
> 
> --pk
> 
> >
> > > > > Problem mentioned in case I and II goes away if do pci_reset_function
> > > > > during enumeration phase of kdump kernel.
> > > > > can we thought of doing pci_reset_function for all devices in kdump
> > > > > kernel or device specific quirk.
> > > > >
> > > > > --pk
> > > > >
> > > > >
> > > > > > > As per my understanding, possible solutions are
> > > > > > >  - Copy SMMU table i.e. this patch
> > > > > > > OR
> > > > > > >  - Doing pci_reset_function() during enumeration phase.
> > > > > > > I also tried clearing "M" bit using pci_clear_master during
> > > > > > > enumeration but it did not help. Because driver re-set M bit causing
> > > > > > > same AER error again.
> > > > > > >
> > > > > > >
> > > > > > > -pk
> > > > > > >
> > > > > > > ---------------------------------------------------------------------------------------------------------------------------
> > > > > > > [1] with bootargs having pci=noaer
> > > > > > >
> > > > > > > [   22.494648] {4}[Hardware Error]: Hardware error from APEI Generic
> > > > > > > Hardware Error Source: 1
> > > > > > > [   22.512773] {4}[Hardware Error]: event severity: recoverable
> > > > > > > [   22.518419] {4}[Hardware Error]:  Error 0, type: recoverable
> > > > > > > [   22.544804] {4}[Hardware Error]:   section_type: PCIe error
> > > > > > > [   22.550363] {4}[Hardware Error]:   port_type: 0, PCIe end point
> > > > > > > [   22.556268] {4}[Hardware Error]:   version: 3.0
> > > > > > > [   22.560785] {4}[Hardware Error]:   command: 0x0507, status: 0x4010
> > > > > > > [   22.576852] {4}[Hardware Error]:   device_id: 0000:09:00.1
> > > > > > > [   22.582323] {4}[Hardware Error]:   slot: 0
> > > > > > > [   22.586406] {4}[Hardware Error]:   secondary_bus: 0x00
> > > > > > > [   22.591530] {4}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x10c9
> > > > > > > [   22.608900] {4}[Hardware Error]:   class_code: 000002
> > > > > > > [   22.613938] {4}[Hardware Error]:   serial number: 0xff1b4580, 0x90e2baff
> > > > > > > [   22.803534] pci 0000:09:00.1: AER: aer_status: 0x00004000,
> > > > > > > aer_mask: 0x00000000
> > > > > > > [   22.810838] pci 0000:09:00.1: AER:    [14] CmpltTO                (First)
> > > > > > > [   22.817613] pci 0000:09:00.1: AER: aer_layer=Transaction Layer,
> > > > > > > aer_agent=Requester ID
> > > > > > > [   22.847374] pci 0000:09:00.1: AER: aer_uncor_severity: 0x00062011
> > > > > > > [   22.866161] mpt3sas_cm0: 63 BIT PCI BUS DMA ADDRESSING SUPPORTED,
> > > > > > > total mem (8153768 kB)
> > > > > > > [   22.946178] pci 0000:09:00.0: AER: can't recover (no error_detected callback)
> > > > > > > [   22.995142] pci 0000:09:00.1: AER: can't recover (no error_detected callback)
> > > > > > > [   23.002300] pcieport 0000:00:09.0: AER: device recovery failed
> > > > > > > [   23.027607] pci 0000:09:00.1: AER: aer_status: 0x00004000,
> > > > > > > aer_mask: 0x00000000
> > > > > > > [   23.044109] pci 0000:09:00.1: AER:    [14] CmpltTO                (First)
> > > > > > > [   23.060713] pci 0000:09:00.1: AER: aer_layer=Transaction Layer,
> > > > > > > aer_agent=Requester ID
> > > > > > > [   23.068616] pci 0000:09:00.1: AER: aer_uncor_severity: 0x00062011
> > > > > > > [   23.122056] pci 0000:09:00.0: AER: can't recover (no error_detected callback)
> >
> > <snip>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
