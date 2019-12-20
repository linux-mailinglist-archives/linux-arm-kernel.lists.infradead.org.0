Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0FD12827E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 19:54:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tc8uueXcG004021dhExFooa38VV3hies3pM9Ur9iZnQ=; b=oep12yIWlYNXwC
	bvXlxy3hWdGheHSyfXG1jbO+K/pXCuC3N7jTHO4oVbsQV8L0BZ4Z+3CUhHN34UrIyPuAxs30AU1K+
	XmIYZS1bqSWGPXp7nwIdNQO2GHC5bVrU6sD6a/oqnto4pLZWM/7dHcLakwdjGIWAeLVUVL0OqSdDz
	up2e6MmmWrS1TJB6KGP110d60p5UCX6uUH6uaZm8yGox5oA2WHS3YsR1EFvrRVZpHnys5yUJ8YdFw
	lSUtJAgVJHJZdFkS6yJ727xxVR6GU++MVaIwYl2J86Nn7oCEAMXsIkBDHzZRkjrb77VC3aUjdpLY/
	b6641BvW5bGs6FcSIOKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiNQF-0002gi-Mh; Fri, 20 Dec 2019 18:54:47 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiNQ1-0002gE-Op
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 18:54:35 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 10:54:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="267593304"
Received: from jpan9-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.254.180.107])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Dec 2019 10:54:31 -0800
Date: Fri, 20 Dec 2019 10:54:30 -0800
From: "Jacob Pan (Jun)" <jacob.jun.pan@intel.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [RFC 00/13] virtio-iommu on non-devicetree platforms
Message-ID: <20191220105430.0000437b@intel.com>
In-Reply-To: <20191218112044.GA2371701@myrica>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
 <20191122160102.00004489@intel.com>
 <20191125180247.GD945122@lophozonia>
 <20191203190136.00007171@intel.com>
 <20191218112044.GA2371701@myrica>
