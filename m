Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DE41CEFCF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 10:57:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=6cvPnJBhXExKu99ueTc9Jt13d3QHKl8C6zE15a1GJJ4=; b=k+
	NyQg5MTgIzV+RxgeJFnazkewm9gNf2b6mK5VWKLM3v+SnZFIG96ck3yAkbMLXIbfw3EDCrf6XfkFB
	M5pPWDGo9qZqDrDZY04HbetQ8SXPGC3b0ddQFOIegqB5NvZJVuGY37h+uv4D3d2GMcJMs5ExvjE6l
	RgwM4dKeb2cHwhDadHfyi74YHAJf1TmldQ5/fEzDEiy2PgXKVQpk2IWIII4v4C5q5flqeqJjtnxmY
	HjFkgzPi27Z+O9gPjN7t1wkodhyTqaguxbuWN5cSIzeVeDB5dp0YeHV6rJssigg+C5KkclN3Wbasd
	Tt+gVYe0YRoXIEeA9JBwzeEFLOqDbvvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQjI-0006Xz-96; Tue, 12 May 2020 08:57:36 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQj7-0006Ww-LC
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 08:57:28 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512085722euoutp02913c3370c682b0b32938254c3b9f3c3a~OPCPIx0vy0157601576euoutp02E
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 08:57:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512085722euoutp02913c3370c682b0b32938254c3b9f3c3a~OPCPIx0vy0157601576euoutp02E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589273842;
 bh=MXURRBK33XuZuGQC15bomjU/50LbRX6sZzxnM4phfmw=;
 h=From:To:Cc:Subject:Date:References:From;
 b=rUNR4zlrEhWwEEmNCDOsZXgeKvJU4SsGKCA9vjHM7x8Or5MU5W2QVUYj4PImM6BAP
 yRIydbpzEv9z5SWgW49W/x7jaeQz2FXxrCAMlrMVGgmVyZfErXbhg8+JjbJ/WxA9vg
 pXdJx/GW1J53VRjBwivFhltJJhzSKK1ATwQUJyyM=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512085722eucas1p118c81c2e907205932f8db1bc3de83ab6~OPCO0Od5U0929709297eucas1p1K;
 Tue, 12 May 2020 08:57:22 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id AD.AA.60698.2F46ABE5; Tue, 12
 May 2020 09:57:22 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512085722eucas1p2fbaab30e49c9ddadc64b27db856e5921~OPCOXuBQ90706907069eucas1p2w;
 Tue, 12 May 2020 08:57:22 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512085722eusmtrp2548ffcc6b97981fdcb35d23d84f48cea~OPCOW9hyI0207602076eusmtrp2I;
 Tue, 12 May 2020 08:57:22 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-86-5eba64f2d767
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id F1.32.07950.1F46ABE5; Tue, 12
 May 2020 09:57:22 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200512085721eusmtip2ef3392596a7ed9db78764520aa0ba461~OPCN5xrAT1441014410eusmtip2S;
 Tue, 12 May 2020 08:57:21 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 00/38] DRM: fix struct sg_table nents vs. orig_nents misuse
