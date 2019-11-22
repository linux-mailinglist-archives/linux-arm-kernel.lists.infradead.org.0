Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCBC106C93
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:53:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=53n+ENO5f0tXY4LMbjnJkZGarejFJDk7WpQ5AYsikwU=; b=s9QST7BAniZ4Jw
	WEXyVDRjGLZ3gWQ4PcWAeIrK0kvwD+7kGZQ5EGBu0+Vjhbwt35CicGAWdZ775r2/ZU6GB/i+emM/W
	CGlfp4gmM+xcT2gd7XpwbB7E8+YeVvxYt7eGX8Zr/cb+4R6C7f4BGAgITpRfrh38HDT2lauEVK1Gj
	/AvCFRkvktSJCheVUnQy1v2FHtP26XI/cZMH52XXIavizO9j/rmUWaH7SXlYaXqmv0Vzqi78Kto8J
	FmOejHz/fBqHO4p+Apjaso3sVG4xZ/2Zpzop+TYXKVXKUCtlnnawhD8nwvVnT0zWM5lP5ucdXTjRP
	c415aDkFjhPbdt3O+p+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6Z9-00077R-DF; Fri, 22 Nov 2019 10:53:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6Wb-0004zC-OP
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:50:56 +0000
Received: by mail-wr1-x441.google.com with SMTP id t2so8087341wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 02:50:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TVZC8O5GuUsgdVDCzcN2CqTy4L8wnnx0IKWd5NiFgCs=;
 b=Q3aBSYS6L0keHFMg9s3YF/O/MS0ZbpfYzXYluOwOpxXbstgAIVmQmrUo3jmGNcrDMZ
 RRPRqees28PfvdT26W0bPHIpTF934vMZ1mdXqlDToqWtyVfmuX00leXURFV5dfkQ02NJ
 g8MLLi84nyK+BFemsn5DmX+bFGOhLRD0eyOqDxu7lLUZ9cyS3bFHai1Fg75a75rR5dmc
 HAtSQb2nq4jX33aT5hVPbjbJphW0npRYuRLSvtGKiec4rx5bJjM/h3+QM3a2GsLsz6Wf
 aE1lZ/Wt3JEJzcp0sPuMjwjNU7ZJsgm+knGVpf9Ib7BC1bjVvZmANR5bEwTu8vWj9Clx
 OrdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TVZC8O5GuUsgdVDCzcN2CqTy4L8wnnx0IKWd5NiFgCs=;
 b=hawek1GtrohUAsEuvPf6PQ7Po+EcRdKJe+l5RZpeoOZOrGW6itxG7MsRN9LTgHhQQC
 Msx5iexWxOUyx20YrXPnp4VMOxh4pGQ/Ku9JUL/3jAgaZvlj7SHlc3Q16KZc3rmAGg/E
 eDEiqYega4uLoS00EUeM9aWrrDZu+c+dsrp2RmTleojb4NDpfPh1UZjGDXLOxcpsrqlY
 M8ekhUNP1MeXflS4YmeqU9FPHv1OwinQT5zz05LxOwkKwVb3kNw+wv7XXU/kv5OqKyvv
 kblP+Kk5agFrwjnIm90rGRtm3VHWV/RsXlgawgyOD2eJsRZX9Dba3577tBztsfH3WnVt
 RYvA==
X-Gm-Message-State: APjAAAVlxG5d7KwE7iA1c+CY8/xDRPTTCg63cTK0ySHudmul3qzvAKYt
 VsMmbFZBNsm8SxWCn837D1IX37U01Xo=
