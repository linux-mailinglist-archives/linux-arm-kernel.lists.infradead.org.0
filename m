Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE6FD43F2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 17:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V+CO6T+t3fycsTsi1f9MnighjkvyXnELwnEryzU3pGA=; b=uGM73iZ7oXbpAK
	5bCIXemoZ8qP9wO5IQjed7dfwkaNToQw5da3R7oCMURmSoWILhgvSE7bL4lqhRY0wdxJblhEgeIhu
	9Kt+953pnT95KX6VBREN+g51Z40Lv88KK1tW2cZ2uRijz+M7S5870JrAUvZW3SiYEfQf3DNzFNvZJ
	w4MlKSlqA0nxYGgb9nxE+KBIsLHWXi1n0v+GL1xyyTMK+MwhpjMSqLJrUlLqWNamE+dDXaVfUho+m
	sUi++9A9GpNfywFlyn4D3FFUlUlsD2yvcCFPvXxiBaSkI/gPXv/ClLzqw3FfDaDlZyT+lGo1qOZwM
	P87bNAga5K0fFdlYR4kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIwd7-0004D4-FR; Fri, 11 Oct 2019 15:14:57 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIwcz-0004CW-Fq
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 15:14:51 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9BF1l75021009; Fri, 11 Oct 2019 17:14:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=SCGzDBAy76bjpkh1Udccs8+VLgzc9WFo/6RoAOwZL24=;
 b=nduKo+/nueXrAtZJ1fTOiuwXZ7+MZJivjUHklGjPRAso499O+5atmOs+c2qD3rR9Uhie
 G+X6Yns7T4h+pW5HC1WXkBPAwv9/XHNsv+wcphKGFrm8UeXB6hOJmCAlbpwdHOa57KTe
 TVKvP/33oEg6BUgYL7bf+QfQdgJoI+mFcT8dBhqb/euMiwq28zffmOpoEmWff1z00P3i
 oBVdXHgQScNLqi4InsYVLop+ofZrblJfzmScXE7SLyzBZGXeteOwj3OxFuAiqsJ1Z7bU
 40Fezkkbcf/YPq+h9DgyhdWtqZq3swMzioiBEyiNdj9QE7zr0QXPk8MoPkSRH7CtRZcw /Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vegahkch6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 17:14:39 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2411810002A;
 Fri, 11 Oct 2019 17:14:38 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0E1982B6462;
 Fri, 11 Oct 2019 17:14:38 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 11 Oct
 2019 17:14:37 +0200
Received: from localhost (10.201.21.218) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 11 Oct 2019 17:14:37
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <jic23@kernel.org>, <knaack.h@gmx.de>, <lars@metafoo.de>,
 <pmeerw@pmeerw.net>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <fabrice.gasnier@st.com>,
 <linux-iio@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <benjamin.gaignard@st.com>, <olivier.moysan@st.com>
Subject: [PATCH][RFC] iio: core: add a class hierarchy on iio device lock
Date: Fri, 11 Oct 2019 17:13:14 +0200
Message-ID: <20191011151314.5365-1-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.21.218]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-11_09:2019-10-10,2019-10-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_081449_980178_BB662B7B 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The aim of this patch is to correct a recursive locking warning,
detected when setting CONFIG_PROVE_LOCKING flag (as shown in message below).
This message was initially triggered by the following call sequence
in stm32-dfsdm-adc.c driver, when using IIO hardware consumer interface.

in stm32_dfsdm_read_raw()
	iio_device_claim_direct_mode
		mutex_lock(&indio_dev->mlock);			-> lock on dfsdm device
	iio_hw_consumer_enable
		iio_update_buffers
			mutex_lock(&indio_dev->mlock);		-> lock on hw consumer device

Here two instances of the same lock class are requested
on two different objects.
The locking validator needs to be informed of the nesting level
of each lock to avoid a false positive.

This patch introduces a class hierarchy in iio device lock,
assuming that hardware consumer is at a lower level than iio device.