Date: Tue, 12 May 2020 10:57:10 +0200
Message-Id: <20200512085710.14688-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprFKsWRmVeSWpSXmKPExsWy7djPc7qfUnbFGexpl7foPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12i4MfnrA6cHusmbeG
 0WPvtwUsHtu/PWD1uN99nMlj85J6j9v/HjN7TL6xnNFj980GNo++LasYPT5vkgvgiuKySUnN
 ySxLLdK3S+DK+LZzG1vBXt+KU6vuszUwHrbuYuTkkBAwkbgwaxVbFyMXh5DACkaJdxf+MkM4
 Xxgl3r+8wAThfGaUWNB8iBmm5fi0dYwQieWMEjMaW5ngWiZe6mUCqWITMJToetvFBmKLCLQy
 Spzo5QGxmQVmMEkcfV0KYgsLBEgs23iJpYuRg4NFQFViVi8HSJhXwFbiwO45TBDL5CVWbzgA
 dpKEwGR2iWVrZzNCJFwkLt/7wgZhC0u8Or6FHcKWkfi/cz4TREMzo8TDc2vZIZweRonLTTOg
 uq0l7pz7xQaymVlAU2L9Ln2IsKPE9wP7mUDCEgJ8EjfeCkLczCcxadt0Zogwr0RHmxBEtZrE
 rOPr4NYevHAJGkAeElvftoLZQgKxEnvPv2efwCg3C2HXAkbGVYziqaXFuempxcZ5qeV6xYm5
 xaV56XrJ+bmbGIEp5vS/4193MO77k3SIUYCDUYmHt8NoZ5wQa2JZcWXuIUYJDmYlEd6WTKAQ
 b0piZVVqUX58UWlOavEhRmkOFiVxXuNFL2OFBNITS1KzU1MLUotgskwcnFINjPX9X0vnWHlZ
 N+2wu/i+vlg2R+lnzIYH74JmrnhSvvbu0td3rm18zc6ZIfDmbHjxjRUOF1urYo79f+Ct2DfL
 Vaqj89u8z4ZdL1giuDrdQx7xOwre99RhUvzJuSjXtKCmcrqT5NLffgZ+Z89kWXWKP9GOeRnM
 Ka60pOevtEFp1dPkZsNji9IPK7EUZyQaajEXFScCADFnKEItAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrPLMWRmVeSWpSXmKPExsVy+t/xe7qfUnbFGVw5xmTRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGF14PZYM28N
 o8febwtYPLZ/e8Dqcb/7OJPH5iX1Hrf/PWb2mHxjOaPH7psNbB59W1YxenzeJBfAFaVnU5Rf
 WpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mWWqRvl6CX8W3nNraCvb4V
 p1bdZ2tgPGzdxcjJISFgInF82jpGEFtIYCmjxN5mNoi4jMTJaQ2sELawxJ9rXUBxLqCaT4wS
 jxaeBkuwCRhKdL2FSIgIdDJKTOv+yA7iMAvMY5JY9PAQkMPBISzgJ7HsiBWIySKgKjGrlwOk
 l1fAVuLA7jlMEAvkJVZvOMA8gZFnASPDKkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMDA3nbs
 55YdjF3vgg8xCnAwKvHwdhjtjBNiTSwrrsw9xCjBwawkwtuSCRTiTUmsrEotyo8vKs1JLT7E
 aAq0eyKzlGhyPjDq8kriDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1
 ME67I6ddHfPmeIlZ3GPhIvUXU9/9FasIe/zJqeXMPqft4R56tY9Tgm0+1+9YwT7Fyf6dqfny
 OoG5E4/rXDpa8fKo95OECfJ7i1yvXrv2mN3N9JSy1gbTfOXa6/whklk5Kr+LFsx/dXbtWtXF
 KgfWvl1S//qCpWX/k5Y7h59HW6w/21M54+eqM11KLMUZiYZazEXFiQD7wsNDggIAAA==
