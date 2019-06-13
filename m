Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E79A4436D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SYHiNvkCnYcYC/B+ogK8Oh6IliTvfU5W6nmLGQwsEeo=; b=SkSwqoX61QPpfx
	N5r1khldbDxE2IAqW2JtEqF0awD+TqZwBDS/I6RWA0ltGO9KdvJzslIS45X/iD9YnbhIbF2Eu2AOW
	iVb+mog7U5nzU8ZOAw1wGufKH+V1U6zGriXUqR21TO6JDkPAI3rz3oAn0QVkqvBW8hYQBI+Y34rIZ
	tVWgg/hl03p07dKQ2Ocnx3NRdqaaNBlmgRo6DWMyVcjHvIlm4VE78tpdzWXwHTRX9H8kSGNuUOo+V
	PYaT5FXm2vKZ6EX6Azkv/IoW0l8KmuzQblmhd/Xsg8U0y7dIPpFIOwnfV7vi99Q+D8riT/5wtufR1
	1V3w5xJSZmVoSaTzKXGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbQ4F-0007f7-Fn; Thu, 13 Jun 2019 13:47:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbQ44-0007em-4w
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:46:53 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75D0F20851;
 Thu, 13 Jun 2019 13:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560433611;
 bh=fWn/j2co1eFhB4DIu2nWHccLcw32ULZkm0SQPN00GJ0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cG+i+kOKixoCQcmut8i62OMOBk9DfbfDH7NSPCeVW9lIlCZ/A8keKKXgTcX6v8HFC
 k++fvHnF3gzHI3CIOB1+q1xZS2y/fkJcvmGVwcRODyrgW2R3gL5YUXnsUB7u3CyR05
 s0iiD7aWcKwY4IIEZ6e80nDIeKylwpvNYD6cH0oY=
Date: Thu, 13 Jun 2019 08:46:50 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v4 2/3] lib: logic_pio: Reject accesses to unregistered
 CPU MMIO regions
Message-ID: <20190613134650.GF13533@google.com>
References: <1560262374-67875-1-git-send-email-john.garry@huawei.com>
 <1560262374-67875-3-git-send-email-john.garry@huawei.com>
 <20190613032034.GE13533@google.com>
 <2d5e6112-be27-33c2-c1fd-6ab06405fa40@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2d5e6112-be27-33c2-c1fd-6ab06405fa40@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_064652_231011_CD4FB098 
X-CRM114-Status: GOOD (  24.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: rjw@rjwysocki.net, wangkefeng.wang@huawei.com, lorenzo.pieralisi@arm.com,
 arnd@arndb.de, linux-pci@vger.kernel.org, will.deacon@arm.com,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, catalin.marinas@arm.com,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 11:17:37AM +0100, John Garry wrote:
> On 13/06/2019 04:20, Bjorn Helgaas wrote:
> > On Tue, Jun 11, 2019 at 10:12:53PM +0800, John Garry wrote:
> > > Currently when accessing logical indirect PIO addresses in
> > > logic_{in, out}{,s}, we first ensure that the region is registered.
> 
> > I think logic_pio is specifically concerned with I/O port space, so
> > it's a little bit unfortunate that we named this "PIO".
> > 
> > PIO is a general term for "Programmed I/O", which just means the CPU
> > is involved in each transfer, as opposed to DMA.  The transfers can be
> > to either MMIO or I/O port space.
> > 
> > So this ends up being a little confusing because I think you mean
> > "Port I/O", not "Programmed I/O".
> 
> Personally I agree that the naming isn't great. But then Arnd does think
> that "PIO" is appropriate.
> 
> There were many different names along the way to this support merged, and I
> think that the naming became almost irrelevant in the end.

Yep, Arnd is right.  The "PIO" name contributed a little to my
confusion, but I think the bigger piece was that I read the "indirect
PIO addresses" above as being parallel to the "CPU MMIO regions"
below, when in fact, they are not.  The arguments to logic_inb() are
always port addresses, never CPU MMIO addresses, but in some cases
logic_inb() internally references a CPU MMIO region that corresponds
to the port address.

Possible commit log text:

  The logic_{in,out}*() functions access two regions of I/O port
  addresses:

    1) [0, MMIO_UPPER_LIMIT): these are assumed to be
       LOGIC_PIO_CPU_MMIO regions, where a bridge converts CPU loads
       and stores to MMIO space on its primary side into I/O port
       transactions on its secondary side.

    2) [MMIO_UPPER_LIMIT, IO_SPACE_LIMIT): these are assumed to be
       LOGIC_PIO_INDIRECT regions, where we verify that the region was
       registered by logic_pio_register_range() before calling the
       logic_pio_host_ops functions to perform the access.

  Previously there was no requirement that accesses to the
  LOGIC_PIO_CPU_MMIO area matched anything registered by
  logic_pio_register_range(), and accesses to unregistered I/O ports
  could cause exceptions like the one below.

  Verify that accesses to ports in the LOGIC_PIO_CPU_MMIO area
  correspond to registered ranges.  Accesses to ports outside those
  registered ranges fail (logic_in*() returns ~0 data and logic_out*()
  does nothing).

  This matches the x86 behavior where in*() returns ~0 if no device
  responds, and out*() is dropped if no device claims it.

> >   1) The simple "bridge converts CPU MMIO space to PCI I/O port space"
> >      flavor is essentially identical to what ia64 (and probably other
> >      architectures) does.  This should really be combined somehow.
> 
> Maybe. For ia64, it seems to have some "platform" versions of IO port
> accessors, and then also accessors need a fence barrier. I'm not sure how
> well that would fit with logical PIO. It would need further analysis.

Right.  That shouldn't be part of this series, but I think it would be
nice to someday unify the ia64 add_io_space() path with the
pci_register_io_range() path.  There might have to be ia64-specific
accessors at the bottom for the fences, but I think the top side could
be unified because it's conceptually the same thing -- an MMIO region
that is translated by a bridge to an I/O port region.

> >   2) If you made a default set of logic_pio_host_ops that merely did
> >      loads/stores and maybe added a couple fields in the struct
> >      logic_pio_hwaddr, I bet you could unify the two kinds so
> >      logic_inb() would look something like this:
> 
> Yeah, I did consider this. We do not provide host operators for PCI MMIO
> ranges. We could simply provide regular versions of inb et al for this. A
> small obstacle for this is that we redefine inb et al, so would need
> "direct" versions also. It would be strange.

Yeah, just a thought, maybe it wouldn't work out.

> > > Any failed checks silently return.
> > 
> > I *think* what you're doing here is making inb/outb/etc work the same
> > as on x86, i.e., if no device responds to an inb(), the caller gets
> > ~0, and if no device claims an outb() the data gets dropped.
> 
> Correct, but with a caveat: when you say no device responds, this means that
> - for arm64 case - no PCI MMIO region is mapped.

Yep.  I was describing the x86 behavior, where we don't do any mapping
and all we can say is that no device responded.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
