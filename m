Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0135A195AC1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 17:11:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elwrc1Kut+Ssge6Fcf/7rzQo/mK5KBF1msvieu1DaC0=; b=P1QH4PQ9eKZRf6
	N+Ju2nD1mQRlbdJGy6sVpMXWPFh1wYWEWQR0qs/AscSJpCS1Ou903PpgoEv7Ib63sgioJcGwpP6kE
	yU0+FiNjuiPhzVAg9QrjPNDd6mh6ZRt2DoxDroTRlplI9/NhqyLJdLtvdmsB2ALxjArEa7mE23IsA
	WlW/LSfoprlGbZpshYUKXxZmYGpL9DBFJT1tb+qpgSvNlbp/QjSF5RjX351RfaPYkx95RckBummMc
	MHY48rkbl2lawtCeducbI3wA3nNWAcBZS/2KMX2ZpaBaTIt56LCx0B63pz9wh7rPAQG3qBYekgrC/
	2SF1TUDcOaNpMnaxb8Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHra4-0003q3-Py; Fri, 27 Mar 2020 16:11:36 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHrZB-00038c-Pt
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 16:10:44 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id A77CC2A81FACFF6757F8;
 Sat, 28 Mar 2020 00:10:23 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Sat, 28 Mar 2020 00:10:17 +0800
From: John Garry <john.garry@huawei.com>
To: <xuwei5@huawei.com>, <arnd@arndb.de>
Subject: [PATCH v2 2/3] logic_pio: Improve macro argument name
Date: Sat, 28 Mar 2020 00:06:13 +0800
Message-ID: <1585325174-195915-3-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1585325174-195915-1-git-send-email-john.garry@huawei.com>
References: <1585325174-195915-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_091042_006446_828EEDCC 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, John
 Garry <john.garry@huawei.com>, okaya@kernel.org, linux-kernel@vger.kernel.org,
 jiaxun.yang@flygoat.com, linuxarm@huawei.com, olof@lixom.net,
 bhelgaas@google.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Macro argument "bw" is used for building byte, word, and long-based
functions. Use "bwl" instead, to include long.

Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: John Garry <john.garry@huawei.com>
---
 lib/logic_pio.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/lib/logic_pio.c b/lib/logic_pio.c
index f511a99bb389..21dc731bec88 100644
--- a/lib/logic_pio.c
+++ b/lib/logic_pio.c
@@ -229,13 +229,13 @@ unsigned long logic_pio_trans_cpuaddr(resource_size_t addr)
 }
 
 #if defined(CONFIG_INDIRECT_PIO) && defined(PCI_IOBASE)
-#define BUILD_LOGIC_IO(bw, type)					\
-type logic_in##bw(unsigned long addr)					\
+#define BUILD_LOGIC_IO(bwl, type)					\
+type logic_in##bwl(unsigned long addr)					\
 {									\
 	type ret = (type)~0;						\
 									\
 	if (addr < MMIO_UPPER_LIMIT) {					\
-		ret = read##bw(PCI_IOBASE + addr);			\
+		ret = read##bwl(PCI_IOBASE + addr);			\
 	} else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) { \
 		struct logic_pio_hwaddr *entry = find_io_range(addr);	\
 									\
@@ -248,10 +248,10 @@ type logic_in##bw(unsigned long addr)					\
 	return ret;							\
 }									\
 									\
-void logic_out##bw(type value, unsigned long addr)			\
+void logic_out##bwl(type value, unsigned long addr)			\
 {									\
 	if (addr < MMIO_UPPER_LIMIT) {					\
-		write##bw(value, PCI_IOBASE + addr);			\
+		write##bwl(value, PCI_IOBASE + addr);			\
 	} else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) {	\
 		struct logic_pio_hwaddr *entry = find_io_range(addr);	\
 									\
@@ -263,11 +263,11 @@ void logic_out##bw(type value, unsigned long addr)			\
 	}								\
 }									\
 									\
-void logic_ins##bw(unsigned long addr, void *buffer,			\
-		   unsigned int count)					\
+void logic_ins##bwl(unsigned long addr, void *buffer,			\
+		    unsigned int count)					\
 {									\
 	if (addr < MMIO_UPPER_LIMIT) {					\
-		reads##bw(PCI_IOBASE + addr, buffer, count);		\
+		reads##bwl(PCI_IOBASE + addr, buffer, count);		\
 	} else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) {	\
 		struct logic_pio_hwaddr *entry = find_io_range(addr);	\
 									\
@@ -280,11 +280,11 @@ void logic_ins##bw(unsigned long addr, void *buffer,			\
 									\
 }									\
 									\
-void logic_outs##bw(unsigned long addr, const void *buffer,		\
-		    unsigned int count)					\
+void logic_outs##bwl(unsigned long addr, const void *buffer,		\
+		     unsigned int count)				\
 {									\
 	if (addr < MMIO_UPPER_LIMIT) {					\
-		writes##bw(PCI_IOBASE + addr, buffer, count);		\
+		writes##bwl(PCI_IOBASE + addr, buffer, count);		\
 	} else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) {	\
 		struct logic_pio_hwaddr *entry = find_io_range(addr);	\
 									\
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
