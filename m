Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1D51BBF07
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:21:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=Oy6LIfSF2M7QQ4ypcZG/jrUYSzo36XJq2wWHngZ4SD0=; b=WS
	N0tci5Oee9D8oIJdT+gq6miSh6XijEYiZlmCg9U8FjZcH9HNxIAC9swfsRR34nTpPVPvldvcb82Cn
	ccfZ2QGa1lPvNHexQMvKdIPKCR1cGLE16Mp6as42j1HvtO/XcTDD70mMYNwxIfPT78GbVuH+MNGYk
	YNXCyzBpzaSpliCOOLvSO5R7RmKjSoE4z9koB96euE44/cFI+BLrOVv5zHc3hQxTSUczO3zFv82Tz
	9gpygd7UahzhDIFPlLxRpMgMUiLMUo/ojBQ+yl/PyQYdSYl2CMpQIj9gV4U9suk1OPIfhn+qM/j/B
	xwRSD2JsJrSMBqVnc91qrpAwZW0bAP1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQAh-0004rH-9d; Tue, 28 Apr 2020 13:21:11 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQ9x-0004ZK-3u
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 13:20:27 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132022euoutp01311c9c8bf03cb2a021c7f865259d367b~J-l3mZ6Ml1886118861euoutp01v
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 13:20:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200428132022euoutp01311c9c8bf03cb2a021c7f865259d367b~J-l3mZ6Ml1886118861euoutp01v
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588080022;
 bh=M+a2IJHYb0toPVb1vAnuWVCTaP9GKRurjtQwh8AYvLw=;
 h=From:To:Cc:Subject:Date:References:From;
 b=q18JgevKqhOJFVQbq854H7EZCG5G834Ju2OsSoTZ6Bnetp9hSuSml1XgbTuO7TgP4
 R5AsmC7f+5FBYPH96fNBvK8niWEZSnBsTkYTk4AwGipw8rtIwP1p5At68Edy0CqVed
 3WAneSpyCm6lxuYsAezA6HhFWzXMWhbZPqCd2+ac=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200428132022eucas1p197a0e0088bb95f4bbe04e9e58b9ec827~J-l3P0VJS1366113661eucas1p1C;
 Tue, 28 Apr 2020 13:20:22 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id CE.16.60698.69D28AE5; Tue, 28
 Apr 2020 14:20:22 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132022eucas1p2aa4716cbaca61c432ee8028be15fef7a~J-l2zrH2Z2655426554eucas1p2J;
 Tue, 28 Apr 2020 13:20:22 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200428132022eusmtrp180c18efbf17c909e49ded70dd6d7a26d~J-l2y51qv1743317433eusmtrp1s;
 Tue, 28 Apr 2020 13:20:22 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-6e-5ea82d96013d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 67.D3.07950.59D28AE5; Tue, 28
 Apr 2020 14:20:21 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132021eusmtip254bc6d36e65ea6888afab346da0ccde0~J-l2NHB3X1062310623eusmtip2h;
 Tue, 28 Apr 2020 13:20:21 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [RFC 00/17] DRM: fix struct sg_table nents vs. orig_nents misuse