X-Google-Smtp-Source: APXvYqwBWCyLPkUhZBo6K0fMA3vA5VrmhXM4U/1z4Br0F1oFeGiiIWprIEctPIwsTs5r8FDOo3DDYA==
X-Received: by 2002:adf:f688:: with SMTP id v8mr174600wrp.147.1574419850990;
 Fri, 22 Nov 2019 02:50:50 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-204-106.adslplus.ch.
 [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id o133sm2088197wmb.4.2019.11.22.02.50.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 02:50:50 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org,
 virtualization@lists.linux-foundation.org, linux-pci@vger.kernel.org,
 virtio-dev@lists.oasis-open.org
Subject: [RFC 00/13] virtio-iommu on non-devicetree platforms
Date: Fri, 22 Nov 2019 11:49:47 +0100
Message-Id: <20191122105000.800410-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_025053_886816_C64442D8 
X-CRM114-Status: GOOD (  25.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
Cc: kevin.tian@intel.com, lorenzo.pieralisi@arm.com, mst@redhat.com,
 gregkh@linuxfoundation.org, joro@8bytes.org, sudeep.holla@arm.com,
 rjw@rjwysocki.net, eric.auger@redhat.com, sebastien.boeuf@intel.com,
 jacob.jun.pan@intel.com, guohanjun@huawei.com, bhelgaas@google.com,
 jasowang@redhat.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I'm seeking feedback on multi-platform support for virtio-iommu. At the
moment only devicetree (DT) is supported and we don't have a pleasant
solution for other platforms. Once we figure out the topology
description, x86 support is trivial.

Since the IOMMU manages memory accesses from other devices, the guest
kernel needs to initialize the IOMMU before endpoints start issuing DMA.
It's a solved problem: firmware or hypervisor describes through DT or
ACPI tables the device dependencies, and probe of endpoints is deferred
until the IOMMU is probed. But:

(1) ACPI has one table per vendor (DMAR for Intel, IVRS for AMD and IORT
    for Arm). From my point of view IORT is easier to extend, since we
    just need to introduce a new node type. There are no dependencies to
    Arm in the Linux IORT driver, so it works well with CONFIG_X86.

    However, there are concerns about other OS vendors feeling obligated
    to implement this new node, so Arm proposed introducing another ACPI
    table, that can wrap any of DMAR, IVRS and IORT to extend it with
    new virtual nodes. A draft of this VIOT table specification is
    available at http://jpbrucker.net/virtio-iommu/viot/viot-v5.pdf

    I'm afraid this could increase fragmentation as guests would need to
    implement or modify their support for all of DMAR, IVRS and IORT. If
    we end up doing VIOT, I suggest limiting it to IORT.

(2) In addition, there are some concerns about having virtio depend on
    ACPI or DT. Some hypervisors (Firecracker, QEMU microvm, kvmtool x86
    [1]) don't currently implement those methods.

    It was suggested to embed the topology description into the device.
    It can work, as demonstrated at the end of this RFC, with the
    following limitations:

    - The topology description must be read before any endpoint managed
      by the IOMMU is probed, and even before the virtio module is
      loaded. This RFC uses a PCI quirk to manually parse the virtio
      configuration. It assumes that all endpoints managed by the IOMMU
      are under this same PCI host.

    - I don't have a solution for the virtio-mmio transport at the
      moment, because I haven't had time to modify a host to test it. I
      think it could either use a notifier on the platform bus, or
      better, a new 'iommu' command-line argument to the virtio-mmio
      driver. So the current prototype doesn't work for firecracker and
      microvm, which rely on virtio-mmio.

    - For Arm, if the platform has an ITS, the hypervisor needs IORT or
      DT to describe it anyway. More generally, not using either ACPI or
      DT might prevent from supporting other features as well. I suspect
      the above users will have to implement a standard method sooner or
      later.

    - Even when reusing as much existing code as possible, guest support
      is still going to be around a few hundred lines since we can't
      rely on the normal virtio infrastructure to be loaded at that
      point. As you can see below, the diffstat for the incomplete
      topology implementation is already bigger than the exhaustive IORT
      support, even when jumping through the VIOT hoop.

    So it's a lightweight solution for very specific use-cases, and we
    should still support ACPI for the general case. Multi-platform
    guests such as Linux will then need to support three topology
    descriptions instead of two.

In this RFC I present both solutions, but I'd rather not keep all of it.
Please see the individual patches for details:

(1) Patches 1, 3-10 add support for virtio-iommu to the Linux IORT
    driver and patches 2, 11 add the VIOT glue.

(2) Patch 12 adds the built-in topology description to the virtio-iommu
    specification. Patch 13 is a partial implementation for the Linux
    virtio-iommu driver. It only supports PCI, not platform devices.

You can find Linux and QEMU code on my virtio-iommu/devel branches at
http://jpbrucker.net/git/linux and http://jpbrucker.net/git/qemu


I split the diffstat since there are two independent features. The first
one is for patches 1-11, and the second one for patch 13.

Jean-Philippe Brucker (11):
  ACPI/IORT: Move IORT to the ACPI folder
  ACPI: Add VIOT definitions
  ACPI/IORT: Allow registration of external tables
  ACPI/IORT: Add node categories
  ACPI/IORT: Support VIOT virtio-mmio node
  ACPI/IORT: Support VIOT virtio-pci node
  ACPI/IORT: Defer probe until virtio-iommu-pci has registered a fwnode
  ACPI/IORT: Add callback to update a device's fwnode
  iommu/virtio: Create fwnode if necessary
  iommu/virtio: Update IORT fwnode
  ACPI: Add VIOT table

 MAINTAINERS                     |   9 +
 drivers/acpi/Kconfig            |   7 +
 drivers/acpi/Makefile           |   2 +
 drivers/acpi/arm64/Kconfig      |   3 -
 drivers/acpi/arm64/Makefile     |   1 -
 drivers/acpi/bus.c              |   2 +
 drivers/acpi/{arm64 => }/iort.c | 317 ++++++++++++++++++++++++++------
 drivers/acpi/tables.c           |   2 +-
 drivers/acpi/viot.c             |  44 +++++
 drivers/iommu/Kconfig           |   1 +
 drivers/iommu/virtio-iommu.c    |  61 +++++-
 include/acpi/actbl2.h           |  31 ++++
 include/linux/acpi_iort.h       |  14 ++
 include/linux/acpi_viot.h       |  20 ++
 14 files changed, 448 insertions(+), 66 deletions(-)
 rename drivers/acpi/{arm64 => }/iort.c (86%)
 create mode 100644 drivers/acpi/viot.c
 create mode 100644 include/linux/acpi_viot.h

Jean-Philippe Brucker (1):
  iommu/virtio: Add topology description to virtio-iommu config space

 drivers/base/platform.c               |   3 +
 drivers/iommu/Kconfig                 |   9 +
 drivers/iommu/Makefile                |   1 +
 drivers/iommu/virtio-iommu-topology.c | 410 ++++++++++++++++++++++++++
 drivers/iommu/virtio-iommu.c          |   3 +
 drivers/pci/pci-driver.c              |   3 +
 include/linux/virtio_iommu.h          |  18 ++
 include/uapi/linux/virtio_iommu.h     |  26 ++
 8 files changed, 473 insertions(+)
 create mode 100644 drivers/iommu/virtio-iommu-topology.c
 create mode 100644 include/linux/virtio_iommu.h


[1] firecracker: https://github.com/firecracker-microvm/firecracker
    microvm: https://github.com/qemu/qemu/blob/master/docs/microvm.rst
    kvmtool: https://git.kernel.org/pub/scm/linux/kernel/git/will/kvmtool.git/
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
