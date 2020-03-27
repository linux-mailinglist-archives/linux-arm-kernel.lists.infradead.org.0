Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1737196044
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 22:14:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HkOx8IaqHewK4NEH6Bfej9RCqv/sVQY99NYFCEQGHZs=; b=i+s2MEpT4avWLp
	k75IRHI707KcBk3HcPejS3UriKIQ105wNg32Vohv1RYoX9Vv3BJgc9EQBEjRehxdOlbESNW+8C17W
	5wgd5u7FLXQ00SvmuQZ/6zIVEAwh5Zi0r8uCB0dMMRRHPsaIUIqxjF/09h/Kb9aigYr6zRVgXh3Ci
	w2dESwYwDshOvA1AeCWGo52vHpO/46OmL6VDWQqLWrPsC73afiz0JgZe58wGqUqKv5JQGEdSIcBhI
	C3koA4C64ToK8k+Ad9kWyTBjPSRAiQkLVtrndX7/5B6s+madtKY6nY79XYyHUC7t6d5QAEIrcSnln
	6O1tswdE0Kp8JV4nfsEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHwIe-0000fj-I4; Fri, 27 Mar 2020 21:13:56 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHwIS-0000es-FS
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 21:13:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585343623;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pU369DtG86jsIbWwBlHqilmriJZlc4uAPV60W3fwUQ0=;
 b=L7BAIEGKjjhwnTO9K/svT/UgAB12KzDP5gtS0a25xawt38M5ywdwBepRD9KQn2eWCeGGEi
 eu9B4xetqHSX3fKreXuMRLpCm9Gk8sPW9227Lvwsp+MQiBbRn0jBhEWZJH4148h+RSVFAf
 Y3c3ip3iJNjT0dehAW1V+a0m51K27js=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-298-w4oL4hpQNGqRf3z8J3_npA-1; Fri, 27 Mar 2020 17:11:44 -0400
X-MC-Unique: w4oL4hpQNGqRf3z8J3_npA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3A1D3800D53;
 Fri, 27 Mar 2020 21:11:43 +0000 (UTC)
Received: from w520.home (ovpn-112-162.phx2.redhat.com [10.3.112.162])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A8C901001B2D;
 Fri, 27 Mar 2020 21:11:42 +0000 (UTC)