Date: Tue, 28 Apr 2020 15:19:48 +0200
Message-Id: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURSGc2emM8NSHKcI17qmiSSSsAWIExGiBM3gg+HJByLVCiOLtJCW
 RfBBQBQsS1AiIBJTkX0rAlYERahAESISQECWsMYEApGEVUNQhgF9+85//nP+k5tLonSdSEqG
 qqI4tUoRLsPNMUPnr68OOQ5lcufkXCmT0fsZYYr1iQTzOk8vYpKM3Tjzx/AYZQbXfuJMeWUH
 wjzPqkcY3UcPZnVwGmHqZodEzEBTAc5Ut08QTNvynIjpnlghzh9gq15UAfbDug5jx4fe4+zb
 9SkRO5lmQtj6onvs2PYsymaPlAK2+XsCzmY2VAB2pe64n4W/+bkgLjw0hlM7ed0wDykq7EEi
 k13uDBXOYgmgyE4LzEhIucGx/BVMC8xJmioD0PhoFhWKVQCHsox7xQqAqYvfsP2RjvVJlGea
 KgUwbeGQwDsTZVoLnnHKBWqXtDjP1tQDALsyLPlFKGVA4VxpO6EFJCmhfGGrPp73YNQpmF77
 cnenmPKErz5t4kLWCVhZ27p7BKRaCFi1mYgIDR+o69bumSRwwdRACHwU9mSnY8LAfQCne6sJ
 oUgHcCApDwguDzje+xvnr0Cp01Df5CTIF2BOQS3Gy5CygiNLB3kZ3cEnhlxUkMUw9SEtuO1g
 vqnmX2xbXz8qMAufjS4TwpsEwOnBEiILHM//n6UDoALYctEaZTCncVVxsY4ahVITrQp2DIxQ
 1oGdn9SzbVprBC1bN42AIoHMUlxrWSanRYoYTZzSCCCJyqzFMyElclocpIiL59QR19XR4ZzG
 CI6QmMxW7Fo4H0BTwYoo7jbHRXLq/S5CmkkTQIh4o4S2Kj0sc8+9eKbHOXu+3vdppn/K0pbS
 cbJ4Tu1ZEPbGxn7LK7B907lruKV1uDPli6vU52SjW4mNt859yl3S94472xzWu2RdnuZ3q1ke
 TM94XzGz4DInG9hjFRvXoMSrryY+1q8x7cfiaMp4R//VhEvyZWlozl1baaXDZb0M04QoXOxR
 tUbxF8W9urRFAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupikeLIzCtJLcpLzFFi42I5/e/4Pd2puiviDLZPtrboPXeSyWLp+kZ2
 i40z1rNaNB06xWbxf9tEZosrX9+zWaxcfZTJYvaEzUwWC/ZbW3y58pDJYtPja6wWl3fNYbNY
 e+Quu8XBD09YLU7d/czuwO+xZt4aRo+93xaweNy5tofNY/u3B6we97uPM3lsXlLvcfvfY2aP
 yTeWM3rsvtnA5tG3ZRWjx+dNcgHcUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG5rFW
 RqZK+nY2Kak5mWWpRfp2CXoZSxadZipoMay4tugxSwPjErUuRk4OCQETiaPf7jN3MXJxCAks
 ZZQ4MGU5E0RCRuLktAZWCFtY4s+1LjaIok+MErsPvmQHSbAJGEp0vYVIiAh0MkpM6/7IDuIw
 Cxxglug+fxJoFAeHsICnxIH1VSANLAKqEj0bFjKD2LwCthKLD/9gg9ggL7F6wwHmCYw8CxgZ
 VjGKpJYW56bnFhvpFSfmFpfmpesl5+duYgTGw7ZjP7fsYOx6F3yIUYCDUYmHdwPPijgh1sSy
 4srcQ4wSHMxKIryPMpbFCfGmJFZWpRblxxeV5qQWH2I0BVo+kVlKNDkfGKt5JfGGpobmFpaG
 5sbmxmYWSuK8HQIHY4QE0hNLUrNTUwtSi2D6mDg4pRoYhXk/zvWJKDx1vkLkWfHZ818iX3NW
 ZKbWSza8WzYh/4KNtC+z/4bQzU9msTd9msDdGH70I4vtD82ZP/fYT5ptVexQyRVSK9l54VrY
 VJGpzts6z9zh6l3cuU1XX7N3vqn6jJb9C1k/vuJ3kHsjsnUO27OTMjtsW2784ngufm3TxguO
 0y/ZWP5hVWIpzkg01GIuKk4EAF3VAt+dAgAA
X-CMS-MailID: 20200428132022eucas1p2aa4716cbaca61c432ee8028be15fef7a
X-Msg-Generator: CA
X-RootMTR: 20200428132022eucas1p2aa4716cbaca61c432ee8028be15fef7a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132022eucas1p2aa4716cbaca61c432ee8028be15fef7a
References: <CGME20200428132022eucas1p2aa4716cbaca61c432ee8028be15fef7a@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_062025_291455_07087BC2 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear All,

During the Exynos DRM GEM rework and fixing the issues in the 
drm_prime_sg_to_page_addr_arrays() function [1] I've noticed that most
drivers in DRM framework incorrectly use nents and orig_nents entries of
the struct sg_table.

In case of the most DMA-mapping implementations exchanging those two
entries or using nents for all loops on the scatterlist is harmless,
because they both have the same value. There exists however a DMA-mapping
implementations, for which such incorrect usage breaks things. The nents
returned by dma_map_sg() might be lower than the nents passed as its
parameter and this is perfectly fine. DMA framework or IOMMU is allowed
to join consecutive chunks while mapping if such operation is supported
by the underlying HW (bus, bridge, IOMMU, etc). Example of the case
where dma_map_sg() might return 1 'DMA' chunk for the 4 'physical' pages
is described here [2]

The DMA-mapping framework documentation [3] states that dma_map_sg()
returns the numer of the created entries in the DMA address space.
However the subsequent calls to dma_sync_sg_for_{device,cpu} and
dma_unmap_sg must be called with the original number of entries passed to
dma_map_sg. The common pattern in DRM drivers were to assign the
dma_map_sg() return value to sg_table->nents and use that value for
the subsequent calls to dma_sync_sg_* or dma_unmap_sg functions. Also
the code iterated over nents times to access the pages stored in the
processed scatterlist, while it should use orig_nents as the numer of
the page entries.

