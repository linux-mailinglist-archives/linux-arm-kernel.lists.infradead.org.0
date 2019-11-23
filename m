Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A51107BCF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 01:01:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uGGIOpN+GTphPlzefMomQi1/9owQzzvmDFxD2ZeLZHI=; b=ku5FGWzxzEV8zj
	wc+04siYmAa/wtdjlkjI4cqkoK3zNUwVTt/TIQQOhhHf3ARmYb9zLzzDIlKOKRk2ZKlXopuazoDzy
	rsuP5zfeygyAvnDYWgJTqGlO8bohgpDhp4b4c7NdoLUjT7/cIVVPeiNyrUeAX6cR4x/sxLInl3XCE
	d6Q/rOt5Jesj3rxDyGgcu5cYt17oQzK+JLrSmEx3QZpEcd3aE8dBk+J8uPuPLdvexsZPrw+gAbZZw
	KgRAchlbEHN6Phk9fZg4x6dRW2ffmY+XXCohTyNtL8Tl+VpVZaYY8Dsk2dlf+YKeL8GsPMXu3YIiL
	iyoAFZHUJEjEesDGoKdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYIrU-0000FN-Aq; Sat, 23 Nov 2019 00:01:16 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYIrK-0000Ez-OZ
 for linux-arm-kernel@lists.infradead.org; Sat, 23 Nov 2019 00:01:08 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 16:01:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,231,1571727600"; d="scan'208";a="290792434"
Received: from jpan9-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.254.71.164])
 by orsmga001.jf.intel.com with ESMTP; 22 Nov 2019 16:01:03 -0800
