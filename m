Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4DA3CE56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:17:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iSzzKt0PUMhTWFtZ+r/ieGsQkYF3y4SvLJp+nWkLwLQ=; b=tudGwQUA1BOXAK
	rDvzCw96w9riXTGxV8s5LrJLPPn1KUluFGbS5vKZn81jOSSDY+1mZ3Jc/daGawPL3WdarUm4oB9Qh
	cOqemO9lQxucRx90ss/PhYuClYr9kRfzTdnR5vJOqWMGc+Y0I3VQCsl5Mw74vdZ2SW8NNi9JyeIJ2
	1RNU4337gUwn/S1mMDaVtafeTYsWOL3086nWDCpAijq3oG4um2PzVvZ0J4/5N1/l8uzx/ynuRViJF
	3RMQILcgNWLCpZYKLn/VUSoidToj58RWTSdLybRbuiDRx4wAyI54A3EFTeMIPdjaEzZHe9J2oeoSI
	WJ9zIBKb012kVsPw8M1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahaG-0000Mf-Ee; Tue, 11 Jun 2019 14:17:08 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hahXc-000572-KI
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 14:14:28 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5BA30558FDF9C701A7F5;
 Tue, 11 Jun 2019 22:14:12 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Tue, 11 Jun 2019 22:14:06 +0800
From: John Garry <john.garry@huawei.com>
To: <bhelgaas@google.com>, <lorenzo.pieralisi@arm.com>, <arnd@arndb.de>
Subject: [PATCH v4 1/3] lib: logic_pio: Use logical PIO low-level accessors
 for !CONFIG_INDIRECT_PIO
Date: Tue, 11 Jun 2019 22:12:52 +0800
Message-ID: <1560262374-67875-2-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1560262374-67875-1-git-send-email-john.garry@huawei.com>
References: <1560262374-67875-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_071425_307342_A0EAD756 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: rjw@rjwysocki.net, wangkefeng.wang@huawei.com, linux-pci@vger.kernel.org,
 John Garry <john.garry@huawei.com>, will.deacon@arm.com, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently we only use logical PIO low-level accessors for when
CONFIG_INDIRECT_PIO is enabled.

Otherwise we just use inb/out et all directly.

It is useful to now use logical PIO accessors for all cases, so we can add
legality checks to accesses. Such a check would be for ensuring that the
PCI IO port has been IO remapped prior to the access.

Using the logical PIO accesses will add a little processing overhead, but
that's ok as IO port accesses are relatively slow anyway.

Some changes are also made to stop spilling so many lines under
CONFIG_INDIRECT_PIO.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 include/linux/logic_pio.h |  7 ++--
 lib/logic_pio.c           | 83 ++++++++++++++++++++++++++++-----------
 2 files changed, 63 insertions(+), 27 deletions(-)

diff --git a/include/linux/logic_pio.h b/include/linux/logic_pio.h
index cbd9d8495690..06d22b2ec99f 100644
--- a/include/linux/logic_pio.h
+++ b/include/linux/logic_pio.h
@@ -37,7 +37,7 @@ struct logic_pio_host_ops {
 		     size_t dwidth, unsigned int count);
 };
 
-#ifdef CONFIG_INDIRECT_PIO
+#if defined(PCI_IOBASE)
 u8 logic_inb(unsigned long addr);
 void logic_outb(u8 value, unsigned long addr);
 void logic_outw(u16 value, unsigned long addr);
@@ -102,6 +102,7 @@ void logic_outsl(unsigned long addr, const void *buffer, unsigned int count);
 #define outsl logic_outsl
 #endif
 
+#if defined(CONFIG_INDIRECT_PIO)
 /*
  * We reserve 0x4000 bytes for Indirect IO as so far this library is only
  * used by the HiSilicon LPC Host. If needed, we can reserve a wider IO
@@ -109,10 +110,10 @@ void logic_outsl(unsigned long addr, const void *buffer, unsigned int count);
  */
 #define PIO_INDIRECT_SIZE 0x4000
 #define MMIO_UPPER_LIMIT (IO_SPACE_LIMIT - PIO_INDIRECT_SIZE)
-#else
+#else /* CONFIG_INDIRECT_PIO */
 #define MMIO_UPPER_LIMIT IO_SPACE_LIMIT
 #endif /* CONFIG_INDIRECT_PIO */
-
+#endif /* PCI_IOBASE */
 struct logic_pio_hwaddr *find_io_range_by_fwnode(struct fwnode_handle *fwnode);
 unsigned long logic_pio_trans_hwaddr(struct fwnode_handle *fwnode,
 			resource_size_t hw_addr, resource_size_t size);
diff --git a/lib/logic_pio.c b/lib/logic_pio.c
index feea48fd1a0d..40d9428010e1 100644
--- a/lib/logic_pio.c
+++ b/lib/logic_pio.c
@@ -191,7 +191,8 @@ unsigned long logic_pio_trans_cpuaddr(resource_size_t addr)
 	return ~0UL;
 }
 