I've tried to identify all such incorrect usage of sg_table->nents in the
DRM subsystem and this is a result of my research. It looks that the
incorrect pattern has been copied over the many drivers. Too bad in most
cases it even worked correctly if the system used simple, linear
DMA-mapping implementation, for which swapping nents and orig_nents
doesn't make any difference.

I wonder what to do to avoid such misuse in the future, as this case
clearly shows that the current sg_table structure is a bit hard to
understand. I have the following ideas and I would like to know your
opinion before I prepare more patches and check sg_table usage all over
the kernel:

1. introduce a dma_{map,sync,unmap}_sgtable() wrappers, which will use
   a proper sg_table entries and call respective DMA-mapping functions
   and adapt current code to it

2. rename nents and orig_nents to nr_pages, nr_dmas to clearly state
   which one refers to which part of the scatterlist; I'm open for
   other names for those entries

I will appreciate your comments.

Patches are based on top of Linux next-20200428. I've reduced the
recipients list mainly to mailing lists, the next version I will try to
send to the maintainers of the respective drivers.

Best regards,
Marek Szyprowski


References:

[1] https://lkml.org/lkml/2020/3/27/555 
[2] https://lkml.org/lkml/2020/3/29/65
[3] Documentation/DMA-API-HOWTO.txt


Patch summary:

Marek Szyprowski (17):
  drm: core: fix sg_table nents vs. orig_nents usage
  drm: amdgpu: fix sg_table nents vs. orig_nents usage
  drm: armada: fix sg_table nents vs. orig_nents usage
  drm: etnaviv: fix sg_table nents vs. orig_nents usage
  drm: exynos: fix sg_table nents vs. orig_nents usage
  drm: i915: fix sg_table nents vs. orig_nents usage
  drm: lima: fix sg_table nents vs. orig_nents usage
  drm: msm: fix sg_table nents vs. orig_nents usage
  drm: panfrost: fix sg_table nents vs. orig_nents usage
  drm: radeon: fix sg_table nents vs. orig_nents usage
  drm: rockchip: fix sg_table nents vs. orig_nents usage
  drm: tegra: fix sg_table nents vs. orig_nents usage
  drm: virtio: fix sg_table nents vs. orig_nents usage
  drm: vmwgfx: fix sg_table nents vs. orig_nents usage
  drm: xen: fix sg_table nents vs. orig_nents usage
  drm: host1x: fix sg_table nents vs. orig_nents usage
  dmabuf: fix sg_table nents vs. orig_nents usage

 drivers/dma-buf/heaps/heap-helpers.c             |  7 ++++---
 drivers/dma-buf/udmabuf.c                        |  5 +++--
 drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c      |  7 ++++---
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c          |  8 ++++----
 drivers/gpu/drm/armada/armada_gem.c              | 14 ++++++++-----
 drivers/gpu/drm/drm_cache.c                      |  2 +-
 drivers/gpu/drm/drm_gem_shmem_helper.c           |  7 ++++---
 drivers/gpu/drm/drm_prime.c                      |  9 +++++----
 drivers/gpu/drm/etnaviv/etnaviv_gem.c            | 10 ++++++----
 drivers/gpu/drm/exynos/exynos_drm_g2d.c          |  7 ++++---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c       | 13 ++++++------
 drivers/gpu/drm/i915/gem/i915_gem_internal.c     |  4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_region.c       |  4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c        |  5 +++--
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c  | 10 +++++-----
 drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c |  5 +++--
 drivers/gpu/drm/i915/gt/intel_ggtt.c             | 12 ++++++------
 drivers/gpu/drm/i915/i915_gem_gtt.c              | 12 +++++++-----
 drivers/gpu/drm/i915/i915_scatterlist.c          |  4 ++--
 drivers/gpu/drm/i915/selftests/scatterlist.c     |  8 ++++----
 drivers/gpu/drm/lima/lima_gem.c                  |  4 ++--
 drivers/gpu/drm/msm/msm_gem.c                    |  8 ++++----
 drivers/gpu/drm/msm/msm_iommu.c                  |  3 ++-
 drivers/gpu/drm/panfrost/panfrost_gem.c          |  3 ++-
 drivers/gpu/drm/panfrost/panfrost_mmu.c          |  4 +++-
 drivers/gpu/drm/radeon/radeon_ttm.c              | 10 +++++-----
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c      | 15 +++++++-------
 drivers/gpu/drm/tegra/gem.c                      | 25 ++++++++++++------------
 drivers/gpu/drm/tegra/plane.c                    | 13 ++++++------
 drivers/gpu/drm/virtio/virtgpu_object.c          | 11 ++++++-----
 drivers/gpu/drm/virtio/virtgpu_vq.c              |  8 ++++----
 drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c       |  6 +++---
 drivers/gpu/drm/xen/xen_drm_front_gem.c          |  2 +-
 drivers/gpu/host1x/job.c                         | 17 ++++++++--------
 34 files changed, 154 insertions(+), 128 deletions(-)

-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