Date: Fri, 22 Nov 2019 16:01:02 -0800
From: "Jacob Pan (Jun)" <jacob.jun.pan@intel.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [RFC 00/13] virtio-iommu on non-devicetree platforms
Message-ID: <20191122160102.00004489@intel.com>
In-Reply-To: <20191122105000.800410-1-jean-philippe@linaro.org>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
Organization: intel
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_160106_841343_BC6A77E9 
X-CRM114-Status: GOOD (  39.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Fri, 22 Nov 2019 11:49:47 +0100
Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:

> I'm seeking feedback on multi-platform support for virtio-iommu. At
> the moment only devicetree (DT) is supported and we don't have a
> pleasant solution for other platforms. Once we figure out the topology
> description, x86 support is trivial.
> 
> Since the IOMMU manages memory accesses from other devices, the guest
> kernel needs to initialize the IOMMU before endpoints start issuing
> DMA. It's a solved problem: firmware or hypervisor describes through
> DT or ACPI tables the device dependencies, and probe of endpoints is
> deferred until the IOMMU is probed. But:
> 
> (1) ACPI has one table per vendor (DMAR for Intel, IVRS for AMD and
> IORT for Arm). From my point of view IORT is easier to extend, since
> we just need to introduce a new node type. There are no dependencies
> to Arm in the Linux IORT driver, so it works well with CONFIG_X86.
> 
From my limited understanding, IORT and VIOT is to solve device topology
enumeration only? I am not sure how it can be expanded to cover
information beyond device topology. e.g. DMAR has NUMA information and
root port ATS, I guess they are not used today in the guest but might
be additions in the future.

>     However, there are concerns about other OS vendors feeling
> obligated to implement this new node, so Arm proposed introducing
> another ACPI table, that can wrap any of DMAR, IVRS and IORT to
> extend it with new virtual nodes. A draft of this VIOT table
> specification is available at
> http://jpbrucker.net/virtio-iommu/viot/viot-v5.pdf
> 
>     I'm afraid this could increase fragmentation as guests would need
> to implement or modify their support for all of DMAR, IVRS and IORT.
> If we end up doing VIOT, I suggest limiting it to IORT.
> 
> (2) In addition, there are some concerns about having virtio depend on
>     ACPI or DT. Some hypervisors (Firecracker, QEMU microvm, kvmtool
> x86 [1]) don't currently implement those methods.
> 
>     It was suggested to embed the topology description into the
> device. It can work, as demonstrated at the end of this RFC, with the
>     following limitations:
> 
>     - The topology description must be read before any endpoint
> managed by the IOMMU is probed, and even before the virtio module is
>       loaded. This RFC uses a PCI quirk to manually parse the virtio
>       configuration. It assumes that all endpoints managed by the
> IOMMU are under this same PCI host.
> 

>     - I don't have a solution for the virtio-mmio transport at the
>       moment, because I haven't had time to modify a host to test it.
> I think it could either use a notifier on the platform bus, or
>       better, a new 'iommu' command-line argument to the virtio-mmio
>       driver. So the current prototype doesn't work for firecracker
> and microvm, which rely on virtio-mmio.
> 
>     - For Arm, if the platform has an ITS, the hypervisor needs IORT
> or DT to describe it anyway. More generally, not using either ACPI or
>       DT might prevent from supporting other features as well. I
> suspect the above users will have to implement a standard method
> sooner or later.
> 
>     - Even when reusing as much existing code as possible, guest
> support is still going to be around a few hundred lines since we can't
>       rely on the normal virtio infrastructure to be loaded at that
>       point. As you can see below, the diffstat for the incomplete
>       topology implementation is already bigger than the exhaustive
> IORT support, even when jumping through the VIOT hoop.
> 
>     So it's a lightweight solution for very specific use-cases, and we
>     should still support ACPI for the general case. Multi-platform
>     guests such as Linux will then need to support three topology
>     descriptions instead of two.
> 
> In this RFC I present both solutions, but I'd rather not keep all of
> it. Please see the individual patches for details:
> 
> (1) Patches 1, 3-10 add support for virtio-iommu to the Linux IORT
>     driver and patches 2, 11 add the VIOT glue.
> 
> (2) Patch 12 adds the built-in topology description to the
> virtio-iommu specification. Patch 13 is a partial implementation for
> the Linux virtio-iommu driver. It only supports PCI, not platform
> devices.
> 
> You can find Linux and QEMU code on my virtio-iommu/devel branches at
> http://jpbrucker.net/git/linux and http://jpbrucker.net/git/qemu
> 
> 
> I split the diffstat since there are two independent features. The
> first one is for patches 1-11, and the second one for patch 13.
> 
> Jean-Philippe Brucker (11):
>   ACPI/IORT: Move IORT to the ACPI folder
>   ACPI: Add VIOT definitions
>   ACPI/IORT: Allow registration of external tables
>   ACPI/IORT: Add node categories
>   ACPI/IORT: Support VIOT virtio-mmio node
>   ACPI/IORT: Support VIOT virtio-pci node
>   ACPI/IORT: Defer probe until virtio-iommu-pci has registered a
> fwnode ACPI/IORT: Add callback to update a device's fwnode
>   iommu/virtio: Create fwnode if necessary
>   iommu/virtio: Update IORT fwnode
>   ACPI: Add VIOT table
> 
>  MAINTAINERS                     |   9 +
>  drivers/acpi/Kconfig            |   7 +
>  drivers/acpi/Makefile           |   2 +
>  drivers/acpi/arm64/Kconfig      |   3 -
>  drivers/acpi/arm64/Makefile     |   1 -
>  drivers/acpi/bus.c              |   2 +
>  drivers/acpi/{arm64 => }/iort.c | 317
> ++++++++++++++++++++++++++------ drivers/acpi/tables.c           |
> 2 +- drivers/acpi/viot.c             |  44 +++++
>  drivers/iommu/Kconfig           |   1 +
>  drivers/iommu/virtio-iommu.c    |  61 +++++-
>  include/acpi/actbl2.h           |  31 ++++
>  include/linux/acpi_iort.h       |  14 ++
>  include/linux/acpi_viot.h       |  20 ++
>  14 files changed, 448 insertions(+), 66 deletions(-)
>  rename drivers/acpi/{arm64 => }/iort.c (86%)
>  create mode 100644 drivers/acpi/viot.c
>  create mode 100644 include/linux/acpi_viot.h
> 
> Jean-Philippe Brucker (1):
>   iommu/virtio: Add topology description to virtio-iommu config space
> 
>  drivers/base/platform.c               |   3 +
>  drivers/iommu/Kconfig                 |   9 +
>  drivers/iommu/Makefile                |   1 +
>  drivers/iommu/virtio-iommu-topology.c | 410
> ++++++++++++++++++++++++++ drivers/iommu/virtio-iommu.c          |
> 3 + drivers/pci/pci-driver.c              |   3 +
>  include/linux/virtio_iommu.h          |  18 ++
>  include/uapi/linux/virtio_iommu.h     |  26 ++
>  8 files changed, 473 insertions(+)
>  create mode 100644 drivers/iommu/virtio-iommu-topology.c
>  create mode 100644 include/linux/virtio_iommu.h
> 
> 
> [1] firecracker: https://github.com/firecracker-microvm/firecracker
>     microvm: https://github.com/qemu/qemu/blob/master/docs/microvm.rst
>     kvmtool:
> https://git.kernel.org/pub/scm/linux/kernel/git/will/kvmtool.git/


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
