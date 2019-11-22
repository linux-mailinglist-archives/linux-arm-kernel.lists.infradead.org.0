Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5ED11072A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 14:01:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GvLWrOoS8vKR0aXIIGSW8goseNDlr7Qg7I3LCNkGfsk=; b=gtzpkXs35r2FoU
	wT7+vtNsmwmhaycUjpMub9VTl3PjmMNRCzCpkPcZi2CJafzYSYhOzhQnvlQ42gtksDjWixPbYJT+A
	4oJuG/KPkCdpzEzEKhsFihON2ic0Bq4+GiHSUEzC9grUWQ3gSxTRnsZDqdLGPVeeQFoynVcmad4xI
	bGlxKkbZdP6Ogsiqcezdem+OtUC/OIGSDO/R1ZlaJ6QxvAIJUi5NVzZRzLwAcxK2XdWg7MQr0JzAB
	ySTOvODxg2vz4uPEToGK6TwKk9dMJoB03bA1YhGLNngcjbjdLe9FkZlovkXm+6TkNaDGZ1hvF/I+Z
	7jz24DSGQBvOpCpITJcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY8Yn-0004pq-1R; Fri, 22 Nov 2019 13:01:17 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY8YZ-0004nc-Dn
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 13:01:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574427660;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hDtTiFZGGo/1StAmtVfrkUJ+PjYMYzK9DUhNQHwqZlg=;
 b=WveYlPr+r80JpPGtiw8L4LuItcwudw119xJ2EJjC1CEhR9t/t/HxBGvm8rkREtEBlVLKGx
 vYejcyupLkLPdNaA5X7HEyeTkaaBJE2s9uN0/MKZx9oUMYxGc1pFSKY6ceuZwp4AkOPQxz
 D4w09bA6q/IPiZS73XBgK6vVDuBsoe8=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-276-zxcwWSY2PvGXA0mwP1NRTw-1; Fri, 22 Nov 2019 08:00:57 -0500
Received: by mail-qv1-f70.google.com with SMTP id b1so4638897qvm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 05:00:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1fR3x/2WLw68dp/9JUT3DJdPEJVC8+NEY0FO9GcZY1o=;
 b=J/o8t5AQWQAoZOTQZMbaTqESuTtDAIPVfIGOkNwfaDEdt2B3E/smQm91PcYQ9Sp5zG
 cfMozNNw2z1PRqA6l07+nUqqSgEW2VnxARx79dQhy92C0GH392Oy2IuatWMqqP3+h4fm
 /Yl3qItlEc3/2rqYlXqD6Y8Z7SvjYj9+Mi8mHKaHlTzZP0dNsjxqCQlR1mS9QcCwkPux
 TuCG7sMmCW56gvEvvUX8unCm3Sipco4kSS+cJ/YJiK3vS/iUmASEQsU1KrbEDyYYXbxW
 za0R6wNK2xlvYF7MTlAo/L8sFpXQ5hBnFKCRaTkcJYC6Wx+1blTTiX3dra0kMA/Zo0nP
 ZGlg==
X-Gm-Message-State: APjAAAUR2+yMKsy0M28UYuqhdbPDxoF1GwZivRzQzmA0VrGm7gg0GzJS
 0eg/76R8vgyY6GK3Wi0kqFpowhdb85+3nKyJl7PxJOzpbotqZJksd7Hyu2JQecL2CiQ7ekCBiPv
 4abybOzpmFAIkyprhUthAZEvmvf9UiGifs9Q=
X-Received: by 2002:a05:620a:208f:: with SMTP id
 e15mr3450536qka.351.1574427656432; 
 Fri, 22 Nov 2019 05:00:56 -0800 (PST)
X-Google-Smtp-Source: APXvYqwq6MxrIGacf2ffzy2/2UvK2qmsTNmCKrzyfncS0NUTLAuxeKcMdMPDyh/8Vn1ehS0K2ecivQ==
X-Received: by 2002:a05:620a:208f:: with SMTP id
 e15mr3450483qka.351.1574427656023; 
 Fri, 22 Nov 2019 05:00:56 -0800 (PST)
Received: from redhat.com (bzq-79-176-6-42.red.bezeqint.net. [79.176.6.42])
 by smtp.gmail.com with ESMTPSA id r36sm3397016qta.27.2019.11.22.05.00.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 05:00:55 -0800 (PST)