[   52.086174]
[   52.086223] ============================================
[   52.091516] WARNING: possible recursive locking detected
[   52.096825] 4.19.49 #162 Not tainted
[   52.100384] --------------------------------------------
[   52.105691] cat/823 is trying to acquire lock:
[   52.110132] 37acb703 (&dev->mlock){+.+.}, at: iio_update_buffers+0x3c/0xd0
[   52.116995]
[   52.116995] but task is already holding lock:
[   52.122821] 368bb908 (&dev->mlock){+.+.}, at: iio_device_claim_direct_mode+0x18/0x34
[   52.130560]
[   52.130560] other info that might help us debug this:
[   52.137083]  Possible unsafe locking scenario:
[   52.137083]
[   52.142995]        CPU0
[   52.145430]        ----
[   52.147864]   lock(&dev->mlock);
[   52.151082]   lock(&dev->mlock);
[   52.154301]
[   52.154301]  * DEADLOCK *
[   52.154301]
[   52.160215]  May be due to missing lock nesting notation
[   52.160215]
[   52.167000] 5 locks held by cat/823:
[   52.170563]  #0: 96d6554b (&p->lock){+.+.}, at: seq_read+0x34/0x51c
[   52.176824]  #1: 3cf6739a (&of->mutex){+.+.}, at: kernfs_seq_start+0x1c/0x8c
[   52.183866]  #2: a6090e0a (kn->count#29){.+.+}, at: kernfs_seq_start+0x24/0x8c
[   52.191083]  #3: 368bb908 (&dev->mlock){+.+.}, at: iio_device_claim_direct_mode+0x18/0x34
[   52.199257]  #4: 77e2bcfe (&dev->info_exist_lock){+.+.}, at: iio_update_buffers+0x30/0xd0
[   52.207431]
[   52.207431] stack backtrace:
[   52.211787] CPU: 0 PID: 823 Comm: cat Not tainted 4.19.49 #162
[   52.217606] Hardware name: STM32 (Device Tree Support)
[   52.222756] [<c0112420>] (unwind_backtrace) from [<c010df5c>] (show_stack+0x10/0x14)
[   52.230487] [<c010df5c>] (show_stack) from [<c0af5c88>] (dump_stack+0xc4/0xf0)
[   52.237703] [<c0af5c88>] (dump_stack) from [<c01865bc>] (__lock_acquire+0x874/0x1344)
[   52.245525] [<c01865bc>] (__lock_acquire) from [<c0187be8>] (lock_acquire+0xd8/0x268)
[   52.253353] [<c0187be8>] (lock_acquire) from [<c0b0dcf8>] (__mutex_lock+0x70/0xab0)
[   52.261005] [<c0b0dcf8>] (__mutex_lock) from [<c0b0e754>] (mutex_lock_nested+0x1c/0x24)
[   52.269001] [<c0b0e754>] (mutex_lock_nested) from [<c09282b8>] (iio_update_buffers+0x3c/0xd0)
[   52.277523] [<c09282b8>] (iio_update_buffers) from [<c09329cc>] (iio_hw_consumer_enable+0x34/0x70)
[   52.286476] [<c09329cc>] (iio_hw_consumer_enable) from [<c0932134>] (stm32_dfsdm_read_raw+0xf4/0x3fc)
[   52.295695] [<c0932134>] (stm32_dfsdm_read_raw) from [<c0922eb4>] (iio_read_channel_info+0xa8/0xb0)
[   52.304738] [<c0922eb4>] (iio_read_channel_info) from [<c067a7fc>] (dev_attr_show+0x1c/0x48)
[   52.313170] [<c067a7fc>] (dev_attr_show) from [<c03724a4>] (sysfs_kf_seq_show+0x84/0xec)
[   52.321256] [<c03724a4>] (sysfs_kf_seq_show) from [<c0312afc>] (seq_read+0x154/0x51c)
[   52.329082] [<c0312afc>] (seq_read) from [<c02e7a00>] (__vfs_read+0x2c/0x15c)
[   52.336209] [<c02e7a00>] (__vfs_read) from [<c02e7bc0>] (vfs_read+0x90/0x15c)
[   52.343339] [<c02e7bc0>] (vfs_read) from [<c02e81ac>] (ksys_read+0x5c/0xdc)
[   52.350296] [<c02e81ac>] (ksys_read) from [<c0101000>] (ret_fast_syscall+0x0/0x28)
[   52.357852] Exception stack(0xe5761fa8 to 0xe5761ff0)
[   52.362904] 1fa0:                   0000006c 7ff00000 00000003 b6e06000 00020000 00000000
[   52.371077] 1fc0: 0000006c 7ff00000 00020000 00000003 00000003 00000000 00020000 00000000
[   52.379245] 1fe0: 00000003 beb6e790 b6eb17b7 b6e3e6c6

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 drivers/iio/buffer/industrialio-hw-consumer.c | 9 ++++++++-
 drivers/iio/industrialio-buffer.c             | 2 +-
 drivers/iio/industrialio-core.c               | 3 ++-
 include/linux/iio/iio.h                       | 6 ++++++
 4 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/buffer/industrialio-hw-consumer.c b/drivers/iio/buffer/industrialio-hw-consumer.c