-#if defined(CONFIG_INDIRECT_PIO) && defined(PCI_IOBASE)
+#if defined(PCI_IOBASE)
+#if defined(CONFIG_INDIRECT_PIO)
 #define BUILD_LOGIC_IO(bw, type)					\
 type logic_in##bw(unsigned long addr)					\
 {									\
@@ -200,11 +201,11 @@ type logic_in##bw(unsigned long addr)					\
 	if (addr < MMIO_UPPER_LIMIT) {					\
 		ret = read##bw(PCI_IOBASE + addr);			\
 	} else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) { \
-		struct logic_pio_hwaddr *entry = find_io_range(addr);	\
+		struct logic_pio_hwaddr *range = find_io_range(addr);	\
+		size_t sz = sizeof(type);				\
 									\
-		if (entry && entry->ops)				\
-			ret = entry->ops->in(entry->hostdata,		\
-					addr, sizeof(type));		\
+		if (range && range->ops)				\
+			ret = range->ops->in(range->hostdata, addr, sz);\
 		else							\
 			WARN_ON_ONCE(1);				\
 	}								\
@@ -216,49 +217,83 @@ void logic_out##bw(type value, unsigned long addr)			\
 	if (addr < MMIO_UPPER_LIMIT) {					\
 		write##bw(value, PCI_IOBASE + addr);			\
 	} else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) {	\
-		struct logic_pio_hwaddr *entry = find_io_range(addr);	\
+		struct logic_pio_hwaddr *range = find_io_range(addr);	\
+		size_t sz = sizeof(type);				\
 									\
-		if (entry && entry->ops)				\
-			entry->ops->out(entry->hostdata,		\
-					addr, value, sizeof(type));	\
+		if (range && range->ops)				\
+			range->ops->out(range->hostdata,		\
+					addr, value, sz);		\
 		else							\
 			WARN_ON_ONCE(1);				\
 	}								\
 }									\
 									\
-void logic_ins##bw(unsigned long addr, void *buffer,		\
-		   unsigned int count)					\
+void logic_ins##bw(unsigned long addr, void *buf, unsigned int cnt)	\
 {									\
 	if (addr < MMIO_UPPER_LIMIT) {					\
-		reads##bw(PCI_IOBASE + addr, buffer, count);		\
+		reads##bw(PCI_IOBASE + addr, buf, cnt);			\
 	} else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) {	\
-		struct logic_pio_hwaddr *entry = find_io_range(addr);	\
+		struct logic_pio_hwaddr *range = find_io_range(addr);	\
+		size_t sz = sizeof(type);				\
 									\
-		if (entry && entry->ops)				\
-			entry->ops->ins(entry->hostdata,		\
-				addr, buffer, sizeof(type), count);	\
+		if (range && range->ops)				\
+			range->ops->ins(range->hostdata,		\
+					addr, buf, sz, cnt);		\
 		else							\
 			WARN_ON_ONCE(1);				\
 	}								\
 									\
 }									\
 									\
-void logic_outs##bw(unsigned long addr, const void *buffer,		\
-		    unsigned int count)					\
+void logic_outs##bw(unsigned long addr, const void *buf,		\
+		    unsigned int cnt)					\
 {									\
 	if (addr < MMIO_UPPER_LIMIT) {					\
-		writes##bw(PCI_IOBASE + addr, buffer, count);		\
+		writes##bw(PCI_IOBASE + addr, buf, cnt);		\
 	} else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) {	\
-		struct logic_pio_hwaddr *entry = find_io_range(addr);	\
+		struct logic_pio_hwaddr *range = find_io_range(addr);	\
+		size_t sz = sizeof(type);				\
 									\
-		if (entry && entry->ops)				\
-			entry->ops->outs(entry->hostdata,		\
-				addr, buffer, sizeof(type), count);	\
+		if (range && range->ops)				\
+			range->ops->outs(range->hostdata,		\
+					 addr, buf, sz, cnt);		\
 		else							\
 			WARN_ON_ONCE(1);				\
 	}								\
 }
 
+#else /* CONFIG_INDIRECT_PIO */
+
+#define BUILD_LOGIC_IO(bw, type)					\
+type logic_in##bw(unsigned long addr)					\
+{									\
+	type ret = (type)~0;						\
+									\
+	if (addr < MMIO_UPPER_LIMIT)					\
+		ret = read##bw(PCI_IOBASE + addr);			\
+	return ret;							\
+}									\
+									\
+void logic_out##bw(type value, unsigned long addr)			\
+{									\
+	if (addr < MMIO_UPPER_LIMIT)					\
+		write##bw(value, PCI_IOBASE + addr);			\
+}									\
+									\
+void logic_ins##bw(unsigned long addr, void *buf, unsigned int cnt)	\
+{									\
+	if (addr < MMIO_UPPER_LIMIT)					\
+		reads##bw(PCI_IOBASE + addr, buf, cnt);			\
+}									\
+									\
+void logic_outs##bw(unsigned long addr, const void *buf,		\
+		    unsigned int cnt)					\
+{									\
+	if (addr < MMIO_UPPER_LIMIT)					\
+		writes##bw(PCI_IOBASE + addr, buf, cnt);		\
+}
+#endif /* CONFIG_INDIRECT_PIO */
+
 BUILD_LOGIC_IO(b, u8)
 EXPORT_SYMBOL(logic_inb);
 EXPORT_SYMBOL(logic_insb);
@@ -277,4 +312,4 @@ EXPORT_SYMBOL(logic_insl);
 EXPORT_SYMBOL(logic_outl);
 EXPORT_SYMBOL(logic_outsl);
 
-#endif /* CONFIG_INDIRECT_PIO && PCI_IOBASE */
+#endif /* PCI_IOBASE */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