Date: Fri, 22 Nov 2019 08:00:46 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [RFC 00/13] virtio-iommu on non-devicetree platforms
Message-ID: <20191122075438-mutt-send-email-mst@kernel.org>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20191122105000.800410-1-jean-philippe@linaro.org>
X-MC-Unique: zxcwWSY2PvGXA0mwP1NRTw-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_050103_542130_3323AD3B 
X-CRM114-Status: GOOD (  35.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: virtio-dev@lists.oasis-open.org, kevin.tian@intel.com,
 lorenzo.pieralisi@arm.com, gregkh@linuxfoundation.org,
 linux-pci@vger.kernel.org, joro@8bytes.org, sudeep.holla@arm.com,
 rjw@rjwysocki.net, virtualization@lists.linux-foundation.org,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 sebastien.boeuf@intel.com, jacob.jun.pan@intel.com, eric.auger@redhat.com,
 guohanjun@huawei.com, bhelgaas@google.com, jasowang@redhat.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 11:49:47AM +0100, Jean-Philippe Brucker wrote:
> I'm seeking feedback on multi-platform support for virtio-iommu. At the
> moment only devicetree (DT) is supported and we don't have a pleasant
> solution for other platforms. Once we figure out the topology
> description, x86 support is trivial.
> 
> Since the IOMMU manages memory accesses from other devices, the guest
> kernel needs to initialize the IOMMU before endpoints start issuing DMA.
> It's a solved problem: firmware or hypervisor describes through DT or
> ACPI tables the device dependencies, and probe of endpoints is deferred
> until the IOMMU is probed. But:
> 
> (1) ACPI has one table per vendor (DMAR for Intel, IVRS for AMD and IORT
>     for Arm). From my point of view IORT is easier to extend, since we
>     just need to introduce a new node type. There are no dependencies to
>     Arm in the Linux IORT driver, so it works well with CONFIG_X86.
> 
>     However, there are concerns about other OS vendors feeling obligated
>     to implement this new node, so Arm proposed introducing another ACPI
>     table, that can wrap any of DMAR, IVRS and IORT to extend it with
>     new virtual nodes. A draft of this VIOT table specification is
>     available at http://jpbrucker.net/virtio-iommu/viot/viot-v5.pdf
> 
>     I'm afraid this could increase fragmentation as guests would need to
>     implement or modify their support for all of DMAR, IVRS and IORT. If
>     we end up doing VIOT, I suggest limiting it to IORT.
> 
> (2) In addition, there are some concerns about having virtio depend on
>     ACPI or DT. Some hypervisors (Firecracker, QEMU microvm, kvmtool x86
>     [1])

power?

> don't currently implement those methods.
> 
>     It was suggested to embed the topology description into the device.
>     It can work, as demonstrated at the end of this RFC, with the
>     following limitations:
> 
>     - The topology description must be read before any endpoint managed
>       by the IOMMU is probed, and even before the virtio module is
>       loaded. This RFC uses a PCI quirk to manually parse the virtio
>       configuration. It assumes that all endpoints managed by the IOMMU
>       are under this same PCI host.
> 
>     - I don't have a solution for the virtio-mmio transport at the
>       moment, because I haven't had time to modify a host to test it. I
>       think it could either use a notifier on the platform bus, or
>       better, a new 'iommu' command-line argument to the virtio-mmio
>       driver.

	A notifier seems easier for users. What are the disadvantages of
	that?

>	So the current prototype doesn't work for firecracker and
>       microvm, which rely on virtio-mmio.
> 
>     - For Arm, if the platform has an ITS, the hypervisor needs IORT or
>       DT to describe it anyway. More generally, not using either ACPI or
>       DT might prevent from supporting other features as well. I suspect
>       the above users will have to implement a standard method sooner or
>       later.
> 
>     - Even when reusing as much existing code as possible, guest support
>       is still going to be around a few hundred lines since we can't
>       rely on the normal virtio infrastructure to be loaded at that
>       point. As you can see below, the diffstat for the incomplete
>       topology implementation is already bigger than the exhaustive IORT
>       support, even when jumping through the VIOT hoop.
> 
>     So it's a lightweight solution for very specific use-cases, and we
>     should still support ACPI for the general case. Multi-platform
>     guests such as Linux will then need to support three topology
>     descriptions instead of two.
> 
> In this RFC I present both solutions, but I'd rather not keep all of it.
> Please see the individual patches for details:
> 
> (1) Patches 1, 3-10 add support for virtio-iommu to the Linux IORT
>     driver and patches 2, 11 add the VIOT glue.
> 
> (2) Patch 12 adds the built-in topology description to the virtio-iommu
>     specification. Patch 13 is a partial implementation for the Linux
>     virtio-iommu driver. It only supports PCI, not platform devices.
> 
> You can find Linux and QEMU code on my virtio-iommu/devel branches at
> http://jpbrucker.net/git/linux and http://jpbrucker.net/git/qemu
> 
> 
> I split the diffstat since there are two independent features. The first
> one is for patches 1-11, and the second one for patch 13.
> 
> Jean-Philippe Brucker (11):
>   ACPI/IORT: Move IORT to the ACPI folder
>   ACPI: Add VIOT definitions
>   ACPI/IORT: Allow registration of external tables
>   ACPI/IORT: Add node categories
>   ACPI/IORT: Support VIOT virtio-mmio node
>   ACPI/IORT: Support VIOT virtio-pci node
>   ACPI/IORT: Defer probe until virtio-iommu-pci has registered a fwnode
>   ACPI/IORT: Add callback to update a device's fwnode
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
>  drivers/acpi/{arm64 => }/iort.c | 317 ++++++++++++++++++++++++++------
>  drivers/acpi/tables.c           |   2 +-
>  drivers/acpi/viot.c             |  44 +++++
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
>  drivers/iommu/virtio-iommu-topology.c | 410 ++++++++++++++++++++++++++
>  drivers/iommu/virtio-iommu.c          |   3 +
>  drivers/pci/pci-driver.c              |   3 +
>  include/linux/virtio_iommu.h          |  18 ++
>  include/uapi/linux/virtio_iommu.h     |  26 ++
>  8 files changed, 473 insertions(+)
>  create mode 100644 drivers/iommu/virtio-iommu-topology.c
>  create mode 100644 include/linux/virtio_iommu.h
> 
> 
> [1] firecracker: https://github.com/firecracker-microvm/firecracker
>     microvm: https://github.com/qemu/qemu/blob/master/docs/microvm.rst
>     kvmtool: https://git.kernel.org/pub/scm/linux/kernel/git/will/kvmtool.git/
> -- 
> 2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
