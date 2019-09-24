Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8BFBD19E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 20:14:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XzwVxP1YR2H6IlWArt8OYXKGLx4MhWdxofbphSFiQlE=; b=OC5A13wtTJfVi0
	tjPTvLZXx6x1DGHZ4nCAPry93K35Meu/Ba//9t+XNSclUaNTw97aQ+wRoaoYHhhPUw8U71hA/Gwnz
	aXzaW2ln1N4yAWXiUBw8h0yrmC/I3BMmOdEV1jRBilopnuXMcA8gbrDOd8Gaebz6aca0H7IuCoFMm
	Y4kvSCN2ttXsIOFYGw7cWWkE0Tq+RLGzem5941ximfA2jr2A0iNIBFssZxjETfHxX60C5r/LznszQ
	uG3FBO/9A2T/U0reNiJG/5r7FaW11HoAmwv2Jya1F5TxA+bypoIMyVHIEJcFlw3zQIDuk8baScpg+
	G3pA05YFonV/mx6g+xaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCpKH-0003j9-V6; Tue, 24 Sep 2019 18:14:14 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCpJ1-00034C-Mz
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 18:12:57 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 22E57AC93;
 Tue, 24 Sep 2019 18:12:51 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: robh+dt@kernel.org, devicetree@vger.kernel.org, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 dmaengine@vger.kernel.org, etnaviv@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, xen-devel@lists.xenproject.org,
 linux-tegra@vger.kernel.org, linux-media@vger.kernel.org,
 linux-pci@vger.kernel.org
Subject: [PATCH 00/11] of: Fix DMA configuration for non-DT masters
Date: Tue, 24 Sep 2019 20:12:31 +0200
Message-Id: <20190924181244.7159-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_111256_128175_58642537 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: f.fainelli@gmail.com, freedreno@lists.freedesktop.org, mbrugger@suse.com,
 wahrenst@gmx.net, james.quinlan@broadcom.com,
 Dan Williams <dan.j.williams@intel.com>, robin.murphy@arm.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,
this series tries to address one of the issues blocking us from
upstreaming Broadcom's STB PCIe controller[1]. Namely, the fact that
devices not represented in DT which sit behind a PCI bus fail to get the
bus' DMA addressing constraints.

This is due to the fact that of_dma_configure() assumes it's receiving a
DT node representing the device being configured, as opposed to the PCIe
bridge node we currently pass. This causes the code to directly jump
into PCI's parent node when checking for 'dma-ranges' and misses
whatever was set there.

To address this I create a new API in OF - inspired from Robin Murphys
original proposal[2] - which accepts a bus DT node as it's input in
order to configure a device's DMA constraints. The changes go deep into
of/address.c's implementation, as a device being having a DT node
assumption was pretty strong.

On top of this work, I also cleaned up of_dma_configure() removing its
redundant arguments and creating an alternative function for the special cases
not applicable to either the above case or the default usage.

IMO the resulting functions are more explicit. They will probably
surface some hacky usages that can be properly fixed as I show with the
DT fixes on the Layerscape platform.

This was also tested on a Raspberry Pi 4 with a custom PCIe driver and
on a Seattle AMD board.

Regards,
Nicolas

[1] https://patchwork.kernel.org/patch/9650345/#20294961
[2] https://patchwork.kernel.org/patch/9650345/

---

Nicolas Saenz Julienne (11):
  of: address: clean-up unused variable in of_dma_get_range()
  of: base: introduce __of_n_*_cells_parent()
  of: address: use parent DT node in bus->count_cells()
  of: address: introduce of_translate_dma_address_parent()
  of: expose __of_get_dma_parent() to OF subsystem
  of: address: use parent OF node in of_dma_get_range()
  dts: arm64: layerscape: add dma-ranges property to qoric-mc node
  dts: arm64: layerscape: add dma-ranges property to pcie nodes
  of: device: remove comment in of_dma_configure()
  of: device: introduce of_dma_configure_parent()
  of: simplify of_dma_config()'s arguments

 .../arm64/boot/dts/freescale/fsl-ls1088a.dtsi |   1 +
 .../arm64/boot/dts/freescale/fsl-ls208xa.dtsi |   5 +
 .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi |   1 +
 drivers/base/platform.c                       |   2 +-
 drivers/bcma/main.c                           |   2 +-
 drivers/bus/fsl-mc/fsl-mc-bus.c               |   2 +-
 drivers/dma/qcom/hidma_mgmt.c                 |   2 +-
 drivers/gpu/drm/etnaviv/etnaviv_drv.c         |   2 +-
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c         |   2 +-
 drivers/gpu/drm/sun4i/sun4i_backend.c         |   2 +-
 drivers/gpu/drm/xen/xen_drm_front.c           |   2 +-
 drivers/gpu/host1x/bus.c                      |   4 +-
 drivers/media/platform/qcom/venus/firmware.c  |   2 +-
 drivers/media/platform/s5p-mfc/s5p_mfc.c      |   2 +-
 drivers/of/address.c                          | 136 +++++++++---------
 drivers/of/base.c                             |  69 +++++++--
 drivers/of/device.c                           |  59 +++++++-
 drivers/of/of_private.h                       |   5 +
 drivers/pci/pci-driver.c                      |   3 +-
 drivers/xen/gntdev.c                          |   2 +-
 include/linux/of_address.h                    |   8 +-
 include/linux/of_device.h                     |  23 ++-
 22 files changed, 223 insertions(+), 113 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