Organization: intel
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_105433_814505_6753CDF1 
X-CRM114-Status: GOOD (  38.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: virtio-dev@lists.oasis-open.org, kevin.tian@intel.com,
 lorenzo.pieralisi@arm.com, gregkh@linuxfoundation.org,
 linux-pci@vger.kernel.org, joro@8bytes.org, sudeep.holla@arm.com,
 rjw@rjwysocki.net, virtualization@lists.linux-foundation.org,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 sebastien.boeuf@intel.com, mst@redhat.com, jacob.jun.pan@intel.com,
 eric.auger@redhat.com, guohanjun@huawei.com, bhelgaas@google.com,
 jasowang@redhat.com, linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Dec 2019 12:20:44 +0100
Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:

> On Tue, Dec 03, 2019 at 07:01:36PM -0800, Jacob Pan (Jun) wrote:
> > Hi Jean,
> > 
> > Sorry for the delay, I was out last week. Comments inline below.
> > 
> > On Mon, 25 Nov 2019 19:02:47 +0100
> > Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:
> >   
> > > On Fri, Nov 22, 2019 at 04:01:02PM -0800, Jacob Pan (Jun) wrote:  
> > > > > (1) ACPI has one table per vendor (DMAR for Intel, IVRS for
> > > > > AMD and IORT for Arm). From my point of view IORT is easier to
> > > > > extend, since we just need to introduce a new node type. There
> > > > > are no dependencies to Arm in the Linux IORT driver, so it
> > > > > works well with CONFIG_X86.   
> > > > From my limited understanding, IORT and VIOT is to solve device
> > > > topology enumeration only? I am not sure how it can be expanded
> > > > to cover information beyond device topology. e.g. DMAR has NUMA
> > > > information and root port ATS, I guess they are not used today
> > > > in the guest but might be additions in the future.    
> > > 
> > > The PCI root-complex node of IORT has an ATS attribute, which we
> > > can already use. However its scope is the root complex, not
> > > individual root ports like with DMAR.
> > > 
> > > I'm not very familiar with NUMA, but it looks like we just need to
> > > specify a proximity domain in relation to the SRAT table, for each
> > > viommu? The SMMUv3 node in IORT has a 4-bytes "proximity domain"
> > > field for this. We can add the same to the VIOT virtio-iommu nodes
> > > later, since the structures are extensible.
> > >   
> > I think there the proximity domain is more for each assigned device
> > than vIOMMU. vIOMMU in the guest can have assigned devices belong to
> > different pIOMMU and proximity domains. If the guest owns the first
> > level page tables (gIOVA or SVA), we want to make sure page tables
> > are allocated from the close proximity domain.
> > 
> > My understanding is virtio IOMMU supports both virtio devices and
> > assigned devices. we could care less about the former in terms of
> > NUMA.
> > 
> > In ACPI, we have _PXM method to retrieve device proximity domain. I
> > don't know if there is something equivalent or a generic way to get
> > _PXM information. I think VMM also need to make sure when an
> > assigned device is used with vIOMMU, there are some memory is
> > allocated from the device's proximity domain.
> >   
> > > But it might be better to keep the bare minimum information in
> > > the FW descriptor, and put the rest in the virtio-iommu. So yes
> > > topology enumeration is something the device cannot do itself
> > > (not fully that is, see (2)) but for the rest, virtio-iommu's
> > > PROBE request can provide details about each endpoint in relation
> > > to their physical IOMMU.
> > > 
> > > We could for example add a bit in a PROBE property saying that the
> > > whole path between the IOMMU and the endpoint supports ATS. For
> > > NUMA it might also be more interesting to have a finer
> > > granularity, since one viommu could be managing endpoints that
> > > are behind different physical IOMMUs. If in the future we want to
> > > allocate page tables close to the physical IOMMU for example, we
> > > might need to describe multiple NUMA nodes per viommu, using the
> > > PROBE request. 
> > Should we reinvent something for NUMA or use ACPI's SRAT, _PXM?   
> 
> Regardless whether we put it in the VIOT or in the virtio-iommu PROBE
> request, we necessarily need to reuse the node IDs defined by SRAT (or
> numa-node-id on devicetree, also a 32-bit value). A virtio-pci based
> virtio-iommu already has the _PXM of its closest bridge and wouldn't
> need anything more in the VIOT, while a virtio-mmio based
> virtio-iommu would need a proximity domain field in the VIOT. That
> could be added later since the table is extensible, but as you
> pointed out, that information might not be very useful.
> 
> > I am not sure how it is handled today in QEMU in terms of guest-host
> > NUMA proximity domain mapping.  
> 
> It looks like the user can specify this guest-host mapping on the
> command-line:
> 
>   -object memory-backend-ram,id=mem0,size=4G,host-nodes=3,policy=bind
>   -object memory-backend-ram,id=mem1,size=4G,host-nodes=4,policy=bind
>   -numa node,memdev=mem0,nodeid=numa0
>   -numa node,memdev=mem1,nodeid=numa1
>   -numa cpu,node-id=numa0,socket-id=0
>   -numa cpu,node-id=numa1,socket-id=1
> 
> numa0 and numa1 would get proximity domains 0 and 1, corresponding to
> host domains 3 and 4. It is also possible to specify the NUMA node of
> a PCI bus (via the PCI expander bridge), and therefore to assign a
> VFIO PCI device in the same proximity domain as its physical location.
> 
>   -device pxb,id=bridge1,bus=pci.0,numa_node=1 (simplified)
>   -device vfio-pci,host=03:01.0,bus=bridge1
> 
Thanks a lot for the thorough explanation. I will give that a try on
x86, I assume the ACPI tables also built to match these cmdline options.
> Linux can use this information to allocate DMA close to the endpoint
> (see for example __iommu_dma_alloc_pages()). For page tables
> allocation, io-pgtables currently takes the node ID of the IOMMU
> device, not the endpoint. For the scenario you describe (virtio-iommu
> endpoints managed by different physical IOMMU), we would need to take
> for example the node ID of the first endpoint in the iommu_domain for
> which we're allocating page tables.
> 
If iommu_domain is shared by multiple device from different NUMA node,
I guess taking the first one is as good as anyone. It would not be
an optimal configuration.
> Is it safe to assume that the pIOMMU is in the same proximity domain
> as the physical endpoint?
I think it is a safe assumption.
>  If that's the case, then the guest already
> has all the information it needs. Otherwise it's easy to add a
> proximity domain PROBE property for each endpoint. Configuring the
> host to pass that information might be more difficult.
> 
I agree, guest should always allocate DMA and IOVA page tables basedon
the endpoint. VT-d currently allocates page table pages based on IOMMU
NUMA node, that might have to change.
> 
> Off topic, I've been wondering how to make iommu-sva aware of NUMA
> topology as well, so that when handling a page request we allocate
> memory on the faulting device's NUMA node, but I think it might
> require invasive changes to the mm subsystem, to pass a NUMA node to
> handle_mm_fault().
> 
> Thanks,
> Jean


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