index 95165697d8ae..652ce31b4b5f 100644
--- a/drivers/iio/buffer/industrialio-hw-consumer.c
+++ b/drivers/iio/buffer/industrialio-hw-consumer.c
@@ -101,6 +101,7 @@ struct iio_hw_consumer *iio_hw_consumer_alloc(struct device *dev)
 
 	chan = &hwc->channels[0];
 	while (chan->indio_dev) {
+		chan->indio_dev->mutex_class = IIO_MUTEX_HWC;
 		buf = iio_hw_consumer_get_buffer(hwc, chan->indio_dev);
 		if (!buf) {
 			ret = -ENOMEM;
@@ -129,8 +130,14 @@ EXPORT_SYMBOL_GPL(iio_hw_consumer_alloc);
 void iio_hw_consumer_free(struct iio_hw_consumer *hwc)
 {
 	struct hw_consumer_buffer *buf, *n;
+	struct iio_channel *chan = &hwc->channels[0];
+
+	while (chan->indio_dev) {
+		chan->indio_dev->mutex_class = IIO_MUTEX_NORMAL;
+		iio_channel_release(chan);
+		chan++;
+	}
 
-	iio_channel_release_all(hwc->channels);
 	list_for_each_entry_safe(buf, n, &hwc->buffers, head)
 		iio_buffer_put(&buf->buffer);
 	kfree(hwc);
diff --git a/drivers/iio/industrialio-buffer.c b/drivers/iio/industrialio-buffer.c
index c193d64e5217..d1df04167978 100644
--- a/drivers/iio/industrialio-buffer.c
+++ b/drivers/iio/industrialio-buffer.c
@@ -1077,7 +1077,7 @@ int iio_update_buffers(struct iio_dev *indio_dev,
 		return 0;
 
 	mutex_lock(&indio_dev->info_exist_lock);
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock_nested(&indio_dev->mlock, indio_dev->mutex_class);
 
 	if (insert_buffer && iio_buffer_is_active(insert_buffer))
 		insert_buffer = NULL;
diff --git a/drivers/iio/industrialio-core.c b/drivers/iio/industrialio-core.c
index f72c2dc5f703..b14ba42559a3 100644
--- a/drivers/iio/industrialio-core.c
+++ b/drivers/iio/industrialio-core.c
@@ -1454,6 +1454,7 @@ struct iio_dev *iio_device_alloc(int sizeof_priv)
 		dev->dev.groups = dev->groups;
 		dev->dev.type = &iio_device_type;
 		dev->dev.bus = &iio_bus_type;
+		dev->mutex_class = IIO_MUTEX_NORMAL;
 		device_initialize(&dev->dev);
 		dev_set_drvdata(&dev->dev, (void *)dev);
 		mutex_init(&dev->mlock);
@@ -1805,7 +1806,7 @@ EXPORT_SYMBOL_GPL(devm_iio_device_unregister);
  */
 int iio_device_claim_direct_mode(struct iio_dev *indio_dev)
 {
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock_nested(&indio_dev->mlock, indio_dev->mutex_class);
 
 	if (iio_buffer_enabled(indio_dev)) {
 		mutex_unlock(&indio_dev->mlock);
diff --git a/include/linux/iio/iio.h b/include/linux/iio/iio.h
index 862ce0019eba..1192eca124f4 100644
--- a/include/linux/iio/iio.h
+++ b/include/linux/iio/iio.h
@@ -17,6 +17,11 @@
  * Currently assumes nano seconds.
  */
 
+enum iio_mutex_lock_class {
+	IIO_MUTEX_NORMAL,
+	IIO_MUTEX_HWC,
+};
+
 enum iio_shared_by {
 	IIO_SEPARATE,
 	IIO_SHARED_BY_TYPE,
@@ -537,6 +542,7 @@ struct iio_dev {
 	struct list_head		buffer_list;
 	int				scan_bytes;
 	struct mutex			mlock;
+	int				mutex_class;
 
 	const unsigned long		*available_scan_masks;
 	unsigned			masklength;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
