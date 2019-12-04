Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4721121B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 04:01:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMJI5RP5GQg/xknqD77nx92lgCkRDX+HNCuoHspO7Hg=; b=BRKUqAeybNAVsM
	vNCAV9vJawVFHzprg61TfYi09e6tScxMSTlVsVnM1/i7vOWV54HeXth8q6meP+06jyFQX6GzazUjW
	0ZxuTc4OLjvdKho+xxLzNioN9Jh9maw+GxX4309K0czar25IoKsQ7rb5Wwtq3dgqhWQPWZJAyr/Cg
	T6heokITwqhnsORrp+vmFr0WytpKhl9j+ugtzt6WOnP8AmhupBhbQeno9pmJPtBiqBdAPKwAoXZIW
	o9YTYdcxCng/q2JNZ/fSiM+aoZ8e767MHf+Z+OvfRcam/1L6ZFRw8u/SM1F6pOrjJ9q8q1hqvViUO
	wu2EXkeeggXrD2+47D+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icKvE-0002ob-5e; Wed, 04 Dec 2019 03:01:48 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icKv7-0002nt-8R
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 03:01:43 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 19:01:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,275,1571727600"; d="scan'208";a="385576029"
Received: from jpan9-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.254.106.153])
 by orsmga005.jf.intel.com with ESMTP; 03 Dec 2019 19:01:37 -0800
Date: Tue, 3 Dec 2019 19:01:36 -0800
From: "Jacob Pan (Jun)" <jacob.jun.pan@intel.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [RFC 00/13] virtio-iommu on non-devicetree platforms
Message-ID: <20191203190136.00007171@intel.com>
In-Reply-To: <20191125180247.GD945122@lophozonia>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
 <20191122160102.00004489@intel.com>
 <20191125180247.GD945122@lophozonia>
Organization: intel
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_190141_342483_4E67CC6F 
X-CRM114-Status: GOOD (  26.94  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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

Hi Jean,

Sorry for the delay, I was out last week. Comments inline below.

On Mon, 25 Nov 2019 19:02:47 +0100
Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:

> On Fri, Nov 22, 2019 at 04:01:02PM -0800, Jacob Pan (Jun) wrote:
> > > (1) ACPI has one table per vendor (DMAR for Intel, IVRS for AMD
> > > and IORT for Arm). From my point of view IORT is easier to
> > > extend, since we just need to introduce a new node type. There
> > > are no dependencies to Arm in the Linux IORT driver, so it works
> > > well with CONFIG_X86. 
> > From my limited understanding, IORT and VIOT is to solve device
> > topology enumeration only? I am not sure how it can be expanded to
> > cover information beyond device topology. e.g. DMAR has NUMA
> > information and root port ATS, I guess they are not used today in
> > the guest but might be additions in the future.  
> 
> The PCI root-complex node of IORT has an ATS attribute, which we can
> already use. However its scope is the root complex, not individual
> root ports like with DMAR.
> 
> I'm not very familiar with NUMA, but it looks like we just need to
> specify a proximity domain in relation to the SRAT table, for each
> viommu? The SMMUv3 node in IORT has a 4-bytes "proximity domain"
> field for this. We can add the same to the VIOT virtio-iommu nodes
> later, since the structures are extensible.
> 
I think there the proximity domain is more for each assigned device
than vIOMMU. vIOMMU in the guest can have assigned devices belong to
different pIOMMU and proximity domains. If the guest owns the first
level page tables (gIOVA or SVA), we want to make sure page tables are
allocated from the close proximity domain.

My understanding is virtio IOMMU supports both virtio devices and
assigned devices. we could care less about the former in terms of NUMA.

In ACPI, we have _PXM method to retrieve device proximity domain. I
don't know if there is something equivalent or a generic way to get
_PXM information. I think VMM also need to make sure when an assigned
device is used with vIOMMU, there are some memory is allocated from the
device's proximity domain.

> But it might be better to keep the bare minimum information in the FW
> descriptor, and put the rest in the virtio-iommu. So yes topology
> enumeration is something the device cannot do itself (not fully that
> is, see (2)) but for the rest, virtio-iommu's PROBE request can
> provide details about each endpoint in relation to their physical
> IOMMU.
> 
> We could for example add a bit in a PROBE property saying that the
> whole path between the IOMMU and the endpoint supports ATS. For NUMA
> it might also be more interesting to have a finer granularity, since
> one viommu could be managing endpoints that are behind different
> physical IOMMUs. If in the future we want to allocate page tables
> close to the physical IOMMU for example, we might need to describe
> multiple NUMA nodes per viommu, using the PROBE request.
> 
Should we reinvent something for NUMA or use ACPI's SRAT, _PXM? I am
not sure how it is handled today in QEMU in terms of guest-host NUMA
proximity domain mapping.

> Thanks,
> Jean


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