Date: Fri, 27 Mar 2020 15:11:42 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Diana Craciun <diana.craciun@oss.nxp.com>
Subject: Re: [PATCH 0/9] vfio/fsl-mc: VFIO support for FSL-MC devices
Message-ID: <20200327151142.79dd2554@w520.home>
In-Reply-To: <20200323171911.27178-1-diana.craciun@oss.nxp.com>
References: <20200323171911.27178-1-diana.craciun@oss.nxp.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_141344_720070_583657D2 
X-CRM114-Status: GOOD (  23.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, bharatb.yadav@gmail.com,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 laurentiu.tudor@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 23 Mar 2020 19:19:02 +0200
Diana Craciun <diana.craciun@oss.nxp.com> wrote:

> DPAA2 (Data Path Acceleration Architecture) consists in
> mechanisms for processing Ethernet packets, queue management,
> accelerators, etc.
> 
> The Management Complex (mc) is a hardware entity that manages the DPAA2
> hardware resources. It provides an object-based abstraction for software
> drivers to use the DPAA2 hardware. The MC mediates operations such as
> create, discover, destroy of DPAA2 objects.
> The MC provides memory-mapped I/O command interfaces (MC portals) which
> DPAA2 software drivers use to operate on DPAA2 objects.
> 
> A DPRC is a container object that holds other types of DPAA2 objects.
> Each object in the DPRC is a Linux device and bound to a driver.
> The MC-bus driver is a platform driver (different from PCI or platform
> bus). The DPRC driver does runtime management of a bus instance. It
> performs the initial scan of the DPRC and handles changes in the DPRC
> configuration (adding/removing objects).
> 
> All objects inside a container share the same hardware isolation
> context, meaning that only an entire DPRC can be assigned to
> a virtual machine.
> When a container is assigned to a virtual machine, all the objects
> within that container are assigned to that virtual machine.
> The DPRC container assigned to the virtual machine is not allowed
> to change contents (add/remove objects) by the guest. The restriction
> is set by the host and enforced by the mc hardware.
> 
> The DPAA2 objects can be directly assigned to the guest. However
> the MC portals (the memory mapped command interface to the MC) need
> to be emulated because there are commands that configure the
> interrupts and the isolation IDs which are virtual in the guest.
> 
> Example:
> echo vfio-fsl-mc > /sys/bus/fsl-mc/devices/dprc.2/driver_override
> echo dprc.2 > /sys/bus/fsl-mc/drivers/vfio-fsl-mc/bind
> 
> The dprc.2 is bound to the VFIO driver and all the objects within
> dprc.2 are going to be bound to the VFIO driver.

What's the composition of the IOMMU group, does it start with the DPRC
and each of the objects within the container are added to the same
group as they're created?

For an alternative to the driver_override mechanism used in this series
of passing the override through various scan/create callbacks, you
might consider something like I did for PCI SR-IOV:

https://lore.kernel.org/lkml/158396395214.5601.11207416598267070486.stgit@gimli.home/

ie. using the bus notifier to setup the driver_override before driver
matching is done.  Thanks,

Alex

> More details about the DPAA2 objects can be found here:
> Documentation/networking/device_drivers/freescale/dpaa2/overview.rst
> 
> The patches are dependent on some changes in the mc-bus (bus/fsl-mc)
> driver. The changes were needed in order to re-use code and to export
> some more functions that are needed by the VFIO driver.
> Currenlty the mc-bus patches are under review:
> https://www.spinics.net/lists/kernel/msg3447567.html
> 
> Bharat Bhushan (1):
>   vfio/fsl-mc: Add VFIO framework skeleton for fsl-mc devices
> 
> Diana Craciun (8):
>   vfio/fsl-mc: Scan DPRC objects on vfio-fsl-mc driver bind
>   vfio/fsl-mc: Implement VFIO_DEVICE_GET_INFO ioctl
>   vfio/fsl-mc: Implement VFIO_DEVICE_GET_REGION_INFO ioctl call
>   vfio/fsl-mc: Allow userspace to MMAP fsl-mc device MMIO regions
>   vfio/fsl-mc: Added lock support in preparation for interrupt handling
>   vfio/fsl-mc: Add irq infrastructure for fsl-mc devices
>   vfio/fsl-mc: trigger an interrupt via eventfd
>   vfio/fsl-mc: Add read/write support for fsl-mc devices
> 
>  MAINTAINERS                               |   6 +
>  drivers/vfio/Kconfig                      |   1 +
>  drivers/vfio/Makefile                     |   1 +
>  drivers/vfio/fsl-mc/Kconfig               |   9 +
>  drivers/vfio/fsl-mc/Makefile              |   4 +
>  drivers/vfio/fsl-mc/vfio_fsl_mc.c         | 660 ++++++++++++++++++++++
>  drivers/vfio/fsl-mc/vfio_fsl_mc_intr.c    | 221 ++++++++
>  drivers/vfio/fsl-mc/vfio_fsl_mc_private.h |  56 ++
>  include/uapi/linux/vfio.h                 |   1 +
>  9 files changed, 959 insertions(+)
>  create mode 100644 drivers/vfio/fsl-mc/Kconfig
>  create mode 100644 drivers/vfio/fsl-mc/Makefile
>  create mode 100644 drivers/vfio/fsl-mc/vfio_fsl_mc.c
>  create mode 100644 drivers/vfio/fsl-mc/vfio_fsl_mc_intr.c
>  create mode 100644 drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
