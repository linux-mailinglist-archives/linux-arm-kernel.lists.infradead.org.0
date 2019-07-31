Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 741C17C783
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:51:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EVC1Z3HCFoT05s/wfyQypwWePeHDox5hAGV9H7cCLGM=; b=uahN/m/yFoe4fm
	1rJ1zmY/VyoYXhJWr4BPwZbxQaKZh+ySgt/rxbCiXq0hZF/ujAx7eLEDH7ld+/140AkbKeZERFf/n
	KRar2Cvl+e++L7KmsWh1T3jjSaDaHig198C83Dd2iYHHJXL6lH8n7OU2+HFZ4iXk2l1QXBpDaaQTM
	sczCinpeFX0BUPV/DaLyFZstghmwDWI8mEYmf5U7PJ0MbNX15kwQUMfKE9n8zqhJv8y3bt2HvUyW8
	ybq2ZESdhPcUmO6SRqSFgjIxjBPSM8cdMAkVQ5lWhPNjQXBBnYQnREV22Wf4ye79oXUabBg5vERWC
	DWqF2dN+y2ha5dJkHkfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqsq-0004LF-1z; Wed, 31 Jul 2019 15:51:20 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqpg-0007Xt-JB; Wed, 31 Jul 2019 15:48:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D13F2AF9A;
 Wed, 31 Jul 2019 15:48:00 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com, hch@lst.de, wahrenst@gmx.net,
 marc.zyngier@arm.com, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mm@kvack.org
Subject: [PATCH 0/8] Raspberry Pi 4 DMA addressing support
Date: Wed, 31 Jul 2019 17:47:43 +0200
Message-Id: <20190731154752.16557-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_084804_797129_C6C07364 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: phill@raspberryi.org, linux-s390@vger.kernel.org, f.fainelli@gmail.com,
 mbrugger@suse.com, frowand.list@gmail.com, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, eric@anholt.net, robh+dt@kernel.org,
 linux-rpi-kernel@lists.infradead.org, akpm@linux-foundation.org,
 will@kernel.org, nsaenzjulienne@suse.de, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,
this series attempts to address some issues we found while bringing up
the new Raspberry Pi 4 in arm64 and it's intended to serve as a follow
up of this discussion:
https://lkml.org/lkml/2019/7/17/476

The new Raspberry Pi 4 has up to 4GB of memory but most peripherals can
only address the first GB: their DMA address range is
0xc0000000-0xfc000000 which is aliased to the first GB of physical
memory 0x00000000-0x3c000000. Note that only some peripherals have these
limitations: the ARM cores, PCIe, V3D, GENET, and 40-bit DMA channels
have a wider view of the address space.

Part of this is solved in arm32 by setting up the machine specific
'.dma_zone_size = SZ_1G', which takes care of the allocating the
coherent memory area at the right spot. Yet no buffer bouncing (needed
for dma streaming) is available at the moment, but that's a story for
another series.

Unfortunately there is no such thing as '.dma_zone_size' in arm64 also
only ZONE_DMA32 is created which is interpreted by dma-direct and the
arm64 code as if all peripherals where be able to address the first 4GB
of memory.

In the light of this, the series implements the following changes:

- Add code that parses the device-tree in oder to find the SoC's common
  DMA area.

- Create a ZONE_DMA whenever that area is needed and add the rest of the
  lower 4 GB of memory to ZONE_DMA32*.

- Create the CMA area in a place suitable for all peripherals.

- Inform dma-direct of the new runtime calculated min_mask*.

That's all.

Regards,
Nicolas

* These solutions where already discussed on the previous RFC (see link
above).

---

Nicolas Saenz Julienne (8):
  arm64: mm: use arm64_dma_phys_limit instead of calling
    max_zone_dma_phys()
  arm64: rename variables used to calculate ZONE_DMA32's size
  of/fdt: add function to get the SoC wide DMA addressable memory size
  arm64: re-introduce max_zone_dma_phys()
  arm64: use ZONE_DMA on DMA addressing limited devices
  dma-direct: turn ARCH_ZONE_DMA_BITS into a variable
  arm64: update arch_zone_dma_bits to fine tune dma-direct min mask
  mm: comment arm64's usage of 'enum zone_type'

 arch/arm64/Kconfig              |  4 ++
 arch/arm64/mm/init.c            | 78 ++++++++++++++++++++++++++-------
 arch/powerpc/include/asm/page.h |  9 ----
 arch/powerpc/mm/mem.c           | 14 +++++-
 arch/s390/include/asm/page.h    |  2 -
 arch/s390/mm/init.c             |  1 +
 drivers/of/fdt.c                | 72 ++++++++++++++++++++++++++++++
 include/linux/dma-direct.h      |  2 +
 include/linux/mmzone.h          | 21 ++++-----
 include/linux/of_fdt.h          |  2 +
 kernel/dma/direct.c             |  8 ++--
 11 files changed, 168 insertions(+), 45 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
