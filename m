Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D1F6ABCF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 17:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i5gk5BXrQiflsIRvZ60qNpay6T9LmdypmqJW7/SOBl4=; b=Cjgf1vCRUxOc8i
	j25+431OOkr0UhYK+rAvQM/eAtdlV8nEc8MPKRvuzpVU9YpRmREBc+i8GJe/8ZG49rR8hP4PcojeO
	E2baBE3rZpeeki6iG2t3B4BvERDA4Km7wIWr19TOT4esA1/AdIXcgnCqg154rI65ODN2nJdyBQtZ1
	7Zq7WDhdY02ggET3tUFn7dRSf63faQ5j6/g3BnJXkP3huFPWcN9+hq5TcKFh5fcoTmAIAT60EXwb3
	Q94+zPnzg+OWvk2eehnic0FL2lfh2U2cUdT4ZeS3dVpkFeo66L9k7/3ZZwYnBPBlbaXivyrERsNI6
	jNK8VtgXmWRe5HD8CU2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnPRO-0003HW-IN; Tue, 16 Jul 2019 15:32:30 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnPQy-0003GZ-4j
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 15:32:06 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 020B52F8BCC;
 Tue, 16 Jul 2019 15:32:03 +0000 (UTC)
Received: from redhat.com (ovpn-122-108.rdu2.redhat.com [10.10.122.108])
 by smtp.corp.redhat.com (Postfix) with SMTP id 96BE15B681;
 Tue, 16 Jul 2019 15:31:52 +0000 (UTC)
Date: Tue, 16 Jul 2019 11:31:51 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [PULL] virtio, vhost: fixes, features, performance
Message-ID: <20190716113151-mutt-send-email-mst@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
X-Mutt-Fcc: =sent
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 16 Jul 2019 15:32:03 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_083204_251054_BD4162E3 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: aarcange@redhat.com, James.Bottomley@hansenpartnership.com,
 linux-parisc@vger.kernel.org, kvm@vger.kernel.org, eric.auger@redhat.com,
 jean-philippe.brucker@arm.com, netdev@vger.kernel.org, jasowang@redhat.com,
 gustavo@embeddedor.com, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, hch@infradead.org,
 linux-mm@kvack.org, jglisse@redhat.com, mst@redhat.com,
 ihor.matushchak@foobox.net, bhelgaas@google.com, natechancellor@gmail.com,
 bharat.bhushan@nxp.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit c1ea02f15ab5efb3e93fc3144d895410bf79fcf2:

  vhost: scsi: add weight support (2019-05-27 11:08:23 -0400)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mst/vhost.git tags/for_linus

for you to fetch changes up to 5e663f0410fa2f355042209154029842ba1abd43:

  virtio-mmio: add error check for platform_get_irq (2019-07-11 16:22:29 -0400)

----------------------------------------------------------------
virtio, vhost: fixes, features, performance

new iommu device
vhost guest memory access using vmap (just meta-data for now)
minor fixes

Signed-off-by: Michael S. Tsirkin <mst@redhat.com>

Note: due to code driver changes the driver-core tree, the following
patch is needed when merging tree with commit 92ce7e83b4e5
("driver_find_device: Unify the match function with
class_find_device()") in the driver-core tree:

From: Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] iommu/virtio: Constify data parameter in viommu_match_node

After commit 92ce7e83b4e5 ("driver_find_device: Unify the match
function with class_find_device()") in the driver-core tree.

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Michael S. Tsirkin <mst@redhat.com>

---
 drivers/iommu/virtio-iommu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
index 4620dd221ffd..433f4d2ee956 100644
--- a/drivers/iommu/virtio-iommu.c
+++ b/drivers/iommu/virtio-iommu.c
@@ -839,7 +839,7 @@ static void viommu_put_resv_regions(struct device *dev, struct list_head *head)
 static struct iommu_ops viommu_ops;
 static struct virtio_driver virtio_iommu_drv;

-static int viommu_match_node(struct device *dev, void *data)
+static int viommu_match_node(struct device *dev, const void *data)
 {
 	return dev->parent->fwnode == data;
 }

----------------------------------------------------------------
Gustavo A. R. Silva (1):
      scsi: virtio_scsi: Use struct_size() helper

Ihor Matushchak (1):
      virtio-mmio: add error check for platform_get_irq

Jason Wang (6):
      vhost: generalize adding used elem
      vhost: fine grain userspace memory accessors
      vhost: rename vq_iotlb_prefetch() to vq_meta_prefetch()
      vhost: introduce helpers to get the size of metadata area
      vhost: factor out setting vring addr and num
      vhost: access vq metadata through kernel virtual address

Jean-Philippe Brucker (7):
      dt-bindings: virtio-mmio: Add IOMMU description
      dt-bindings: virtio: Add virtio-pci-iommu node
      of: Allow the iommu-map property to omit untranslated devices
      PCI: OF: Initialize dev->fwnode appropriately
      iommu: Add virtio-iommu driver
      iommu/virtio: Add probe request
      iommu/virtio: Add event queue

Michael S. Tsirkin (1):
      vhost: fix clang build warning

 Documentation/devicetree/bindings/virtio/iommu.txt |   66 ++
 Documentation/devicetree/bindings/virtio/mmio.txt  |   30 +
 MAINTAINERS                                        |    7 +
 drivers/iommu/Kconfig                              |   11 +
 drivers/iommu/Makefile                             |    1 +
 drivers/iommu/virtio-iommu.c                       | 1158 ++++++++++++++++++++
 drivers/of/base.c                                  |   10 +-
 drivers/pci/of.c                                   |    8 +
 drivers/scsi/virtio_scsi.c                         |    2 +-
 drivers/vhost/net.c                                |    4 +-
 drivers/vhost/vhost.c                              |  850 +++++++++++---
 drivers/vhost/vhost.h                              |   43 +-
 drivers/virtio/virtio_mmio.c                       |    7 +-
 include/uapi/linux/virtio_ids.h                    |    1 +
 include/uapi/linux/virtio_iommu.h                  |  161 +++
 15 files changed, 2228 insertions(+), 131 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/virtio/iommu.txt
 create mode 100644 drivers/iommu/virtio-iommu.c
 create mode 100644 include/uapi/linux/virtio_iommu.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
