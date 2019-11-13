Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E4BFB6B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 18:57:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P0Vlt8p6sdxJO4XxgRws5FQPk57MHVP8z0Htb+9xPnk=; b=Dt8aOtX7OHn6mt
	6mDeE852G5aDIX/lBmfo4Un2wARlSRbLNo/YxJV42RzehX0BuyIAy9G30mpA6OE/GmTq/3gmtiTVJ
	oUUE1K0RMY9EzawyhG93khJa70n8+Tqq/2kFeBcttRkslsbGKab/ScBTyyMP48roT2u99HZ52ZwGR
	I8LsVyAyI7PNVU/gzxJxZxkOSe7mdcL7nKpJQZQYCBAzMqL56no93SGo3JCvnpcXdmZZNEfUWRp1a
	9KsX5fQHP78S+LEBCmcUDkc/gxjEwByiZOI9ACzsNOY+Ns9lolUYuXnWlWSS8rq8uoRg0yjlJADn2
	+L0zbhrccDqUMGinhfGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUwtR-0004Uh-Cd; Wed, 13 Nov 2019 17:57:25 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUwtG-0004Ty-OB
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 17:57:16 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 0ED179AD0C9DB477799E;
 Thu, 14 Nov 2019 01:57:10 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Thu, 14 Nov 2019
 01:57:02 +0800
Date: Wed, 13 Nov 2019 17:56:55 +0000
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH V5 1/4] ACPI: Support Generic Initiator only domains
Message-ID: <20191113175655.00005db9@huawei.com>
In-Reply-To: <CAPcyv4i=Kkycy3YtU7FS-qG02CFjAQTcN7UaGjbKwDnNHDZCEA@mail.gmail.com>
References: <20191004114330.104746-1-Jonathan.Cameron@huawei.com>
 <20191004114330.104746-2-Jonathan.Cameron@huawei.com>
 <CAPcyv4jZG-5s6NsS-_-oNG45y0Qb1mVD_s8cCGqLYtzvHqEo+Q@mail.gmail.com>
 <20191113094742.00000dc4@huawei.com>
 <77b6a6e8-9d44-1e1c-3bf0-a8d04833598d@intel.com>
 <CAPcyv4i=Kkycy3YtU7FS-qG02CFjAQTcN7UaGjbKwDnNHDZCEA@mail.gmail.com>
Organization: Huawei
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_095714_956086_E81DB8BC 
X-CRM114-Status: GOOD (  31.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux ACPI <linux-acpi@vger.kernel.org>, Tao Xu <tao3.xu@intel.com>,
 X86 ML <x86@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>, Keith
 Busch <keith.busch@intel.com>, Linux MM <linux-mm@kvack.org>,
 =?ISO-8859-1?Q?J=E9r=F4me?= Glisse <jglisse@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 Nov 2019 08:52:46 -0800
Dan Williams <dan.j.williams@intel.com> wrote:

> On Wed, Nov 13, 2019 at 5:57 AM Tao Xu <tao3.xu@intel.com> wrote:
> >
> > On 11/13/2019 5:47 PM, Jonathan Cameron wrote:  
> > > On Tue, 12 Nov 2019 09:55:17 -0800
> > > Dan Williams <dan.j.williams@intel.com> wrote:
> > >  
> > >> [ add Tao Xu ]
> > >>
> > >> On Fri, Oct 4, 2019 at 4:45 AM Jonathan Cameron
> > >> <Jonathan.Cameron@huawei.com> wrote:  
> > >>>
> > >>> Generic Initiators are a new ACPI concept that allows for the
> > >>> description of proximity domains that contain a device which
> > >>> performs memory access (such as a network card) but neither
> > >>> host CPU nor Memory.
> > >>>
> > >>> This patch has the parsing code and provides the infrastructure
> > >>> for an architecture to associate these new domains with their
> > >>> nearest memory processing node.  
> > >>
> > >> Thanks for this Jonathan. May I ask how this was tested? Tao has been
> > >> working on qemu support for HMAT [1]. I have not checked if it already
> > >> supports generic initiator entries, but it would be helpful to include
> > >> an example of how the kernel sees these configurations in practice.
> > >>
> > >> [1]: http://patchwork.ozlabs.org/cover/1096737/  
> > >
> > > Tested against qemu with SRAT and SLIT table overrides from an
> > > initrd to actually create the node and give it distances
> > > (those all turn up correctly in the normal places).  DSDT override
> > > used to move an emulated network card into the GI numa node.  That
> > > currently requires the PCI patch referred to in the cover letter.
> > > On arm64 tested both on qemu and real hardware (overrides on tables
> > > even for real hardware as I can't persuade our BIOS team to implement
> > > Generic Initiators until an OS is actually using them.)
> > >
> > > Main real requirement is memory allocations then occur from one of
> > > the nodes at the minimal distance when you are do a devm_ allocation
> > > from a device assigned. Also need to be able to query the distances
> > > to allow load balancing etc.  All that works as expected.
> > >
> > > It only has a fairly tangential connection to HMAT in that HMAT
> > > can provide information on GI nodes.  Given HMAT code is quite happy
> > > with memoryless nodes anyway it should work.  QEMU doesn't currently
> > > have support to create GI SRAT entries let alone HMAT using them.
> > >
> > > Whilst I could look at adding such support to QEMU, it's not
> > > exactly high priority to emulate something we can test easily
> > > by overriding the tables before the kernel reads them.
> > >
> > > I'll look at how hard it is to build an HMAT tables for my test
> > > configs based on the ones I used to test your HMAT patches a while
> > > back.  Should be easy if tedious.
> > >
> > > Jonathan
> > >  
> > Indeed, HMAT can support Generic Initiator, but as far as I know, QEMU
> > only can emulate a node with cpu and memory, or memory-only. Even if we
> > assign a node with cpu only, qemu will raise error. Considering
> > compatibility, there are lots of work to do for QEMU if we change NUMA
> > or SRAT table.  
> 
> Thanks for the background. It would still be a useful feature to be
> able to define a memory + generic-initiator node in qemu. That will
> mirror real world accelerators with local memory configurations.

Ah crossed with my essay.  This simple case you have here is easier to
discuss.  Lets call it a GPU on a coherent interconnect with local memory.

What do you think should happen for access0 in sysfs?  Do we want the
GPU reflected in there or not?

This particular case doesn't actually need a GI, though perhaps you
might want one purely to give HMAT based info.  On a pre GI system
you would just use a memory only node and use DSDT _PXM to put the
GPU device in it.

Whilst I agree a means of testing this in qemu might be more
friendly than doing it by overriding tables, the overriding route
lets you do the crazy corner cases + generate 'invalid' tables
which are also useful for testing.

Thanks,

Jonathan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
