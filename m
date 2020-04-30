Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 203A21C090C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 23:19:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2vh6ZmIPsPQynxEM2hYRCg2t9TvB2Mt7EhX+NJ+sZRU=; b=CgshT45aoWTUhe
	OQI7872vc9EmlZ1L++kgQ37FlAdmMyn6vclyjhyKMrVeAVdZXcWL6nc/dvUNB/x4mxU8lQb0isvcT
	zzuF5bedLn+GVSoDXYuDq0odH2nJD5Mhy4A+qBYImNRyzb/SPmTu/5NxA1aXEKJIlI1HmrVVeTvTN
	ZVU4ewUBS2rjViBEu8bp1KwQhAnWFD7nkMO/3aXIntrzBV2s2TCCEFe02d5UDFw2bV7kHTF2CTmHF
	L7kfWI4SZsl8VofRjk10M3aNzLUcN24p8XMEc2gapmJUCgQ8CWLsFTtzo9HtjWmuT2k3zdzXsJo2E
	iTpKXvqvizks11r1rh4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGam-0002oE-CT; Thu, 30 Apr 2020 21:19:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGab-0002nE-Ra
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 21:19:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E6D241FB;
 Thu, 30 Apr 2020 14:19:23 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com
 [10.118.28.62])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DF1733F68F;
 Thu, 30 Apr 2020 14:19:23 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-usb@vger.kernel.org
Subject: [PATCH] usb: usbfs: correct kernel->user page attribute mismatch
Date: Thu, 30 Apr 2020 16:19:22 -0500
Message-Id: <20200430211922.929165-1-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_141925_933613_C9170E21 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: git@thegavinli.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, jarkko.sakkinen@linux.intel.com,
 stern@rowland.harvard.edu, Jeremy Linton <jeremy.linton@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On arm64, and possibly other architectures, requesting
IO coherent memory may return Normal-NC if the underlying
hardware isn't coherent. If these pages are then
remapped into userspace as Normal, that defeats the
purpose of getting Normal-NC, as well as resulting in
mappings with differing cache attributes.

In particular this happens with libusb, when it attempts
to create zero-copy buffers as is used by rtl-sdr, and
maybe other applications. The result is usually
application death.

If dma_mmap_attr() is used instead of remap_pfn_range,
the page cache/etc attributes can be matched between the
kernel and userspace.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
---
 drivers/usb/core/devio.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/core/devio.c b/drivers/usb/core/devio.c
index 6833c918abce..1e7458dd6e5d 100644
--- a/drivers/usb/core/devio.c
+++ b/drivers/usb/core/devio.c
@@ -217,6 +217,7 @@ static int usbdev_mmap(struct file *file, struct vm_area_struct *vma)
 {
 	struct usb_memory *usbm = NULL;
 	struct usb_dev_state *ps = file->private_data;
+	struct usb_hcd *hcd = bus_to_hcd(ps->dev->bus);
 	size_t size = vma->vm_end - vma->vm_start;
 	void *mem;
 	unsigned long flags;
@@ -250,9 +251,7 @@ static int usbdev_mmap(struct file *file, struct vm_area_struct *vma)
 	usbm->vma_use_count = 1;
 	INIT_LIST_HEAD(&usbm->memlist);
 
-	if (remap_pfn_range(vma, vma->vm_start,
-			virt_to_phys(usbm->mem) >> PAGE_SHIFT,
-			size, vma->vm_page_prot) < 0) {
+	if (dma_mmap_attrs(hcd->self.sysdev, vma, mem, dma_handle, size, 0)) {
 		dec_usb_memory_use_count(usbm, &usbm->vma_use_count);
 		return -EAGAIN;
 	}
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