X-CMS-MailID: 20200512085722eucas1p2fbaab30e49c9ddadc64b27db856e5921
X-Msg-Generator: CA
X-RootMTR: 20200512085722eucas1p2fbaab30e49c9ddadc64b27db856e5921
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512085722eucas1p2fbaab30e49c9ddadc64b27db856e5921
References: <CGME20200512085722eucas1p2fbaab30e49c9ddadc64b27db856e5921@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_015726_186806_17A1AAF7 
X-CRM114-Status: GOOD (  22.16  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear All,

During the Exynos DRM GEM rework and fixing the issues in the.
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

I've tried to identify all such incorrect usage of sg_table->nents and
this is a result of my research. It looks that the incorrect pattern has
been copied over the many drivers mainly in the DRM subsystem. Too bad in
most cases it even worked correctly if the system used a simple, linear
DMA-mapping implementation, for which swapping nents and orig_nents
doesn't make any difference. To avoid similar issues in the future, I've
introduced a common wrappers for DMA-mapping calls, which operate directly
on the sg_table objects. I've also added wrappers for iterating over the
scatterlists stored in the sg_table objects and applied them where
possible. This, together with some common DRM prime helpers, allowed me
to almost get rid of all nents/orig_nents usage in the drivers. I hope
that such change makes the code robust, easier to follow and copy/paste
safe.

The biggest TODO is DRM/i915 driver and I don't feel brave enough to fix
it fully. The driver creatively uses sg_table->orig_nents to store the
size of the allocate scatterlist and ignores the number of the entries
returned by dma_map_sg function. In this patchset I only fixed the
sg_table objects exported by dmabuf related functions. I hope that I
didn't break anything there.

Patches are based on top of Linux next-20200511.

Best regards,
Marek Szyprowski


References:

[1] https://lkml.org/lkml/2020/3/27/555.
[2] https://lkml.org/lkml/2020/3/29/65
[3] Documentation/DMA-API-HOWTO.txt


Changelog:

v4:
- added for_each_sgtable_* wrappers and applied where possible
- added drm_prime_get_contiguous_size() and applied where possible
- applied drm_prime_sg_to_page_addr_arrays() where possible to remove page
  extraction from sg_table objects
- added documentation for the introduced wrappers
- improved patches description a bit

v3: https://lore.kernel.org/dri-devel/20200505083926.28503-1-m.szyprowski@samsung.com/
- introduce dma_*_sgtable_* wrappers and use them in all patches

v2: https://lore.kernel.org/linux-iommu/c01c9766-9778-fd1f-f36e-2dc7bd376ba4@arm.com/T/
- dropped most of the changes to drm/i915
- added fixes for rcar-du, xen, media and ion
- fixed a few issues pointed by kbuild test robot
- added wide cc: list for each patch

v1: https://lore.kernel.org/linux-iommu/c01c9766-9778-fd1f-f36e-2dc7bd376ba4@arm.com/T/
- initial version


Patch summary:

Marek Szyprowski (38):
  dma-mapping: add generic helpers for mapping sgtable objects
  scatterlist: add generic wrappers for iterating over sgtable objects
  iommu: add generic helper for mapping sgtable objects
  drm: prime: add common helper to check scatterlist contiguity
  drm: prime: use sgtable iterators in
    drm_prime_sg_to_page_addr_arrays()
  drm: core: fix common struct sg_table related issues
  drm: amdgpu: fix common struct sg_table related issues
  drm: armada: fix common struct sg_table related issues
  drm: etnaviv: fix common struct sg_table related issues
  drm: exynos: use common helper for a scatterlist contiguity check
  drm: exynos: fix common struct sg_table related issues
  drm: i915: fix common struct sg_table related issues
  drm: lima: fix common struct sg_table related issues
  drm: mediatek: use common helper for a scatterlist contiguity check
  drm: mediatek: use common helper for extracting pages array
  drm: msm: fix common struct sg_table related issues
  drm: omapdrm: use common helper for extracting pages array
  drm: omapdrm: fix common struct sg_table related issues
  drm: panfrost: fix common struct sg_table related issues
  drm: radeon: fix common struct sg_table related issues
  drm: rockchip: use common helper for a scatterlist contiguity check
  drm: rockchip: fix common struct sg_table related issues
  drm: tegra: fix common struct sg_table related issues
  drm: v3d: fix common struct sg_table related issues
  drm: virtio: fix common struct sg_table related issues
  drm: vmwgfx: fix common struct sg_table related issues
  xen: gntdev: fix common struct sg_table related issues
  drm: host1x: fix common struct sg_table related issues
  drm: rcar-du: fix common struct sg_table related issues
  dmabuf: fix common struct sg_table related issues
  staging: ion: remove dead code
  staging: ion: fix common struct sg_table related issues
  staging: tegra-vde: fix common struct sg_table related issues
  misc: fastrpc: fix common struct sg_table related issues
  rapidio: fix common struct sg_table related issues
  samples: vfio-mdev/mbochs: fix common struct sg_table related issues
  media: pci: fix common ALSA DMA-mapping related codes
  videobuf2: use sgtable-based scatterlist wrappers

 drivers/dma-buf/heaps/heap-helpers.c               | 13 ++--
 drivers/dma-buf/udmabuf.c                          |  7 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c        |  6 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c            |  9 +--
 drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c       |  8 +-
 drivers/gpu/drm/armada/armada_gem.c                | 12 +--
 drivers/gpu/drm/drm_cache.c                        |  2 +-
 drivers/gpu/drm/drm_gem_cma_helper.c               | 23 +-----
 drivers/gpu/drm/drm_gem_shmem_helper.c             | 14 ++--
 drivers/gpu/drm/drm_prime.c                        | 86 ++++++++++++----------
 drivers/gpu/drm/etnaviv/etnaviv_gem.c              | 12 ++-
 drivers/gpu/drm/etnaviv/etnaviv_mmu.c              | 13 +---
 drivers/gpu/drm/exynos/exynos_drm_g2d.c            | 10 +--
 drivers/gpu/drm/exynos/exynos_drm_gem.c            | 23 +-----
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c         | 11 +--
 drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c   |  7 +-
 drivers/gpu/drm/lima/lima_gem.c                    | 11 ++-
 drivers/gpu/drm/lima/lima_vm.c                     |  5 +-
 drivers/gpu/drm/mediatek/mtk_drm_gem.c             | 34 ++-------
 drivers/gpu/drm/msm/msm_gem.c                      | 13 ++--
 drivers/gpu/drm/msm/msm_gpummu.c                   | 14 ++--
 drivers/gpu/drm/msm/msm_iommu.c                    |  2 +-
 drivers/gpu/drm/omapdrm/omap_gem.c                 | 20 ++---
 drivers/gpu/drm/panfrost/panfrost_gem.c            |  4 +-
 drivers/gpu/drm/panfrost/panfrost_mmu.c            |  7 +-
 drivers/gpu/drm/radeon/radeon_ttm.c                | 11 ++-
 drivers/gpu/drm/rcar-du/rcar_du_vsp.c              |  3 +-
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c        | 42 +++--------
 drivers/gpu/drm/tegra/gem.c                        | 27 +++----
 drivers/gpu/drm/tegra/plane.c                      | 15 ++--
 drivers/gpu/drm/v3d/v3d_mmu.c                      | 17 ++---
 drivers/gpu/drm/virtio/virtgpu_object.c            | 36 +++++----
 drivers/gpu/drm/virtio/virtgpu_vq.c                | 12 ++-
 drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c         | 17 +----
 drivers/gpu/host1x/job.c                           | 22 ++----
 .../media/common/videobuf2/videobuf2-dma-contig.c  | 41 +++++------
 drivers/media/common/videobuf2/videobuf2-dma-sg.c  | 32 +++-----
 drivers/media/common/videobuf2/videobuf2-vmalloc.c | 12 +--
 drivers/media/pci/cx23885/cx23885-alsa.c           |  2 +-
 drivers/media/pci/cx25821/cx25821-alsa.c           |  2 +-
 drivers/media/pci/cx88/cx88-alsa.c                 |  2 +-
 drivers/media/pci/saa7134/saa7134-alsa.c           |  2 +-
 drivers/media/platform/vsp1/vsp1_drm.c             |  8 +-
 drivers/misc/fastrpc.c                             |  4 +-
 drivers/rapidio/devices/rio_mport_cdev.c           |  8 +-
 drivers/staging/android/ion/ion.c                  | 25 +++----
 drivers/staging/android/ion/ion.h                  |  1 -
 drivers/staging/android/ion/ion_heap.c             | 53 ++++---------
 drivers/staging/android/ion/ion_system_heap.c      |  2 +-
 drivers/staging/media/tegra-vde/iommu.c            |  4 +-
 drivers/xen/gntdev-dmabuf.c                        | 13 ++--
 include/drm/drm_prime.h                            |  2 +
 include/linux/dma-mapping.h                        | 79 ++++++++++++++++++++
 include/linux/iommu.h                              | 16 ++++
 include/linux/scatterlist.h                        | 50 ++++++++++++-
 samples/vfio-mdev/mbochs.c                         |  3 +-
 56 files changed, 452 insertions(+), 477 deletions(-)

-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
